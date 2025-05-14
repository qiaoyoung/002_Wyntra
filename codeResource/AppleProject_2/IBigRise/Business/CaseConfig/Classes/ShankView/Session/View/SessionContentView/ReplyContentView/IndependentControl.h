// __DEBUG__
// __CLOSE_PRINT__
//
//  IndependentControl.h
// On
//
//  Created by He on 2020/3/25.
//  Copyright © 2020 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZZZSessionMessageContentView.h"
#import "ShouldControl.h"

//: @class M80AttributedLabel;
@class GreenNameView;
//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface ZZZReplyedTextContentView : ZZZSessionMessageContentView
@interface IndependentControl : ShouldControl

//: @property (nonatomic, strong) M80AttributedLabel *textLabel;
@property (nonatomic, strong) GreenNameView *textLabel;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END