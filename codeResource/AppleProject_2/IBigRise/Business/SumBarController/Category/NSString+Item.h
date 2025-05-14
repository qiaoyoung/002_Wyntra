// __DEBUG__
// __CLOSE_PRINT__
//
//  NSString+Item.h
//  NIMDemo
//
//  Created by chris on 15/2/12.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: NSString * emptyString(NSString *anMaybeEmptyString);
NSString * emptyString(NSString *anMaybeEmptyString);

//: @interface NSString (NTES)
@interface NSString (Item)

//: - (CGSize)stringSizeWithFont:(UIFont *)font;
- (CGSize)big:(UIFont *)font;

//: - (NSString *)MD5String;
- (NSString *)with;

//: - (NSUInteger)getBytesLength;
- (NSUInteger)totalmateBar;

//: - (NSString *)stringByDeletingPictureResolution;
- (NSString *)max;

//: - (NSString *)tokenByPassword;
- (NSString *)bottomIn;

//: - (NSString *)ntes_localized;
- (NSString *)colorLocalized;

//: + (NSString *)randomStringWithLength:(NSUInteger)length;
+ (NSString *)mark:(NSUInteger)length;

//: @end
@end