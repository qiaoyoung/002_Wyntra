
#import <Foundation/Foundation.h>
typedef struct {
    Byte warningTitleEaster;
    Byte *sumegrationRage;
    unsigned int quantityroduce;
    bool programGage;
} StretchAlongData;

NSString *StringFromStretchAlongData(StretchAlongData *data);


//: icon_reply_close
StretchAlongData kStr_everyText = (StretchAlongData){212, (Byte []){189, 183, 187, 186, 139, 166, 177, 164, 184, 173, 139, 183, 184, 187, 167, 177, 226}, 16, false};

// __DEBUG__
// __CLOSE_PRINT__
//
//  MagnitudeerestView.m
// On
//
//  Created by He on 2020/4/3.
//  Copyright © 2020 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZZZReplyContentView.h"
#import "MagnitudeerestView.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "UIColor+AppleProjectKit.h"
#import "UIColor+On.h"
//: #import "UIImage+AppleProjectKit.h"
#import "UIImage+On.h"

//: @interface ZZZReplyContentView ()
@interface MagnitudeerestView ()

//: @end
@end

//: @implementation ZZZReplyContentView
@implementation MagnitudeerestView

//: - (instancetype)initWithFrame:(CGRect)frame
- (instancetype)initWithFrame:(CGRect)frame
{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self)
    if (self)
    {
        //: _label = [[M80AttributedLabel alloc] init];
        _label = [[GreenNameView alloc] init];
        //: _label.numberOfLines = 1;
        _label.numberOfLines = 1;
        //: _label.textAlignment = kCTTextAlignmentLeft;
        _label.textAlignment = kCTTextAlignmentLeft;
        //: _label.lineBreakMode = kCTLineBreakByTruncatingTail;
        _label.lineBreakMode = kCTLineBreakByTruncatingTail;
        //: _label.font = [UIFont systemFontOfSize:12];
        _label.font = [UIFont systemFontOfSize:12];
        //: _label.textColor = [UIColor colorWithHex:0xBFBFBF alpha:1];
        _label.textColor = [UIColor ditheredColour:0xBFBFBF colorMessageAlpha:1];
        //: [self addSubview:_label];
        [self addSubview:_label];

        //: _closeButton = [UIButton buttonWithType:UIButtonTypeCustom];
        _closeButton = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_closeButton setImage:[UIImage imageNamed:@"icon_reply_close"]
        [_closeButton setImage:[UIImage imageNamed:StringFromStretchAlongData(&kStr_everyText)]
                      //: forState:UIControlStateNormal];
                      forState:UIControlStateNormal];
        //: [_closeButton addTarget:self action:@selector(onClicked:) forControlEvents:UIControlEventTouchUpInside];
        [_closeButton addTarget:self action:@selector(stigmatized:) forControlEvents:UIControlEventTouchUpInside];
        //: [self addSubview:_closeButton];
        [self addSubview:_closeButton];

        //: _divider = [[UIView alloc] init];
        _divider = [[UIView alloc] init];
        //: _divider.backgroundColor = [UIColor colorWithHex:0xBFBFBF alpha:1];
        _divider.backgroundColor = [UIColor ditheredColour:0xBFBFBF colorMessageAlpha:1];
        //: _divider.nim_width = 1;
        _divider.nim_width = 1;
        //: [self addSubview:_divider];
        [self addSubview:_divider];
    }
    //: return self;
    return self;
}

//: - (void)layoutSubviews
- (void)layoutSubviews
{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: self.closeButton.nim_size = CGSizeMake(self.nim_height, self.nim_height);
    self.closeButton.nim_size = CGSizeMake(self.nim_height, self.nim_height);

    //: self.divider.nim_left = self.closeButton.nim_right + 2;
    self.divider.nim_left = self.closeButton.nim_right + 2;

    //: self.label.nim_height = self.label.intrinsicContentSize.height + 5;
    self.label.nim_height = self.label.intrinsicContentSize.height + 5;
    //: self.label.nim_width = self.nim_width - self.closeButton.nim_right;
    self.label.nim_width = self.nim_width - self.closeButton.nim_right;
    //: self.label.nim_left = self.divider.nim_right + 2;
    self.label.nim_left = self.divider.nim_right + 2;
    //: self.label.nim_centerY = self.nim_height * 0.5;
    self.label.nim_centerY = self.nim_height * 0.5;

    //: self.divider.nim_height = self.label.nim_height;
    self.divider.nim_height = self.label.nim_height;
    //: self.divider.nim_centerY = self.nim_height * .5f;
    self.divider.nim_centerY = self.nim_height * .5f;
}

//: - (void)dismiss
- (void)pageDate
{
    //: [self.closeButton sendActionsForControlEvents:UIControlEventTouchUpInside];
    [self.closeButton sendActionsForControlEvents:UIControlEventTouchUpInside];
}

//: - (void)onClicked:(id)sender
- (void)stigmatized:(id)sender
{
    //: self.hidden = YES;
    self.hidden = YES;
    //: if ([self.delegate respondsToSelector:@selector(onClearReplyContent:)])
    if ([self.delegate respondsToSelector:@selector(fasts:)])
    {
        //: [self.delegate onClearReplyContent:sender];
        [self.delegate fasts:sender];
    }
}

//: @end
@end

Byte *StretchAlongDataToByte(StretchAlongData *data) {
    if (data->programGage) return data->sumegrationRage;
    for (int i = 0; i < data->quantityroduce; i++) {
        data->sumegrationRage[i] ^= data->warningTitleEaster;
    }
    data->sumegrationRage[data->quantityroduce] = 0;
    data->programGage = true;
    return data->sumegrationRage;
}

NSString *StringFromStretchAlongData(StretchAlongData *data) {
    return [NSString stringWithUTF8String:(char *)StretchAlongDataToByte(data)];
}
