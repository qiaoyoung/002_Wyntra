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
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @class SGScanViewConfigure;
@class ScanCellConfigureSure;

//: typedef void(^SGScanViewDoubleTapBlock)(BOOL selected);
typedef void(^SGScanViewDoubleTapBlock)(BOOL selected);

//: @interface SGScanView : UIView
@interface ImageView : UIView
/// 对象方法创建 ImageView
///
/// @param frame           ImageView 的 frame
/// @param configure       ImageView 的配置类 ScanCellConfigureSure
//: - (instancetype)initWithFrame:(CGRect)frame configure:(SGScanViewConfigure *)configure;
- (instancetype)initWithFileAllocationTableConfigure:(CGRect)frame configure_strong:(ScanCellConfigureSure *)configure;

/// 类方法创建 ImageView
///
/// @param frame           ImageView 的 frame
/// @param configure       ImageView 的配置类 ScanCellConfigureSure
//: + (instancetype)scanViewWithFrame:(CGRect)frame configure:(SGScanViewConfigure *)configure;
+ (instancetype)remove:(CGRect)frame frame:(ScanCellConfigureSure *)configure;

/// 辅助扫描边框区域的frame
/// 
/// 默认x为：0.5 * (self.frame.size.width - w)
/// 默认y为：0.5 * (self.frame.size.height - w)
/// 默认width和height为：0.7 * self.frame.size.width
//: @property (nonatomic, assign) CGRect borderFrame;
@property (nonatomic, assign) CGRect borderFrame;

/// 扫描区域的frame
//: @property (nonatomic, assign) CGRect scanFrame;
@property (nonatomic, assign) CGRect scanFrame;

/// 双击回调方法
//: @property (nonatomic, copy) SGScanViewDoubleTapBlock doubleTapBlock;
@property (nonatomic, copy) SGScanViewDoubleTapBlock doubleTapBlock;


/// 开始扫描
//: - (void)startScanning;
- (void)myLength;

/// 停止扫描
//: - (void)stopScanning;
- (void)image;

//: @end
@end