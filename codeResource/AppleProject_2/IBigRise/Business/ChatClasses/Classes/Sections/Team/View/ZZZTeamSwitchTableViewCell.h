//
//  ZZZTeamSwitchTableViewCell.h
//  NIM
//
//  Created by amao on 5/29/15.
//  Copyright (c) 2015 Netease. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ZZZTeamSwitchTableViewCell;

@protocol NIMTeamSwitchProtocol <NSObject>
- (void)cell:(ZZZTeamSwitchTableViewCell *)cell onStateChanged:(BOOL)on;
@end

@interface ZZZTeamSwitchTableViewCell : UITableViewCell
@property (nonatomic, assign) NSInteger identify;
@property (strong, nonatomic) UISwitch *switcher;
@property (weak, nonatomic) id<NIMTeamSwitchProtocol> switchDelegate;

@end
