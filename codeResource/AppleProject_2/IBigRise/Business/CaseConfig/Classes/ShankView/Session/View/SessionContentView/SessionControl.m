// __DEBUG__
// __CLOSE_PRINT__
//
//  SessionControl.m
// On
//
//  Created by chris on 15/3/9.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZZZSessionNotificationContentView.h"
#import "SessionControl.h"
//: #import "ZZZMessageModel.h"
#import "CollectionModel.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "ZZZKitUtil.h"
#import "TingText.h"
//: #import "UIImage+AppleProjectKit.h"
#import "UIImage+On.h"
//: #import "AppleProjectKit.h"
#import "On.h"

//: @implementation ZZZSessionNotificationContentView
@implementation SessionControl

//: - (instancetype)initSessionMessageContentView
- (instancetype)initDistance
{
    //: if (self = [super initSessionMessageContentView]) {
    if (self = [super initDistance]) {
        //: _label = [[UILabel alloc] initWithFrame:CGRectZero];
        _label = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _label.numberOfLines = 0;
        _label.numberOfLines = 0;
        //: [self addSubview:_label];
        [self addSubview:_label];
    }
    //: return self;
    return self;
}

//: - (void)refresh:(ZZZMessageModel *)model
- (void)text:(CollectionModel *)model
{
    //: [super refresh:model];
    [super text:model];
    //: self.label.text = [ZZZKitUtil messageTipContent:model.message];
    self.label.text = [TingText constituent:model.message];
    //: ZZZKitSetting *setting = [[AppleProjectKit sharedKit].config setting:model.message];
    CaseSetting *setting = [[On along].config style:model.message];

    //: self.label.textColor = setting.textColor;
    self.label.textColor = setting.textColor;
    //: self.label.font = setting.font;
    self.label.font = setting.font;
    //: self.bubbleImageView.hidden = NO;
    self.bubbleImageView.hidden = NO;

//    self.label.hidden = YES;
//    self.bubbleImageView.hidden = YES;
}

//: - (void)layoutSubviews
- (void)layoutSubviews
{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: CGFloat padding = [AppleProjectKit sharedKit].config.maxNotificationTipPadding;
    CGFloat padding = [On along].config.color;
    //: self.label.nim_size = [self.label sizeThatFits:CGSizeMake(self.nim_width - 2 * padding, 1.7976931348623157e+308)];
    self.label.nim_size = [self.label sizeThatFits:CGSizeMake(self.nim_width - 2 * padding, 1.7976931348623157e+308)];
    //: self.label.nim_centerX = self.nim_width * .5f;
    self.label.nim_centerX = self.nim_width * .5f;
    //: self.label.nim_centerY = self.nim_height * .5f;
    self.label.nim_centerY = self.nim_height * .5f;
    //: self.bubbleImageView.frame = CGRectInset(self.label.frame, -8, -4);
    self.bubbleImageView.frame = CGRectInset(self.label.frame, -8, -4);
}

//: @end
@end