// __DEBUG__
// __CLOSE_PRINT__
//
//  GenerateControl.h
//  NIM
//
//  Created by chris on 2017/7/17.
//  Copyright © 2017年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZZZSessionMessageContentView.h"
#import "ShouldControl.h"
//: #import "M80AttributedLabel.h"
#import "GreenNameView.h"

//: static NSString *const NTESShowRedPacketDetailEvent = @"NTESShowRedPacketDetailEvent";
static NSString *const kConst_nowData = @"NTESShowRedPacketDetailEvent";


//: @interface NTESSessionRedPacketTipContentView : ZZZSessionMessageContentView
@interface GenerateControl : ShouldControl

//: @property (nonatomic,strong) M80AttributedLabel *label;
@property (nonatomic,strong) GreenNameView *label;

//: @end
@end