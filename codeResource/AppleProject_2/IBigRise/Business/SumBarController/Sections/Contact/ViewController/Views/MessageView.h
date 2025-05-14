// __DEBUG__
// __CLOSE_PRINT__
//
//  MessageView.h
//  NIM
//
//  Created by Yan Wang on 2024/7/27.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface ZMONScanToolBar : UIView
@interface MessageView : UIView

//: - (void)addQRCodeTarget:(id)aTarget action:(SEL)aAction;
- (void)icon:(id)aTarget between:(SEL)aAction;
//: - (void)addAlbumTarget:(id)aTarget action:(SEL)aAction;
- (void)studLab:(id)aTarget table:(SEL)aAction;

//: - (void)showTorch;
- (void)imageTorch;
//: - (void)dismissTorch;
- (void)picture;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END