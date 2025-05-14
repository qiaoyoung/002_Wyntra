// __DEBUG__
// __CLOSE_PRINT__
//
//  FogView.h
//  sohunews
//
//  Created by tianyulong on 2020/4/20.
//  Copyright © 2020 Sohu.com. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "UUMarqueeView.h"
#import "TapShareView.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: typedef enum : NSUInteger {
typedef enum : NSUInteger {
    //: CompletingUserInfoType_headicon = 1,
    CompletingUserInfoType_headicon = 1,
//: } CompletingUserInfoType;
} CompletingUserInfoType;

//: @interface SNLeadCompleteInfo : UIView
@interface FogView : UIView

//: @property (nonatomic, strong) UUMarqueeView *leftwardMarqueeView;
@property (nonatomic, strong) TapShareView *leftwardMarqueeView;

//: @property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *title;
//: @property (nonatomic, copy) NSString *actionTitle;
@property (nonatomic, copy) NSString *actionTitle;
//: @property (nonatomic, assign) CompletingUserInfoType completeType;
@property (nonatomic, assign) CompletingUserInfoType completeType;

//: @property (nonatomic, copy) void (^completion)(void);
@property (nonatomic, copy) void (^completion)(void);
//: @property (nonatomic, copy) void (^cancleCompletion)(void);
@property (nonatomic, copy) void (^cancleCompletion)(void);

/// 引导用户完善资料，显示提示框
//: + (instancetype)showTipViewForCompletingUserInfolWithDelay:(float)delay
+ (instancetype)with:(float)delay
                                                 //: superView:(UIView *)superView
                                                 success_strong:(UIView *)superView
                                    //: CompletingUserInfoType:(CompletingUserInfoType)type
                                    temp:(CompletingUserInfoType)type
                                               //: withMessage:(NSString *)msg
                                               keyboard:(NSString *)msg
                                                 //: trueBlock:(void (^)(void))trueBlock
                                                 should:(void (^)(void))trueBlock
                                               //: cancleBlock:(void (^)(void))callback;
                                               heel:(void (^)(void))callback;

//: - (void)p_updateInTransaction:(void (^)(SNLeadCompleteInfo *tipView))transactionBlock;
- (void)say:(void (^)(FogView *tipView))transactionBlock;

//: - (void)p_showOnView:(UIView *)superView;
- (void)displace:(UIView *)superView;

//: - (void)p_dismiss;
- (void)onNeedShow;


//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END