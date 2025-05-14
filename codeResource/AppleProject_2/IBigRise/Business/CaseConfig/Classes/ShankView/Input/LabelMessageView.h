// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESInputMoreContainerView.h
//  NIMDemo
//
//  Created by chris.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "ZZZSessionConfig.h"
#import "PastConfig.h"
//: #import "DataInputProtocol.h"
#import "DataInputProtocol.h"

//: @interface ZZZInputMoreContainerView : UIView
@interface LabelMessageView : UIView

//: @property (nonatomic,weak) id<ZZZSessionConfig> config;
@property (nonatomic,weak) id<PastConfig> config;
//: @property (nonatomic,weak) id<NIMInputActionDelegate> actionDelegate;
@property (nonatomic,weak) id<DelegateDoing> actionDelegate;

//: @end
@end
