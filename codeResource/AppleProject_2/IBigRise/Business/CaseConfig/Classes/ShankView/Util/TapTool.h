// __DEBUG__
// __CLOSE_PRINT__
//
//  TapTool.h
// On
//
//  Created by chris on 2017/10/20.
//  Copyright © 2017年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: typedef NS_ENUM(NSUInteger, NIMKitAuthorizationStatus) {
typedef NS_ENUM(NSUInteger, NIMKitAuthorizationStatus) {
    //: NIMKitAuthorizationStatusAuthorized, 
    NIMKitAuthorizationStatusAuthorized, // 已授权
    //: NIMKitAuthorizationStatusDenied, 
    NIMKitAuthorizationStatusDenied, // 拒绝
    //: NIMKitAuthorizationStatusRestricted, 
    NIMKitAuthorizationStatusRestricted, // 应用没有相关权限，且当前用户无法改变这个权限，比如:家长控制
    //: NIMKitAuthorizationStatusNotSupport 
    NIMKitAuthorizationStatusNotSupport // 硬件等不支持
//: };
};

//: @interface ZZZKitAuthorizationTool : NSObject
@interface TapTool : NSObject

//: + (void)requestPhotoLibraryAuthorization:(void(^)(NIMKitAuthorizationStatus status))callback;
+ (void)change:(void(^)(NIMKitAuthorizationStatus status))callback;

//: + (void)requestCameraAuthorization:(void(^)(NIMKitAuthorizationStatus status))callback;
+ (void)atAuthorization:(void(^)(NIMKitAuthorizationStatus status))callback;

//: + (void)requestAddressBookAuthorization:(void (^)(NIMKitAuthorizationStatus))callback;
+ (void)item:(void (^)(NIMKitAuthorizationStatus))callback;

//: @end
@end