
#import <Foundation/Foundation.h>
typedef struct {
    Byte varyAdventure;
    Byte *lengthSectorText;
    unsigned int magnitudeentionVia;
    bool objectExpose;
	int curStairs;
	int retchHostage;
	int intervalentionAnybody;
} ShortageData;

NSString *StringFromShortageData(ShortageData *data);


//: NTESChatroomTextContentView
ShortageData kStr_activityTunText = (ShortageData){243, (Byte []){189, 167, 182, 160, 176, 155, 146, 135, 129, 156, 156, 158, 167, 150, 139, 135, 176, 156, 157, 135, 150, 157, 135, 165, 154, 150, 132, 105}, 27, false, 133, 216, 82};

// __DEBUG__
// __CLOSE_PRINT__
//
//  SuggestEdgeConfig.m
//  NIM
//
//  Created by chris on 16/1/13.
//  Copyright © 2016年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESChatroomTextContentConfig.h"
#import "SuggestEdgeConfig.h"
//: #import "M80AttributedLabel+AppleProjectKit.h"
#import "GreenNameView+On.h"
//: #import "ZZZGlobalMacro.h"
#import "ZZZGlobalMacro.h"

//: @interface NTESChatroomTextContentConfig()
@interface SuggestEdgeConfig()

//: @property (nonatomic, strong) M80AttributedLabel *label;
@property (nonatomic, strong) GreenNameView *label;

//: @end
@end

//: @implementation NTESChatroomTextContentConfig
@implementation SuggestEdgeConfig

//: - (instancetype)init{
- (instancetype)init{
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {

    }
    //: return self;
    return self;
}

//: - (CGSize)contentSize:(CGFloat)cellWidth message:(NIMMessage *)message
- (CGSize)myRefer:(CGFloat)cellWidth view:(NIMMessage *)message
{
    //: NSString *text = message.text;
    NSString *text = message.text;
    //: [self.label nim_setText:text];
    [self.label sourceSet:text];
    //: CGFloat msgBubbleMaxWidth = (cellWidth - 130);
    CGFloat msgBubbleMaxWidth = (cellWidth - 130);
    //: CGFloat bubbleLeftToContent = 15;
    CGFloat bubbleLeftToContent = 15;
    //: CGFloat contentRightToBubble = 0;
    CGFloat contentRightToBubble = 0;
    //: CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - contentRightToBubble - bubbleLeftToContent);
    CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - contentRightToBubble - bubbleLeftToContent);
    //: return [self.label sizeThatFits:CGSizeMake(msgContentMaxWidth, 1.7976931348623157e+308)];
    return [self.label sizeThatFits:CGSizeMake(msgContentMaxWidth, 1.7976931348623157e+308)];
}

//: - (NSString *)cellContent:(NIMMessage *)message
- (NSString *)month:(NIMMessage *)message
{
    //: return @"NTESChatroomTextContentView";
    return StringFromShortageData(&kStr_activityTunText);
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)sign:(NIMMessage *)message
{
    //: return UIEdgeInsetsMake(20,15,10,0);
    return UIEdgeInsetsMake(20,15,10,0);
}

//: - (M80AttributedLabel *)label
- (GreenNameView *)label
{
    //: if (!_label) {
    if (!_label) {
        //: _label = [[M80AttributedLabel alloc] initWithFrame:CGRectZero];
        _label = [[GreenNameView alloc] initWithFrame:CGRectZero];
        //: _label.font = [UIFont systemFontOfSize:16];
        _label.font = [UIFont systemFontOfSize:16];
    }
    //: return _label;
    return _label;
}

//: - (BOOL)enableBackgroundBubbleView:(NIMMessage *)message
- (BOOL)fasted:(NIMMessage *)message
{
    //: return NO;
    return NO;
}

//: @end
@end

Byte *ShortageDataToByte(ShortageData *data) {
    if (data->objectExpose) return data->lengthSectorText;
    for (int i = 0; i < data->magnitudeentionVia; i++) {
        data->lengthSectorText[i] ^= data->varyAdventure;
    }
    data->lengthSectorText[data->magnitudeentionVia] = 0;
    data->objectExpose = true;
	if (data->magnitudeentionVia >= 3) {
		data->curStairs = data->lengthSectorText[0];
		data->retchHostage = data->lengthSectorText[1];
		data->intervalentionAnybody = data->lengthSectorText[2];
	}
    return data->lengthSectorText;
}

NSString *StringFromShortageData(ShortageData *data) {
    return [NSString stringWithUTF8String:(char *)ShortageDataToByte(data)];
}
