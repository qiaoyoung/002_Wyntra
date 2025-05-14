//
//  NTESTeamMemberListViewController.h
//  NIM
//
//  Created by chris on 15/3/26.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <NIMSDK/NIMSDK.h>
#import "ZZZTeamMemberListDataSource.h"
#import "ZZZTeamListDataManager.h"

@interface ZZZTeamMemberListViewController : UIViewController

@property (nonatomic,strong) ZZZTeamListDataManager *teamListManager;
                             
- (instancetype)initWithDataSource:(ZZZTeamListDataManager *)dataSource;

@end
