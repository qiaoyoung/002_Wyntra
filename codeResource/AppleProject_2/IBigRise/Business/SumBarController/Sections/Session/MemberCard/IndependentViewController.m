
#import <Foundation/Foundation.h>

NSString *StringFromWheneverData(Byte *data);


//: 修改成功
Byte kStr_veteranData[] = {64, 12, 13, 96, 242, 206, 150, 218, 195, 44, 228, 222, 168, 159, 138, 229, 144, 136, 230, 185, 148, 230, 174, 191, 228, 148};


//: Administrator
Byte kStr_driverContent[] = {71, 13, 4, 187, 114, 111, 116, 97, 114, 116, 115, 105, 110, 105, 109, 100, 65, 182};


//: code
Byte kStr_engineSessionData[] = {51, 4, 11, 97, 175, 78, 133, 139, 50, 255, 248, 101, 100, 111, 99, 142};


//: canAddFriend
Byte kStr_rooText[] = {41, 12, 7, 54, 245, 75, 3, 100, 110, 101, 105, 114, 70, 100, 100, 65, 110, 97, 99, 92};


//: group_info_activity_team_member
Byte kStr_exposeData[] = {50, 31, 5, 250, 36, 114, 101, 98, 109, 101, 109, 95, 109, 97, 101, 116, 95, 121, 116, 105, 118, 105, 116, 99, 97, 95, 111, 102, 110, 105, 95, 112, 117, 111, 114, 103, 167};


//: back_arrow_bl
Byte kStr_speciesName[] = {51, 13, 7, 165, 160, 67, 218, 108, 98, 95, 119, 111, 114, 114, 97, 95, 107, 99, 97, 98, 94};


//: 扩展消息
Byte kStr_litName[] = {49, 12, 10, 167, 74, 39, 77, 69, 89, 213, 175, 129, 230, 136, 182, 230, 149, 177, 229, 169, 137, 230, 135};


//: 邀请你加入超大群
Byte kStr_anybodyStairsText[] = {63, 24, 11, 28, 28, 153, 98, 69, 238, 34, 173, 164, 190, 231, 167, 164, 229, 133, 182, 232, 165, 133, 229, 160, 138, 229, 160, 189, 228, 183, 175, 232, 128, 130, 233, 125};


//: 邀请你加入高级群
Byte kStr_layerName[] = {27, 24, 4, 71, 164, 190, 231, 167, 186, 231, 152, 171, 233, 165, 133, 229, 160, 138, 229, 160, 189, 228, 183, 175, 232, 128, 130, 233, 131};


//: common_bg
Byte kStr_withAlongsideContent[] = {87, 9, 5, 145, 99, 103, 98, 95, 110, 111, 109, 109, 111, 99, 46};


//: ic_group_addmember
Byte kStr_totalLabelText[] = {83, 18, 7, 84, 60, 62, 107, 114, 101, 98, 109, 101, 109, 100, 100, 97, 95, 112, 117, 111, 114, 103, 95, 99, 105, 205};


//: attach
Byte kStr_convictName[] = {76, 6, 11, 130, 158, 16, 236, 179, 37, 131, 6, 104, 99, 97, 116, 116, 97, 41};


//: /team/getTeamSetting
Byte kStr_sightValue[] = {25, 20, 10, 89, 88, 128, 183, 73, 126, 5, 103, 110, 105, 116, 116, 101, 83, 109, 97, 101, 84, 116, 101, 103, 47, 109, 97, 101, 116, 47, 201};


//: 邀请你加入讨论组
Byte kStr_policyLooTitle[] = {42, 24, 9, 98, 223, 5, 146, 229, 208, 132, 187, 231, 186, 174, 232, 168, 174, 232, 165, 133, 229, 160, 138, 229, 160, 189, 228, 183, 175, 232, 128, 130, 233, 95};


//: kConst_pointTapButtonData
Byte kStr_houseLayerData[] = {34, 34, 12, 192, 200, 138, 14, 228, 205, 30, 237, 144, 100, 101, 103, 110, 97, 104, 67, 115, 114, 101, 98, 109, 101, 77, 109, 97, 101, 84, 97, 116, 97, 68, 116, 115, 105, 76, 109, 97, 101, 84, 77, 73, 78, 107, 172};


//: postscript
Byte kStr_somedayPointData[] = {95, 10, 5, 11, 178, 116, 112, 105, 114, 99, 115, 116, 115, 111, 112, 115};


//: data
Byte kStr_payerValue[] = {64, 4, 6, 121, 72, 252, 97, 116, 97, 100, 163};


//: 修改失败
Byte kStr_stopTextName[] = {45, 12, 7, 164, 139, 53, 17, 165, 180, 232, 177, 164, 229, 185, 148, 230, 174, 191, 228, 253};

// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESTeamMemberListViewController.m
//  NIM
//
//  Created by chris on 15/3/26.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZZZTeamMemberListViewController.h"
#import "IndependentViewController.h"
//: #import "ZZZCardHeaderCell.h"
#import "DisenableView.h"
//: #import "ZZZTeamCardMemberItem.h"
#import "WithQuantityerval.h"
//: #import "ZZZTeamMemberCardViewController.h"
#import "PathPinViewController.h"
//: #import "DataKitDependency.h"
#import "DataKitDependency.h"
//: #import "ZZZKitProgressHUD.h"
#import "DevelopmentColorView.h"
 
//: #import "NSString+AppleProjectKit.h"
#import "NSString+On.h"
//: #import "ZZZTeamListDataManager.h"
#import "InformationShould.h"
//: #import "ZZZPersonalCardViewController.h"
#import "FileViewController.h"
//: #import "NTESContactDataCell.h"
#import "TingDisableView.h"
//: #import "ZMONGroupMemberTableViewCell.h"
#import "DisableViewCell.h"
//: #import "ZZZContactSelectViewController.h"
#import "InputValueViewController.h"

//: typedef void(^NIMTeamMemberListFetchDataBlock)(BOOL isCompletion);
typedef void(^NIMTeamMemberListFetchDataBlock)(BOOL isCompletion);

//: @interface ZZZTeamMemberListViewController ()<UITableViewDataSource,UITableViewDelegate,NIMContactSelectDelegate,NIMMemberCardCellDelegate>
@interface IndependentViewController ()<UITableViewDataSource,UITableViewDelegate,CompartmentDelegate,ShouldBeCenter>

//@property (nonatomic, strong) UICollectionView *collectionView;
//@property (nonatomic, weak) id <IndependentSource> dataSource;
//: @property (nonatomic, assign) NSInteger pageIndex;
@property (nonatomic, assign) NSInteger pageIndex;
//: @property (nonatomic, assign) NSInteger totalPageCount;
@property (nonatomic, assign) NSInteger totalPageCount;
//: @property (nonatomic, strong) UIButton *nextBtn;
@property (nonatomic, strong) UIButton *nextBtn;
//: @property (nonatomic, strong) UIButton *lastBtn;
@property (nonatomic, strong) UIButton *lastBtn;
//: @property (nonatomic, strong) NSDictionary *teamSettingConfig;
@property (nonatomic, strong) NSDictionary *teamSettingConfig;

//: @property (nonatomic ,strong) UITableView *tableView;
@property (nonatomic ,strong) UITableView *tableView;

//: @property (nonatomic ,copy) NSArray *muteArray;
@property (nonatomic ,copy) NSArray *muteArray;

//: @end
@end

//: @implementation ZZZTeamMemberListViewController
@implementation IndependentViewController

//: - (void)dealloc {
- (void)dealloc {
    //: [[NSNotificationCenter defaultCenter] removeObserver:self];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}


//: - (instancetype)initWithDataSource:(ZZZTeamListDataManager *)dataSource {
- (instancetype)initWithReplySize:(InformationShould *)dataSource {
    //: self = [super initWithNibName:nil bundle:nil];
    self = [super initWithNibName:nil bundle:nil];
    //: if (self) {
    if (self) {
        //: _teamListManager = dataSource;
        _teamListManager = dataSource;
//        _dataSource = dataSource;
//        _pageIndex = 0;
//        _teamListManager = [[InformationShould alloc] initWithTeam:dataSource.team session:dataSource.session];
        //: NSString *kConst_pointTapButtonData = @"kConst_pointTapButtonData";
        NSString *kConst_pointTapButtonData = StringFromWheneverData(kStr_houseLayerData);
        //: [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(teamMemberUpdate:) name:kConst_pointTapButtonData object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(obscured:) name:kConst_pointTapButtonData object:nil];

        //: NSLog(@"self.teamListManager-%@",_teamListManager.memberIds);
    }
    //: return self;
    return self;
}


//: - (void)viewWillAppear:(BOOL)animated{
- (void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: [self.navigationController.navigationBar setHidden:YES];
    [self.navigationController.navigationBar setHidden:YES];
}

//: -(void)viewWillDisappear:(BOOL)animated{
-(void)viewWillDisappear:(BOOL)animated{
    //: [super viewWillDisappear:animated];
    [super viewWillDisappear:animated];
    //: [self.navigationController.navigationBar setHidden:NO];
    [self.navigationController.navigationBar setHidden:NO];

}

//: - (void)backAction{
- (void)belowTeamAdd{
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
}

//: - (void)rightNavButtonClick{
- (void)generalClick{
        //: NSMutableArray *users = [self.teamListManager memberIds];
        NSMutableArray *users = [self.teamListManager memberIds];
        //: NSString *currentUserID = [self.teamListManager myAccount];
        NSString *currentUserID = [self.teamListManager myAccount];
        //: [users addObject:currentUserID];
        [users addObject:currentUserID];

        //: NIMContactFriendSelectConfig *config = [[NIMContactFriendSelectConfig alloc] init];
        TextCell *config = [[TextCell alloc] init];
        //: config.filterIds = users;
        config.filterIds = users;
        //: config.needMutiSelected = YES;
        config.needMutiSelected = YES;
        //: ZZZContactSelectViewController *vc = [[ZZZContactSelectViewController alloc] initWithConfig:config];
        InputValueViewController *vc = [[InputValueViewController alloc] initWithSessionMore:config];
        //: vc.delegate = self;
        vc.delegate = self;
        //: [vc show];
        [vc with];
}


//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
//    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"common_bg"]];
    //: UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
    UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
    //: bg.image = [UIImage imageNamed:@"common_bg"];
    bg.image = [UIImage imageNamed:StringFromWheneverData(kStr_withAlongsideContent)];
    //: [self.view addSubview:bg];
    [self.view addSubview:bg];

    //: [self setupUI];
    [self input];
    //: [self loadMuteListData];
    [self anMonth];

    //: NSMutableDictionary *dict = @{}.mutableCopy;
    NSMutableDictionary *dict = @{}.mutableCopy;
    //: dict[@"id"] = self.teamListManager.team.teamId?:@"";
    dict[@"id"] = self.teamListManager.team.teamId?:@"";
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/team/getTeamSetting"] params:dict isShow:NO success:^(id responseObject) {
    [ViewManager viewFailed:[NSString stringWithFormat:StringFromWheneverData(kStr_sightValue)] disable:dict params:NO status:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict length:StringFromWheneverData(kStr_engineSessionData)];
        //: if (code.integerValue <= 0) {
        if (code.integerValue <= 0) {
            //: NSDictionary *data = [resultDict valueObjectForKey:@"data"];
            NSDictionary *data = [resultDict userTo:StringFromWheneverData(kStr_payerValue)];
            //: _teamSettingConfig = data;
            _teamSettingConfig = data;
        }

    //: } failed:^(id responseObject, NSError *error) {
    } allow:^(id responseObject, NSError *error) {

    //: }];
    }];
}

//: - (void)viewDidAppear:(BOOL)animated {
- (void)viewDidAppear:(BOOL)animated {
    //: [super viewDidAppear:animated];
    [super viewDidAppear:animated];
//    [self refreshPage];
//    [_collectionView reloadData];
    //: [self.tableView reloadData];
    [self.tableView reloadData];
}

//: - (void)viewDidLayoutSubviews {
- (void)viewDidLayoutSubviews {
    //: [super viewDidLayoutSubviews];
    [super viewDidLayoutSubviews];
}

//: - (void)refreshPage {
- (void)roundText {
//    NSInteger itemCountPerPage = self.itemCountPerPage;
//    NSInteger memberNumber = _dataSource.memberNumber;
//    _totalPageCount = memberNumber / itemCountPerPage;
//
//    if (memberNumber%itemCountPerPage != 0) {
//        _totalPageCount++;
//    }
//    self.navigationItem.title = [NSString stringWithFormat:@"%@(%d/%d)", LangKey(@"group_info_activity_team_member"),(int)_pageIndex+1, (int)_totalPageCount];
//    _nextBtn.hidden = (_totalPageCount == 1 || _pageIndex == _totalPageCount - 1);
//    _lastBtn.hidden = (_totalPageCount == 1 || _pageIndex == 0);
}

//: - (void)setupUI {
- (void)input {

    //: UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice vg_statusBarHeight]))];
    UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice encounter]))];
    //: [self.view addSubview:bgView];
    [self.view addSubview:bgView];

    //: UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: backButton.frame = CGRectMake(5, [UIDevice vg_statusBarHeight]+4, 40, 40);
    backButton.frame = CGRectMake(5, [UIDevice encounter]+4, 40, 40);
    //: [backButton setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
    [backButton setImage:[UIImage imageNamed:StringFromWheneverData(kStr_speciesName)] forState:(UIControlStateNormal)];
    //: [backButton addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [backButton addTarget:self action:@selector(belowTeamAdd) forControlEvents:UIControlEventTouchUpInside];
    //: [bgView addSubview:backButton];
    [bgView addSubview:backButton];

    //: UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-200)/2, [UIDevice vg_statusBarHeight]+4, 200, 40)];
    UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-200)/2, [UIDevice encounter]+4, 200, 40)];
    //: labtitle.font = [UIFont systemFontOfSize:16.f];
    labtitle.font = [UIFont systemFontOfSize:16.f];
    //: labtitle.textColor = [UIColor blackColor];
    labtitle.textColor = [UIColor blackColor];
    //: labtitle.textAlignment = NSTextAlignmentCenter;
    labtitle.textAlignment = NSTextAlignmentCenter;
    //: labtitle.text = [NTESLanguageManager getTextWithKey:@"group_info_activity_team_member"];
    labtitle.text = [LabelCell tinkleKey:StringFromWheneverData(kStr_exposeData)];
    //: [bgView addSubview:labtitle];
    [bgView addSubview:labtitle];

    //: UIButton *submitButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *submitButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: submitButton.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-15-40, [UIDevice vg_statusBarHeight]+4, 40, 40);
    submitButton.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-15-40, [UIDevice encounter]+4, 40, 40);
    //: [submitButton setImage:[UIImage imageNamed:@"ic_group_addmember"] forState:(UIControlStateNormal)];
    [submitButton setImage:[UIImage imageNamed:StringFromWheneverData(kStr_totalLabelText)] forState:(UIControlStateNormal)];
    //: [submitButton addTarget:self action:@selector(rightNavButtonClick) forControlEvents:UIControlEventTouchUpInside];
    [submitButton addTarget:self action:@selector(generalClick) forControlEvents:UIControlEventTouchUpInside];
    //: [bgView addSubview:submitButton];
    [bgView addSubview:submitButton];

    //: self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(15, (44.0f + [UIDevice vg_statusBarHeight])+15, [[UIScreen mainScreen] bounds].size.width-30, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice vg_statusBarHeight])) style:UITableViewStyleGrouped];
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(15, (44.0f + [UIDevice encounter])+15, [[UIScreen mainScreen] bounds].size.width-30, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice encounter])) style:UITableViewStyleGrouped];
    //: [self.view addSubview:self.tableView];
    [self.view addSubview:self.tableView];
    //: self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    //: self.tableView.backgroundColor = [UIColor clearColor];
    self.tableView.backgroundColor = [UIColor clearColor];
    //: _tableView.estimatedSectionHeaderHeight=15.1;
    _tableView.estimatedSectionHeaderHeight=15.1;
    //: _tableView.estimatedSectionFooterHeight=.1;
    _tableView.estimatedSectionFooterHeight=.1;
    //: self.tableView.estimatedRowHeight = UITableViewAutomaticDimension;
    self.tableView.estimatedRowHeight = UITableViewAutomaticDimension;
    //: self.tableView.delegate = self;
    self.tableView.delegate = self;
    //: self.tableView.dataSource = self;
    self.tableView.dataSource = self;

//    _nextBtn = [UIButton buttonWithType:UIButtonTypeSystem];
//    _nextBtn.titleLabel.font = [UIFont systemFontOfSize:13.0];
//    [_nextBtn setTitle:@"下一页".nim_localized forState:UIControlStateNormal];
//    [_nextBtn addTarget:self action:@selector(nextPageAction:) forControlEvents:UIControlEventTouchUpInside];
//    _nextBtn.frame = CGRectMake(0, 0, 40, 40);
//    _nextBtn.hidden = YES;
//    _lastBtn = [UIButton buttonWithType:UIButtonTypeSystem];
//    _lastBtn.titleLabel.font = [UIFont systemFontOfSize:13.0];
//
//    [_lastBtn setTitle:@"上一页".nim_localized forState:UIControlStateNormal];
//    _lastBtn.frame = CGRectMake(0, 0, 40, 40);
//    _lastBtn.hidden = YES;
//    [_lastBtn addTarget:self action:@selector(lastPageAction:) forControlEvents:UIControlEventTouchUpInside];
//    UIBarButtonItem *nextBtnItem =[[UIBarButtonItem alloc] initWithCustomView:_nextBtn];
//    UIBarButtonItem *lastBtnItem = [[UIBarButtonItem alloc] initWithCustomView:_lastBtn];
//
//    nextBtnItem.tintColor = [UIColor whiteColor];
//    lastBtnItem.tintColor = [UIColor whiteColor];
//
//    self.navigationItem.rightBarButtonItems = @[nextBtnItem, lastBtnItem];
//    [self.view addSubview:self.collectionView];

}

//: - (void)loadMuteListData {
- (void)anMonth {
////    NSInteger itemCountPerPage = [self itemCountPerPage];
//    TingEnterEnable *option = [[TingEnterEnable alloc] init];
////    option.offset = _pageIndex*itemCountPerPage;
////    option.count = itemCountPerPage;
//    option.isRefresh = NO;
//    __weak typeof(self) weakSelf = self;
//    [DevelopmentColorView show];
//    [_dataSource fetchTeamMembersWithOption:option completion:^(NSError * _Nullable error, NSString * _Nullable msg) {
//        [DevelopmentColorView dismiss];
//        if (error) {
//            [weakSelf.view makeToast:msg duration:2 position:CSToastPositionCenter];
//        } else {
//            [weakSelf refreshPage];
//            [weakSelf.tableView reloadData];
//        }
//    }];

    //: NSString *teamId = self.teamListManager.team.teamId;
    NSString *teamId = self.teamListManager.team.teamId;
    //: if (self.teamListManager.team.type == NIMTeamTypeSuper) {
    if (self.teamListManager.team.type == NIMTeamTypeSuper) {
        //: [[NIMSDK sharedSDK].superTeamManager fetchTeamMutedMembers:teamId completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
        [[NIMSDK sharedSDK].superTeamManager fetchTeamMutedMembers:teamId completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
            //: self.muteArray = members;
            self.muteArray = members;
            //: [self.tableView reloadData];
            [self.tableView reloadData];
        //: }];
        }];
    //: } else {
    } else {
        //: [[NIMSDK sharedSDK].teamManager fetchTeamMutedMembers:teamId completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
        [[NIMSDK sharedSDK].teamManager fetchTeamMutedMembers:teamId completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
            //: self.muteArray = members;
            self.muteArray = members;
            //: [self.tableView reloadData];
            [self.tableView reloadData];
        //: }];
        }];
    }
}



//更新群成员禁言
//: - (void)cellShouldBeMute:(NSString *)uid mute:(BOOL)mute
- (void)show:(NSString *)uid magnitudeTitle:(BOOL)mute
{
//    [_dataSource updateUserMuteState:uid mute:mute completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
//        [self.tableView reloadData];
//    }];

    //: BOOL ismute = YES;
    BOOL ismute = YES;
    //: for (NIMTeamMember *member in self.muteArray) {
    for (NIMTeamMember *member in self.muteArray) {
        //: if([member.userId isEqualToString:uid]){
        if([member.userId isEqualToString:uid]){
            //: ismute = NO;
            ismute = NO;
        //: }else{
        }else{
            //: ismute = YES;
            ismute = YES;
        }
    }

    //: NSString *teamId = self.teamListManager.team.teamId;
    NSString *teamId = self.teamListManager.team.teamId;
    //: if (self.teamListManager.team.type == NIMTeamTypeSuper) {
    if (self.teamListManager.team.type == NIMTeamTypeSuper) {
        //: NSMutableArray *users = [NSMutableArray array];
        NSMutableArray *users = [NSMutableArray array];
        //: if (uid) {
        if (uid) {
            //: [users addObject:uid];
            [users addObject:uid];
        }
        //: [[NIMSDK sharedSDK].superTeamManager updateMuteState:ismute
        [[NIMSDK sharedSDK].superTeamManager updateMuteState:ismute
                                                      //: userIds:users
                                                      userIds:users
                                                       //: inTeam:teamId
                                                       inTeam:teamId
                                                  //: completion:^(NSError *error) {
                                                  completion:^(NSError *error) {
            //: [self loadMuteListData];
            [self anMonth];

        //: }];
        }];
    //: } else {
    } else {
        //: [[NIMSDK sharedSDK].teamManager updateMuteState:ismute
        [[NIMSDK sharedSDK].teamManager updateMuteState:ismute
                                                 //: userId:uid
                                                 userId:uid
                                                 //: inTeam:teamId
                                                 inTeam:teamId
                                             //: completion:^(NSError *error) {
                                             completion:^(NSError *error) {
            //: NSString *msg = nil;
            NSString *msg = nil;
            //: if (!error) {
            if (!error) {
                //: msg = @"修改成功".nim_localized;
                msg = StringFromWheneverData(kStr_veteranData).start;
            //: }else{
            }else{
                //: msg = @"修改失败".nim_localized;
                msg = StringFromWheneverData(kStr_stopTextName).start;
            }
            //: [self.view makeToast:msg duration:2.0 position:CSToastPositionCenter];
            [self.view makeToast:msg duration:2.0 position:CSToastPositionCenter];

//            [self.tableView reloadData];
            //: [self loadMuteListData];
            [self anMonth];
         //: }];
         }];
    }

}


//: - (void)cellShouldBeRemoved:(NSString *)uid
- (void)bes:(NSString *)uid
{
    //: [ZZZKitProgressHUD show];
    [DevelopmentColorView showBackground];
    //: [self.teamListManager kickUsers:@[uid] completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
    [self.teamListManager language:@[uid] down:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [ZZZKitProgressHUD dismiss];
        [DevelopmentColorView voice];
//        NSString *msg = nil;
//        if (!error) {
//            msg = @"修改成功".nim_localized;
//        }else{
//            msg = @"修改失败".nim_localized;
//        }
        //: [self.view makeToast:msg duration:2.0 position:CSToastPositionCenter];
        [self.view makeToast:msg duration:2.0 position:CSToastPositionCenter];
        //: [self.tableView reloadData];
        [self.tableView reloadData];
    //: }];
    }];
}

//: #pragma mark - UITableViewDelegate
#pragma mark - UITableViewDelegate
//- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
//    return _teamListManager.memberIds.count;
////    return _dataSource.members.count;
//}

//: - (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//    return _dataSource.members.count;
    //: return _teamListManager.memberIds.count;
    return _teamListManager.memberIds.count;
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {

    //: return 60;
    return 60;
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    //: return 2.2250738585072014e-308;
    return 2.2250738585072014e-308;
}

//: - (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    //: return [[UIView alloc] init];
    return [[UIView alloc] init];
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    //: return 2.2250738585072014e-308;
    return 2.2250738585072014e-308;
}

//: - (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
    //: return [[UIView alloc] init];
    return [[UIView alloc] init];
}

//: - (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    //: ZMONGroupMemberTableViewCell *cell = [ZMONGroupMemberTableViewCell cellWithTableView:tableView];
    DisableViewCell *cell = [DisableViewCell streetSmart:tableView];
    //: cell.delegate = self;
    cell.delegate = self;

    //: NSString *uId = _teamListManager.memberIds[indexPath.row];
    NSString *uId = _teamListManager.memberIds[indexPath.row];
    //: ZZZKitInfo *usrInfo = [[AppleProjectKit sharedKit] infoByUser:uId option:nil];
    MagnitudeCommentInfo *usrInfo = [[On along] toKey:uId image:nil];
//    WithQuantityerval *member = _dataSource.members[indexPath.row];
//    MagnitudeCommentInfo *usrInfo = [[On sharedKit] infoByUser:member.member.userId option:nil];

//    cell.userInfo = usrInfo;
    //: [cell reloadWithUserId:uId];
    [cell label:uId];
    //: [cell.roleImageView sd_setImageWithURL:[NSURL URLWithString:usrInfo.avatarUrlString] placeholderImage:usrInfo.avatarImage];
    [cell.roleImageView sd_setImageWithURL:[NSURL URLWithString:usrInfo.avatarUrlString] placeholderImage:usrInfo.avatarImage];
    //: cell.titleLabel.text = usrInfo.showName;
    cell.titleLabel.text = usrInfo.showName;
//    cell.subtitleLabel.text = LangKey(@"Group_Me");
    //: cell.subtitleLabel.text = @"Administrator";
    cell.subtitleLabel.text = StringFromWheneverData(kStr_driverContent);

//    BOOL isMe = [uId isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount];
    //: BOOL isown = [uId isEqualToString:_teamListManager.team.owner];
    BOOL isown = [uId isEqualToString:_teamListManager.team.owner];
    //: if(isown){
    if(isown){
        //: cell.roleImageView.frame = CGRectMake(15, 10, 40, 40);
        cell.roleImageView.frame = CGRectMake(15, 10, 40, 40);
        //: cell.titleLabel.frame = CGRectMake(cell.roleImageView.right+16, 10, 150, 20);
        cell.titleLabel.frame = CGRectMake(cell.roleImageView.right+16, 10, 150, 20);
        //: cell.subtitleLabel.hidden = NO;
        cell.subtitleLabel.hidden = NO;
        //: cell.subtitleLabel.frame = CGRectMake(cell.roleImageView.right+16, 30, 150, 20);
        cell.subtitleLabel.frame = CGRectMake(cell.roleImageView.right+16, 30, 150, 20);


    //: }else{
    }else{
        //: cell.roleImageView.frame = CGRectMake(15, 10, 40, 40);
        cell.roleImageView.frame = CGRectMake(15, 10, 40, 40);
        //: cell.titleLabel.frame = CGRectMake(cell.roleImageView.right+16, 0, 150, 60);
        cell.titleLabel.frame = CGRectMake(cell.roleImageView.right+16, 0, 150, 60);
        //: cell.subtitleLabel.hidden = YES;
        cell.subtitleLabel.hidden = YES;
        //: cell.muteBtn.hidden = YES;
        cell.muteBtn.hidden = YES;
        //: cell.removeBtn.hidden = YES;
        cell.removeBtn.hidden = YES;
    }

    //: if([_teamListManager.team.owner isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount]){
    if([_teamListManager.team.owner isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount]){
        //: cell.muteBtn.hidden = NO;
        cell.muteBtn.hidden = NO;
        //: cell.removeBtn.hidden = NO;
        cell.removeBtn.hidden = NO;
        //: cell.muteBtn.selected = NO;
        cell.muteBtn.selected = NO;
        //: for (NIMTeamMember *member in self.muteArray) {
        for (NIMTeamMember *member in self.muteArray) {
            //: if([member.userId isEqualToString:uId] && member.isMuted){
            if([member.userId isEqualToString:uId] && member.isMuted){
                //: cell.muteBtn.selected = YES;
                cell.muteBtn.selected = YES;
            }
        }
    //: }else{
    }else{
        //: cell.muteBtn.hidden = YES;
        cell.muteBtn.hidden = YES;
        //: cell.removeBtn.hidden = YES;
        cell.removeBtn.hidden = YES;
    }

    //: if(isown){
    if(isown){
        //: cell.muteBtn.hidden = YES;
        cell.muteBtn.hidden = YES;
        //: cell.removeBtn.hidden = YES;
        cell.removeBtn.hidden = YES;
    }



//    WithQuantityerval
//        NSString *showName = data.title;
//        if ([data isMyUserId]) {
//            showName = LangKey(@"Group_Me");//@"我".nim_localized;
//        }
//        self.titleLabel.text = showName;


//    id<NIMKitCardHeaderData> data = [_dataSource.members objectAtIndex:indexPath.row];
//    NIMUser *user = [[NIMSDK sharedSDK].userManager userInfo:data.userId];
//    [cell refreshData:member];

//    id<NIMKitCardHeaderData> data = [_dataSource.members objectAtIndex:indexPath.row];
//
//    [cell.roleImageView sd_setImageWithURL:[NSURL URLWithString:data.imageUrl] placeholderImage:data.imageNormal];
//    cell.titleLabel.text = data.title;

    //: return cell;
    return cell;



}

//: - (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    //: [tableView deselectRowAtIndexPath:indexPath animated:YES];
    [tableView deselectRowAtIndexPath:indexPath animated:YES];

    //: NSString *canMemberInfo = [_teamSettingConfig newStringValueForKey:@"canAddFriend"];
    NSString *canMemberInfo = [_teamSettingConfig length:StringFromWheneverData(kStr_rooText)];
    //: if (canMemberInfo.integerValue > 0) {
    if (canMemberInfo.integerValue > 0) {
        //: NSString *uId = _teamListManager.memberIds[indexPath.row];
        NSString *uId = _teamListManager.memberIds[indexPath.row];
        //: ZZZPersonalCardViewController *vc = [[ZZZPersonalCardViewController alloc] initWithUserId:uId];
        FileViewController *vc = [[FileViewController alloc] initWithHour:uId];
        //: vc.teamSetingConfig = _teamSettingConfig;
        vc.teamSetingConfig = _teamSettingConfig;
        //: [self.navigationController pushViewController:vc animated:YES];
        [self.navigationController pushViewController:vc animated:YES];
    }

}



//: #pragma mark - ContactSelectDelegate
#pragma mark - ContactSelectDelegate
//: - (void)didFinishedSelect:(NSArray *)selectedContacts{
- (void)limitted:(NSArray *)selectedContacts{
    //: [self didInviteUsers:selectedContacts completion:nil];
    [self users:selectedContacts matrix:nil];
}

//: - (void)didInviteUsers:(NSArray<NSString *> *)userIds
- (void)users:(NSArray<NSString *> *)userIds
            //: completion:(dispatch_block_t)completion {
            matrix:(dispatch_block_t)completion {

    //: if (userIds.count == 0) {
    if (userIds.count == 0) {
        //: return;
        return;
    }

    //: NSMutableDictionary *info = [NSMutableDictionary dictionary];
    NSMutableDictionary *info = [NSMutableDictionary dictionary];
    //: info[@"attach"] = @"扩展消息";
    info[StringFromWheneverData(kStr_convictName)] = StringFromWheneverData(kStr_litName);
    //: switch (self.teamListManager.team.type) {
    switch (self.teamListManager.team.type) {
        //: case NIMTeamTypeNormal:
        case NIMTeamTypeNormal:
            //: info[@"postscript"] = @"邀请你加入讨论组".nim_localized;
            info[StringFromWheneverData(kStr_somedayPointData)] = StringFromWheneverData(kStr_policyLooTitle).start;
            //: break;
            break;
        //: case NIMTeamTypeAdvanced:
        case NIMTeamTypeAdvanced:
            //: info[@"postscript"] = @"邀请你加入高级群".nim_localized;
            info[StringFromWheneverData(kStr_somedayPointData)] = StringFromWheneverData(kStr_layerName).start;
            //: break;
            break;
        //: case NIMTeamTypeSuper:
        case NIMTeamTypeSuper:
            //: info[@"postscript"] = @"邀请你加入超大群".nim_localized;
            info[StringFromWheneverData(kStr_somedayPointData)] = StringFromWheneverData(kStr_anybodyStairsText).start;
            //: break;
            break;
        //: default:
        default:
            //: break;
            break;
    }
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
//    [DevelopmentColorView show];
    //: [self.teamListManager addUsers:userIds info:info completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
    [self.teamListManager location:userIds data:info info:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
//        [DevelopmentColorView dismiss];

        //: if (completion) {
        if (completion) {
            //: completion();
            completion();
        }
    //: }];
    }];
}

//: #pragma mark - Actions
#pragma mark - Actions
//- (void)nextPageAction:(id)sender {
//    NSInteger targetPage = _pageIndex+1;
//    NSInteger itemCountPerPage = [self itemCountPerPage];
//    _pageIndex++;
//    if (targetPage*itemCountPerPage + itemCountPerPage > _dataSource.members.count) { //需要加载新数据
//        [self loadNextData];
//    } else {
//        [self refreshPage];
//        [_collectionView reloadData];
//    }
//}
//
//- (void)lastPageAction:(id)sender {
//    if (_pageIndex == 0) {
//        return;
//    }
//    _pageIndex--;
//    [self refreshPage];
//    [_collectionView reloadData];
//}
//
//: - (void)teamMemberUpdate:(NSNotification *)note {
- (void)obscured:(NSNotification *)note {
    //: [self refreshPage];
    [self roundText];
    //: [self.tableView reloadData];
    [self.tableView reloadData];
}

//#pragma mark - UICollectionViewDataSource
//- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
//    NSInteger count = 0;
//    if (_pageIndex == _totalPageCount - 1) {
//        count = _dataSource.members.count - _pageIndex * self.itemCountPerPage;
//    } else if (_pageIndex < _totalPageCount - 1) {
//        count = self.itemCountPerPage;
//    }
//    return count;
//}
//
//- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
//    DisenableView *cell = [collectionView dequeueReusableCellWithReuseIdentifier:CollectionCellReuseId forIndexPath:indexPath];
//    cell.delegate = self;
//    NSInteger index = _pageIndex * self.itemCountPerPage + indexPath.row;
//    if (_dataSource.members.count >= index){
//        id<NIMKitCardHeaderData> data = [_dataSource.members objectAtIndex:index];
//        [cell refreshData:data];
//    }
//    return cell;
//}
//
//#pragma mark - UICollectionViewDelegateFlowLayout
//- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
//    return CGSizeMake(CollectionItemWidth, CollectionItemHeight);
//}
//
//- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout insetForSectionAtIndex:(NSInteger)section{
//    if (section == 0) {
//        return UIEdgeInsetsMake(CollectionEdgeInsetTopFirstLine, 0, 0, 0);
//    }
//    return UIEdgeInsetsMake(CollectionEdgeInsetTop, 0, 0, 0);
//}
//
//#pragma mark - MinorityDelegate
//- (void)cellDidSelected:(DisenableView*)cell{
//    NSIndexPath *indexpath = [self.collectionView indexPathForCell:cell];
//    NSInteger index = _pageIndex * self.itemCountPerPage + indexpath.row;
//
//
//
//
//
//    WithQuantityerval *manager = nil;
//    for (WithQuantityerval *item in _dataSource.members) {
//        if ([item.userId isEqualToString:[[NIMSDK sharedSDK].loginManager currentAccount]]) {
//            manager = item;
//        }
//    }
//    WithQuantityerval *member = _dataSource.members[index];
//    if (manager.member.type == NIMTeamMemberTypeOwner) {
//        PathPinViewController *vc = [[PathPinViewController alloc] initWithMember:member.userId
//                                                                                dataSource:_dataSource];
//        [self.navigationController pushViewController:vc animated:YES];
//    }else{
//        NSString *canMemberInfo = [_teamSettingConfig newStringValueForKey:@"canMemberInfo"];
//        if (canMemberInfo.integerValue > 0) {
//            FileViewController *vc = [[FileViewController alloc] initWithUserId:member.userId];
//            vc.teamSetingConfig = _teamSettingConfig;
//            [self.navigationController pushViewController:vc animated:YES];
//        }else{
//            [SVProgressHUD showMessage:LangKey(@"暂未开放,请联系管理员")];
//        }
//    }
//}

//#pragma mark - 旋转处理 (iOS8 or above)
//- (void)viewWillTransitionToSize:(CGSize)size
//       withTransitionCoordinator:(id<UIViewControllerTransitionCoordinator>)coordinator
//{
//    UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
//    flowLayout.minimumInteritemSpacing = CollectionEdgeInsetLeftRight;
//    [self.collectionView setCollectionViewLayout:flowLayout animated:YES];
//
//    [super viewWillTransitionToSize:size withTransitionCoordinator:coordinator];
//    [coordinator animateAlongsideTransition:^(id <UIViewControllerTransitionCoordinatorContext> context)
//     {
//         [self.collectionView reloadData];
//     } completion:nil];
//}

//: #pragma mark - Private
#pragma mark - Private
//- (UICollectionView *)collectionView {
//    if (!_collectionView) {
//        UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
//        _collectionView = [[UICollectionView alloc] initWithFrame:self.view.bounds collectionViewLayout:flowLayout];
//        flowLayout.minimumInteritemSpacing = CollectionEdgeInsetLeftRight;
//        _collectionView.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
//        _collectionView.backgroundColor = [UIColor colorWithRed:236.0/255.0 green:241.0/255.0 blue:245.0/255.0 alpha:1];
//        _collectionView.delegate   = self;
//        _collectionView.dataSource = self;
//        [_collectionView registerClass:[DisenableView class] forCellWithReuseIdentifier:CollectionCellReuseId];
//        _collectionView.contentInset = UIEdgeInsetsMake(self.collectionView.contentInset.top,
//                                                        CollectionEdgeInsetLeftRight,
//                                                        _collectionView.contentInset.bottom,
//                                                        CollectionEdgeInsetLeftRight);
//    }
//    return _collectionView;
//}
//
//- (NSInteger)itemCountPerPage {
//    CGFloat minSpace = 20.f; //防止计算到最后出现左右贴边的情况
//    NSInteger lines = (self.collectionView.frame.size.width - minSpace)/ (CollectionItemWidth + CollectionEdgeInsetLeftRight);
//    NSInteger rows = (self.collectionView.frame.size.height - minSpace)/(CollectionItemHeight + CollectionEdgeInsetLeftRight);
//    return rows * lines;
//}

//: @end
@end

Byte * WheneverDataToCache(Byte *data) {
    int sorryVas = data[0];
    int wall = data[1];
    int workingCapital = data[2];
    if (!sorryVas) return data + workingCapital;
    for (int i = 0; i < wall / 2; i++) {
        int begin = workingCapital + i;
        int end = workingCapital + wall - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[workingCapital + wall] = 0;
    return data + workingCapital;
}

NSString *StringFromWheneverData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)WheneverDataToCache(data)];
}  
