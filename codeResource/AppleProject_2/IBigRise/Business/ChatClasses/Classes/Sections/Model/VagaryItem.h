// __DEBUG__
// __CLOSE_PRINT__
//
//  VagaryItem.h
// On
//
//  Created by amao on 8/11/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @interface ZZZMediaItem : NSObject
@interface VagaryItem : NSObject

//: @property (nonatomic,assign) SEL selctor;
@property (nonatomic,assign) SEL selctor;

//: @property (nonatomic,strong) UIImage *normalImage;
@property (nonatomic,strong) UIImage *normalImage;

//: @property (nonatomic,strong) UIImage *selectedImage;
@property (nonatomic,strong) UIImage *selectedImage;

//: @property (nonatomic,copy) NSString *title;
@property (nonatomic,copy) NSString *title;

//: + (ZZZMediaItem *)item:(NSString *)selector
+ (VagaryItem *)confines:(NSString *)selector
           //: normalImage:(UIImage *)normalImage
           session:(UIImage *)normalImage
         //: selectedImage:(UIImage *)selectedImage
         searched:(UIImage *)selectedImage
                 //: title:(NSString *)title;
                 numberelligentsia:(NSString *)title;
//: @end
@end