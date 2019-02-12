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

#import "TDFAppConfigurationMacro.h"
#import "TDFBaseInfoDefaults.h"
#import "TDFBaseInfoKit.h"
#import "TDFProjectNetworkingMacro.h"

FOUNDATION_EXPORT double TDFBaseInfoKitVersionNumber;
FOUNDATION_EXPORT const unsigned char TDFBaseInfoKitVersionString[];

