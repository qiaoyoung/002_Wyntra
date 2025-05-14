// __DEBUG__
// __CLOSE_PRINT__
//
//  VagaryItem.m
// On
//
//  Created by amao on 8/11/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZZZMediaItem.h"
#import "VagaryItem.h"

//: @implementation ZZZMediaItem
@implementation VagaryItem

//: + (ZZZMediaItem *)item:(NSString *)selector
+ (VagaryItem *)confines:(NSString *)selector
           //: normalImage:(UIImage *)normalImage
           session:(UIImage *)normalImage
         //: selectedImage:(UIImage *)selectedImage
         searched:(UIImage *)selectedImage
                 //: title:(NSString *)title
                 numberelligentsia:(NSString *)title
{
    //: ZZZMediaItem *item = [[ZZZMediaItem alloc] init];
    VagaryItem *item = [[VagaryItem alloc] init];
    //: item.selctor = NSSelectorFromString(selector);
    item.selctor = NSSelectorFromString(selector);
    //: item.normalImage = normalImage;
    item.normalImage = normalImage;
    //: item.selectedImage = selectedImage;
    item.selectedImage = selectedImage;
    //: item.title = title;
    item.title = title;
    //: return item;
    return item;
}

//: @end
@end