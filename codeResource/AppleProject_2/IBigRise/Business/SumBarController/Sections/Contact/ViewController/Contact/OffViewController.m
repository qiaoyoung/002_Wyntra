
#import <Foundation/Foundation.h>

NSString *StringFromActivityData(Byte *data);


//: group_info_activity_op_failed
Byte kStr_mediaData[] = {52, 29, 20, 4, 123, 134, 131, 137, 132, 115, 125, 130, 122, 131, 115, 117, 119, 136, 125, 138, 125, 136, 141, 115, 131, 132, 115, 122, 117, 125, 128, 121, 120, 145};


//: group_chat_avatar_activity_add_black_success
Byte kStr_scanText[] = {15, 44, 43, 13, 202, 17, 213, 173, 185, 97, 151, 194, 93, 146, 157, 154, 160, 155, 138, 142, 147, 140, 159, 138, 140, 161, 140, 159, 140, 157, 138, 140, 142, 159, 148, 161, 148, 159, 164, 138, 140, 143, 143, 138, 141, 151, 140, 142, 150, 138, 158, 160, 142, 142, 144, 158, 158, 63};


//: icon_friend_add
Byte kStr_withText[] = {45, 15, 79, 8, 134, 17, 165, 41, 184, 178, 190, 189, 174, 181, 193, 184, 180, 189, 179, 174, 176, 179, 179, 22};


//: black_list_activity_black
Byte kStr_recordingValue[] = {21, 25, 67, 8, 96, 26, 213, 4, 165, 175, 164, 166, 174, 162, 175, 172, 182, 183, 162, 164, 166, 183, 172, 185, 172, 183, 188, 162, 165, 175, 164, 166, 174, 19};


//: black_list_activity_black_list_tip
Byte kStr_sizeImageName[] = {98, 34, 15, 14, 173, 126, 208, 67, 116, 114, 137, 99, 168, 221, 113, 123, 112, 114, 122, 110, 123, 120, 130, 131, 110, 112, 114, 131, 120, 133, 120, 131, 136, 110, 113, 123, 112, 114, 122, 110, 123, 120, 130, 131, 110, 131, 120, 127, 146};


//: back_arrow_bl
Byte kStr_itemName[] = {28, 13, 7, 5, 151, 105, 104, 106, 114, 102, 104, 121, 121, 118, 126, 102, 105, 115, 168};


//: common_bg
Byte kStr_barAccountTingName[] = {45, 9, 81, 5, 92, 180, 192, 190, 190, 192, 191, 176, 179, 184, 142};


//: #999999
Byte kStr_markContent[] = {23, 7, 1, 8, 239, 109, 144, 220, 36, 58, 58, 58, 58, 58, 58, 83};


//: friend_delete_fail
Byte kStr_boxData[] = {47, 18, 22, 12, 182, 36, 132, 157, 76, 230, 193, 131, 124, 136, 127, 123, 132, 122, 117, 122, 123, 130, 123, 138, 123, 117, 124, 119, 127, 130, 186};

// __DEBUG__
// __CLOSE_PRINT__
//
//  OffViewController.m
//  NIM
//
//  Created by chris on 15/8/18.
//  Copyright (c) 2015年 Netease. All rights reserved.
//
//#import "NearnessViewCell.h"

// __M_A_C_R_O__
//: #import "ZZZBlackListViewController.h"
#import "OffViewController.h"
//: #import "UIView+Toast.h"
#import "UIView+Toast.h"
//: #import "ZZZContactSelectViewController.h"
#import "InputValueViewController.h"
//: #import "NTESListHeader.h"
#import "TextView.h"
//: #import "UIView+NTES.h"
#import "UIView+Item.h"
//: #import "ZZZPersonalCardViewController.h"
#import "FileViewController.h"
//: #import "NTESContactDataMember.h"
#import "QueryItemHide.h"
//: #import "SVProgressHUD.h"
#import "SVProgressHUD.h"
//: #import "NTESBlackListTableViewCell.h"
#import "QueueItemView.h"

//: @interface ZZZBlackListViewController ()<UITableViewDataSource,UITableViewDelegate,NIMContactSelectDelegate,NTESListHeaderDelegate,NTESUserListCellDelegate>
@interface OffViewController ()<UITableViewDataSource,UITableViewDelegate,CompartmentDelegate,ViewTitle,MaxDelegate>

//: @property (nonatomic,strong) NSMutableArray *data;
@property (nonatomic,strong) NSMutableArray *data;
//: @property(nonatomic, strong) UILabel *subtitleLabel;
@property(nonatomic, strong) UILabel *subtitleLabel;
//: @property (nonatomic,strong) NTESListHeader *header;
@property (nonatomic,strong) TextView *header;

//: @end
@end

//: @implementation ZZZBlackListViewController
@implementation OffViewController

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

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
//    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"common_bg"]];
    //: UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
    UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
    //: bg.image = [UIImage imageNamed:@"common_bg"];
    bg.image = [UIImage imageNamed:StringFromActivityData(kStr_barAccountTingName)];
    //: [self.view addSubview:bg];
    [self.view addSubview:bg];

    //: UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice vg_statusBarHeight]))];
    UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice encounter]))];
    //: [self.view addSubview:bgView];
    [self.view addSubview:bgView];

    //: UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: backButton.frame = CGRectMake(5, [UIDevice vg_statusBarHeight]+4, 40, 40);
    backButton.frame = CGRectMake(5, [UIDevice encounter]+4, 40, 40);
    //: [backButton setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
    [backButton setImage:[UIImage imageNamed:StringFromActivityData(kStr_itemName)] forState:(UIControlStateNormal)];
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
    //: labtitle.text = [NTESLanguageManager getTextWithKey:@"black_list_activity_black"];
    labtitle.text = [LabelCell tinkleKey:StringFromActivityData(kStr_recordingValue)];
    //: [bgView addSubview:labtitle];
    [bgView addSubview:labtitle];

    //: UIButton *submitButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *submitButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: submitButton.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-15-40, [UIDevice vg_statusBarHeight]+4, 40, 40);
    submitButton.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-15-40, [UIDevice encounter]+4, 40, 40);
    //: [submitButton setImage:[UIImage imageNamed:@"icon_friend_add"] forState:(UIControlStateNormal)];
    [submitButton setImage:[UIImage imageNamed:StringFromActivityData(kStr_withText)] forState:(UIControlStateNormal)];
    //: [submitButton addTarget:self action:@selector(onOpera:) forControlEvents:UIControlEventTouchUpInside];
    [submitButton addTarget:self action:@selector(containers:) forControlEvents:UIControlEventTouchUpInside];
    //: [bgView addSubview:submitButton];
    [bgView addSubview:submitButton];

    //: [self.view addSubview:self.subtitleLabel];
    [self.view addSubview:self.subtitleLabel];
    //: self.subtitleLabel.frame = CGRectMake(15, (44.0f + [UIDevice vg_statusBarHeight])+10, [[UIScreen mainScreen] bounds].size.width-30, 40);
    self.subtitleLabel.frame = CGRectMake(15, (44.0f + [UIDevice encounter])+10, [[UIScreen mainScreen] bounds].size.width-30, 40);

        //: self.data = self.myBlackListUser;
        self.data = self.info;

    //: self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(15, (44.0f + [UIDevice vg_statusBarHeight])+60, [[UIScreen mainScreen] bounds].size.width-30, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice vg_statusBarHeight])-60) style:UITableViewStyleGrouped];
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(15, (44.0f + [UIDevice encounter])+60, [[UIScreen mainScreen] bounds].size.width-30, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice encounter])-60) style:UITableViewStyleGrouped];
    //: self.tableView.backgroundColor = [UIColor clearColor];
    self.tableView.backgroundColor = [UIColor clearColor];
        //: self.tableView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
        self.tableView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
        //: [self.view addSubview:self.tableView];
        [self.view addSubview:self.tableView];
        //: self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        //: self.tableView.delegate = self;
        self.tableView.delegate = self;
        //: self.tableView.dataSource = self;
        self.tableView.dataSource = self;
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    //: return 60.f;
    return 60.f;
}

//: - (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    //: return self.data.count;
    return self.data.count;
}

//: - (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    //: return 1;
    return 1;
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    //: return 2.2250738585072014e-308;
    return 2.2250738585072014e-308;
}

//: - (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    //: UIView *backView = [UIView new];
    UIView *backView = [UIView new];
    //: backView.backgroundColor = [UIColor clearColor];
    backView.backgroundColor = [UIColor clearColor];
    //: return backView;
    return backView;
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    //: return 16.f;
    return 16.f;
}

//: - (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
    //: UIView *backView = [UIView new];
    UIView *backView = [UIView new];
    //: backView.backgroundColor = [UIColor clearColor];
    backView.backgroundColor = [UIColor clearColor];
    //: return backView;
    return backView;
}

//: - (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    //: static NSString *identity = @"cell";
    static NSString *identity = @"cell";
    //: NTESBlackListTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identity];
    QueueItemView *cell = [tableView dequeueReusableCellWithIdentifier:identity];
    //: if (!cell) {
    if (!cell) {
        //: cell = [[NTESBlackListTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identity];
        cell = [[QueueItemView alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identity];
        //: cell.delegate = self;
        cell.delegate = self;
    }
    //: NTESContactDataMember *member = self.data[indexPath.section];
    QueryItemHide *member = self.data[indexPath.section];
    //: [cell refreshWithMember:member];
    [cell honkyTonk:member];
    //: return cell;
    return cell;
}

//: - (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    //: [tableView deselectRowAtIndexPath:indexPath animated:YES];
    [tableView deselectRowAtIndexPath:indexPath animated:YES];

    //: NTESContactDataMember *member = self.data[indexPath.section];
    QueryItemHide *member = self.data[indexPath.section];

    //: if (member) {
    if (member) {
        //: [self didTouchUserListAvatar:member.info.infoId];
        [self containerText:member.info.infoId];
    }

}

//: - (void)didTouchCancleButton:(NTESContactDataMember *)dataMemeber {
- (void)soundName:(QueryItemHide *)dataMemeber {
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [SVProgressHUD show];
    [SVProgressHUD show];
    //: [[NIMSDK sharedSDK].userManager removeFromBlackBlackList:dataMemeber.info.infoId completion:^(NSError *error) {
    [[NIMSDK sharedSDK].userManager removeFromBlackBlackList:dataMemeber.info.infoId completion:^(NSError *error) {
        //: [SVProgressHUD dismiss];
        [SVProgressHUD dismiss];
        //: if (!error) {
        if (!error) {
            //: NSInteger index = [wself.data indexOfObject:dataMemeber];
            NSInteger index = [wself.data indexOfObject:dataMemeber];
            //: if (wself.data.count > index) {
            if (wself.data.count > index) {
                //: [wself.data removeObject:dataMemeber];
                [wself.data removeObject:dataMemeber];
//                [wself.tableView deleteRowsAtIndexPaths:@[[NSIndexPath indexPathForRow:index inSection:0]] withRowAnimation:UITableViewRowAnimationAutomatic];
                //: [wself.tableView reloadData];
                [wself.tableView reloadData];
            }
        //: }else{
        }else{
            //: [wself.view makeToast:[NTESLanguageManager getTextWithKey:@"friend_delete_fail"] duration:2.0f position:CSToastPositionCenter];
            [wself.view makeToast:[LabelCell tinkleKey:StringFromActivityData(kStr_boxData)] duration:2.0f position:CSToastPositionCenter];
        }
    //: }];
    }];
}

//: - (void)onOpera:(id)sender{
- (void)containers:(id)sender{
    //: NSMutableArray *users = [[NSMutableArray alloc] init];
    NSMutableArray *users = [[NSMutableArray alloc] init];
    //: for (NTESContactDataMember *member in self.data) {
    for (QueryItemHide *member in self.data) {
        //: [users addObject:member.info.infoId];
        [users addObject:member.info.infoId];
    }
    //: NIMContactFriendSelectConfig *config = [[NIMContactFriendSelectConfig alloc] init];
    TextCell *config = [[TextCell alloc] init];
    //: config.filterIds = users;
    config.filterIds = users;
    //: config.showSelectHeaderview = NO;
    config.showSelectHeaderview = NO;
    //: ZZZContactSelectViewController *vc = [[ZZZContactSelectViewController alloc] initWithConfig:config];
    InputValueViewController *vc = [[InputValueViewController alloc] initWithSessionMore:config];
    //: vc.delegate = self;
    vc.delegate = self;
    //: [vc show];
    [vc with];
}


//: #pragma mark - NTESContactSelectDelegate
#pragma mark - NTESContactSelectDelegate
//: - (void)didFinishedSelect:(NSArray *)selectedContacts{
- (void)limitted:(NSArray *)selectedContacts{
    //: if (selectedContacts.count) {
    if (selectedContacts.count) {
        //: __weak typeof(self) wself = self;
        __weak typeof(self) wself = self;
        //: [[NIMSDK sharedSDK].userManager addToBlackList:selectedContacts.firstObject completion:^(NSError *error) {
        [[NIMSDK sharedSDK].userManager addToBlackList:selectedContacts.firstObject completion:^(NSError *error) {
            //: if (!error) {
            if (!error) {
                //: [wself.view makeToast:[NTESLanguageManager getTextWithKey:@"group_chat_avatar_activity_add_black_success"] duration:2.0 position:CSToastPositionCenter];
                [wself.view makeToast:[LabelCell tinkleKey:StringFromActivityData(kStr_scanText)] duration:2.0 position:CSToastPositionCenter];
                //: wself.data = wself.myBlackListUser;
                wself.data = wself.info;
                //: [wself.tableView reloadData];
                [wself.tableView reloadData];
            //: }else{
            }else{
                //: [wself.view makeToast:[NTESLanguageManager getTextWithKey:@"group_info_activity_op_failed"] duration:2.0 position:CSToastPositionCenter];
                [wself.view makeToast:[LabelCell tinkleKey:StringFromActivityData(kStr_mediaData)] duration:2.0 position:CSToastPositionCenter];
            }
        //: }];
        }];
    }
}

//: #pragma mark - NTESUserListCellDelegate
#pragma mark - MaxDelegate
//: - (void)didTouchUserListAvatar:(NSString *)userId{
- (void)containerText:(NSString *)userId{
    //: ZZZPersonalCardViewController *vc = [[ZZZPersonalCardViewController alloc] initWithUserId:userId];
    FileViewController *vc = [[FileViewController alloc] initWithHour:userId];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}


//: #pragma mark - Private
#pragma mark - Private
//: - (void)refreshSubviews
- (void)province
{
}

//: - (NSMutableArray *)myBlackListUser{
- (NSMutableArray *)info{
    //: NSMutableArray *list = [[NSMutableArray alloc] init];
    NSMutableArray *list = [[NSMutableArray alloc] init];
    //: for (NIMUser *user in [NIMSDK sharedSDK].userManager.myBlackList) {
    for (NIMUser *user in [NIMSDK sharedSDK].userManager.myBlackList) {
        //: NTESContactDataMember *member = [[NTESContactDataMember alloc] init];
        QueryItemHide *member = [[QueryItemHide alloc] init];
        //: ZZZKitInfo *info = [[AppleProjectKit sharedKit] infoByUser:user.userId option:nil];
        MagnitudeCommentInfo *info = [[On along] toKey:user.userId image:nil];
        //: member.info = info;
        member.info = info;
        //: [list addObject:member];
        [list addObject:member];
    }
    //: return list;
    return list;
}

//: - (UILabel *)subtitleLabel {
- (UILabel *)subtitleLabel {
    //: if (!_subtitleLabel) {
    if (!_subtitleLabel) {
        //: _subtitleLabel = [[UILabel alloc] init];
        _subtitleLabel = [[UILabel alloc] init];
        //: _subtitleLabel.font = [UIFont systemFontOfSize:14.f];
        _subtitleLabel.font = [UIFont systemFontOfSize:14.f];
        //: _subtitleLabel.textColor = [UIColor colorWithHexString:@"#999999"];
        _subtitleLabel.textColor = [UIColor box:StringFromActivityData(kStr_markContent)];
        //: _subtitleLabel.textAlignment = NSTextAlignmentLeft;
        _subtitleLabel.textAlignment = NSTextAlignmentLeft;
        //: _subtitleLabel.text = [NTESLanguageManager getTextWithKey:@"black_list_activity_black_list_tip"];
        _subtitleLabel.text = [LabelCell tinkleKey:StringFromActivityData(kStr_sizeImageName)];
        //: _subtitleLabel.numberOfLines = 2;
        _subtitleLabel.numberOfLines = 2;
        //: _subtitleLabel.lineBreakMode = NSLineBreakByTruncatingTail;
        _subtitleLabel.lineBreakMode = NSLineBreakByTruncatingTail;
    }
    //: return _subtitleLabel;
    return _subtitleLabel;
}

//: @end
@end

Byte * ActivityDataToCache(Byte *data) {
    int keyTitle = data[0];
    int atMark = data[1];
    Byte streetSmart = data[2];
    int spirogram = data[3];
    if (!keyTitle) return data + spirogram;
    for (int i = spirogram; i < spirogram + atMark; i++) {
        int value = data[i] - streetSmart;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[spirogram + atMark] = 0;
    return data + spirogram;
}

NSString *StringFromActivityData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)ActivityDataToCache(data)];
}
