//
//  ZZZKitSwitcherCell.h
//  NIM
//
//  Created by chris on 15/6/26.
//  Copyright © 2015年 Netease. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ZZZCommonTableViewCell.h"

@interface ZZZKitSwitcherCell : UITableViewCell<ZZZCommonTableViewCell>

@property(nonatomic,strong,readonly) UISwitch *switcher;

@end
