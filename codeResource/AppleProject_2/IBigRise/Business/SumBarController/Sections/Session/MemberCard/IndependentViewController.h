// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESTeamMemberListViewController.h
//  NIM
//
//  Created by chris on 15/3/26.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>
//: #import "ZZZTeamMemberListDataSource.h"
#import "IndependentSource.h"
//: #import "ZZZTeamListDataManager.h"
#import "InformationShould.h"

//: @interface ZZZTeamMemberListViewController : UIViewController
@interface IndependentViewController : UIViewController

//: @property (nonatomic,strong) ZZZTeamListDataManager *teamListManager;
@property (nonatomic,strong) InformationShould *teamListManager;

//: - (instancetype)initWithDataSource:(ZZZTeamListDataManager *)dataSource;
- (instancetype)initWithReplySize:(InformationShould *)dataSource;

//: @end
@end