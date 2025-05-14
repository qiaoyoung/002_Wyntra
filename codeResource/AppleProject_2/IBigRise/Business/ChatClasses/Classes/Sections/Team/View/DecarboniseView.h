// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESTimePickerView.h
//  NIM
//
//  Created by chris on 15/7/1.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: typedef void(^CompletionHandler)(NSInteger hour,NSInteger minute);
typedef void(^CompletionHandler)(NSInteger hour,NSInteger minute);

//: @protocol ZZZTimePickerViewDelegate <NSObject>
@protocol DisableCheck <NSObject>

//: - (void)didSelectHour:(NSInteger)hour minute:(NSInteger)minute;
- (void)nimColor:(NSInteger)hour hourState:(NSInteger)minute;

//: @end
@end

//: @interface ZZZTimePickerView : UIView
@interface DecarboniseView : UIView

//: @property (nonatomic,weak) id<ZZZTimePickerViewDelegate> delegate;
@property (nonatomic,weak) id<DisableCheck> delegate;

//: - (void)refreshWithHour:(NSInteger)hour minute:(NSInteger)minute;
- (void)scale:(NSInteger)hour searched:(NSInteger)minute;

//: - (void)showInView:(UIView *)view onCompletion:(CompletionHandler) handler;
- (void)show:(UIView *)view number:(CompletionHandler) handler;

//: @end
@end