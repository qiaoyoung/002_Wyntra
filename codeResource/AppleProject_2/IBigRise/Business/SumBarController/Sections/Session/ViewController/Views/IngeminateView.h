// __DEBUG__
// __CLOSE_PRINT__
//
//  IngeminateView.h
//  NIM
//
//  Created by Yan Wang on 2024/8/9.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @protocol NTESReportContentDelegate <NSObject>
@protocol DelegateStatusKey <NSObject>

//: - (void)didTouchSubmitContentButton:(NSString *)reason;
- (void)texted:(NSString *)reason;

//: @end
@end

//: @interface ZMONTranslateView : UIView
@interface IngeminateView : UIView

//: @property (nonatomic,weak) id<NTESReportContentDelegate> delegate;
@property (nonatomic,weak) id<DelegateStatusKey> delegate;
/** 动画显示 */
//: - (void)animationShow;
- (void)success;

/** 动画关闭 */
//: - (void)animationClose;
- (void)keyImage;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END