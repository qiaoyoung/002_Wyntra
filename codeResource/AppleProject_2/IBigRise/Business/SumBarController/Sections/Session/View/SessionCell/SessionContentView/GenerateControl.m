
#import <Foundation/Foundation.h>

NSString *StringFromSessionKeyData(Byte *data);


//: {8,20,8,20}
Byte kStr_fluLayerLeftValue[] = {6, 11, 46, 6, 178, 158, 169, 102, 90, 96, 94, 90, 102, 90, 96, 94, 171, 163};


//: icon_session_time_bg
Byte kStr_operateValue[] = {42, 20, 75, 4, 180, 174, 186, 185, 170, 190, 176, 190, 190, 180, 186, 185, 170, 191, 180, 184, 176, 170, 173, 178, 157};

// __DEBUG__
// __CLOSE_PRINT__
//
//  GenerateControl.m
//  NIM
//
//  Created by chris on 2017/7/17.
//  Copyright © 2017年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESSessionRedPacketTipContentView.h"
#import "GenerateControl.h"
//: #import "NTESRedPacketTipAttachment.h"
#import "TitleAttachment.h"
//: #import "UIView+NTES.h"
#import "UIView+Item.h"
//: #import "UIImage+AppleProjectKit.h"
#import "UIImage+On.h"
//: #import "NTESCustomAttachmentDefines.h"
#import "NTESCustomAttachmentDefines.h"

//: @interface NTESSessionRedPacketTipContentView()<M80AttributedLabelDelegate>
@interface GenerateControl()<EdgeDisable>

//: @end
@end

//: @implementation NTESSessionRedPacketTipContentView
@implementation GenerateControl

//: - (instancetype)initSessionMessageContentView
- (instancetype)initDistance
{
    //: if (self = [super initSessionMessageContentView]) {
    if (self = [super initDistance]) {
        //: _label = [[M80AttributedLabel alloc] initWithFrame:CGRectZero];
        _label = [[GreenNameView alloc] initWithFrame:CGRectZero];
        //: _label.font = [UIFont systemFontOfSize:10];
        _label.font = [UIFont systemFontOfSize:10];
        //: _label.textColor = [UIColor whiteColor];;
        _label.textColor = [UIColor whiteColor];;

        //: _label.backgroundColor = [UIColor clearColor];
        _label.backgroundColor = [UIColor clearColor];
        //: _label.numberOfLines = 0;
        _label.numberOfLines = 0;
        //: _label.M80delegate = self;
        _label.M80delegate = self;
        //: _label.underLineForLink = NO;
        _label.underLineForLink = NO;
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
    //: [self.label setText:nil];
    [self.label setText:nil];
    //: if ([attachment respondsToSelector:@selector(formatedMessage)]) {
    if ([attachment respondsToSelector:@selector(withLabel)]) {
        //: NSString *formatedMessage = attachment.formatedMessage;
        NSString *formatedMessage = attachment.withLabel;
        //: [self.label appendText:formatedMessage];
        [self.label masterKeyTitle:formatedMessage];
        //: NSRange range = [formatedMessage rangeOfString:@"红包".ntes_localized];
        NSRange range = [formatedMessage rangeOfString:@"红包".colorLocalized];
        //: if (range.location != NSNotFound)
        if (range.location != NSNotFound)
        {
            //由于还有个 icon , 需要将 range 往后挪一个位置
//            range = NSMakeRange(range.location+1, range.length);
//            [self.label addCustomLink:model forRange:range linkColor:UIColorFromRGB(0x238efa)];
        }
    }
}




//: - (UIImage *)chatBubbleImageForState:(UIControlState)state outgoing:(BOOL)outgoing
- (UIImage *)withCell:(UIControlState)state colorUnwantedVisualizationStateGestureBubble:(BOOL)outgoing
{
    //: UIImage *image = [UIImage imageNamed:@"icon_session_time_bg"];
    UIImage *image = [UIImage imageNamed:StringFromSessionKeyData(kStr_operateValue)];
    //: UIEdgeInsets insets = UIEdgeInsetsFromString(@"{8,20,8,20}");
    UIEdgeInsets insets = UIEdgeInsetsFromString(StringFromSessionKeyData(kStr_fluLayerLeftValue));
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


//: #pragma mark - M80AttributedLabelDelegate
#pragma mark - EdgeDisable
//: - (void)m80AttributedLabel:(M80AttributedLabel *)label
- (void)mark:(GreenNameView *)label
             //: clickedOnLink:(id)linkData
             digitizerLink:(id)linkData
{
    //: if ([self.delegate respondsToSelector:@selector(onCatchEvent:)]) {
    if ([self.delegate respondsToSelector:@selector(inputStop:)]) {
        //: ZZZKitEvent *event = [[ZZZKitEvent alloc] init];
        ItemTap *event = [[ItemTap alloc] init];
        //: event.eventName = NTESShowRedPacketDetailEvent;
        event.eventName = kConst_nowData;
        //: event.messageModel = self.model;
        event.messageModel = self.model;
        //: event.data = self;
        event.data = self;
        //: [self.delegate onCatchEvent:event];
        [self.delegate inputStop:event];
    }
}


//: @end
@end

Byte * SessionKeyDataToCache(Byte *data) {
    int operateRecording = data[0];
    int supposed = data[1];
    Byte stairsContent = data[2];
    int increasedLoo = data[3];
    if (!operateRecording) return data + increasedLoo;
    for (int i = increasedLoo; i < increasedLoo + supposed; i++) {
        int value = data[i] - stairsContent;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[increasedLoo + supposed] = 0;
    return data + increasedLoo;
}

NSString *StringFromSessionKeyData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)SessionKeyDataToCache(data)];
}
