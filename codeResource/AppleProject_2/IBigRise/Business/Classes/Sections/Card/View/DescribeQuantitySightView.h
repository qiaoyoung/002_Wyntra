// __DEBUG__
// __CLOSE_PRINT__
//
//  DescribeQuantitySightView.h
//  Lemon
//
//  Created by Yan Wang on 2025/2/15.
//  Copyright © 2025 Lemon. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @protocol NTESReportNextDelegate <NSObject>
@protocol ContainerIndependent <NSObject>

//: - (void)didTouchBlackButton;
- (void)textWith;
//: - (void)didTouchDeleteButton;
- (void)clickColor;

//: @end
@end

//: @interface ZMONReportNextView : UIView
@interface DescribeQuantitySightView : UIView

//: @property (nonatomic,weak) id<NTESReportNextDelegate> delegate;
@property (nonatomic,weak) id<ContainerIndependent> delegate;

/** 动画显示 */
//: - (void)animationShow;
- (void)placeTag;

/** 动画关闭 */
//: - (void)animationClose;
- (void)keyImage;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END