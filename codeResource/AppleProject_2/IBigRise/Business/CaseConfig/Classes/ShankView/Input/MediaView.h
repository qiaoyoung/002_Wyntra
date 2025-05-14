// __DEBUG__
// __CLOSE_PRINT__
//
//  MediaView.h
//  KEKEChat
//
//  Created by Yan Wang on 2024/4/27.
//  Copyright © 2024 KEKE. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "ZZZSessionConfig.h"
#import "PastConfig.h"
//: #import "DataInputProtocol.h"
#import "DataInputProtocol.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface ZZZInputAudioView : UIView
@interface MediaView : UIView

//: @property (nonatomic,weak) id<ZZZSessionConfig> config;
@property (nonatomic,weak) id<PastConfig> config;
//: @property (nonatomic,weak) id<NIMInputActionDelegate> actionDelegate;
@property (nonatomic,weak) id<DelegateDoing> actionDelegate;


//: @property (nonatomic, assign) NSTimeInterval recordTime;
@property (nonatomic, assign) NSTimeInterval recordTime;

//: @property (nonatomic, strong) UIButton *audioButton;
@property (nonatomic, strong) UIButton *audioButton;

//: @property (nonatomic, assign) NIMAudioRecordPhase recordPhase;
@property (nonatomic, assign) NIMAudioRecordPhase recordPhase;

/** 动画显示 */
//: - (void)animationShow;
- (void)arrangeShow;

/** 动画关闭 */
//: - (void)animationClose;
- (void)keyImage;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END
