//
//  NSObject+MRCRunTime.h
//  Footstone
//
//  Created by LiChunYang on 7/3/2018.
//  Copyright © 2018 BetrayalPromise. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <objc/runtime.h>

@interface NSObject (MRCRunTime)

/// 复制一个对象 但是不会走初始化函数 释放时依旧执行dealloc
- (instancetype _Nullable)object_copy;
/// 手动释放一个对象 ARC下会奔溃
- (id _Nullable)object_dispose;

/// 设置对象的实例变量
- (Ivar _Nullable)object_setInstanceVariable:(const char * _Nonnull)name value:(void * _Nullable)value;
/// 设置强引用类型的缺省值
- (Ivar _Nullable)object_setInstanceVariableWithStrongDefault:(const char * _Nonnull)name value:(void * _Nullable)value;
/// 获取实力变量的值
- (Ivar _Nullable)object_getInstanceVariable:(const char * _Nonnull)name outValue:(void * _Nullable * _Nullable)outValue;
/// 注册类
+ (Class _Nonnull)objc_getFutureClass:(const char * _Nonnull)name;
+ (id _Nullable)objc_constructInstance:(void * _Nullable)bytes;
- (void * _Nullable)objc_destructInstance;

@end
