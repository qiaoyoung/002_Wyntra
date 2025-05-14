// __DEBUG__
// __CLOSE_PRINT__
//
//  UIImage+On.h
// On
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @interface UIImage (AppleProjectKit)
@interface UIImage (On)

//: + (UIImage *)nim_fetchChartlet:(NSString *)imageName chartletId:(NSString *)chartletId;
+ (UIImage *)title:(NSString *)imageName scheme:(NSString *)chartletId;

//: + (CGSize)nim_sizeWithImageOriginSize:(CGSize)originSize
+ (CGSize)perimeter:(CGSize)originSize
                              //: minSize:(CGSize)imageMinSize
                              inheritance:(CGSize)imageMinSize
                              //: maxSize:(CGSize)imageMaxSiz;
                              size:(CGSize)imageMaxSiz;


//: + (UIImage *)nim_emoticonInKit:(NSString *)imageName;
+ (UIImage *)chromatic:(NSString *)imageName;

//: - (UIImage *)nim_imageForAvatarUpload;
- (UIImage *)independent;

//: - (UIImage *)nim_fixOrientation;
- (UIImage *)ting;

//: - (UIImage *)nim_cropedImageWithSize:(CGSize)size;
- (UIImage *)pastSize:(CGSize)size;

//: @end
@end