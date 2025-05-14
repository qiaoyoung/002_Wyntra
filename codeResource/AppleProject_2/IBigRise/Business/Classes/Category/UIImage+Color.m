
#import <Foundation/Foundation.h>

NSString *StringFromTeenLitData(Byte *data);


//: Clear_color_image
Byte kStr_aggressiveName[] = {80, 17, 46, 4, 113, 154, 147, 143, 160, 141, 145, 157, 154, 157, 160, 141, 151, 155, 143, 149, 147, 163};

// __DEBUG__
// __CLOSE_PRINT__
//
//  UIImage+Color.m
//  yixin_iphone
//
//  Created by Xuhui on 14-3-17.
//  Copyright (c) 2014年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <sys/stat.h>
#import <sys/stat.h>
//: #import "UIImage+NTESColor.h"
#import "UIImage+Color.h"

//: @interface UIColorCache : NSObject
@interface ShouldMessage : NSObject
//: @property (nonatomic,strong) NSCache *colorImageCache;
@property (nonatomic,strong) NSCache *colorImageCache;
//: @end
@end

//: @implementation UIColorCache
@implementation ShouldMessage
//: + (instancetype)sharedCache
+ (instancetype)object
{
    //: static UIColorCache *instance = nil;
    static ShouldMessage *instance = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: instance = [[UIColorCache alloc] init];
        instance = [[ShouldMessage alloc] init];
    //: });
    });
    //: return instance;
    return instance;
}

//: - (instancetype)init
- (instancetype)init
{
    //: if (self = [super init])
    if (self = [super init])
    {
        //: _colorImageCache = [[NSCache alloc] init];
        _colorImageCache = [[NSCache alloc] init];
    }
    //: return self;
    return self;
}

//: - (UIImage *)image:(UIColor *)color
- (UIImage *)koine:(UIColor *)color
{
    //: return color ? [_colorImageCache objectForKey:[color description]] : nil;
    return color ? [_colorImageCache objectForKey:[color description]] : nil;
}

//: - (void)setImage:(UIImage *)image
- (void)title:(UIImage *)image
        //: forColor:(UIColor *)color
        modelColor:(UIColor *)color
{
    //: [_colorImageCache setObject:image
    [_colorImageCache setObject:image
                         //: forKey:[color description]];
                         forKey:[color description]];
}
//: @end
@end

//: @implementation UIImage (NTESColor)
@implementation UIImage (Color)

//: + (UIImage *)clearColorImage {
+ (UIImage *)withImage {
    //: return [UIImage imageNamed:@"Clear_color_image"];
    return [UIImage imageNamed:StringFromTeenLitData(kStr_aggressiveName)];
}

//: + (UIImage *)imageWithColor:(UIColor *)color {
+ (UIImage *)value:(UIColor *)color {
    //: if (color == nil)
    if (color == nil)
    {
        //: assert(0);
        assert(0);
        //: return nil;
        return nil;
    }
    //: UIImage *image = [[UIColorCache sharedCache] image:color];
    UIImage *image = [[ShouldMessage object] koine:color];
    //: if (image == nil)
    if (image == nil)
    {
        //: CGFloat alphaChannel;
        CGFloat alphaChannel;
        //: [color getRed:NULL green:NULL blue:NULL alpha:&alphaChannel];
        [color getRed:NULL green:NULL blue:NULL alpha:&alphaChannel];
        //: BOOL opaqueImage = (alphaChannel == 1.0);
        BOOL opaqueImage = (alphaChannel == 1.0);
        //: CGRect rect = CGRectMake(0, 0, 1, 1);
        CGRect rect = CGRectMake(0, 0, 1, 1);
        //: UIGraphicsBeginImageContextWithOptions(rect.size, opaqueImage, [UIScreen mainScreen].scale);
        UIGraphicsBeginImageContextWithOptions(rect.size, opaqueImage, [UIScreen mainScreen].scale);
        //: [color setFill];
        [color setFill];
        //: UIRectFill(rect);
        UIRectFill(rect);
        //: image = UIGraphicsGetImageFromCurrentImageContext();
        image = UIGraphicsGetImageFromCurrentImageContext();
        //: UIGraphicsEndImageContext();
        UIGraphicsEndImageContext();
        //: [[UIColorCache sharedCache] setImage:image
        [[ShouldMessage object] title:image
                                    //: forColor:color];
                                    modelColor:color];
    }
    //: return image;
    return image;
}


//: @end
@end

Byte * TeenLitDataToCache(Byte *data) {
    int messageSumegration = data[0];
    int correct = data[1];
    Byte countention = data[2];
    int rattling = data[3];
    if (!messageSumegration) return data + rattling;
    for (int i = rattling; i < rattling + correct; i++) {
        int value = data[i] - countention;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[rattling + correct] = 0;
    return data + rattling;
}

NSString *StringFromTeenLitData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)TeenLitDataToCache(data)];
}
