//
//  NTESInputMoreContainerView.h
//  NIMDemo
//
//  Created by chris.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ZZZSessionConfig.h"
#import "ZZZInputProtocol.h"


@interface ZZZInputMoreContainerView : UIView

@property (nonatomic,weak)  id<ZZZSessionConfig> config;
@property (nonatomic,weak)  id<NIMInputActionDelegate> actionDelegate;

@end
