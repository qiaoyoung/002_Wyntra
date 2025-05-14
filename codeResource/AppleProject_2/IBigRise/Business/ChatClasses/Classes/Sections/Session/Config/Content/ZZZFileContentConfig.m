//
//  ZZZFileContentConfig.m
// AppleProjectKit
//
//  Created by amao on 9/15/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//

#import "ZZZFileContentConfig.h"
#import "AppleProjectKit.h"

@implementation ZZZFileContentConfig

- (CGSize)contentSize:(CGFloat)cellWidth message:(NIMMessage *)message
{
    return CGSizeMake(110, 110);
}

- (NSString *)cellContent:(NIMMessage *)message
{
    return @"ZZZSessionFileTransContentView";
}

- (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
{
    return [[AppleProjectKit sharedKit].config setting:message].contentInsets;
}



@end
