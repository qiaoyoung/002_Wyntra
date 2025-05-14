// __DEBUG__
// __CLOSE_PRINT__
//
//  AdvancedImageViewCell.h
//  NIM
//
//  Created by 彭爽 on 2021/10/22.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "BaseTableViewCell.h"
#import "ItemView.h"
//: #import "ZZZTeamListDataManager.h"
#import "InformationShould.h"
//: #import "ZZZAdvancedTeamCardViewController.h"
#import "DisableSightViewController.h"
//: #import "ZZZKitInfoFetchOption.h"
#import "CertainOption.h"
//: #import "ZZZKitUtil.h"
#import "TingText.h"
//: #import "ZZZTeamHelper.h"
#import "PathHelper.h"
//: #import "ZZZTeamCardSelectedViewController.h"
#import "InputViewController.h"
//: #import "NTESBundleSetting.h"
#import "BackgroundTingIncidentGreen.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface ZZZAdvancedTeamCardCell : BaseTableViewCell
@interface AdvancedImageViewCell : ItemView
//: @property (nonatomic ,strong) UILabel *titleLabel;
@property (nonatomic ,strong) UILabel *titleLabel;
//: @property (nonatomic ,strong) UIView *headerBackView;
@property (nonatomic ,strong) UIView *headerBackView;
//: -(void)reloadWith:(ZZZTeamListDataManager *)teamListManager;
-(void)with:(InformationShould *)teamListManager;
//: @property (nonatomic,strong) ZZZAdvancedTeamCardViewController *vc;
@property (nonatomic,strong) DisableSightViewController *vc;

//: @end
@end

//: @interface ZZZAdvancedTeamCardCell_1 : BaseTableViewCell
@interface FrameViewCell : ItemView
//: @property (nonatomic,strong) UIView *whiteView;
@property (nonatomic,strong) UIView *whiteView;
//: @property (nonatomic,strong) ZZZAdvancedTeamCardViewController *vc;
@property (nonatomic,strong) DisableSightViewController *vc;
//: @property (nonatomic,strong) ZZZTeamListDataManager *teamListManager;
@property (nonatomic,strong) InformationShould *teamListManager;

//: -(void)reloadWith:(ZZZTeamListDataManager *)teamListManager;
-(void)onWith:(InformationShould *)teamListManager;

//: @end
@end

//: @interface ZZZAdvancedTeamCardCell_2 : BaseTableViewCell
@interface EnterHideViewCell : ItemView
//: @property (nonatomic,strong) UIView *whiteView;
@property (nonatomic,strong) UIView *whiteView;
//: @property (nonatomic,strong) ZZZTeamCardViewControllerOption *option;
@property (nonatomic,strong) ByOption *option;
//: @property (nonatomic,strong) ZZZAdvancedTeamCardViewController *vc;
@property (nonatomic,strong) DisableSightViewController *vc;
//: @property (nonatomic,strong) ZZZTeamListDataManager *teamListManager;
@property (nonatomic,strong) InformationShould *teamListManager;
//: -(void)reloadWith:(ZZZTeamListDataManager *)teamListManager;
-(void)bookWith:(InformationShould *)teamListManager;

//: @end
@end

//: @interface ZZZAdvancedTeamCardCell_3 : BaseTableViewCell
@interface BackgroundShareView : ItemView
//: @property (nonatomic,strong) ZZZAdvancedTeamCardViewController *vc;
@property (nonatomic,strong) DisableSightViewController *vc;
//: @property (nonatomic,strong) ZZZTeamListDataManager *teamListManager;
@property (nonatomic,strong) InformationShould *teamListManager;

//: -(void)reloadWith:(ZZZTeamListDataManager *)teamListManager;
-(void)with:(InformationShould *)teamListManager;

//: @end
@end

//: @interface ZZZAdvancedTeamCardCell_4 : BaseTableViewCell
@interface ChangeViewCell : ItemView
//: @property (nonatomic,strong) UIView *whiteView;
@property (nonatomic,strong) UIView *whiteView;
//: @property (nonatomic,strong) ZZZAdvancedTeamCardViewController *vc;
@property (nonatomic,strong) DisableSightViewController *vc;
//: @property (nonatomic,strong) ZZZTeamListDataManager *teamListManager;
@property (nonatomic,strong) InformationShould *teamListManager;

//: -(void)reloadWith:(ZZZTeamListDataManager *)teamListManager;
-(void)with:(InformationShould *)teamListManager;

//: @end
@end

//: @interface ZZZAdvancedTeamCardCell_5 : BaseTableViewCell
@interface BuildViewCell : ItemView
//: @property (nonatomic,strong) UIView *whiteView;
@property (nonatomic,strong) UIView *whiteView;
//: @property (nonatomic,strong) ZZZTeamListDataManager *teamListManager;
@property (nonatomic,strong) InformationShould *teamListManager;
//: @property (nonatomic,strong) ZZZAdvancedTeamCardViewController *vc;
@property (nonatomic,strong) DisableSightViewController *vc;

//: -(void)reloadWith:(ZZZTeamListDataManager *)teamListManager;
-(void)inventoryItem:(InformationShould *)teamListManager;

//: @end
@end

//: @interface ZZZAdvancedTeamCardCell_6 : BaseTableViewCell
@interface CompartmentViewCell : ItemView
//: @property (nonatomic,strong) UIButton *backBtn;
@property (nonatomic,strong) UIButton *backBtn;
//: @property (nonatomic,strong) ZZZAdvancedTeamCardViewController *vc;
@property (nonatomic,strong) DisableSightViewController *vc;
//: @property (nonatomic,strong) ZZZTeamListDataManager *teamListManager;
@property (nonatomic,strong) InformationShould *teamListManager;
//: -(void)reloadWith:(ZZZTeamListDataManager *)teamListManager;
-(void)imageAcross:(InformationShould *)teamListManager;

//: @end
@end



//: @interface NIMAdvancedTeamSubview : UIView
@interface SignalingView : UIView
//: @property (nonatomic ,strong) UIView *lineView;
@property (nonatomic ,strong) UIView *lineView;
//: @property (nonatomic ,strong) UIButton *backButton;
@property (nonatomic ,strong) UIButton *backButton;
//: @property (nonatomic ,strong) UILabel *titleLabel;
@property (nonatomic ,strong) UILabel *titleLabel;
//: @property (nonatomic ,strong) UILabel *contentLabel;
@property (nonatomic ,strong) UILabel *contentLabel;
//: @property (nonatomic ,strong) UIImageView *arrowImage;
@property (nonatomic ,strong) UIImageView *arrowImage;
//: @property (nonatomic ,strong) UISwitch *switchView;
@property (nonatomic ,strong) UISwitch *switchView;

//: @property (nonatomic ,strong) UIImageView *iconImage;
@property (nonatomic ,strong) UIImageView *iconImage;

//: - (instancetype)initWithImageName:(NSString *)imageName;
- (instancetype)initWithChange:(NSString *)imageName;

//: @end
@end


//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END