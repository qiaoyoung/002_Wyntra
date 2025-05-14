// __DEBUG__
// __CLOSE_PRINT__
//
//  DisableModel.m
// On
//
//  Created by amao on 9/15/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZZZFileContentConfig.h"
#import "DisableModel.h"
//: #import "AppleProjectKit.h"
#import "On.h"

//: @implementation ZZZFileContentConfig
@implementation DisableModel

//: - (CGSize)contentSize:(CGFloat)cellWidth message:(NIMMessage *)message
- (CGSize)myRefer:(CGFloat)cellWidth view:(NIMMessage *)message
{
    //: return CGSizeMake(110, 110);
    return CGSizeMake(110, 110);
}

//: - (NSString *)cellContent:(NIMMessage *)message
- (NSString *)month:(NIMMessage *)message
{
    //: return @"ZZZSessionFileTransContentView";
    return @"VisibleLightTitleView";
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)sign:(NIMMessage *)message
{
    //: return [[AppleProjectKit sharedKit].config setting:message].contentInsets;
    return [[On along].config style:message].contentInsets;
}



//: @end
@end