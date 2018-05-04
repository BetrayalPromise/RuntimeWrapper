//
//  NSObject+ARCRunTime.h
//  Footstone
//
//  Created by LiChunYang on 7/3/2018.
//  Copyright © 2018 BetrayalPromise. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <objc/runtime.h>

@interface NSObject (ARCRunTime)

+ (instancetype _Nullable)structure;
- (Class _Nullable)object_getClass;
- (Class _Nullable)object_setClass:(Class _Nonnull)cls;
- (BOOL)object_isClass;
- (id _Nullable)object_getIvar:(Ivar _Nonnull)ivar;
- (void)object_setIvar:(Ivar _Nonnull)ivar value:(id _Nullable)value;
- (void)object_setIvarWithStrongDefault:(Ivar _Nonnull)ivar value:(id _Nullable)value;
+ (Class _Nullable)objc_getClass:(const char * _Nonnull)name;
+ (Class _Nullable)objc_getMetaClass:(const char * _Nonnull)name;
+ (Class _Nullable)objc_lookUpClass:(const char * _Nonnull)name;
- (Class _Nonnull)objc_getRequiredClass:(const char * _Nonnull)name;
+ (int)objc_getClassList:(int)bufferCount;
- (Class _Nonnull * _Nullable)objc_copyClassList:(unsigned int * _Nullable)outCount;
+ (const char * _Nonnull)class_getName;
+ (BOOL)class_isMetaClass;
+ (Class _Nullable)class_getSuperclass;
+ (int)class_getVersion;
+ (void)class_setVersion:(int)version;
+ (size_t)class_getInstanceSize;
+ (Ivar _Nullable)class_getInstanceVariable:(const char * _Nonnull)name;
+ (Ivar _Nullable)class_getClassVariable:(const char * _Nonnull)name;
+ (Ivar _Nonnull * _Nullable)class_copyIvarList:(unsigned int * _Nullable)outCount;
+ (Method _Nullable)class_getInstanceMethod:(SEL _Nonnull)name;
+ (Method _Nullable)class_getClassMethod:(SEL _Nonnull)name;
+ (IMP _Nullable)class_getMethodImplementation:(SEL _Nonnull)name;
+ (BOOL)class_respondsToSelector:(SEL _Nonnull)sel;
+ (Method _Nonnull * _Nullable)class_copyMethodList:(unsigned int * _Nullable)outCount;
+ (BOOL)class_conformsToProtocol:(Protocol * _Nullable)protocol;
+ (Protocol * __unsafe_unretained _Nonnull * _Nullable)class_copyProtocolList:(unsigned int * _Nullable)outCount;
+ (objc_property_t _Nullable)class_getProperty:(const char * _Nonnull)name;
+ (objc_property_t _Nonnull * _Nullable)class_copyPropertyList:(unsigned int * _Nullable)outCount;
+ (const uint8_t * _Nullable)class_getIvarLayout;
+ (const uint8_t * _Nullable)class_getWeakIvarLayout;
+ (BOOL)class_addMethod:(SEL _Nonnull)name imp:(IMP _Nonnull)imp types:(const char * _Nullable)types;
+ (IMP _Nullable)class_replaceMethod:(SEL _Nonnull)name imp:(IMP _Nonnull)imp types:(const char * _Nullable)types;
+ (BOOL)class_addIvar:(const char * _Nonnull)name size:(size_t)size alignment:(uint8_t)alignment types:(const char * _Nullable)types;
+ (BOOL)class_addProtocol:(Protocol * _Nonnull)protocol;
+ (BOOL)class_addProperty:(const char * _Nonnull)name attributes:(const objc_property_attribute_t * _Nullable)attributes attributeCount:(unsigned int)attributeCount;
+ (void)class_replaceProperty:(const char * _Nonnull)name attributes:(const objc_property_attribute_t * _Nullable)attributes attributeCount:(unsigned int)attributeCount;
+ (void)class_setIvarLayout:(const uint8_t * _Nullable)layout;
+ (void)class_setWeakIvarLayout:(const uint8_t * _Nullable)layout;
+ (id _Nullable)class_createInstance:(size_t)extraBytes;
+ (Class _Nullable)objc_allocateClassPair:(const char * _Nonnull)name extraBytes:(size_t)extraBytes;
+ (void)objc_registerClassPair;
+ (Class _Nonnull)objc_duplicateClass:(const char * _Nonnull)name extraBytes:(size_t)extraBytes;
+ (void)objc_disposeClassPair;
+ (const char * _Nullable)class_getImageName;
- (void)objc_enumerationMutation;
- (void)objc_setAssociatedObject:(const void * _Nonnull)key value:(id _Nullable)value policy:(objc_AssociationPolicy)policy;
- (id _Nullable)objc_getAssociatedObject:(const void * _Nonnull)key;
- (void)objc_removeAssociatedObjects;

@end
