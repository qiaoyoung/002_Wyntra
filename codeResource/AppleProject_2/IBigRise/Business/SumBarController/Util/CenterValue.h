// __DEBUG__
// __CLOSE_PRINT__
//
//  CenterValue.h
//  NIM
//
//  Created by chris on 15/9/18.
//  Copyright © 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: typedef NS_ENUM(NSUInteger,NTESNetworkType) {
typedef NS_ENUM(NSUInteger,NTESNetworkType) {
    //: NTESNetworkTypeUnknown,
    NTESNetworkTypeUnknown,
    //: NTESNetworkTypeWifi,
    NTESNetworkTypeWifi,
    //: NTESNetworkTypeWwan,
    NTESNetworkTypeWwan,
    //: NTESNetworkType2G,
    NTESNetworkType2G,
    //: NTESNetworkType3G,
    NTESNetworkType3G,
    //: NTESNetworkType4G,
    NTESNetworkType4G,
//: };
};

//: @interface NTESDevice : NSObject
@interface CenterValue : NSObject

//: + (NTESDevice *)currentDevice;
+ (CenterValue *)displayEnable;

//图片/音频推荐参数
//: - (CGFloat)suggestImagePixels;
- (CGFloat)downGroundImage;

//: - (CGFloat)compressQuality;
- (CGFloat)time;

//App状态
//: - (BOOL)isUsingWifi;
- (BOOL)box;
//: - (BOOL)isInBackground;
- (BOOL)answer;

//: - (NTESNetworkType)currentNetworkType;
- (NTESNetworkType)rangeCustom;
//: - (NSString *)networkStatus:(NTESNetworkType)networkType;
- (NSString *)metadata:(NTESNetworkType)networkType;

//: - (NSInteger)cpuCount;
- (NSInteger)strikeOut;

//: - (BOOL)isLowDevice;
- (BOOL)natural;
//: - (BOOL)isIphone;
- (BOOL)success;
//: - (NSString *)machineName;
- (NSString *)should;


//: - (CGFloat)statusBarHeight;
- (CGFloat)tabIn;

//: @end
@end