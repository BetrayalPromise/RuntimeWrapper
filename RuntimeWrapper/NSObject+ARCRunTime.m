//
//  NSObject+ARCRunTime.m
//  Footstone
//
//  Created by LiChunYang on 7/3/2018.
//  Copyright © 2018 BetrayalPromise. All rights reserved.
//

#import "NSObject+ARCRunTime.h"

@implementation NSObject (ARCRunTime)

+ (instancetype _Nullable)structure {
    return class_createInstance(self, sizeof(self));
}

- (Class _Nullable)object_getClass {
    return object_getClass(self);
}

- (Class _Nullable)object_setClass:(Class _Nonnull)cls {
    return object_setClass(self, cls);
}

- (BOOL)object_isClass {
    return object_isClass(self);
}

- (id _Nullable)object_getIvar:(Ivar _Nonnull)ivar {
    return object_getIvar(self, ivar);
}

- (void)object_setIvar:(Ivar _Nonnull)ivar value:(id _Nullable)value {
    object_setIvar(self, ivar, value);
}

- (void)object_setIvarWithStrongDefault:(Ivar _Nonnull)ivar value:(id _Nullable)value {
    if (@available(iOS 10.0, *)) {
        object_setIvarWithStrongDefault(self, ivar, value);
    } else {
        NSLog(@"api only support ios 10.0 or later");
    }
}

+ (Class _Nullable)objc_getClass:(const char * _Nonnull)name {
    return objc_getClass(name);
}

+ (Class _Nullable)objc_getMetaClass:(const char * _Nonnull)name {
    return objc_getMetaClass(name);
}

+ (Class _Nullable)objc_lookUpClass:(const char * _Nonnull)name {
    return objc_lookUpClass(name);
}

- (Class _Nonnull)objc_getRequiredClass:(const char * _Nonnull)name {
    return objc_getRequiredClass(name);
}

+ (int)objc_getClassList:(int)bufferCount {
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincompatible-pointer-types-discards-qualifiers"
    return objc_getClassList(&self, bufferCount);
#pragma clang diagnostic pop
}

- (Class _Nonnull * _Nullable)objc_copyClassList:(unsigned int * _Nullable)outCount {
    return objc_copyClassList(outCount);
}

+ (const char * _Nonnull)class_getName {
    return class_getName(self);
}

+ (BOOL)class_isMetaClass {
    return class_isMetaClass(self);
}

+ (Class _Nullable)class_getSuperclass {
    return class_getSuperclass(self);
}

+ (int)class_getVersion {
    return class_getVersion(self);
}

+ (void)class_setVersion:(int)version {
    class_setVersion(self, version);
}

+ (size_t)class_getInstanceSize {
    return class_getInstanceSize(self);
}

+ (Ivar _Nullable)class_getInstanceVariable:(const char * _Nonnull)name {
    return class_getInstanceVariable(self, name);
}

+ (Ivar _Nullable)class_getClassVariable:(const char * _Nonnull)name {
    return class_getClassVariable(self, name);
}

+ (Ivar _Nonnull * _Nullable)class_copyIvarList:(unsigned int * _Nullable)outCount {
    return class_copyIvarList(self, outCount);
}

+ (Method _Nullable)class_getInstanceMethod:(SEL _Nonnull)name {
    return class_getInstanceMethod(self, name);
}

+ (Method _Nullable)class_getClassMethod:(SEL _Nonnull)name {
    return class_getClassMethod(self, name);
}

+ (IMP _Nullable)class_getMethodImplementation:(SEL _Nonnull)name {
    return class_getMethodImplementation(self, name);
}

+ (BOOL)class_respondsToSelector:(SEL _Nonnull)sel {
    return class_respondsToSelector(self, sel);
}

+ (Method _Nonnull * _Nullable)class_copyMethodList:(unsigned int * _Nullable)outCount {
    return class_copyMethodList(self, outCount);
}

+ (BOOL)class_conformsToProtocol:(Protocol * _Nullable)protocol {
    return class_conformsToProtocol(self, protocol);
}

+ (Protocol * __unsafe_unretained _Nonnull * _Nullable)class_copyProtocolList:(unsigned int * _Nullable)outCount {
    return class_copyProtocolList(self, outCount);
}

+ (objc_property_t _Nullable)class_getProperty:(const char * _Nonnull)name {
    return class_getProperty(self, name);
}

+ (objc_property_t _Nonnull * _Nullable)class_copyPropertyList:(unsigned int * _Nullable)outCount {
    return class_copyPropertyList(self, outCount);
}

+ (const uint8_t * _Nullable)class_getIvarLayout {
    return class_getIvarLayout(self);
}

+ (const uint8_t * _Nullable)class_getWeakIvarLayout {
    return class_getWeakIvarLayout(self);
}

+ (BOOL)class_addMethod:(SEL _Nonnull)name imp:(IMP _Nonnull)imp types:(const char * _Nullable)types {
    return class_addMethod(self, name, imp, types);
}

+ (IMP _Nullable)class_replaceMethod:(SEL _Nonnull)name imp:(IMP _Nonnull)imp types:(const char * _Nullable)types {
    return class_replaceMethod(self, name, imp, types);
}

+ (BOOL)class_addIvar:(const char * _Nonnull)name size:(size_t)size alignment:(uint8_t)alignment types:(const char * _Nullable)types {
    return class_addIvar(self, name, size, alignment, types);
}

+ (BOOL)class_addProtocol:(Protocol * _Nonnull)protocol {
    return class_addProtocol(self, protocol);
}

+ (BOOL)class_addProperty:(const char * _Nonnull)name attributes:(const objc_property_attribute_t * _Nullable)attributes attributeCount:(unsigned int)attributeCount {
    return class_addProperty(self, name, attributes, attributeCount);
}

+ (void)class_replaceProperty:(const char * _Nonnull)name attributes:(const objc_property_attribute_t * _Nullable)attributes attributeCount:(unsigned int)attributeCount {
    class_replaceProperty(self, name, attributes, attributeCount);
}

+ (void)class_setIvarLayout:(const uint8_t * _Nullable)layout {
    class_setIvarLayout(self, layout);
}

+ (void)class_setWeakIvarLayout:(const uint8_t * _Nullable)layout {
    class_setWeakIvarLayout(self, layout);
}

+ (id _Nullable)class_createInstance:(size_t)extraBytes {
    return class_createInstance(self, extraBytes);
}

+ (Class _Nullable)objc_allocateClassPair:(const char * _Nonnull)name extraBytes:(size_t)extraBytes {
    return objc_allocateClassPair(class_getSuperclass(self), name, extraBytes);
}


+ (void)objc_registerClassPair {
    objc_registerClassPair(self);
}

+ (Class _Nonnull)objc_duplicateClass:(const char * _Nonnull)name extraBytes:(size_t)extraBytes {
    return objc_duplicateClass(self, name, extraBytes);
}

+ (void)objc_disposeClassPair {
    objc_disposeClassPair(self);
}


+ (const char * _Nullable)class_getImageName {
    return class_getImageName(self);
}

- (void)objc_enumerationMutation {
    objc_enumerationMutation(self);
}

- (void)objc_setAssociatedObject:(const void * _Nonnull)key value:(id _Nullable)value policy:(objc_AssociationPolicy)policy {
    objc_setAssociatedObject(self, key, value, policy);
}

- (id _Nullable)objc_getAssociatedObject:(const void * _Nonnull)key {
    return objc_getAssociatedObject(self, key);
}

- (void)objc_removeAssociatedObjects {
    objc_removeAssociatedObjects(self);
}

@end
