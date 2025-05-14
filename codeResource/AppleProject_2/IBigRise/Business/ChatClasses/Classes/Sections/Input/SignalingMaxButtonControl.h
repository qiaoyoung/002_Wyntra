// __DEBUG__
// __CLOSE_PRINT__
//
//  SignalingMaxButtonControl.h
// On
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @class NIMInputEmoticon;
@class IndependentSure;

//: @protocol NIMEmoticonButtonTouchDelegate <NSObject>
@protocol ShareDelegate <NSObject>

//: - (void)selectedEmoticon:(NIMInputEmoticon*)emoticon catalogID:(NSString*)catalogID;
- (void)message:(IndependentSure*)emoticon item:(NSString*)catalogID;

//: @end
@end



//: @interface ZZZInputEmoticonButton : UIButton
@interface SignalingMaxButtonControl : UIButton

//: @property (nonatomic, strong) NIMInputEmoticon *emoticonData;
@property (nonatomic, strong) IndependentSure *emoticonData;

//: @property (nonatomic, copy) NSString *catalogID;
@property (nonatomic, copy) NSString *catalogID;

//: @property (nonatomic, weak) id<NIMEmoticonButtonTouchDelegate> delegate;
@property (nonatomic, weak) id<ShareDelegate> delegate;

//: + (ZZZInputEmoticonButton*)iconButtonWithData:(NIMInputEmoticon*)data catalogID:(NSString*)catalogID delegate:( id<NIMEmoticonButtonTouchDelegate>)delegate;
+ (SignalingMaxButtonControl*)centerWith:(IndependentSure*)data app:(NSString*)catalogID size:( id<ShareDelegate>)delegate;

//: - (void)onIconSelected:(id)sender;
- (void)colorses:(id)sender;

//: @end
@end