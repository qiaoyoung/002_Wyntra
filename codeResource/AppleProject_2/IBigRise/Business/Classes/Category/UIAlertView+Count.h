// __DEBUG__
// __CLOSE_PRINT__
//
//  UIAlertView+Count.h
//  eim_iphone
//
//  Created by amao on 12-11-7.
//  Copyright (c) 2012年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: typedef void (^AlertBlock)(NSInteger);
typedef void (^AlertBlock)(NSInteger);
//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN
//: @interface UIAlertView (NTESBlock)
@interface UIAlertView (Count)
//: - (void)showAlertWithCompletionHandler: (__nullable AlertBlock)block;
- (void)resolveRange: (__nullable AlertBlock)block;
//: - (void)clearActionBlock;
- (void)languageBlock;
//: @end
@end



//: @interface UIAlertController (NTESBlock)
@interface UIAlertController (Count)
//: - (UIAlertController *)addAction:(NSString *)title
- (UIAlertController *)color:(NSString *)title
                           //: style:(UIAlertActionStyle)style
                           collection:(UIAlertActionStyle)style
                         //: handler:(void (^ __nullable)(UIAlertAction *action))handler;
                         find:(void (^ __nullable)(UIAlertAction *action))handler;

//: - (void)show;
- (void)target;
//: @end
@end
//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END