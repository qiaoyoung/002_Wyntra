
#import <Foundation/Foundation.h>

NSString *StringFromVasIllData(Byte *data);


//: icon_session_time_bg
Byte kStr_indexText[] = {93, 20, 36, 8, 3, 26, 177, 240, 141, 135, 147, 146, 131, 151, 137, 151, 151, 141, 147, 146, 131, 152, 141, 145, 137, 131, 134, 139, 46};


//: {8,20,8,20}
Byte kStr_kingdomValue[] = {12, 11, 56, 11, 200, 165, 38, 184, 189, 99, 54, 179, 112, 100, 106, 104, 100, 112, 100, 106, 104, 181, 94};

// __DEBUG__
// __CLOSE_PRINT__
//
//  FrameControl.m
//  NIM
//
//  Created by chris on 2016/11/6.
//  Copyright © 2016年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESSessionTipContentView.h"
#import "FrameControl.h"
//: #import "NTESCustomAttachmentDefines.h"
#import "NTESCustomAttachmentDefines.h"
//: #import "UIView+NTES.h"
#import "UIView+Item.h"
//: #import "UIImage+AppleProjectKit.h"
#import "UIImage+On.h"

//: @implementation NTESSessionTipContentView
@implementation FrameControl

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

//: - (void)refresh:(ZZZMessageModel *)model{
- (void)text:(CollectionModel *)model{
    //: [super refresh:model];
    [super text:model];
    //: NIMCustomObject *object = (NIMCustomObject *)model.message.messageObject;
    NIMCustomObject *object = (NIMCustomObject *)model.message.messageObject;
    //: id<NTESCustomAttachmentInfo> attachment = (id<NTESCustomAttachmentInfo>)object.attachment;
    id<ShouldQuantityComment> attachment = (id<ShouldQuantityComment>)object.attachment;
    //: if ([attachment respondsToSelector:@selector(formatedMessage)]) {
    if ([attachment respondsToSelector:@selector(withLabel)]) {
        //: self.label.text = [attachment formatedMessage];
        self.label.text = [attachment withLabel];
    }
    //: self.label.textColor = [UIColor whiteColor];;
    self.label.textColor = [UIColor whiteColor];;
    //: self.label.font = [UIFont systemFontOfSize:10.f];
    self.label.font = [UIFont systemFontOfSize:10.f];

    //: self.bubbleImageView.hidden = NO;
    self.bubbleImageView.hidden = NO;
}

//: - (UIImage *)chatBubbleImageForState:(UIControlState)state outgoing:(BOOL)outgoing
- (UIImage *)withCell:(UIControlState)state colorUnwantedVisualizationStateGestureBubble:(BOOL)outgoing
{
    //: UIImage *image = [UIImage imageNamed:@"icon_session_time_bg"];
    UIImage *image = [UIImage imageNamed:StringFromVasIllData(kStr_indexText)];
    //: UIEdgeInsets insets = UIEdgeInsetsFromString(@"{8,20,8,20}");
    UIEdgeInsets insets = UIEdgeInsetsFromString(StringFromVasIllData(kStr_kingdomValue));
    //: return [image resizableImageWithCapInsets:insets resizingMode:UIImageResizingModeStretch];
    return [image resizableImageWithCapInsets:insets resizingMode:UIImageResizingModeStretch];
}

//: - (void)layoutSubviews
- (void)layoutSubviews
{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: CGFloat padding = 20.f;
    CGFloat padding = 20.f;
    //: self.label.size = [self.label sizeThatFits:CGSizeMake(self.width - 2 * padding, 1.7976931348623157e+308)];
    self.label.size = [self.label sizeThatFits:CGSizeMake(self.width - 2 * padding, 1.7976931348623157e+308)];
    //: self.label.centerX = self.width * .5f;
    self.label.centerX = self.width * .5f;
    //: self.label.centerY = self.height * .5f;
    self.label.centerY = self.height * .5f;
    //: self.bubbleImageView.frame = CGRectInset(self.label.frame, -8, -4);
    self.bubbleImageView.frame = CGRectInset(self.label.frame, -8, -4);
}


//: @end
@end

Byte * VasIllDataToCache(Byte *data) {
    int orationLabel = data[0];
    int expectant = data[1];
    Byte alongside = data[2];
    int cycling = data[3];
    if (!orationLabel) return data + cycling;
    for (int i = cycling; i < cycling + expectant; i++) {
        int value = data[i] - alongside;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[cycling + expectant] = 0;
    return data + cycling;
}

NSString *StringFromVasIllData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)VasIllDataToCache(data)];
}
