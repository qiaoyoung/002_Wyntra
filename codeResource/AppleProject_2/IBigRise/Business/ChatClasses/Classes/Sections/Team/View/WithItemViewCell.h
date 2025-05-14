// __DEBUG__
// __CLOSE_PRINT__
//
//  WithItemViewCell.h
//  NIM
//
//  Created by amao on 5/29/15.
//  Copyright (c) 2015 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @class ZZZTeamSwitchTableViewCell;
@class WithItemViewCell;

//: @protocol NIMTeamSwitchProtocol <NSObject>
@protocol InputProtocol <NSObject>
//: - (void)cell:(ZZZTeamSwitchTableViewCell *)cell onStateChanged:(BOOL)on;
- (void)input:(WithItemViewCell *)cell imageChanged:(BOOL)on;
//: @end
@end

//: @interface ZZZTeamSwitchTableViewCell : UITableViewCell
@interface WithItemViewCell : UITableViewCell
//: @property (nonatomic, assign) NSInteger identify;
@property (nonatomic, assign) NSInteger identify;
//: @property (strong, nonatomic) UISwitch *switcher;
@property (strong, nonatomic) UISwitch *switcher;
//: @property (weak, nonatomic) id<NIMTeamSwitchProtocol> switchDelegate;
@property (weak, nonatomic) id<InputProtocol> switchDelegate;

//: @end
@end