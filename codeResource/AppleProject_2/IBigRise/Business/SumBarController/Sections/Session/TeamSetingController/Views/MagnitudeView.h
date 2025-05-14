// __DEBUG__
// __CLOSE_PRINT__
//
//  MagnitudeView.h
//  NIM
//
//  Created by 彭爽 on 2021/10/22.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "ZZZTeamListDataManager.h"
#import "InformationShould.h"
//: #import "ZZZAdvancedTeamCardViewController.h"
#import "DisableSightViewController.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface ZZZAdvancedTeamCardView : UIView
@interface MagnitudeView : UIView
//群组管理
//: @property (nonatomic,strong) ZZZTeamListDataManager *teamListManager;
@property (nonatomic,strong) InformationShould *teamListManager;
//: @property (nonatomic,strong) ZZZTeamCardViewControllerOption *option;
@property (nonatomic,strong) ByOption *option;
//: @property (nonatomic,strong) ZZZAdvancedTeamCardViewController *vc;
@property (nonatomic,strong) DisableSightViewController *vc;

//: - (void)reloaddata;
- (void)at;
//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END