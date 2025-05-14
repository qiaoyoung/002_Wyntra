// __DEBUG__
// __CLOSE_PRINT__
//
//  HideTextView.h
// On
//
//  Created by Wenchao Ding on 2020/11/7.
//  Copyright © 2020 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "ZZZSessionMessageContentView.h"
#import "ShouldControl.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface ZZZSessionRtcCallRecordContentView : ZZZSessionMessageContentView
@interface HideTextView : ShouldControl

//: @property (nonatomic, strong) UILabel *textLabel;
@property (nonatomic, strong) UILabel *textLabel;
//: @property (nonatomic, strong) UIImageView *icImage;
@property (nonatomic, strong) UIImageView *icImage;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END