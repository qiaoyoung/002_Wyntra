// __DEBUG__
// __CLOSE_PRINT__
//
//  InputSizeView.h
//  Lemon
//
//  Created by Yan Wang on 2025/2/5.
//  Copyright © 2025 Lemon. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @protocol NTESDeactivateAccountDelegate <NSObject>
@protocol ContentTing <NSObject>

//: - (void)didTouchNextButton;
- (void)labelManager;
//: - (void)didTouchProtocolButton;
- (void)progressNim;

//: @end
@end

//: @interface ZMONDeactivateAccountView : UIView
@interface InputSizeView : UIView

//: @property (nonatomic,weak) id<NTESDeactivateAccountDelegate> delegate;
@property (nonatomic,weak) id<ContentTing> delegate;

/** 动画显示 */
//: - (void)animationShow;
- (void)phonationShow;

/** 动画关闭 */
//: - (void)animationClose;
- (void)keyImage;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END