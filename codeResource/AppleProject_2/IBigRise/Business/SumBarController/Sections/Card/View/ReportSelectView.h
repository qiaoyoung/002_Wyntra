// __DEBUG__
// __CLOSE_PRINT__
//
//  ReportSelectView.h
//  Lemon
//
//  Created by Yan Wang on 2025/2/6.
//  Copyright © 2025 Lemon. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @protocol NTESReportDelegate <NSObject>
@protocol MessagePath <NSObject>

//: - (void)didTouchSubmitButton:(NSString *)reason;
- (void)lasting:(NSString *)reason;

//: @end
@end

//: @interface ZMONReportUserView : UIView
@interface ReportSelectView : UIView

//: @property (nonatomic,weak) id<NTESReportDelegate> delegate;
@property (nonatomic,weak) id<MessagePath> delegate;

/** 动画显示 */
//: - (void)animationShow;
- (void)lineItem;

/** 动画关闭 */
//: - (void)animationClose;
- (void)keyImage;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END