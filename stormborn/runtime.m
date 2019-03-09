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

_Nullable Method swizzle_lookupMember(Class klass, NSString *member, NSInteger arguments, BOOL returns)
{
    unsigned int count = 0;
    Method *methods = class_copyMethodList(klass, &count);
    
    for (unsigned int i = 0; i < count; i++) {
        Method method = methods[i];
        
        if (method_getName(method) == @selector(viewDidAppear:)) {
            NSLog(@"Here");
        }
        
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
    Method method = swizzle_lookupMember(klass, member, arguments, returns);
    assert(method != NULL);
    
    SEL selector = NSSelectorFromString([NSString stringWithFormat:@"_swizzle_%@_%@", NSUUID.UUID.UUIDString, NSStringFromSelector(method_getName(method))]);
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
    
    IMP originalforwardInvocation = [klass instanceMethodForSelector:@selector(forwardInvocation:)];
    void(^forwardInvocation)(__unsafe_unretained id object, NSInvocation *invocation) = ^(__unsafe_unretained id object, NSInvocation *invocation) { // dealloc support
        if (invocation.selector == method_getName(method)) {
            NSInvocation *newInvocation = [NSInvocation invocationWithMethodSignature:invocation.methodSignature];
            
            newInvocation.target = invocation.target;
            newInvocation.selector = selector;
            
            for (NSInteger i = 2; i < newInvocation.methodSignature.numberOfArguments; i++) {
                void *argument = NULL;
                [invocation getArgument:&argument atIndex:i];
                [newInvocation setArgument:&argument atIndex:i];
            }
            
            block(object, [[SWZInvocation alloc] initWithInvocation:newInvocation]);
            
            if (![@(invocation.methodSignature.methodReturnType) isEqualToString:@"v"]) {
                void *returnValue = NULL;
                [newInvocation getReturnValue:&returnValue];
                [invocation setReturnValue:&returnValue];
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
}
