// __DEBUG__
// __CLOSE_PRINT__
//
//  WeltanschauungTextView.h
//  JYImageTextCombine
//
//  Created by JackYoung on 2022/3/31.
//  Copyright © 2022 Jack Young. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface ZZZTextView : UITextView
@interface WeltanschauungTextView : UITextView

//: @property (nonatomic, copy)void (^selectBlock)(ZZZMediaItem *item);
@property (nonatomic, copy)void (^selectBlock)(VagaryItem *item);

//: @property (nonatomic, copy) NSArray *selectedAllRangeButtons;
@property (nonatomic, copy) NSArray *selectedAllRangeButtons;
//: @property (nonatomic, copy) NSArray *selectedPartRangeButtons;
@property (nonatomic, copy) NSArray *selectedPartRangeButtons;

//: @property (nonatomic,weak) id<ZZZSessionConfig> config;
@property (nonatomic,weak) id<PastConfig> config;
//: @property (nonatomic,weak) id<NIMInputActionDelegate> actionDelegate;
@property (nonatomic,weak) id<DelegateDoing> actionDelegate;


//取消文本选中效果
//: - (void)hideTextSelection;
- (void)styleChange;

//: - (void)genMediaButtonsWithMessage:(NIMMessage *)message;
- (void)display:(NIMMessage *)message;

// 群公告复制
//: - (void)new_genMediaButton;
- (void)textBlockButton;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END