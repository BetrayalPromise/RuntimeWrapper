//
//  NSObject+MRCRunTime.m
//  Footstone
//
//  Created by LiChunYang on 7/3/2018.
//  Copyright © 2018 BetrayalPromise. All rights reserved.
//

#import "NSObject+MRCRunTime.h"


@implementation NSObject (MRCRunTime)

- (instancetype _Nullable)object_copy {
    return [object_copy(self, sizeof([self class])) autorelease];
}

/// 提前释放 导致crash 测试使用
- (id _Nullable)object_dispose {
    return object_dispose(self);
}

- (Ivar _Nullable)object_setInstanceVariable:(const char * _Nonnull)name value:(void * _Nullable)value {
    return object_setInstanceVariable(self, name, value);
}

- (Ivar _Nullable)object_setInstanceVariableWithStrongDefault:(const char * _Nonnull)name value:(void *)value {
    if (@available(iOS 10.0, *)) {
        return object_setInstanceVariableWithStrongDefault(self, name, value);
    } else {
        NSLog(@"api only support ios 10.0 or later");
        return nil;
    }
}

- (Ivar _Nullable)object_getInstanceVariable:(const char * _Nonnull)name outValue:(void * _Nullable * _Nullable)outValue {
    return object_getInstanceVariable(self, name, outValue);
}

+ (Class _Nonnull)objc_getFutureClass:(const char * _Nonnull)name {
    return objc_getFutureClass(name);
}

+ (id _Nullable)objc_constructInstance:(void * _Nullable)bytes {
    return objc_constructInstance(self, bytes);
}

- (void * _Nullable)objc_destructInstance {
    return objc_destructInstance(self);
}

@end
