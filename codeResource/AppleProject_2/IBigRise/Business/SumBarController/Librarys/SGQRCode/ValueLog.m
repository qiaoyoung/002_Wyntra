// __DEBUG__
// __CLOSE_PRINT__
//
//  KEKEProject
//  KEKEChat
//
//  Created by tyl.
//  Copyright © 2024 Ali. All rights reserved.
//

// __M_A_C_R_O__
//: #import "SGQRCodeLog.h"
#import "ValueLog.h"

//: static SGQRCodeLog *singleton = nil;
static ValueLog *kConst_buttonValue = nil;

//: @implementation SGQRCodeLog
@implementation ValueLog

//: + (instancetype)sharedQRCodeLog {
+ (instancetype)than {
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: if (singleton == nil) {
        if (kConst_buttonValue == nil) {
            //: singleton = [[super allocWithZone:NULL] init];
            kConst_buttonValue = [[super allocWithZone:NULL] init];
        }
    //: });
    });
    //: return singleton;
    return kConst_buttonValue;
}

//: + (instancetype)allocWithZone:(struct _NSZone *)zone {
+ (instancetype)allocWithZone:(struct _NSZone *)zone {
    //: return [[self class] sharedQRCodeLog];
    return [[self class] than];
}

//: - (id)copyWithZone:(NSZone *)zone {
- (id)show:(NSZone *)zone {
    //: return [[self class] sharedQRCodeLog];
    return [[self class] than];
}

//: - (id)mutableCopyWithZone:(NSZone *)zone {
- (id)headwater:(NSZone *)zone {
    //: return [[self class] sharedQRCodeLog];
    return [[self class] than];
}

//: @end
@end