//
//  runtime.m
//  🌪 stromborn
//
//  Created by Oliver Letterer on 07.03.19.
//  Copyright © 2019 Oliver Letterer. All rights reserved.
//

#import "runtime.h"
#import "SWZInvocation.h"
#import <objc/message.h>
#import <pthread.h>

_Nullable Method swizzle_lookupMember(Class klass, NSString *member, NSInteger arguments, BOOL returns)
{
    unsigned int count = 0;
    Method *methods = class_copyMethodList(klass, &count);
    
    for (unsigned int i = 0; i < count; i++) {
        Method method = methods[i];
        
        NSMethodSignature *methodSignature = [NSMethodSignature signatureWithObjCTypes:method_getTypeEncoding(method)];
        NSString *memberName = [NSStringFromSelector(method_getName(method)) stringByReplacingOccurrencesOfString:@":" withString:@""];
        
        BOOL hasReturnType = ![@(methodSignature.methodReturnType) isEqualToString:@"v"];
        if ([memberName isEqualToString:member] && methodSignature.numberOfArguments == arguments + 2 && hasReturnType == returns) { // + self + _cmd
            free(methods);
            return method;
        }
    }
    
    free(methods);
    
    Class superKlass = class_getSuperclass(klass);
    return superKlass != Nil ? swizzle_lookupMember(superKlass, member, arguments, returns) : NULL;
}

void swizzle_hookMember(Class klass, NSString *member, NSInteger arguments, BOOL returns, void(^block)(id object, SWZInvocation *invocation))
{
    static pthread_mutex_t mutex;
    
    static NSMutableDictionary<NSString *, NSMutableDictionary<NSString *, NSMutableArray<id> *> *> *blockLookup = nil;
    static NSMutableDictionary<NSString *, NSMutableDictionary<NSString *, NSMutableArray<NSString *> *> *> *implementationLookup = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        pthread_mutex_init(&mutex, NULL);
        
        blockLookup = [NSMutableDictionary dictionary];
        implementationLookup = [NSMutableDictionary dictionary];
    });
    
    pthread_mutex_lock(&mutex);
    
    Method method = swizzle_lookupMember(klass, member, arguments, returns);
    assert(method != NULL);
    
    NSString *uuidPrefix = NSUUID.UUID.UUIDString;
    SEL selector = NSSelectorFromString([NSString stringWithFormat:@"_swizzle_%@_%@", uuidPrefix, NSStringFromSelector(method_getName(method))]);
    class_addMethod(klass, selector, method_getImplementation(method), method_getTypeEncoding(method));
    
    BOOL hasDirectImplementation = method == class_getInstanceMethod(klass, method_getName(method));
    if (hasDirectImplementation) {
        method_setImplementation(method, (IMP)_objc_msgForward);
    } else {
        class_addMethod(klass, method_getName(method), (IMP)_objc_msgForward, method_getTypeEncoding(method));
    }
    
    IMP originalMethodSignatureForSelector = [klass instanceMethodForSelector:@selector(methodSignatureForSelector:)];
    NSMethodSignature *(^methodSignatureForSelector)(id object, SEL selector) = ^NSMethodSignature *(id object, SEL selector) {
        if (selector == method_getName(method)) {
            return [NSMethodSignature signatureWithObjCTypes:method_getTypeEncoding(method)];
        }
        
        return ((NSMethodSignature *(*)(id, SEL, SEL))originalMethodSignatureForSelector)(object, @selector(methodSignatureForSelector:), selector);
    };
    
    if (class_getInstanceMethod(klass, @selector(methodSignatureForSelector:)) != NULL) {
        Method method = class_getInstanceMethod(klass, @selector(methodSignatureForSelector:));
        method_setImplementation(method, imp_implementationWithBlock(methodSignatureForSelector));
    } else {
        class_addMethod(klass, @selector(methodSignatureForSelector:), imp_implementationWithBlock(methodSignatureForSelector), method_getTypeEncoding(class_getInstanceMethod(NSObject.class, @selector(methodSignatureForSelector:))));
    }
    
    NSString *forwardInvocationSelector = [NSString stringWithFormat:@"_swizzle_%@_%@", uuidPrefix, NSStringFromSelector(@selector(forwardInvocation:))];
    IMP originalforwardInvocation = [klass instanceMethodForSelector:@selector(forwardInvocation:)];
    
    __block NSArray<NSString *> *theseImplementations = nil;
    void(^forwardInvocation)(__unsafe_unretained id object, NSInvocation *invocation) = ^(__unsafe_unretained id object, NSInvocation *invocation) { // dealloc support
        if (invocation.selector == method_getName(method) || [theseImplementations containsObject:NSStringFromSelector(invocation.selector)]) {
            NSInvocation *sup = [NSInvocation invocationWithMethodSignature:invocation.methodSignature];
            sup.target = invocation.target;
            
            void(^thisBlock)(id object, SWZInvocation *invocation) = nil;
            
            if (theseImplementations.count == 0 || invocation.selector == method_getName(method)) {
                sup.selector = selector;
                thisBlock = blockLookup[NSStringFromClass(klass)][member].lastObject;
            } else {
                NSInteger index = [theseImplementations indexOfObject:NSStringFromSelector(invocation.selector)];
                assert(index != NSNotFound);
                
                sup.selector = NSSelectorFromString(theseImplementations[index - 1]);
                thisBlock = [blockLookup[NSStringFromClass(klass)][member] objectAtIndex:index - 1];
            }
            
            for (NSInteger i = 2; i < sup.methodSignature.numberOfArguments; i++) {
                void *argument = NULL;
                [invocation getArgument:&argument atIndex:i];
                [sup setArgument:&argument atIndex:i];
            }
            
            thisBlock(object, [[SWZInvocation alloc] initWithInvocation:sup]);
            
            if (![@(invocation.methodSignature.methodReturnType) isEqualToString:@"v"]) {
                void *returnValue = NULL;
                [sup getReturnValue:&returnValue];
                [invocation setReturnValue:&returnValue];
                
                [invocation retainArguments];
            }
            
            return;
        }
        
        ((void(*)(id, SEL, NSInvocation *))originalforwardInvocation)(object, @selector(forwardInvocation:), invocation);
    };
    
    if (class_getInstanceMethod(klass, @selector(forwardInvocation:)) != NULL) {
        Method method = class_getInstanceMethod(klass, @selector(forwardInvocation:));
        method_setImplementation(method, imp_implementationWithBlock(forwardInvocation));
    } else {
        class_addMethod(klass, @selector(forwardInvocation:), imp_implementationWithBlock(forwardInvocation), method_getTypeEncoding(class_getInstanceMethod(NSObject.class, @selector(forwardInvocation:))));
    }
    
    class_addMethod(klass, NSSelectorFromString(forwardInvocationSelector), imp_implementationWithBlock(forwardInvocation), method_getTypeEncoding(class_getInstanceMethod(NSObject.class, @selector(forwardInvocation:))));
    
    {
        NSMutableDictionary<NSString *, NSMutableArray<NSString *> *> *memberLookup = implementationLookup[NSStringFromClass(klass)] ?: [NSMutableDictionary dictionary];
        implementationLookup[NSStringFromClass(klass)] = memberLookup;
        
        NSMutableArray<NSString *> *lookup = memberLookup[member] ?: [NSMutableArray array];
        memberLookup[member] = lookup;
        
        [lookup addObject:NSStringFromSelector(selector)];
        theseImplementations = lookup.copy;
    }
    
    {
        NSMutableDictionary<NSString *, NSMutableArray<id> *> *memberLookup = blockLookup[NSStringFromClass(klass)] ?: [NSMutableDictionary dictionary];
        blockLookup[NSStringFromClass(klass)] = memberLookup;
        
        NSMutableArray<id> *lookup = memberLookup[member] ?: [NSMutableArray array];
        memberLookup[member] = lookup;
        
        [lookup addObject:[block copy]];
    }
    
    pthread_mutex_unlock(&mutex);
}
