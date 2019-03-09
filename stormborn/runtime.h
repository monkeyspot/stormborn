//
//  runtime.h
//  🌪 stromborn
//
//  Created by Oliver Letterer on 07.03.19.
//  Copyright © 2019 Oliver Letterer. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <objc/runtime.h>

@class SWZInvocation;

NS_ASSUME_NONNULL_BEGIN

_Nullable Method swizzle_lookupMember(Class klass, NSString *member, NSInteger arguments, BOOL returns);
void swizzle_hookMember(Class klass, NSString *member, NSInteger arguments, BOOL returns, void(^block)(id object, SWZInvocation *invocation));

NS_ASSUME_NONNULL_END
