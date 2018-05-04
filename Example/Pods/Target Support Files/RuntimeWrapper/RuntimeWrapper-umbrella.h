#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "RuntimeWrapper.h"
#import "NSObject+ARCRunTime.h"
#import "NSObject+MRCRunTime.h"

FOUNDATION_EXPORT double RuntimeWrapperVersionNumber;
FOUNDATION_EXPORT const unsigned char RuntimeWrapperVersionString[];

