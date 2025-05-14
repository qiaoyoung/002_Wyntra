// __DEBUG__
// __CLOSE_PRINT__
//
//  MagnitudeerestView.h
// On
//
//  Created by He on 2020/4/3.
//  Copyright © 2020 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "M80AttributedLabel.h"
#import "GreenNameView.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @protocol ZZZReplyContentViewDelegate <NSObject>
@protocol ShouldDelegate <NSObject>

//: @optional
@optional
//: - (void)onClearReplyContent:(id)sender;
- (void)fasts:(id)sender;

//: @end
@end

//: @interface ZZZReplyContentView : UIView
@interface MagnitudeerestView : UIView

//: @property (nonatomic,strong) UIButton *closeButton;
@property (nonatomic,strong) UIButton *closeButton;

//: @property (nonatomic,strong) UIView *divider;
@property (nonatomic,strong) UIView *divider;

//: @property (nonatomic,strong) M80AttributedLabel *label;
@property (nonatomic,strong) GreenNameView *label;

//: @property (nonatomic,weak) id<ZZZReplyContentViewDelegate> delegate;
@property (nonatomic,weak) id<ShouldDelegate> delegate;

//: - (void)dismiss;
- (void)pageDate;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END