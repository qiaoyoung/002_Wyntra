//
//  NIMSessionViewConfigurator.h
// AppleProjectKit
//
//  Created by chris on 2016/11/7.
//  Copyright © 2016年 NetEase. All rights reserved.
//

#import "ZZZSessionViewController.h"
#import "ZZZSessionConfigurateProtocol.h"

@class ZZZSessionViewController;

@interface ZZZSessionConfigurator : NSObject

- (void)setup:(ZZZSessionViewController *)vc;

@end
