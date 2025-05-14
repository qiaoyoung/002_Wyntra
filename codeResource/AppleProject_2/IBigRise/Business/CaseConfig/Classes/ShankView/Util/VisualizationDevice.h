// __DEBUG__
// __CLOSE_PRINT__
//
//  VisualizationDevice.h
//  NIM
//
//  Created by chris on 15/9/18.
//  Copyright © 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @interface ZZZKitDevice : NSObject
@interface VisualizationDevice : NSObject

//: + (ZZZKitDevice *)currentDevice;
+ (VisualizationDevice *)signalDevice;

/// 语言
//: + (NSString *)language;
+ (NSString *)completeAdd;

//图片/音频推荐参数
//: - (CGFloat)suggestImagePixels;
- (CGFloat)toteUp;

//: - (CGFloat)compressQuality;
- (CGFloat)streetSmart;

//: - (CGFloat)statusBarHeight;
- (CGFloat)coatButton;

//: @end
@end