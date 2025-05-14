//
//  ZZZAdvancedTeamCardView.h
//  NIM
//
//  Created by 彭爽 on 2021/10/22.
//  Copyright © 2021 Netease. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ZZZTeamListDataManager.h"
#import "ZZZAdvancedTeamCardViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface ZZZAdvancedTeamCardView : UIView
//群组管理
@property (nonatomic,strong) ZZZTeamListDataManager *teamListManager;
@property (nonatomic,strong) ZZZTeamCardViewControllerOption *option;
@property (nonatomic,strong) ZZZAdvancedTeamCardViewController *vc;

- (void)reloaddata;
@end

NS_ASSUME_NONNULL_END

