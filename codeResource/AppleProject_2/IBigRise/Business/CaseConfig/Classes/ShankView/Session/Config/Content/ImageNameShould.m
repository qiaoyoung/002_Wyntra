// __DEBUG__
// __CLOSE_PRINT__
//
//  ImageNameShould.m
// On
//
//  Created by chris on 16/1/21.
//  Copyright © 2016年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZZZTipContentConfig.h"
#import "ImageNameShould.h"
//: #import "ZZZKitUtil.h"
#import "TingText.h"
//: #import "AppleProjectKit.h"
#import "On.h"

//: @implementation ZZZTipContentConfig
@implementation ImageNameShould

//: - (CGSize)contentSize:(CGFloat)cellWidth message:(NIMMessage *)message
- (CGSize)myRefer:(CGFloat)cellWidth view:(NIMMessage *)message
{
    //: CGFloat messageWidth = cellWidth;
    CGFloat messageWidth = cellWidth;
    //: UILabel *label = [[UILabel alloc] init];
    UILabel *label = [[UILabel alloc] init];
    //: label.text = [ZZZKitUtil messageTipContent:message];
    label.text = [TingText constituent:message];
    //: label.font = [[AppleProjectKit sharedKit].config setting:message].font;
    label.font = [[On along].config style:message].font;
    //: label.numberOfLines = 0;
    label.numberOfLines = 0;
    //: CGFloat padding = [AppleProjectKit sharedKit].config.maxNotificationTipPadding;
    CGFloat padding = [On along].config.color;
    //: CGSize size = [label sizeThatFits:CGSizeMake(cellWidth - 2 * padding, 1.7976931348623157e+308)];
    CGSize size = [label sizeThatFits:CGSizeMake(cellWidth - 2 * padding, 1.7976931348623157e+308)];
    //: CGFloat cellPadding = 11.f;
    CGFloat cellPadding = 11.f;
    //: CGSize contentSize = CGSizeMake(messageWidth, size.height + 2 * cellPadding);;
    CGSize contentSize = CGSizeMake(messageWidth, size.height + 2 * cellPadding);;
    //: return contentSize;
    return contentSize;
}

//: - (NSString *)cellContent:(NIMMessage *)message
- (NSString *)month:(NIMMessage *)message
{
    //: return @"ZZZSessionNotificationContentView";
    return @"SessionControl";
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)sign:(NIMMessage *)message
{
    //: return [[AppleProjectKit sharedKit].config setting:message].contentInsets;
    return [[On along].config style:message].contentInsets;
}

//: - (BOOL)enableBackgroundBubbleView:(NIMMessage *)message
- (BOOL)fasted:(NIMMessage *)message
{
    //: return NO;
    return NO;
}

//: @end
@end