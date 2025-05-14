//
//  ZZZAdvancedTeamCardCell.h
//  NIM
//
//  Created by 彭爽 on 2021/10/22.
//  Copyright © 2021 Netease. All rights reserved.
//

#import "BaseTableViewCell.h"
#import "ZZZTeamListDataManager.h"
#import "ZZZAdvancedTeamCardViewController.h"
#import "ZZZKitInfoFetchOption.h"
#import "ZZZKitUtil.h"
#import "ZZZTeamHelper.h"
#import "ZZZTeamCardSelectedViewController.h"
#import "NTESBundleSetting.h"

NS_ASSUME_NONNULL_BEGIN

@interface ZZZAdvancedTeamCardCell : BaseTableViewCell
@property (nonatomic ,strong) UILabel *titleLabel;
@property (nonatomic ,strong) UIView *headerBackView;
-(void)reloadWith:(ZZZTeamListDataManager *)teamListManager;
@property (nonatomic,strong) ZZZAdvancedTeamCardViewController *vc;

@end

@interface ZZZAdvancedTeamCardCell_1 : BaseTableViewCell
@property (nonatomic,strong) UIView *whiteView;
@property (nonatomic,strong) ZZZAdvancedTeamCardViewController *vc;
@property (nonatomic,strong) ZZZTeamListDataManager *teamListManager;

-(void)reloadWith:(ZZZTeamListDataManager *)teamListManager;

@end

@interface ZZZAdvancedTeamCardCell_2 : BaseTableViewCell
@property (nonatomic,strong) UIView *whiteView;
@property (nonatomic,strong) ZZZTeamCardViewControllerOption *option;
@property (nonatomic,strong) ZZZAdvancedTeamCardViewController *vc;
@property (nonatomic,strong) ZZZTeamListDataManager *teamListManager;
-(void)reloadWith:(ZZZTeamListDataManager *)teamListManager;

@end

@interface ZZZAdvancedTeamCardCell_3 : BaseTableViewCell
@property (nonatomic,strong) ZZZAdvancedTeamCardViewController *vc;
@property (nonatomic,strong) ZZZTeamListDataManager *teamListManager;

-(void)reloadWith:(ZZZTeamListDataManager *)teamListManager;

@end

@interface ZZZAdvancedTeamCardCell_4 : BaseTableViewCell
@property (nonatomic,strong) UIView *whiteView;
@property (nonatomic,strong) ZZZAdvancedTeamCardViewController *vc;
@property (nonatomic,strong) ZZZTeamListDataManager *teamListManager;

-(void)reloadWith:(ZZZTeamListDataManager *)teamListManager;

@end

@interface ZZZAdvancedTeamCardCell_5 : BaseTableViewCell
@property (nonatomic,strong) UIView *whiteView;
@property (nonatomic,strong) ZZZTeamListDataManager *teamListManager;
@property (nonatomic,strong) ZZZAdvancedTeamCardViewController *vc;

-(void)reloadWith:(ZZZTeamListDataManager *)teamListManager;

@end

@interface ZZZAdvancedTeamCardCell_6 : BaseTableViewCell
@property (nonatomic,strong) UIButton *backBtn;
@property (nonatomic,strong) ZZZAdvancedTeamCardViewController *vc;
@property (nonatomic,strong) ZZZTeamListDataManager *teamListManager;
-(void)reloadWith:(ZZZTeamListDataManager *)teamListManager;

@end



@interface NIMAdvancedTeamSubview : UIView
@property (nonatomic ,strong) UIView *lineView;
@property (nonatomic ,strong) UIButton *backButton;
@property (nonatomic ,strong) UILabel *titleLabel;
@property (nonatomic ,strong) UILabel *contentLabel;
@property (nonatomic ,strong) UIImageView *arrowImage;
@property (nonatomic ,strong) UISwitch *switchView;

@property (nonatomic ,strong) UIImageView *iconImage;

- (instancetype)initWithImageName:(NSString *)imageName;

@end


NS_ASSUME_NONNULL_END
