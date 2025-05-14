// __DEBUG__
// __CLOSE_PRINT__
//
//  StatusView.h
// On
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZZZInputView.h"
#import "EnterSignView.h"

//: @interface ZZZInputAudioRecordIndicatorView : UIView
@interface StatusView : UIView

//: @property (nonatomic, assign) NIMAudioRecordPhase phase;
@property (nonatomic, assign) NIMAudioRecordPhase phase;

//: @property (nonatomic, assign) NSTimeInterval recordTime;
@property (nonatomic, assign) NSTimeInterval recordTime;

//: @end
@end