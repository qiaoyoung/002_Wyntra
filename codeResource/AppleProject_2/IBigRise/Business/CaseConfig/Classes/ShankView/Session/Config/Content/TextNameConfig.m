// __DEBUG__
// __CLOSE_PRINT__
//
//  TextNameConfig.m
// On
//
//  Created by amao on 9/15/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZZZTextContentConfig.h"
#import "TextNameConfig.h"
//: #import "M80AttributedLabel+AppleProjectKit.h"
#import "GreenNameView+On.h"
//: #import "AppleProjectKit.h"
#import "On.h"

//: @interface ZZZTextContentConfig()
@interface TextNameConfig()

//: @property (nonatomic,strong) M80AttributedLabel *label;
@property (nonatomic,strong) GreenNameView *label;

//: @end
@end


//: @implementation ZZZTextContentConfig
@implementation TextNameConfig

//: - (CGSize)contentSize:(CGFloat)cellWidth message:(NIMMessage *)message
- (CGSize)myRefer:(CGFloat)cellWidth view:(NIMMessage *)message
{
    //: NSString *text = message.text;
    NSString *text = message.text;
//    NSString *text = message.text;
//    if ([message.localExt.allKeys containsObject:@"NTESMessageTranslate"])
//    {
//        text = [NSString stringWithFormat:@"%@\n%@",text,[message.localExt objectForKey:@"NTESMessageTranslate"]];
//    }

    //: self.label.font = [[AppleProjectKit sharedKit].config setting:message].font;
    self.label.font = [[On along].config style:message].font;

    //: [self.label nim_setText:text];
    [self.label sourceSet:text];
    //: CGFloat msgBubbleMaxWidth = (cellWidth - 130);
    CGFloat msgBubbleMaxWidth = (cellWidth - 130);
    //: CGFloat bubbleLeftToContent = 14;
    CGFloat bubbleLeftToContent = 14;
    //: CGFloat contentRightToBubble = 14;
    CGFloat contentRightToBubble = 14;
    //: CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - contentRightToBubble - bubbleLeftToContent);
    CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - contentRightToBubble - bubbleLeftToContent);

    //: return [self.label sizeThatFits:CGSizeMake(msgContentMaxWidth, 1.7976931348623157e+308)];
    return [self.label sizeThatFits:CGSizeMake(msgContentMaxWidth, 1.7976931348623157e+308)];
}

//: - (NSString *)cellContent:(NIMMessage *)message
- (NSString *)month:(NIMMessage *)message
{
    //: return @"ZZZSessionTextContentView";
    return @"ColorVersionTextView";
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)sign:(NIMMessage *)message
{
    //: return [[AppleProjectKit sharedKit].config setting:message].contentInsets;
    return [[On along].config style:message].contentInsets;
}



//: #pragma mark - Private
#pragma mark - Private
//: - (M80AttributedLabel *)label
- (GreenNameView *)label
{
    //: if (_label) {
    if (_label) {
        //: return _label;
        return _label;
    }
    //: _label = [[M80AttributedLabel alloc] initWithFrame:CGRectZero];
    _label = [[GreenNameView alloc] initWithFrame:CGRectZero];
    //: return _label;
    return _label;
}

//: @end
@end