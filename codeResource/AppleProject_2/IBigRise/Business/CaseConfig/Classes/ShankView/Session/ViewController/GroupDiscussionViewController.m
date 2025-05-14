
#import <Foundation/Foundation.h>

NSString *StringFromLifeData(Byte *data);        


//: ic_more
Byte kStr_somedayContent[] = {81, 7, 93, 4, 12, 6, 2, 16, 18, 21, 8, 75};


//: chating_bg
Byte kStr_optimisticContent[] = {83, 10, 89, 5, 38, 10, 15, 8, 27, 16, 21, 14, 6, 9, 14, 23};


//: chating_top_bg
Byte kStr_itemSectorText[] = {69, 14, 5, 14, 40, 45, 173, 84, 176, 106, 209, 73, 4, 247, 94, 99, 92, 111, 100, 105, 98, 90, 111, 106, 107, 90, 93, 98, 22};


//: %@在群里@了你
Byte kStr_surfaceAwayCommitteeContent[] = {93, 18, 6, 5, 223, 31, 58, 223, 150, 162, 225, 184, 158, 227, 129, 134, 58, 222, 180, 128, 222, 183, 154, 199};


//: group_info_activity_op_failed
Byte kStr_userSurvivalName[] = {33, 29, 79, 5, 182, 24, 35, 32, 38, 33, 16, 26, 31, 23, 32, 16, 18, 20, 37, 26, 39, 26, 37, 42, 16, 32, 33, 16, 23, 18, 26, 29, 22, 21, 110};


//: #00B01B
Byte kStr_integrationName[] = {36, 7, 16, 14, 96, 44, 85, 184, 110, 51, 12, 160, 211, 57, 19, 32, 32, 50, 32, 33, 50, 67};


//: group_head_def
Byte kStr_completeWeekendOrganizeValue[] = {80, 14, 98, 10, 191, 232, 235, 161, 25, 211, 5, 16, 13, 19, 14, 253, 6, 3, 255, 2, 253, 2, 3, 4, 184};


//: message_administrator_speak
Byte kStr_publishData[] = {95, 27, 32, 12, 92, 195, 137, 222, 48, 213, 204, 19, 77, 69, 83, 83, 65, 71, 69, 63, 65, 68, 77, 73, 78, 73, 83, 84, 82, 65, 84, 79, 82, 63, 83, 80, 69, 65, 75, 132};


//: 777777
Byte kStr_survivalName[] = {36, 6, 96, 7, 31, 46, 178, 215, 215, 215, 215, 215, 215, 57};


//: message_please_enter_content
Byte kStr_textureText[] = {60, 28, 89, 5, 230, 20, 12, 26, 26, 8, 14, 12, 6, 23, 19, 12, 8, 26, 12, 6, 12, 21, 27, 12, 25, 6, 10, 22, 21, 27, 12, 21, 27, 140};


//: back_arrow_bl
Byte kStr_willingnessContent[] = {3, 13, 14, 5, 135, 84, 83, 85, 93, 81, 83, 100, 100, 97, 105, 81, 84, 94, 24};

// __DEBUG__
// __CLOSE_PRINT__
//
//  GroupDiscussionViewController.m
// On
//
//  Created by NetEase.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "DataSessionConfigurateProtocol.h"
#import "DataSessionConfigurateProtocol.h"
//: #import "AppleProjectKit.h"
#import "On.h"
//: #import "DataMessageCellProtocol.h"
#import "DataMessageCellProtocol.h"
//: #import "ZZZMessageModel.h"
#import "CollectionModel.h"
//: #import "ZZZKitUtil.h"
#import "TingText.h"
//: #import "ZZZBadgeView.h"
#import "ChromaticView.h"
//: #import "UITableView+NIMScrollToBottom.h"
#import "UITableView+NIMScrollToBottom.h"
//: #import "ZZZMessageMaker.h"
#import "ViewCreate.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "ZZZSessionConfigurator.h"
#import "NameChange.h"
//: #import "ZZZKitInfoFetchOption.h"
#import "CertainOption.h"
//: #import "ZZZKitTitleView.h"
#import "KitView.h"
//: #import "ZZZKitKeyboardInfo.h"
#import "DemonstrateInfo.h"
//: #import "ZZZReplyContentView.h"
#import "MagnitudeerestView.h"
//: #import "DataKitDependency.h"
#import "DataKitDependency.h"
//: #import "ZZZKitQuickCommentUtil.h"
#import "SizeUtil.h"
//: #import "ZZZBubbleMenuView.h"
#import "TextFrameView.h"
//: #import "ZZZTextView.h"
#import "WeltanschauungTextView.h"
//: #import "ZZZAppDelegate.h"
#import "OnContainer.h"
//: #import "NSObject+tyl_internalIdentifier.h"
#import "NSObject+Name.h"
//: #import "ZZZBubbleMenuView.h"
#import "TextFrameView.h"
//: #import "ZZZBubbleButtonModel.h"
#import "BackgroundTitle.h"
//: #import "ZZZInputAudioView.h"
#import "MediaView.h"
//: #import "UIView+NTES.h"
#import "UIView+Item.h"
//: #import "ZZZPersonalCardViewController.h"
#import "FileViewController.h"
//: #import "ZZZTeamCardViewController.h"
#import "SectionViewController.h"
//: #import "ZZZAdvancedTeamCardViewController.h"
#import "DisableSightViewController.h"
//: #import "SSZipArchiveManager.h"
#import "OnManager.h"

//: @interface ZZZSessionViewController ()<NIMMediaManagerDelegate,NIMInputDelegate,ZZZTeamCardViewControllerDelegate,NIMConversationManagerDelegate>
@interface GroupDiscussionViewController ()<NIMMediaManagerDelegate,BulkDelegate,DefenceHide,NIMConversationManagerDelegate>

//: @property (nonatomic,readwrite) NIMMessage *messageForMenu;
@property (nonatomic,readwrite) NIMMessage *messageForMenu;

//: @property (nonatomic,strong) UILabel *titleLabel;
@property (nonatomic,strong) UILabel *titleLabel;

//: @property (nonatomic,strong) UILabel *subTitleLabel;
@property (nonatomic,strong) UILabel *subTitleLabel;

//: @property (nonatomic,strong) NSIndexPath *lastVisibleIndexPathBeforeRotation;
@property (nonatomic,strong) NSIndexPath *lastVisibleIndexPathBeforeRotation;

//: @property (nonatomic,strong) ZZZSessionConfigurator *configurator;
@property (nonatomic,strong) NameChange *configurator;

//: @property (nonatomic,strong) UITapGestureRecognizer *tableViewTapGesture;
@property (nonatomic,strong) UITapGestureRecognizer *tableViewTapGesture;

//: @property (nonatomic,assign) NSInteger sessionUnreadCount;
@property (nonatomic,assign) NSInteger sessionUnreadCount;
//: @property (nonatomic,strong) ZZZBadgeView *badgeView;
@property (nonatomic,strong) ChromaticView *badgeView;
//: @property (nonatomic,strong) UIImageView *headerImage;
@property (nonatomic,strong) UIImageView *headerImage;
//: @property (nonatomic,strong) UILabel *labtitle;
@property (nonatomic,strong) UILabel *labtitle;
//: @property (nonatomic,strong) UILabel *subtitle;
@property (nonatomic,strong) UILabel *subtitle;

//: @property (nonatomic, strong) UIView *topview;
@property (nonatomic, strong) UIView *topview;
//: @property (nonatomic, strong) ZZZInputAudioView *audioContent;
@property (nonatomic, strong) MediaView *audioContent;

//: @end
@end

//: @implementation ZZZSessionViewController
@implementation GroupDiscussionViewController

//: - (instancetype)initWithSession:(NIMSession *)session{
- (instancetype)initWithMessage:(NIMSession *)session{
    //: self = [super initWithNibName:nil bundle:nil];
    self = [super initWithNibName:nil bundle:nil];
    //: if (self) {
    if (self) {
        //: _session = session;
        _session = session;
    }
    //: return self;
    return self;
}

//: - (void)dealloc
- (void)dealloc
{
    //: [self removeListener];
    [self attender];

    //: _tableView.delegate = nil;
    _tableView.delegate = nil;
    //: _tableView.dataSource = nil;
    _tableView.dataSource = nil;
}

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"chating_bg"]];
        //: UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
        UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
        //: bg.image = [UIImage imageNamed:@"chating_bg"];
        bg.image = [UIImage imageNamed:StringFromLifeData(kStr_optimisticContent)];
        //: [self.view addSubview:bg];
        [self.view addSubview:bg];

    //: UIView *bottomview = [[UIView alloc]initWithFrame:CGRectMake(0, [[UIScreen mainScreen] bounds].size.height-(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom), [[UIScreen mainScreen] bounds].size.width, (({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom))];
    UIView *bottomview = [[UIView alloc]initWithFrame:CGRectMake(0, [[UIScreen mainScreen] bounds].size.height-(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom), [[UIScreen mainScreen] bounds].size.width, (({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom))];
    //: bottomview.backgroundColor = [UIColor whiteColor];
    bottomview.backgroundColor = [UIColor whiteColor];
    //: [self.view addSubview:bottomview];
    [self.view addSubview:bottomview];

    //消息 tableView
    //: [self setupTableView];
    [self quickRandom];
    //导航栏
    //: [self setupNav];
    [self indigenousLanguage];

    //输入框 inputView
    //: [self setupInputView];
    [self message];
    //会话相关逻辑配置器安装
    //: [self setupConfigurator];
    [self inheritanceMode];
    //进入会话时，标记所有消息已读，并发送已读回执
    //: [self markRead];
    [self common];
    //更新已读位置

     //: dispatch_after(dispatch_time((0ull), (int64_t)(0.3 * 1000000000ull)), dispatch_get_main_queue(), ^{
     dispatch_after(dispatch_time((0ull), (int64_t)(0.3 * 1000000000ull)), dispatch_get_main_queue(), ^{
         //: [self setBanned];
         [self sub];
     //: });
     });

//    [[NIMSDK sharedSDK].conversationManager addDelegate:self];

    // 执行设置回调监听
//    [NERtcCallKit.sharedInstance addDelegate:self];
 }

//- (void)onInvited:(NSString *)invitor
//          userIDs:(NSArray<NSString *> *)userIDs
//      isFromGroup:(BOOL)isFromGroup
//          groupID:(nullable NSString *)groupID
//             type:(NERtcCallType)type
//       attachment:(nullable NSString *)attachment
//{
//    ZMONVideoCallViewController *vc = [[ZMONVideoCallViewController alloc] init];
//    vc.isInvait = YES;
//    vc.userId = invitor;
//    vc.roomId = self.session.sessionId;
//    [self.navigationController pushViewController:vc animated:YES];
//}

 //: - (void)setBanned {
 - (void)sub {
     //: NIMSessionType type = self.session.sessionType;
     NIMSessionType type = self.session.sessionType;
     //: switch (type) {
     switch (type) {
         //: case NIMSessionTypeTeam:{
         case NIMSessionTypeTeam:{
             //: NIMTeam *team = [[[NIMSDK sharedSDK] teamManager] teamById:self.session.sessionId];
             NIMTeam *team = [[[NIMSDK sharedSDK] teamManager] teamById:self.session.sessionId];
             //: if (team.inAllMuteMode) {
             if (team.inAllMuteMode) {
                 //: if (team.allMuteMode == NIMTeamAllMuteModeMuteNormal || team.allMuteMode == NIMTeamAllMuteModeMuteAll) {
                 if (team.allMuteMode == NIMTeamAllMuteModeMuteNormal || team.allMuteMode == NIMTeamAllMuteModeMuteAll) {
                     //: NSString *userID = [NIMSDK sharedSDK].loginManager.currentAccount;
                     NSString *userID = [NIMSDK sharedSDK].loginManager.currentAccount;
                     //: NIMTeamMember *member = [[NIMSDK sharedSDK].teamManager teamMember:userID inTeam:self.session.sessionId];
                     NIMTeamMember *member = [[NIMSDK sharedSDK].teamManager teamMember:userID inTeam:self.session.sessionId];
                     //: if (member.isMuted) {
                     if (member.isMuted) {
                         //: [self setInputViewPlaceholder:YES];
                         [self setCognomen:YES];
                     }
                 }
             }
         }
             //: break;
             break;

             //: break;
             break;
         //: case NIMSessionTypeSuperTeam: {
         case NIMSessionTypeSuperTeam: {
             //: NIMTeam *team = [[[NIMSDK sharedSDK] superTeamManager] teamById:self.session.sessionId];
             NIMTeam *team = [[[NIMSDK sharedSDK] superTeamManager] teamById:self.session.sessionId];
             //: if (team.inAllMuteMode) {
             if (team.inAllMuteMode) {
                 //: if (team.allMuteMode == NIMTeamAllMuteModeMuteNormal || team.allMuteMode == NIMTeamAllMuteModeMuteAll) {
                 if (team.allMuteMode == NIMTeamAllMuteModeMuteNormal || team.allMuteMode == NIMTeamAllMuteModeMuteAll) {
                     //: NSString *userID = [NIMSDK sharedSDK].loginManager.currentAccount;
                     NSString *userID = [NIMSDK sharedSDK].loginManager.currentAccount;
                     //: NIMTeamMember *member = [[NIMSDK sharedSDK].teamManager teamMember:userID inTeam:self.session.sessionId];
                     NIMTeamMember *member = [[NIMSDK sharedSDK].teamManager teamMember:userID inTeam:self.session.sessionId];
                     //: if (member.isMuted) {
                     if (member.isMuted) {
                         //: [self setInputViewPlaceholder:YES];
                         [self setCognomen:YES];
                     }
                 }
             }
         }
         //: default:
         default:
             //: break;
             break;
     }
 }

//: #pragma mark - NIMConversationManagerDelegate
#pragma mark - NIMConversationManagerDelegate
//: - (void)didAddRecentSession:(NIMRecentSession *)recentSession
- (void)didAddRecentSession:(NIMRecentSession *)recentSession
           //: totalUnreadCount:(NSInteger)totalUnreadCount{
           totalUnreadCount:(NSInteger)totalUnreadCount{
    //: self.sessionUnreadCount = totalUnreadCount;
    self.sessionUnreadCount = totalUnreadCount;
    //: [self refreshSessionBadge];
    [self all];
//    [self changeUnreadCount:recentSession totalUnreadCount:totalUnreadCount];
}


//: - (void)didUpdateRecentSession:(NIMRecentSession *)recentSession
- (void)didUpdateRecentSession:(NIMRecentSession *)recentSession
              //: totalUnreadCount:(NSInteger)totalUnreadCount{
              totalUnreadCount:(NSInteger)totalUnreadCount{
    //: self.sessionUnreadCount = totalUnreadCount;
    self.sessionUnreadCount = totalUnreadCount;
    //: [self refreshSessionBadge];
    [self all];
//    [self changeUnreadCount:recentSession totalUnreadCount:totalUnreadCount];

}


//: - (void)didRemoveRecentSession:(NIMRecentSession *)recentSession totalUnreadCount:(NSInteger)totalUnreadCount{
- (void)didRemoveRecentSession:(NIMRecentSession *)recentSession totalUnreadCount:(NSInteger)totalUnreadCount{
    //: self.sessionUnreadCount = totalUnreadCount;
    self.sessionUnreadCount = totalUnreadCount;
    //: [self refreshSessionBadge];
    [self all];
//    [self changeUnreadCount:recentSession totalUnreadCount:totalUnreadCount];
}

//: - (void)messagesDeletedInSession:(NIMSession *)session{
- (void)messagesDeletedInSession:(NIMSession *)session{
    //: self.sessionUnreadCount = [NIMSDK sharedSDK].conversationManager.allUnreadCount;
    self.sessionUnreadCount = [NIMSDK sharedSDK].conversationManager.allUnreadCount;
    //: [self refreshSessionBadge];
    [self all];
    //: [self.interactor resetMessages:nil];
    [self.interactor colorWith:nil];
    //: [self.tableView reloadData];
    [self.tableView reloadData];
}

//: - (void)allMessagesDeleted{
- (void)allMessagesDeleted{
    //: self.sessionUnreadCount = 0;
    self.sessionUnreadCount = 0;
    //: [self refreshSessionBadge];
    [self all];
}

//: - (void)allMessagesRead
- (void)allMessagesRead
{
    //: self.sessionUnreadCount = 0;
    self.sessionUnreadCount = 0;
    //: [self refreshSessionBadge];
    [self all];
}

//: - (void)onBatchMarkMessagesReadInSessions:(NSArray<NIMSession *> *)sessions
- (void)onBatchMarkMessagesReadInSessions:(NSArray<NIMSession *> *)sessions
{
    //: self.sessionUnreadCount = [NIMSDK sharedSDK].conversationManager.allUnreadCount;
    self.sessionUnreadCount = [NIMSDK sharedSDK].conversationManager.allUnreadCount;
    //: [self refreshSessionBadge];
    [self all];
}


//: - (void)refreshSessionBadge
- (void)all
{

    //: if(self.sessionUnreadCount>0){
    if(self.sessionUnreadCount>0){
        //: _badgeView.badgeValue = self.sessionUnreadCount ? @(self.sessionUnreadCount).stringValue : nil;
        _badgeView.badgeValue = self.sessionUnreadCount ? @(self.sessionUnreadCount).stringValue : nil;
        //: _badgeView.hidden = NO;
        _badgeView.hidden = NO;
        //: _labtitle.frame = CGRectMake(_badgeView.right+10, [UIDevice vg_statusBarHeight], 100, 40);
        _labtitle.frame = CGRectMake(_badgeView.right+10, [UIDevice encounter], 100, 40);
    }
    //: else{
    else{
        //: _badgeView.hidden = YES;
        _badgeView.hidden = YES;
        //: _labtitle.frame = CGRectMake(65, [UIDevice vg_statusBarHeight], 200, 40);
        _labtitle.frame = CGRectMake(65, [UIDevice encounter], 200, 40);
    }
}

//: - (void)setupNav
- (void)indigenousLanguage
{
    //: _topview = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice vg_statusBarHeight]))];
    _topview = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice encounter]))];
//    _topview.backgroundColor = [UIColor colorWithRed:216/255.0 green:242/255.0 blue:253/255.0 alpha:1];
    //: [self.view addSubview:_topview];
    [self.view addSubview:_topview];

    //: UIImageView *bg = [[UIImageView alloc]initWithFrame:_topview.bounds];
    UIImageView *bg = [[UIImageView alloc]initWithFrame:_topview.bounds];
    //: bg.image = [UIImage imageNamed:@"chating_top_bg"];
    bg.image = [UIImage imageNamed:StringFromLifeData(kStr_itemSectorText)];
    //: [_topview addSubview:bg];
    [_topview addSubview:bg];



    //: UIButton *backBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *backBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    //: backBtn.frame = CGRectMake(15, [UIDevice vg_statusBarHeight], 40, 40);
    backBtn.frame = CGRectMake(15, [UIDevice encounter], 40, 40);
    //: [backBtn addTarget:self action:@selector(gotoBack:) forControlEvents:UIControlEventTouchUpInside];
    [backBtn addTarget:self action:@selector(sunnaed:) forControlEvents:UIControlEventTouchUpInside];
    //: [backBtn setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:UIControlStateNormal];
    [backBtn setImage:[UIImage imageNamed:StringFromLifeData(kStr_willingnessContent)] forState:UIControlStateNormal];
    //: [_topview addSubview:backBtn];
    [_topview addSubview:backBtn];

//    NSString *userID = self.session.sessionId;
//    NIMUser *me = [[NIMSDK sharedSDK].userManager userInfo:userID];
//    MagnitudeCommentInfo *info = [[On sharedKit] infoByUser:userID option:nil];

    //: self.sessionUnreadCount = [NIMSDK sharedSDK].conversationManager.allUnreadCount;
    self.sessionUnreadCount = [NIMSDK sharedSDK].conversationManager.allUnreadCount;

     //: _badgeView = [ZZZBadgeView viewWithBadgeTip:@""];
     _badgeView = [ChromaticView to:@""];
    //: _badgeView.frame = CGRectMake(backBtn.right+5, backBtn.top+8, 24, 24);
    _badgeView.frame = CGRectMake(backBtn.right+5, backBtn.top+8, 24, 24);
    //: [_topview addSubview:_badgeView];
    [_topview addSubview:_badgeView];
    //: _badgeView.badgeValue = self.sessionUnreadCount ? @(self.sessionUnreadCount).stringValue : nil;
    _badgeView.badgeValue = self.sessionUnreadCount ? @(self.sessionUnreadCount).stringValue : nil;

//    UILabel *labbadge = [[UILabel alloc]initWithFrame:CGRectMake(backBtn.right+5, backBtn.top+8, 24, 24)];
//    labbadge.backgroundColor = [UIColor redColor];
//    labbadge.layer.masksToBounds = YES;
//    labbadge.layer.cornerRadius = 12;
//    labbadge.textColor = [UIColor whiteColor];
//    labbadge.textAlignment = NSTextAlignmentCenter;
//    labbadge.font = [UIFont systemFontOfSize:12];
//    labbadge.text = @(self.sessionUnreadCount).stringValue;
//    [topview addSubview:labbadge];

//   _headerImage = [[UIImageView alloc] initWithFrame:CGRectMake(_badgeView.right+10, SCREEN_STATUS_HEIGHT, 40, 40)];
//    [topview addSubview:_headerImage];
//    _headerImage.layer.cornerRadius = 20;
//    _headerImage.layer.shadowColor = RGB_COLOR_String(kCommonBGColor_All).CGColor;
//    _headerImage.layer.shadowOffset = CGSizeMake(5, 5);
//    _headerImage.layer.masksToBounds = YES;
//    [_headerImage sd_setImageWithURL:[NSURL URLWithString:me.userInfo.avatarUrl] placeholderImage:info.avatarImage];

    //: _labtitle = [[UILabel alloc]initWithFrame:CGRectMake(backBtn.right+10, [UIDevice vg_statusBarHeight], 200, 40)];
    _labtitle = [[UILabel alloc]initWithFrame:CGRectMake(backBtn.right+10, [UIDevice encounter], 200, 40)];
    //: _labtitle.textColor = [UIColor blackColor];
    _labtitle.textColor = [UIColor blackColor];
    //: _labtitle.font = [UIFont boldSystemFontOfSize:16];
    _labtitle.font = [UIFont boldSystemFontOfSize:16];
    //: _labtitle.text = self.sessionTitle;
    _labtitle.text = self.name;
    //: [_topview addSubview:_labtitle];
    [_topview addSubview:_labtitle];

//    _subtitle = [[UILabel alloc]initWithFrame:CGRectMake(_headerImage.right+10, _labtitle.bottom, 100, 20)];
//    _subtitle.textColor = RGB_COLOR_String(@"777777");
//    _subtitle.font = [UIFont boldSystemFontOfSize:12];
//    _subtitle.text = self.sessionSubTitle;
//    [topview addSubview:_subtitle];
//    if([self.sessionSubTitle isEqualToString:@"离线".ntes_localized]){
//        self.subtitle.textColor = RGB_COLOR_String(@"777777");
//    }else{
//        self.subtitle.textColor = RGB_COLOR_String(@"#00B01B");
//    }



    //: if (self.session.sessionType == NIMSessionTypeTeam)
    if (self.session.sessionType == NIMSessionTypeTeam)
    {
        //: NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.session.sessionId];
        NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.session.sessionId];

        //: CGFloat width = 30;
        CGFloat width = 30;
        //: UIButton *enterTeamCard = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *enterTeamCard = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [enterTeamCard addTarget:self action:@selector(enterTeamCard:) forControlEvents:UIControlEventTouchUpInside];
        [enterTeamCard addTarget:self action:@selector(appCard:) forControlEvents:UIControlEventTouchUpInside];
//        [enterTeamCard setImage:[UIImage imageNamed:@"ic_more"] forState:UIControlStateNormal];
        //: [enterTeamCard sd_setImageWithURL:[NSURL URLWithString:team.avatarUrl] forState:UIControlStateNormal];
        [enterTeamCard sd_setImageWithURL:[NSURL URLWithString:team.avatarUrl] forState:UIControlStateNormal];
        //: [enterTeamCard sd_setImageWithURL:[NSURL URLWithString:team.avatarUrl] forState:(UIControlState)UIControlStateNormal placeholderImage:[UIImage imageNamed:@"group_head_def"]];
        [enterTeamCard sd_setImageWithURL:[NSURL URLWithString:team.avatarUrl] forState:(UIControlState)UIControlStateNormal placeholderImage:[UIImage imageNamed:StringFromLifeData(kStr_completeWeekendOrganizeValue)]];
        //: enterTeamCard.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-width-15, [UIDevice vg_statusBarHeight]+10, width, width);
        enterTeamCard.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-width-15, [UIDevice encounter]+10, width, width);
        //: enterTeamCard.layer.cornerRadius = width/2;
        enterTeamCard.layer.cornerRadius = width/2;
        //: enterTeamCard.layer.masksToBounds = YES;
        enterTeamCard.layer.masksToBounds = YES;
        //: [_topview addSubview:enterTeamCard];
        [_topview addSubview:enterTeamCard];
    }
    //: else if(self.session.sessionType == NIMSessionTypeP2P)
    else if(self.session.sessionType == NIMSessionTypeP2P)
    {
        //: CGFloat width = 24;
        CGFloat width = 24;
//        UIButton *btnVideo = [UIButton buttonWithType:UIButtonTypeCustom];
//        btnVideo.frame = CGRectMake(SCREEN_WIDTH-width*3-15*3, SCREEN_STATUS_HEIGHT+10, width, width);
//        [btnVideo addTarget:self action:@selector(enterVideoCall:) forControlEvents:UIControlEventTouchUpInside];
//        [btnVideo setImage:[UIImage imageNamed:@"chat_video"] forState:UIControlStateNormal];
//        [_topview addSubview:btnVideo];
//
//        UIButton *btnVoice = [UIButton buttonWithType:UIButtonTypeCustom];
//        btnVoice.frame = CGRectMake(SCREEN_WIDTH-width*2-15*2, SCREEN_STATUS_HEIGHT+10, width, width);
//        [btnVoice addTarget:self action:@selector(enterAudioCall:) forControlEvents:UIControlEventTouchUpInside];
//        [btnVoice setImage:[UIImage imageNamed:@"chat_voice"] forState:UIControlStateNormal];
//        [_topview addSubview:btnVoice];

        //: UIButton *infoBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *infoBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [infoBtn addTarget:self action:@selector(enterPersonInfoCard:) forControlEvents:UIControlEventTouchUpInside];
        [infoBtn addTarget:self action:@selector(untilEnter:) forControlEvents:UIControlEventTouchUpInside];
        //: [infoBtn setImage:[UIImage imageNamed:@"ic_more"] forState:UIControlStateNormal];
        [infoBtn setImage:[UIImage imageNamed:StringFromLifeData(kStr_somedayContent)] forState:UIControlStateNormal];
        //: infoBtn.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-width-15, [UIDevice vg_statusBarHeight]+10, width, width);
        infoBtn.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-width-15, [UIDevice encounter]+10, width, width);
        //: [_topview addSubview:infoBtn];
        [_topview addSubview:infoBtn];
    }



}
//: #pragma mark - 导航按钮
#pragma mark - 导航按钮
//: - (void)enterPersonInfoCard:(id)sender
- (void)untilEnter:(id)sender
{
    //: ZZZPersonalCardViewController *vc = [[ZZZPersonalCardViewController alloc] initWithUserId:self.session.sessionId];
    FileViewController *vc = [[FileViewController alloc] initWithHour:self.session.sessionId];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];

}
//: - (void)enterTeamCard:(id)sender {
- (void)appCard:(id)sender {
    //: ZZZTeamCardViewController *vc = nil;
    SectionViewController *vc = nil;
    //: ZZZTeamCardViewControllerOption *option = [[ZZZTeamCardViewControllerOption alloc] init];
    ByOption *option = [[ByOption alloc] init];
    //: option.isTop = [NIMSDK.sharedSDK.chatExtendManager stickTopInfoForSession:self.session] != nil;
    option.isTop = [NIMSDK.sharedSDK.chatExtendManager stickTopInfoForSession:self.session] != nil;

    //: if (self.session.sessionType == NIMSessionTypeTeam) {
    if (self.session.sessionType == NIMSessionTypeTeam) {
        //: NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.session.sessionId];
        NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.session.sessionId];
        //: if(team.type == NIMTeamTypeAdvanced){
        if(team.type == NIMTeamTypeAdvanced){
            //: vc = [[ZZZAdvancedTeamCardViewController alloc] initWithTeam:team
            vc = [[DisableSightViewController alloc] initWithLockUpOption:team
                                                                 //: session:self.session
                                                                 model:self.session
                                                                  //: option:option];
                                                                  change:option];
            //: vc.delegate = self;
            vc.delegate = self;
        }
    }
    //: if (vc) {
    if (vc) {
        //: [self.navigationController pushViewController:vc animated:YES];
        [self.navigationController pushViewController:vc animated:YES];
    }
}

//: - (void)gotoBack:(id)sender {
- (void)sunnaed:(id)sender {
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
}

//: - (void)setupTableView
- (void)quickRandom
{
    //: CGFloat safeAreaInsetsBottom = [UIDevice vg_safeDistanceBottom];
    CGFloat safeAreaInsetsBottom = [UIDevice invite];
    //: CGFloat containerSafeHeight = [UIScreen mainScreen].bounds.size.height - safeAreaInsetsBottom - 0;
    CGFloat containerSafeHeight = [UIScreen mainScreen].bounds.size.height - safeAreaInsetsBottom - 0;

    //: self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, containerSafeHeight-101) style:UITableViewStylePlain];
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, containerSafeHeight-101) style:UITableViewStylePlain];
//    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, SCREEN_TOP_HEIGHT, SCREEN_WIDTH, SCREEN_HEIGHT-SCREEN_TOP_HEIGHT-SCREEN_TABBAR_HEIGHT-SCREEN_BOTTOM_HEIGHT) style:UITableViewStylePlain];
//    self.tableView.backgroundColor = NEEKIT_UIColorFromRGB(0xe4e7ec);
    //: self.tableView.backgroundColor = [UIColor clearColor];
    self.tableView.backgroundColor = [UIColor clearColor];
    //: self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    //: self.tableView.estimatedRowHeight = 0;
    self.tableView.estimatedRowHeight = 0;
    //: self.tableView.estimatedSectionHeaderHeight = 0;
    self.tableView.estimatedSectionHeaderHeight = 0;
    //: self.tableView.estimatedSectionFooterHeight = 0;
    self.tableView.estimatedSectionFooterHeight = 0;
    //: self.tableView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    self.tableView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    //: self.tableViewTapGesture = [[UITapGestureRecognizer alloc] init];
    self.tableViewTapGesture = [[UITapGestureRecognizer alloc] init];
    //: self.tableViewTapGesture.cancelsTouchesInView = NO;
    self.tableViewTapGesture.cancelsTouchesInView = NO;
    //: [self.tableViewTapGesture addTarget:self action:@selector(onTapTableView:)];
    [self.tableViewTapGesture addTarget:self action:@selector(toing:)];
    //: [self.tableView addGestureRecognizer:self.tableViewTapGesture];
    [self.tableView addGestureRecognizer:self.tableViewTapGesture];
    //: self.tableView.keyboardDismissMode = UIScrollViewKeyboardDismissModeOnDrag;
    self.tableView.keyboardDismissMode = UIScrollViewKeyboardDismissModeOnDrag;

    //: if ([self.sessionConfig respondsToSelector:@selector(sessionBackgroundImage)] && [self.sessionConfig sessionBackgroundImage]) {
    if ([self.sessionConfig respondsToSelector:@selector(intervalernecineCutawayModel)] && [self.sessionConfig intervalernecineCutawayModel]) {
        //: UIImageView *imgView = [[UIImageView alloc] initWithFrame:self.view.bounds];
        UIImageView *imgView = [[UIImageView alloc] initWithFrame:self.view.bounds];
        //: imgView.image = [self.sessionConfig sessionBackgroundImage];
        imgView.image = [self.sessionConfig intervalernecineCutawayModel];
        //: imgView.contentMode = UIViewContentModeScaleAspectFill;
        imgView.contentMode = UIViewContentModeScaleAspectFill;
        //: self.tableView.backgroundView = imgView;
        self.tableView.backgroundView = imgView;
    }
    //: [self.view addSubview:self.tableView];
    [self.view addSubview:self.tableView];

}


//: - (void)setupInputView
- (void)message
{
    //: if ([self shouldShowInputView])
    if ([self resolve])
    {
        //: self.sessionInputView = [[ZZZInputView alloc] initWithFrame:CGRectMake(0, 0, self.view.nim_width,0) config:self.sessionConfig];
        self.sessionInputView = [[EnterSignView alloc] initWithSessionSourceConfig:CGRectMake(0, 0, self.view.nim_width,0) send:self.sessionConfig];
        //: self.sessionInputView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleTopMargin;
        self.sessionInputView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleTopMargin;
        //: [self.sessionInputView setSession:self.session];
        [self.sessionInputView setSession:self.session];
        //: [self.sessionInputView setInputDelegate:self];
        [self.sessionInputView setInputDelegate:self];
        //: [self.sessionInputView setInputActionDelegate:self];
        [self.sessionInputView setAddSession:self];
        //: [self.sessionInputView refreshStatus:NIMInputStatusText];
        [self.sessionInputView by:NIMInputStatusText];
        //: [self.view addSubview:_sessionInputView];
        [self.view addSubview:_sessionInputView];
        //: self.tableView.bottom = self.sessionInputView.top;
        self.tableView.bottom = self.sessionInputView.top;
//        self.tableView.top = self.topview.bottom;
        //: [self.tableView sizeToFit];
        [self.tableView sizeToFit];
    }
}


//: - (void)setupConfigurator
- (void)inheritanceMode
{
    //: _configurator = [[ZZZSessionConfigurator alloc] init];
    _configurator = [[NameChange alloc] init];
    //: [_configurator setup:self];
    [_configurator greenish:self];

    //: BOOL needProximityMonitor = [self needProximityMonitor];
    BOOL needProximityMonitor = [self pageDate];
    //: [[NIMSDK sharedSDK].mediaManager setNeedProximityMonitor:needProximityMonitor];
    [[NIMSDK sharedSDK].mediaManager setNeedProximityMonitor:needProximityMonitor];
}

//: - (void)viewWillAppear:(BOOL)animated
- (void)viewWillAppear:(BOOL)animated
{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: [self.interactor onViewWillAppear];
    [self.interactor change];
    //: [self addListener];
    [self hack];

    //: self.sessionUnreadCount = [NIMSDK sharedSDK].conversationManager.allUnreadCount;
    self.sessionUnreadCount = [NIMSDK sharedSDK].conversationManager.allUnreadCount;
    //: [self refreshSessionBadge];
    [self all];
    //: [self.navigationController.navigationBar setHidden:YES];
    [self.navigationController.navigationBar setHidden:YES];
    //: [self.tableView reloadData];
    [self.tableView reloadData];
}

//: - (void)viewWillDisappear:(BOOL)animated
- (void)viewWillDisappear:(BOOL)animated
{
    //: [super viewWillDisappear:animated];
    [super viewWillDisappear:animated];
    //: [self.sessionInputView endEditing:YES];
    [self.sessionInputView endEditing:YES];
    // 隐藏长按弹窗
    //: [ZZZBubbleMenuView.shareMenuView removeFromSuperview];
    [TextFrameView.content removeFromSuperview];
    //: [self.navigationController.navigationBar setHidden:NO];
    [self.navigationController.navigationBar setHidden:NO];
}

//: - (void)viewDidDisappear:(BOOL)animated
- (void)viewDidDisappear:(BOOL)animated
{
    //: [super viewDidDisappear:animated];
    [super viewDidDisappear:animated];
    //: [self.interactor onViewDidDisappear];
    [self.interactor after];
    //: [[NIMSDK sharedSDK].mediaManager removeDelegate:self];
    [[NIMSDK sharedSDK].mediaManager removeDelegate:self];
}

//: - (void)viewDidLayoutSubviews
- (void)viewDidLayoutSubviews
{
    //: [super viewDidLayoutSubviews];
    [super viewDidLayoutSubviews];
//    [self changeLeftBarBadge:self.conversationManager.allUnreadCount];
    //: [self.interactor resetLayout];
    [self.interactor number];
}

//: - (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
//    [self.serviceContentTextView hideTextSelection];
    //: [ZZZBubbleMenuView.shareMenuView removeFromSuperview];
    [TextFrameView.content removeFromSuperview];
    //: [self.view endEditing:YES];
    [self.view endEditing:YES];
}

//: - (void)scrollViewDidScroll:(UIScrollView *)scrollView {
- (void)weltanschauung:(UIScrollView *)scrollView {
    //: if ([scrollView isKindOfClass:[UITextView class]]) {
    if ([scrollView isKindOfClass:[UITextView class]]) {
        //: [ZZZBubbleMenuView.shareMenuView removeFromSuperview];
        [TextFrameView.content removeFromSuperview];
    }
    //: [self.view endEditing:YES];
    [self.view endEditing:YES];
}



//: #pragma mark - 消息收发接口
#pragma mark - 消息收发接口
//: - (void)sendMessage:(NIMMessage *)message
- (void)quickMessage:(NIMMessage *)message
{
    //: [self.interactor sendMessage:message toMessage:nil];
    [self.interactor pressedMessage:message permission:nil];
    //: [self cleanMenuMessage];
    [self edit];

}

//: - (void)sendMessage:(NIMMessage *)message completion:(void(^)(NSError * err))completion
- (void)image:(NIMMessage *)message completion:(void(^)(NSError * err))completion
{
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [self.interactor sendMessage:message
    [self.interactor imageOption:message
                        //: toMessage:nil
                        onName:nil
                      //: completion:^(NSError *err)
                      telegram:^(NSError *err)
    {
        //: if (completion)
        if (completion)
        {
            //: completion(err);
            completion(err);
        }
        //: [weakSelf cleanMenuMessage];
        [weakSelf edit];
    //: }];
    }];
}


//: #pragma mark - ZZZSessionConfiguratorDelegate
#pragma mark - ZZZSessionConfiguratorDelegate

//: - (void)didFetchMessageData
- (void)mailColor
{
    //: [self uiCheckReceipts:nil];
    [self voice:nil];
    //: [self.tableView reloadData];
    [self.tableView reloadData];
//    [self.tableView nim_scrollToBottom:NO];
}

//: - (void)didRefreshMessageData
- (void)dateApp
{
    //: [self refreshSessionTitle:self.sessionTitle];
    [self viewTo:self.name];
    //: [self refreshSessionSubTitle:self.sessionSubTitle];
    [self betweenShould:self.flushName];
    //: [self.tableView reloadData];
    [self.tableView reloadData];
}

//: - (void)didPullUpMessageData {}
- (void)belowTeam {}

//: #pragma mark - 会话title
#pragma mark - 会话title
//: - (NSString *)sessionTitle
- (NSString *)name
{
    //: NSString *title = @"";
    NSString *title = @"";
    //: NIMSessionType type = self.session.sessionType;
    NIMSessionType type = self.session.sessionType;
    //: switch (type) {
    switch (type) {
        //: case NIMSessionTypeTeam:{
        case NIMSessionTypeTeam:{
            //: NIMTeam *team = [[[NIMSDK sharedSDK] teamManager] teamById:self.session.sessionId];
            NIMTeam *team = [[[NIMSDK sharedSDK] teamManager] teamById:self.session.sessionId];
            //: title = [NSString stringWithFormat:@"%@(%zd)",[team teamName],[team memberNumber]];
            title = [NSString stringWithFormat:@"%@(%zd)",[team teamName],[team memberNumber]];
            //: title = [NSString stringWithFormat:@"%@",[team teamName]];
            title = [NSString stringWithFormat:@"%@",[team teamName]];//不要人数

        }
            //: break;
            break;
        //: case NIMSessionTypeP2P:{
        case NIMSessionTypeP2P:{
            //: title = [ZZZKitUtil showNick:self.session.sessionId inSession:self.session];
            title = [TingText text:self.session.sessionId keyBegin:self.session];
        }
            //: break;
            break;
        //: case NIMSessionTypeSuperTeam: {
        case NIMSessionTypeSuperTeam: {
            //: NIMTeam *team = [[[NIMSDK sharedSDK] superTeamManager] teamById:self.session.sessionId];
            NIMTeam *team = [[[NIMSDK sharedSDK] superTeamManager] teamById:self.session.sessionId];
            //: title = [NSString stringWithFormat:@"%@(%zd)",[team teamName],[team memberNumber]];
            title = [NSString stringWithFormat:@"%@(%zd)",[team teamName],[team memberNumber]];
            //: title = [NSString stringWithFormat:@"%@",[team teamName]];
            title = [NSString stringWithFormat:@"%@",[team teamName]];//不要人数

        }
        //: default:
        default:
            //: break;
            break;
    }
    //: return title;
    return title;
}

//: - (NSString *)sessionSubTitle{return @"";};
- (NSString *)flushName{return @"";};

//: #pragma mark - 状态操作
#pragma mark - 状态操作
//: - (NIMKitSessionState)sessionState {
- (NIMKitSessionState)outOfUseConference {
    //: return [self.interactor sessionState];
    return [self.interactor eparchy];
}

//: - (void)setSessionState:(NIMKitSessionState)state {
- (void)setOutOfUseConference:(NIMKitSessionState)state {
    //: [self.interactor setSessionState:state];
    [self.interactor setEparchy:state];
}

//: #pragma mark - NIMChatManagerDelegate
#pragma mark - NIMChatManagerDelegate
//开始发送
//: - (void)willSendMessage:(NIMMessage *)message
- (void)willSendMessage:(NIMMessage *)message
{
    //: id<NIMSessionInteractor> interactor = self.interactor;
    id<SuggestEmptyQuantityeractor> interactor = self.interactor;

    //: if ([message.session isEqual:self.session]) {
    if ([message.session isEqual:self.session]) {
        //: if ([interactor findMessageModel:message]) {
        if ([interactor model:message]) {
            //: [interactor updateMessage:message];
            [interactor sendPlayer:message];
        //: }else{
        }else{
            //: [interactor addMessages:@[message]];
            [interactor farawaynessMessages:@[message]];
        }
    }
}

//上传资源文件成功
//: - (void)uploadAttachmentSuccess:(NSString *)urlString
- (void)uploadAttachmentSuccess:(NSString *)urlString
                     //: forMessage:(NIMMessage *)message
                     forMessage:(NIMMessage *)message
{
    //如果需要使用富文本推送，可以在这里进行 message apns payload 的设置
//    [self.tableView reloadData];
}


//发送结果
//: - (void)sendMessage:(NIMMessage *)message didCompleteWithError:(NSError *)error
- (void)sendMessage:(NIMMessage *)message didCompleteWithError:(NSError *)error
{
    //: if ([message.session isEqual:_session])
    if ([message.session isEqual:_session])
    {
        //: if( message.messageType == NIMMessageTypeImage){
        if( message.messageType == NIMMessageTypeImage){
            //缓存图片URL
            //: NIMImageObject *imageObject = message.messageObject;
            NIMImageObject *imageObject = message.messageObject;
            //: NSString *urlString = imageObject.url;
            NSString *urlString = imageObject.url;

            //: NSMutableDictionary *dic = [[ZZZConfig sharedConfig] Gdic];
            NSMutableDictionary *dic = [[LabelSure with] Gdic];
            //: NSData *data = [dic objectForKey:message.messageId];
            NSData *data = [dic objectForKey:message.messageId];
            //: if(data && urlString){
            if(data && urlString){
                //: NSString *key = [[SDWebImageManager sharedManager]cacheKeyForURL:[NSURL URLWithString:urlString]];
                NSString *key = [[SDWebImageManager sharedManager]cacheKeyForURL:[NSURL URLWithString:urlString]];
                //: dic[message.messageId] = nil;
                dic[message.messageId] = nil;
                //: __weak typeof(self) weakSelf = self;
                __weak typeof(self) weakSelf = self;
                //: [[SDImageCache sharedImageCache] storeImageData:data forKey:key completion:^{
                [[SDImageCache sharedImageCache] storeImageData:data forKey:key completion:^{
                    //: [weakSelf.interactor updateMessage:message];
                    [weakSelf.interactor sendPlayer:message];
                //: }];
                }];
            }
        //: }else{
        }else{
            //: [self.interactor updateMessage:message];
            [self.interactor sendPlayer:message];
//            [self.tableView reloadData];
        }


        //: if (message.session.sessionType == NIMSessionTypeTeam ||
        if (message.session.sessionType == NIMSessionTypeTeam ||
            //: message.session.sessionType == NIMSessionTypeSuperTeam)
            message.session.sessionType == NIMSessionTypeSuperTeam)
        {
            //如果是群的话需要检查一下回执显示情况
            //: NIMMessageReceipt *receipt = [[NIMMessageReceipt alloc] initWithMessage:message];
            NIMMessageReceipt *receipt = [[NIMMessageReceipt alloc] initWithMessage:message];
            //: [self.interactor checkReceipts:@[receipt]];
            [self.interactor quantity:@[receipt]];
        }
    }

}


//发送进度
//: -(void)sendMessage:(NIMMessage *)message progress:(float)progress
-(void)sendMessage:(NIMMessage *)message progress:(float)progress
{
    //: if ([message.session isEqual:_session]) {
    if ([message.session isEqual:_session]) {
        //: [self.interactor updateMessage:message];
        [self.interactor sendPlayer:message];
    }
}

//接收消息
//: - (void)onRecvMessages:(NSArray *)messages
- (void)onRecvMessages:(NSArray *)messages
{
    //: if ([self shouldAddListenerForNewMsg])
    if ([self style])
    {
        //: NIMMessage *message = messages.firstObject;
        NIMMessage *message = messages.firstObject;
        //: NIMSession *session = message.session;
        NIMSession *session = message.session;

        //: if (![session isEqual:self.session] || !messages.count)
        if (![session isEqual:self.session] || !messages.count)
        {
            //: return;
            return;
        }

        //: [self uiInsertMessages:messages];
        [self size:messages];
        //: [self.interactor markRead:NO];
        [self.interactor quickMark:NO];

        // 群禁言后输入框改变占位符文字
        //: [self setBannedSpeakingWithMessage:messages];
        [self setPushFor:messages];
    }
}

//: - (void)setBannedSpeakingWithMessage:(NSArray <NIMMessage *>*)messages {
- (void)setPushFor:(NSArray <NIMMessage *>*)messages {

    //: [messages enumerateObjectsUsingBlock:^(NIMMessage * _Nonnull message, NSUInteger idx, BOOL * _Nonnull stop) {
    [messages enumerateObjectsUsingBlock:^(NIMMessage * _Nonnull message, NSUInteger idx, BOOL * _Nonnull stop) {

        //: NIMNotificationObject *object = message.messageObject;
        NIMNotificationObject *object = message.messageObject;
        //: if (object && [object isKindOfClass:NIMNotificationObject.class] && object.notificationType == NIMNotificationTypeTeam)
        if (object && [object isKindOfClass:NIMNotificationObject.class] && object.notificationType == NIMNotificationTypeTeam)
        {
            //: NIMTeamNotificationContent *content = (NIMTeamNotificationContent*)object.content;
            NIMTeamNotificationContent *content = (NIMTeamNotificationContent*)object.content;
            //: id attachment = [content attachment];
            id attachment = [content attachment];
            //: if (attachment && [attachment isKindOfClass:[NIMUpdateTeamInfoAttachment class]]) {
            if (attachment && [attachment isKindOfClass:[NIMUpdateTeamInfoAttachment class]]) {

                //: NIMUpdateTeamInfoAttachment *teamAttachment = (NIMUpdateTeamInfoAttachment *)attachment;
                NIMUpdateTeamInfoAttachment *teamAttachment = (NIMUpdateTeamInfoAttachment *)attachment;
                //: if (teamAttachment && [teamAttachment.values count] > 0) {
                if (teamAttachment && [teamAttachment.values count] > 0) {

                    /**
                     *  群禁言模式
                     *  @discussion 0: 禁言关闭 1: 全员禁言，不包括管理员
                     */
                    // NIMTeamUpdateTagMuteMode       = 100,
                    /**
                     *  群全体禁言模式
                     *  @discussion 参考NIMTeamAllMuteMode定义。0: 禁言关闭 1: 全员禁言，不包括管理员 3: 全员禁言，包括群组和管理员
                     */
                    // NIMTeamUpdateTagAllMuteMode    = 101,

                    //                        if ([[teamAttachment.values allKeys] containsObject:@(100)]) {
                    //                            BOOL banned = [teamAttachment.values objectForKey:@(100)];
                    //                        }


                    //: if ([[teamAttachment.values allKeys] containsObject:@(101)]) {
                    if ([[teamAttachment.values allKeys] containsObject:@(101)]) {
                        //: BOOL banned = [teamAttachment.values boolValueForKey:@(101)];
                        BOOL banned = [teamAttachment.values unwelcomeShared:@(101)];
                        //: [self setInputViewPlaceholder:banned];
                        [self setCognomen:banned];
                    }

                    //: else if ([[teamAttachment.values allKeys] containsObject:@(100)]) {
                    else if ([[teamAttachment.values allKeys] containsObject:@(100)]) {
                        //: BOOL banned = [teamAttachment.values boolValueForKey:@(100)];
                        BOOL banned = [teamAttachment.values unwelcomeShared:@(100)];
                        //: [self setInputViewPlaceholder:banned];
                        [self setCognomen:banned];
                    }

                }

            }
        }
    //: }];
    }];
}

//: - (void)setInputViewPlaceholder:(BOOL)ban {
- (void)setCognomen:(BOOL)ban {
    //: if (ban){
    if (ban){
        //: [self.sessionInputView setInputTextPlaceHolder:[NTESLanguageManager getTextWithKey:@"message_administrator_speak"] color:[UIColor redColor]];
        [self.sessionInputView address:[LabelCell tinkleKey:StringFromLifeData(kStr_publishData)] parallelizeButton:[UIColor redColor]];
        //: self.sessionInputView.userInteractionEnabled = NO;
        self.sessionInputView.userInteractionEnabled = NO;
        //: self.canTapVoiceBtn = NO;
        self.canTapVoiceBtn = NO;
    //: } else {
    } else {
        //: [self.sessionInputView setInputTextPlaceHolder:[NTESLanguageManager getTextWithKey:@"message_please_enter_content"] color:[UIColor grayColor]];
        [self.sessionInputView address:[LabelCell tinkleKey:StringFromLifeData(kStr_textureText)] parallelizeButton:[UIColor grayColor]];
        //: self.sessionInputView.userInteractionEnabled = YES;
        self.sessionInputView.userInteractionEnabled = YES;
        //: self.canTapVoiceBtn = YES;
        self.canTapVoiceBtn = YES;
    }
}


//获取当前最上层的控制器
//: - (UIViewController *)getTopMostController {
- (UIViewController *)windowController {
    //: UIViewController *topVC = [UIApplication sharedApplication].windows.firstObject.rootViewController;
    UIViewController *topVC = [UIApplication sharedApplication].windows.firstObject.rootViewController;
    //循环之前tempVC和topVC是一样的
    //: UIViewController *tempVC = topVC;
    UIViewController *tempVC = topVC;
    //: while (1) {
    while (1) {
        //: if ([topVC isKindOfClass:[UITabBarController class]]) {
        if ([topVC isKindOfClass:[UITabBarController class]]) {
            //: topVC = ((UITabBarController*)topVC).selectedViewController;
            topVC = ((UITabBarController*)topVC).selectedViewController;
        }
        //: if ([topVC isKindOfClass:[UINavigationController class]]) {
        if ([topVC isKindOfClass:[UINavigationController class]]) {
            //: topVC = ((UINavigationController*)topVC).visibleViewController;
            topVC = ((UINavigationController*)topVC).visibleViewController;
        }
        //: if (topVC.presentedViewController) {
        if (topVC.presentedViewController) {
            //: topVC = topVC.presentedViewController;
            topVC = topVC.presentedViewController;
        }
        //如果两者一样，说明循环结束了
        //: if ([tempVC isEqual:topVC]) {
        if ([tempVC isEqual:topVC]) {
            //: break;
            break;
        //: } else {
        } else {
        //如果两者不一样，继续循环
            //: tempVC = topVC;
            tempVC = topVC;
        }
    }
    //: return topVC;
    return topVC;
}


//: - (void)fetchMessageAttachment:(NIMMessage *)message progress:(float)progress
- (void)fetchMessageAttachment:(NIMMessage *)message progress:(float)progress
{
    //: if ([message.session isEqual:_session])
    if ([message.session isEqual:_session])
    {
        //: [self.interactor updateMessage:message];
        [self.interactor sendPlayer:message];
    }
}

//: - (void)fetchMessageAttachment:(NIMMessage *)message didCompleteWithError:(NSError *)error
- (void)fetchMessageAttachment:(NIMMessage *)message didCompleteWithError:(NSError *)error
{
    //: if ([message.session isEqual:_session])
    if ([message.session isEqual:_session])
    {
        //: ZZZMessageModel *model = [self.interactor findMessageModel:message];
        CollectionModel *model = [self.interactor model:message];
        //下完缩略图之后，因为比例有变化，重新刷下宽高。
        //: [model cleanCache];
        [model cache];
        //: [self.interactor updateMessage:message];
        [self.interactor sendPlayer:message];
    }
}

//: - (void)onRecvMessageReceipts:(NSArray<NIMMessageReceipt *> *)receipts
- (void)onRecvMessageReceipts:(NSArray<NIMMessageReceipt *> *)receipts
{
    //: if ([self shouldAddListenerForNewMsg])
    if ([self style])
    {
        //: NSMutableArray *handledReceipts = [[NSMutableArray alloc] init];
        NSMutableArray *handledReceipts = [[NSMutableArray alloc] init];
        //: for (NIMMessageReceipt *receipt in receipts) {
        for (NIMMessageReceipt *receipt in receipts) {
            //: if ([receipt.session isEqual:self.session])
            if ([receipt.session isEqual:self.session])
            {
                //: [handledReceipts addObject:receipt];
                [handledReceipts addObject:receipt];
            }
        }
        //: if (handledReceipts.count)
        if (handledReceipts.count)
        {
            //: [self uiCheckReceipts:handledReceipts];
            [self voice:handledReceipts];
        }
    }
}

//: #pragma mark - NIMConversationManagerDelegate
#pragma mark - NIMConversationManagerDelegate
//- (void)messagesDeletedInSession:(NIMSession *)session{
//    [self.interactor resetMessages:nil];
//    [self.tableView reloadData];
//}

// 远端消息清空回调
//: - (void)onRecvAllRemoteMessagesInSessionDeleted:(NIMSessionDeleteAllRemoteMessagesInfo *)info
- (void)onRecvAllRemoteMessagesInSessionDeleted:(NIMSessionDeleteAllRemoteMessagesInfo *)info
{
    //: [self refreshMessages];
    [self length];
}

// 远端消息批量删除删除回调
//: - (void)onRecvMessagesDeleted:(NSArray<NIMMessage *> *)messages exts:(NSDictionary<NSString *,NSString *> *)exts
- (void)onRecvMessagesDeleted:(NSArray<NIMMessage *> *)messages exts:(NSDictionary<NSString *,NSString *> *)exts
{
    //: [self refreshMessages];
    [self length];
}

//- (void)didAddRecentSession:(NIMRecentSession *)recentSession
//           totalUnreadCount:(NSInteger)totalUnreadCount{
//    [self changeUnreadCount:recentSession totalUnreadCount:totalUnreadCount];
//}
//
//- (void)didUpdateRecentSession:(NIMRecentSession *)recentSession
//              totalUnreadCount:(NSInteger)totalUnreadCount{
//    [self changeUnreadCount:recentSession totalUnreadCount:totalUnreadCount];
//}
//
//- (void)didRemoveRecentSession:(NIMRecentSession *)recentSession
//              totalUnreadCount:(NSInteger)totalUnreadCount{
//    [self changeUnreadCount:recentSession totalUnreadCount:totalUnreadCount];
//}


//: - (void)changeUnreadCount:(NIMRecentSession *)recentSession
- (void)keyBy:(NIMRecentSession *)recentSession
         //: totalUnreadCount:(NSInteger)totalUnreadCount{
         with:(NSInteger)totalUnreadCount{
    //: if ([recentSession.session isEqual:self.session]) {
    if ([recentSession.session isEqual:self.session]) {
        //: return;
        return;
    }

}

//: #pragma mark - NIMMediaManagerDelegate
#pragma mark - NIMMediaManagerDelegate
//: - (void)recordAudio:(NSString *)filePath didBeganWithError:(NSError *)error {
- (void)recordAudio:(NSString *)filePath didBeganWithError:(NSError *)error {
    //: if (!filePath || error) {
    if (!filePath || error) {
        //: _sessionInputView.recording = NO;
        _sessionInputView.recording = NO;
        //: [self onRecordFailed:error];
        [self matrix:error];
    }
}

//: - (void)recordAudio:(NSString *)filePath didCompletedWithError:(NSError *)error {
- (void)recordAudio:(NSString *)filePath didCompletedWithError:(NSError *)error {
    //: if(!error) {
    if(!error) {
        //: if ([self recordFileCanBeSend:filePath]) {
        if ([self success:filePath]) {
            //: [self sendMessage:[ZZZMessageMaker msgWithAudio:filePath]];
            [self quickMessage:[ViewCreate shareVoice:filePath]];
        //: }else{
        }else{
            //: [self showRecordFileNotSendReason];
            [self time];
        }
    //: } else {
    } else {
        //: [self onRecordFailed:error];
        [self matrix:error];
    }
    //: _sessionInputView.recording = NO;
    _sessionInputView.recording = NO;
}


//: - (void)recordAudioDidCancelled {
- (void)recordAudioDidCancelled {
    //: _sessionInputView.recording = NO;
    _sessionInputView.recording = NO;
}

//: - (void)recordAudioProgress:(NSTimeInterval)currentTime {
- (void)recordAudioProgress:(NSTimeInterval)currentTime {
    //: [_sessionInputView updateAudioRecordTime:currentTime];
    [_sessionInputView path:currentTime];
}

//: - (void)recordAudioInterruptionBegin {
- (void)recordAudioInterruptionBegin {
    //: [[NIMSDK sharedSDK].mediaManager cancelRecord];
    [[NIMSDK sharedSDK].mediaManager cancelRecord];
}

//: #pragma mark - 录音相关接口
#pragma mark - 录音相关接口
//: - (void)onRecordFailed:(NSError *)error{}
- (void)matrix:(NSError *)error{}

//: - (BOOL)recordFileCanBeSend:(NSString *)filepath
- (BOOL)success:(NSString *)filepath
{
    //: return YES;
    return YES;
}

//: - (void)showRecordFileNotSendReason{}
- (void)time{}

//: #pragma mark - NIMInputDelegate
#pragma mark - BulkDelegate

//: - (void)didChangeInputHeight:(CGFloat)inputHeight
- (void)tipName:(CGFloat)inputHeight
{
    //: [self.interactor changeLayout:inputHeight];
    [self.interactor change:inputHeight];
}

//: #pragma mark - NIMInputActionDelegate
#pragma mark - DelegateDoing
//: - (BOOL)onTapMediaItem:(ZZZMediaItem *)item{
- (BOOL)cigaretteHolder:(VagaryItem *)item{
    //: SEL sel = item.selctor;
    SEL sel = item.selctor;
    //: BOOL handled = sel && [self respondsToSelector:sel];
    BOOL handled = sel && [self respondsToSelector:sel];
    //: if (handled) {
    if (handled) {
        //: do {
        do {
        //: [self performSelector:sel withObject:item];
        [self performSelector:sel withObject:item];
        //: } while (0);
        } while (0);
        //: handled = YES;
        handled = YES;
    }
    //: return handled;
    return handled;
}

//: - (void)onTextChanged:(id)sender{}
- (void)started:(id)sender{}

//: - (void)onSendText:(NSString *)text atUsers:(NSArray *)atUsers
- (void)viewUsers:(NSString *)text should:(NSArray *)atUsers
{
    //: NSMutableArray *users = [NSMutableArray arrayWithArray:atUsers];
    NSMutableArray *users = [NSMutableArray arrayWithArray:atUsers];
    //: if (self.session.sessionType == NIMSessionTypeP2P)
    if (self.session.sessionType == NIMSessionTypeP2P)
    {
        //: [users addObject:self.session.sessionId];
        [users addObject:self.session.sessionId];
    }

    //: NIMMessage *message = [ZZZMessageMaker msgWithText:text];
    NIMMessage *message = [ViewCreate name:text];
    //: if (atUsers.count)
    if (atUsers.count)
    {
        //: NIMMessageApnsMemberOption *apnsOption = [[NIMMessageApnsMemberOption alloc] init];
        NIMMessageApnsMemberOption *apnsOption = [[NIMMessageApnsMemberOption alloc] init];
        //: apnsOption.userIds = atUsers;
        apnsOption.userIds = atUsers;
        //: apnsOption.forcePush = YES;
        apnsOption.forcePush = YES;

        //: ZZZKitInfoFetchOption *option = [[ZZZKitInfoFetchOption alloc] init];
        CertainOption *option = [[CertainOption alloc] init];
        //: option.session = self.session;
        option.session = self.session;

        //: NSString *me = [[AppleProjectKit sharedKit].provider infoByUser:[NIMSDK sharedSDK].loginManager.currentAccount option:option].showName;
        NSString *me = [[On along].provider toKey:[NIMSDK sharedSDK].loginManager.currentAccount image:option].showName;
        //: apnsOption.apnsContent = [NSString stringWithFormat:@"%@在群里@了你".nim_localized, me];
        apnsOption.apnsContent = [NSString stringWithFormat:StringFromLifeData(kStr_surfaceAwayCommitteeContent).start, me];
        //: message.apnsMemberOption = apnsOption;
        message.apnsMemberOption = apnsOption;
    }

    //: [self sendMessage:message];
    [self quickMessage:message];
}

//: - (void)onSelectEmoticon:(NIMInputEmoticon *)emoticon
- (void)enableThinkOf:(IndependentSure *)emoticon
{
    //: NSString *emoticonID = emoticon.emoticonID;
    NSString *emoticonID = emoticon.emoticonID;
    //: NSArray *array = [emoticonID componentsSeparatedByString:@"_"];
    NSArray *array = [emoticonID componentsSeparatedByString:@"_"];
    //: NSString *numberStr = [array lastObject];
    NSString *numberStr = [array lastObject];
    //: NSInteger number = [numberStr integerValue];
    NSInteger number = [numberStr integerValue];
    //: __block NIMQuickComment *newComment = [NIMCommentMaker commentWithType:number content:emoticon.tag ext:@"扩展"];
    __block NIMQuickComment *newComment = [CellMaker info:number contentMessage:emoticon.tag cerise:@"扩展"];

    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [self hadCommentThisMessage:self.messageForMenu type:number
    [self optionCompltion:self.messageForMenu label4t:number
                      //: compltion:^(NSMapTable *result)
                      assemblageView:^(NSMapTable *result)
     {
        //: NIMQuickComment *oldComment = [ZZZKitQuickCommentUtil myCommentFromComments:0 keys:@[@(number)] comments:result];
        NIMQuickComment *oldComment = [SizeUtil uncolored:0 candid:@[@(number)] sum:result];
        //: BOOL contains = oldComment ? YES : NO;
        BOOL contains = oldComment ? YES : NO;
        //: if (!contains)
        if (!contains)
        {
            //: [weakSelf.interactor addQuickComment:newComment
            [weakSelf.interactor completionCriticizeEnrichQuick:newComment
                                  //: completion:^(NSError *error)
                                  container:^(NSError *error)
            {
//                [self.view hideToasts];
                //: if (error)
                if (error)
                {
                    //: [weakSelf.view makeToast:[NTESLanguageManager getTextWithKey:@"group_info_activity_op_failed"] duration:2 position:CSToastPositionCenter];
                    [weakSelf.view makeToast:[LabelCell tinkleKey:StringFromLifeData(kStr_userSurvivalName)] duration:2 position:CSToastPositionCenter];
                }

                //: [weakSelf cleanMenuMessage];
                [weakSelf edit];
            //: }];
            }];
        }
        //: else
        else
        {
            //: [weakSelf.interactor delQuickComment:oldComment
            [weakSelf.interactor completionNeed:oldComment
                                   //: targetMessage:weakSelf.messageForMenu
                                   commentOptionImage:weakSelf.messageForMenu
                                      //: completion:^(NSError *error)
                                      rubricBubble:^(NSError *error)
            {
//                [self.view hideToasts];
                //: if (error)
                if (error)
                {
                    //: [weakSelf.view makeToast:[NTESLanguageManager getTextWithKey:@"group_info_activity_op_failed"] duration:2 position:CSToastPositionCenter];
                    [weakSelf.view makeToast:[LabelCell tinkleKey:StringFromLifeData(kStr_userSurvivalName)] duration:2 position:CSToastPositionCenter];
                }

                //: [weakSelf cleanMenuMessage];
                [weakSelf edit];
            //: }];
            }];
        }
    //: }];
    }];
}

//: - (void)didReplyCancelled
- (void)theTextCancelled
{
    //: self.messageForMenu = nil;
    self.messageForMenu = nil;
    //: [self.interactor setReferenceMessage:nil];
    [self.interactor setReferenceMessage:nil];

    //: if ([self.sessionConfig respondsToSelector:@selector(clearThreadMessageAfterSent)])
    if ([self.sessionConfig respondsToSelector:@selector(viewSend)])
    {
        //: if ([self.sessionConfig clearThreadMessageAfterSent])
        if ([self.sessionConfig viewSend])
        {
            //: [self.sessionConfig cleanThreadMessage];
            [self.sessionConfig size];
        }
    }
}


//: - (void)onSelectChartlet:(NSString *)chartletId
- (void)alongReplySend:(NSString *)chartletId
                 //: catalog:(NSString *)catalogId
                 message:(NSString *)catalogId
{
//    NSBundle *bundle = [On sharedKit].emoticonBundle;
//    NSData *imageData = [NSData dataWithContentsOfFile:[bundle pathForResource:chartletId ofType:nil inDirectory:NEEKIT_EmojiPath]];
    //: NSString *emojiPath = [[SSZipArchiveManager sharedManager] getEmojiPath];
    NSString *emojiPath = [[OnManager directorLength] byAmbages];
    //: NSString *imagePath = [emojiPath stringByAppendingPathComponent:chartletId];
    NSString *imagePath = [emojiPath stringByAppendingPathComponent:chartletId];
    //: NSData *imageData = [NSData dataWithContentsOfFile:imagePath];
    NSData *imageData = [NSData dataWithContentsOfFile:imagePath];
//    UIImage *gif = [UIImage sd_imageWithGIFData:imageData];
//
//    NIMMessage *message = [ViewCreate msgWithImage:gif];
//    [self sendMessage:message];
//

    //: NIMMessage *message = [ZZZMessageMaker msgWithImageData:imageData extension:@""];
    NIMMessage *message = [ViewCreate can:imageData postponement_strong:@""];
//    message.messageSubType = 77;//标记gif用
    //: NSMutableDictionary *dic = [[ZZZConfig sharedConfig] Gdic];
    NSMutableDictionary *dic = [[LabelSure with] Gdic];
//    NSData *imageData = UIImagePNGRepresentation(image);
    //: [dic setObject:imageData forKey:message.messageId];
    [dic setObject:imageData forKey:message.messageId];

    //: [self sendMessage:message];
    [self quickMessage:message];

    //: [self.sessionInputView.toolBar setPlaceHolder:[NTESLanguageManager getTextWithKey:@"message_please_enter_content"]];
    [self.sessionInputView.toolBar setComment:[LabelCell tinkleKey:StringFromLifeData(kStr_textureText)]];

//    [self.sessionInputView endEditing:YES];
}

//: - (void)onCancelRecording
- (void)cancelDay
{
    //: [[NIMSDK sharedSDK].mediaManager cancelRecord];
    [[NIMSDK sharedSDK].mediaManager cancelRecord];
}

//: - (void)onStopRecording
- (void)recentIndex
{
    //: [[NIMSDK sharedSDK].mediaManager stopRecord];
    [[NIMSDK sharedSDK].mediaManager stopRecord];
//    [self.audioContent animationClose];
}

//: - (void)onStartRecording
- (void)boxBy
{
    //: _sessionInputView.recording = YES;
    _sessionInputView.recording = YES;
//    [_sessionInputView endEditing:YES];

    //: NIMAudioType type = [self recordAudioType];
    NIMAudioType type = [self indexValue];
    //: NSTimeInterval duration = [AppleProjectKit sharedKit].config.recordMaxDuration;
    NSTimeInterval duration = [On along].config.recordMaxDuration;

    //: [[NIMSDK sharedSDK].mediaManager addDelegate:self];
    [[NIMSDK sharedSDK].mediaManager addDelegate:self];

    //: [[NIMSDK sharedSDK].mediaManager record:type
    [[NIMSDK sharedSDK].mediaManager record:type
                                   //: duration:duration];
                                   duration:duration];
}

//: #pragma mark NIMChatExtendManagerDelegate
#pragma mark NIMChatExtendManagerDelegate

//: - (void)onRecvQuickComment:(NIMQuickComment *)comment
- (void)onRecvQuickComment:(NIMQuickComment *)comment
{
    //: [self.interactor updateMessage:comment.message];
    [self.interactor sendPlayer:comment.message];
}


//: - (void)onRemoveQuickComment:(NIMQuickComment *)comment
- (void)onRemoveQuickComment:(NIMQuickComment *)comment
{
    //: [self.interactor updateMessage:comment.message];
    [self.interactor sendPlayer:comment.message];
}

//: - (void)onNotifyAddMessagePin:(NIMMessagePinItem *)item
- (void)onNotifyAddMessagePin:(NIMMessagePinItem *)item
{
    //: NIMMessage *message = [NIMSDK.sharedSDK.conversationManager messagesInSession:self.session messageIds:@[item.messageId]].lastObject;
    NIMMessage *message = [NIMSDK.sharedSDK.conversationManager messagesInSession:self.session messageIds:@[item.messageId]].lastObject;
    //: [self uiPinMessage:message];
    [self lightMessage:message];
}

//: - (void)onNotifyRemoveMessagePin:(NIMMessagePinItem *)item
- (void)onNotifyRemoveMessagePin:(NIMMessagePinItem *)item
{
    //: NIMMessage *message = [NIMSDK.sharedSDK.conversationManager messagesInSession:self.session messageIds:@[item.messageId]].lastObject;
    NIMMessage *message = [NIMSDK.sharedSDK.conversationManager messagesInSession:self.session messageIds:@[item.messageId]].lastObject;
    //: [self uiUnpinMessage:message];
    [self under:message];
}

//: #pragma mark - ZZZMessageCellDelegate
#pragma mark - ImageDelegate
//: - (BOOL)onTapCell:(ZZZKitEvent *)event{
- (BOOL)iconned:(ItemTap *)event{
    //: BOOL handle = NO;
    BOOL handle = NO;
    //: NSString *eventName = event.eventName;
    NSString *eventName = event.eventName;
    //: if ([eventName isEqualToString:ZZZKitEventNameTapAudio])
    if ([eventName isEqualToString:kConst_optionValue])
    {
        //: [self.interactor mediaAudioPressed:event.messageModel];
        [self.interactor date:event.messageModel];
        //: handle = YES;
        handle = YES;
    }
    //: return handle;
    return handle;
}

//: - (void)onRetryMessage:(NIMMessage *)message
- (void)alongMaxMessageShould:(NIMMessage *)message
{
    //: if (message.isReceivedMsg) {
    if (message.isReceivedMsg) {
        //: [[[NIMSDK sharedSDK] chatManager] fetchMessageAttachment:message
        [[[NIMSDK sharedSDK] chatManager] fetchMessageAttachment:message
                                                           //: error:nil];
                                                           error:nil];
    //: }else{
    }else{
        //: [[[NIMSDK sharedSDK] chatManager] resendMessage:message
        [[[NIMSDK sharedSDK] chatManager] resendMessage:message
                                                  //: error:nil];
                                                  error:nil];
    }
}

//: - (BOOL)onLongPressCell:(NIMMessage *)message
- (BOOL)longInput:(NIMMessage *)message
                 //: inView:(UIView *)view
                 old:(UIView *)view
{
    //: BOOL handle = NO;
    BOOL handle = NO;
    //: _messageForMenu = message;
    _messageForMenu = message;
    //: [self.interactor setReferenceMessage:message];
    [self.interactor setReferenceMessage:message];
    //: if (![self becomeFirstResponder]) {
    if (![self becomeFirstResponder]) {
        //: handle = NO;
        handle = NO;
        //: return handle;
        return handle;
    }
    //: if ([self shouldShowMenuByMessage:message])
    if ([self be:message])
    {
        //: [ZZZBubbleMenuView.shareMenuView removeFromSuperview];
        [TextFrameView.content removeFromSuperview];
        //: [self showMenuWithMessage:message withView:view];
        [self valueSum:message textInput:view];
    }
    //: handle = YES;
    handle = YES;
    //: return handle;
    return handle;
}

//: - (BOOL)onLongPressCell:(NIMMessage *)message complete:(void(^)(id data))complete; {
- (BOOL)exceptView:(NIMMessage *)message clinicMessage:(void(^)(id data))complete; {
    //: BOOL handle = NO;
    BOOL handle = NO;
    //: _messageForMenu = message;
    _messageForMenu = message;
    //: [self.interactor setReferenceMessage:message];
    [self.interactor setReferenceMessage:message];

    //: handle = [self shouldShowMenuByMessage:message];
    handle = [self be:message];
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: !complete ? : complete(wself);
    !complete ? : complete(wself);

    //: return handle;
    return handle;
}

//: - (BOOL)onLongPressCell:(NIMMessage *)message
- (BOOL)buttonned:(NIMMessage *)message
{
    //: BOOL handle = NO;
    BOOL handle = NO;
    //: _messageForMenu = message;
    _messageForMenu = message;
    //: [self.interactor setReferenceMessage:message];
    [self.interactor setReferenceMessage:message];
    //: if (![self becomeFirstResponder]) {
    if (![self becomeFirstResponder]) {
        //: handle = NO;
        handle = NO;
        //: return handle;
        return handle;
    }
    //: handle = YES;
    handle = YES;
    //: return handle;
    return handle;
}


//: - (BOOL)disableAudioPlayedStatusIcon:(NIMMessage *)message
- (BOOL)titles:(NIMMessage *)message
{
    //: BOOL disable = NO;
    BOOL disable = NO;
    //: if ([self.sessionConfig respondsToSelector:@selector(disableAudioPlayedStatusIcon)])
    if ([self.sessionConfig respondsToSelector:@selector(withTime)])
    {
        //: disable = [self.sessionConfig disableAudioPlayedStatusIcon];
        disable = [self.sessionConfig withTime];
    }
    //: return disable;
    return disable;
}

//: - (void)onClickEmoticon:(NIMMessage *)message
- (void)elite:(NIMMessage *)message
                //: comment:(NIMQuickComment *)comment
                underSelected:(NIMQuickComment *)comment
               //: selected:(BOOL)isSelected
               off:(BOOL)isSelected
{
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: if (isSelected)
    if (isSelected)
    {
        //: [self.interactor delQuickComment:comment
        [self.interactor completionNeed:comment
                           //: targetMessage:message
                           commentOptionImage:message
                              //: completion:^(NSError *error)
                              rubricBubble:^(NSError *error)
         {
//            [self.view hideToasts];
            //: if (!error)
            if (!error)
            {
                //: return;
                return;
            }
            //: [weakSelf.view makeToast:[NTESLanguageManager getTextWithKey:@"group_info_activity_op_failed"] duration:2 position:CSToastPositionCenter];
            [weakSelf.view makeToast:[LabelCell tinkleKey:StringFromLifeData(kStr_userSurvivalName)] duration:2 position:CSToastPositionCenter];
        //: }];
        }];
    }
    //: else
    else
    {
        //: NIMQuickComment *aComment = [comment copy];
        NIMQuickComment *aComment = [comment copy];
        //: [self.interactor addQuickComment:aComment
        [self.interactor kibbitz:aComment
                               //: toMessage:message
                               request_strong:message
                              //: completion:^(NSError *error)
                              concatenateRead:^(NSError *error)
         {
//            [self.view hideToasts];
            //: if (!error)
            if (!error)
            {
                //: return;
                return;
            }
            //: [weakSelf.view makeToast:[NTESLanguageManager getTextWithKey:@"group_info_activity_op_failed"] duration:2 position:CSToastPositionCenter];
            [weakSelf.view makeToast:[LabelCell tinkleKey:StringFromLifeData(kStr_userSurvivalName)] duration:2 position:CSToastPositionCenter];
        //: }];
        }];
    }

}

//: #pragma mark - 配置项
#pragma mark - 配置项
//: - (id<ZZZSessionConfig>)sessionConfig
- (id<PastConfig>)sessionConfig
{
    //: return nil; 
    return nil; //使用默认配置
}

//: #pragma mark - 配置项列表
#pragma mark - 配置项列表
//是否需要监听新消息通知 : 某些场景不需要监听新消息，如浏览服务器消息历史界面
//: - (BOOL)shouldAddListenerForNewMsg
- (BOOL)style
{
    //: BOOL should = YES;
    BOOL should = YES;
    //: if ([self.sessionConfig respondsToSelector:@selector(disableReceiveNewMessages)]) {
    if ([self.sessionConfig respondsToSelector:@selector(successLast)]) {
        //: should = ![self.sessionConfig disableReceiveNewMessages];
        should = ![self.sessionConfig successLast];
    }
    //: return should;
    return should;
}



//是否需要显示输入框 : 某些场景不需要显示输入框，如使用 3D touch 的场景预览会话界面内容
//: - (BOOL)shouldShowInputView
- (BOOL)resolve
{
    //: BOOL should = YES;
    BOOL should = YES;
    //: if ([self.sessionConfig respondsToSelector:@selector(disableInputView)]) {
    if ([self.sessionConfig respondsToSelector:@selector(titleContent)]) {
        //: should = ![self.sessionConfig disableInputView];
        should = ![self.sessionConfig titleContent];
    }
    //: return should;
    return should;
}


//当前录音格式 : NIMSDK 支持 aac 和 amr 两种格式
//: - (NIMAudioType)recordAudioType
- (NIMAudioType)indexValue
{
    //: NIMAudioType type = NIMAudioTypeAAC;
    NIMAudioType type = NIMAudioTypeAAC;
    //: if ([self.sessionConfig respondsToSelector:@selector(recordType)]) {
    if ([self.sessionConfig respondsToSelector:@selector(graphicalHistoricalRecord)]) {
        //: type = [self.sessionConfig recordType];
        type = [self.sessionConfig graphicalHistoricalRecord];
    }
    //: return type;
    return type;
}

//是否需要监听感应器事件
//: - (BOOL)needProximityMonitor
- (BOOL)pageDate
{
    //: BOOL needProximityMonitor = YES;
    BOOL needProximityMonitor = YES;
    //: if ([self.sessionConfig respondsToSelector:@selector(disableProximityMonitor)]) {
    if ([self.sessionConfig respondsToSelector:@selector(observerMonitor)]) {
        //: needProximityMonitor = !self.sessionConfig.disableProximityMonitor;
        needProximityMonitor = !self.sessionConfig.observerMonitor;
    }
    //: return needProximityMonitor;
    return needProximityMonitor;
}


//: #pragma mark -
#pragma mark -
//: #pragma mark - 长按菜单事件
#pragma mark - 长按菜单事件
//: - (NIMMessage *)messageForMenu
- (NIMMessage *)messageForMenu
{
    //: return _messageForMenu;
    return _messageForMenu;
}

//: - (BOOL)canBecomeFirstResponder
- (BOOL)canBecomeFirstResponder
{
    //: return YES;
    return YES;
}

//: - (BOOL)canPerformAction:(SEL)action withSender:(id)sender
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
    //: NSArray *items = [[UIMenuController sharedMenuController] menuItems];
    NSArray *items = [[UIMenuController sharedMenuController] menuItems];
    //: for (UIMenuItem *item in items) {
    for (UIMenuItem *item in items) {
        //: if (action == [item action]){
        if (action == [item action]){
            //: return YES;
            return YES;
        }
    }
    //: return NO;
    return NO;
}


//: - (void)copyText:(id)sender
- (void)tag:(id)sender
{
    //: NIMMessage *message = [self messageForMenu];
    NIMMessage *message = [self messageForMenu];
    //: if (message.tyl_internalIdentifier.length) {
    if (message.name.length) {
        //: UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
        UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
        //: [pasteboard setString:message.tyl_internalIdentifier];
        [pasteboard setString:message.name];
    }
    //: else if (message.text.length) {
    else if (message.text.length) {
        //: UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
        UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
        //: [pasteboard setString:message.text];
        [pasteboard setString:message.text];
    }
}

//: - (void)deleteMsg:(id)sender
- (void)custom:(id)sender
{
    //: NIMMessage *message = [self messageForMenu];
    NIMMessage *message = [self messageForMenu];
    //: [self uiDeleteMessage:message];
    [self bubbleMedia:message];
    //: [self.conversationManager deleteMessage:message];
    [self.domain deleteMessage:message];
}

//: - (void)menuDidHide:(NSNotification *)notification
- (void)physicalProperty:(NSNotification *)notification
{
    //: [UIMenuController sharedMenuController].menuItems = nil;
    [UIMenuController sharedMenuController].menuItems = nil;
}

//: - (void)onTapMenuItemCopy:(ZZZMediaItem *)item
- (void)onTapMenuItemCopy:(VagaryItem *)item
{
    //: NIMMessage *message = [self messageForMenu];
    NIMMessage *message = [self messageForMenu];
    //: if (message.tyl_internalIdentifier.length) {
    if (message.name.length) {
        //: UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
        UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
        //: [pasteboard setString:message.tyl_internalIdentifier];
        [pasteboard setString:message.name];
    }
    //: else if (message.text.length) {
    else if (message.text.length) {
        //: UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
        UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
        //: [pasteboard setString:message.text];
        [pasteboard setString:message.text];
    }
}

//: - (void)onTapMenuItemDelete:(ZZZMediaItem *)item
- (void)onTapMenuItemDelete:(VagaryItem *)item
{
    //: NIMMessage *message = [self messageForMenu];
    NIMMessage *message = [self messageForMenu];
    //: [self uiDeleteMessage:message];
    [self bubbleMedia:message];
    //: [self.conversationManager deleteMessage:message];
    [self.domain deleteMessage:message];
}

//: #pragma mark - 操作接口
#pragma mark - 操作接口
//: - (void)uiAddMessages:(NSArray *)messages
- (void)screenMessages:(NSArray *)messages
{
    //: [self.interactor addMessages:messages];
    [self.interactor farawaynessMessages:messages];
}

//: - (void)uiInsertMessages:(NSArray *)messages
- (void)size:(NSArray *)messages
{
    //: [self.interactor insertMessages:messages];
    [self.interactor transplantColor:messages];
}

//: - (ZZZMessageModel *)uiDeleteMessage:(NIMMessage *)message{
- (CollectionModel *)bubbleMedia:(NIMMessage *)message{
    //: ZZZMessageModel *model = [self.interactor deleteMessage:message];
    CollectionModel *model = [self.interactor show:message];
    //: if (model.shouldShowReadLabel && model.message.session.sessionType == NIMSessionTypeP2P)
    if (model.shouldShowReadLabel && model.message.session.sessionType == NIMSessionTypeP2P)
    {
        //: [self uiCheckReceipts:nil];
        [self voice:nil];
    }
    //: return model;
    return model;
}

//: - (void)uiUpdateMessage:(NIMMessage *)message{
- (void)user:(NIMMessage *)message{
    //: [self.interactor updateMessage:message];
    [self.interactor sendPlayer:message];
}

//: - (void)uiPinMessage:(NIMMessage *)message
- (void)lightMessage:(NIMMessage *)message
{
    //: [self.interactor addPinForMessage:message];
    [self.interactor everyLabel:message];
}

//: - (void)uiUnpinMessage:(NIMMessage *)message
- (void)under:(NIMMessage *)message
{
    //: [self.interactor removePinForMessage:message];
    [self.interactor viewWith:message];
}

//: - (void)uiCheckReceipts:(NSArray<NIMMessageReceipt *> *)receipts
- (void)voice:(NSArray<NIMMessageReceipt *> *)receipts
{
    //: [self.interactor checkReceipts:receipts];
    [self.interactor quantity:receipts];
}

//: - (void)onTapCameraBtn:(id)sender
- (void)cameraing:(id)sender
{
    //: [self.interactor mediaShootPressed];
    [self.interactor secret];

}

//: - (void)onTapAlbunBtn:(id)sender
- (void)names:(id)sender
{
    //: [self.interactor mediaPicturePressed];
    [self.interactor pressedName];
}

//: - (void)onTapAudioBtn:(id)sender
- (void)endued:(id)sender
{
    //: [self.view addSubview:self.audioContent];
    [self.view addSubview:self.audioContent];
    //: self.audioContent.actionDelegate = self;
    self.audioContent.actionDelegate = self;
    //: [self.audioContent animationShow];
    [self.audioContent arrangeShow];
}


//: #pragma mark - NIMMeidaButton
#pragma mark - NIMMeidaButton
//: - (void)onTapMediaItemPicture:(ZZZMediaItem *)item
- (void)message:(VagaryItem *)item
{
    //: [self.interactor mediaPicturePressed];
    [self.interactor pressedName];
}

//: - (void)onTapMediaItemShoot:(ZZZMediaItem *)item
- (void)untouched:(VagaryItem *)item
{
    //: [self.interactor mediaShootPressed];
    [self.interactor secret];
}

//: - (void)onTapMediaItemLocation:(ZZZMediaItem *)item
- (void)item:(VagaryItem *)item
{
//    [self.interactor mediaLocationPressed];
    //: [self.view addSubview:self.audioContent];
    [self.view addSubview:self.audioContent];
    //: self.audioContent.actionDelegate = self;
    self.audioContent.actionDelegate = self;
    //: [self.audioContent animationShow];
    [self.audioContent arrangeShow];

}

//: - (void)onTapTableView:(id)sender
- (void)toing:(id)sender
{
    //: [ZZZBubbleMenuView.shareMenuView removeFromSuperview];
    [TextFrameView.content removeFromSuperview];
    //: [self.sessionInputView endEditing:YES];
    [self.sessionInputView endEditing:YES];
}

//: #pragma mark - 旋转处理 (iOS8 or above)
#pragma mark - 旋转处理 (iOS8 or above)
//: - (void)viewWillTransitionToSize:(CGSize)size
- (void)viewWillTransitionToSize:(CGSize)size
       //: withTransitionCoordinator:(id<UIViewControllerTransitionCoordinator>)coordinator
       withTransitionCoordinator:(id<UIViewControllerTransitionCoordinator>)coordinator
{
    //: self.lastVisibleIndexPathBeforeRotation = [self.tableView indexPathsForVisibleRows].lastObject;
    self.lastVisibleIndexPathBeforeRotation = [self.tableView indexPathsForVisibleRows].lastObject;
    //: [super viewWillTransitionToSize:size withTransitionCoordinator:coordinator];
    [super viewWillTransitionToSize:size withTransitionCoordinator:coordinator];
    //: if (self.view.window) {
    if (self.view.window) {
        //: __weak typeof(self) wself = self;
        __weak typeof(self) wself = self;
        //: [coordinator animateAlongsideTransition:^(id <UIViewControllerTransitionCoordinatorContext> context)
        [coordinator animateAlongsideTransition:^(id <UIViewControllerTransitionCoordinatorContext> context)
         {
             //: [[NIMSDK sharedSDK].mediaManager cancelRecord];
             [[NIMSDK sharedSDK].mediaManager cancelRecord];
             //: [wself.interactor cleanCache];
             [wself.interactor backgroundSelected];
             //: [wself.sessionInputView reset];
             [wself.sessionInputView be];
             //: [wself.tableView reloadData];
             [wself.tableView reloadData];
             //: [wself.tableView scrollToRowAtIndexPath:wself.lastVisibleIndexPathBeforeRotation atScrollPosition:UITableViewScrollPositionBottom animated:NO];
             [wself.tableView scrollToRowAtIndexPath:wself.lastVisibleIndexPathBeforeRotation atScrollPosition:UITableViewScrollPositionBottom animated:NO];
         //: } completion:nil];
         } completion:nil];
    }
}


//: #pragma mark - 标记已读
#pragma mark - 标记已读
//: - (void)markRead
- (void)common
{
    //: [self.interactor markRead:YES];
    [self.interactor quickMark:YES];
}


//: #pragma mark - Private
#pragma mark - Private

//: - (void)addListener
- (void)hack
{
    //: [[NIMSDK sharedSDK].chatManager addDelegate:self];
    [[NIMSDK sharedSDK].chatManager addDelegate:self];
    //: [[NIMSDK sharedSDK].conversationManager addDelegate:self];
    [[NIMSDK sharedSDK].conversationManager addDelegate:self];
    //: [[NIMSDK sharedSDK].chatExtendManager addDelegate:self];
    [[NIMSDK sharedSDK].chatExtendManager addDelegate:self];
}

//: - (void)removeListener
- (void)attender
{
    //: [[NIMSDK sharedSDK].chatManager removeDelegate:self];
    [[NIMSDK sharedSDK].chatManager removeDelegate:self];
    //: [[NIMSDK sharedSDK].conversationManager removeDelegate:self];
    [[NIMSDK sharedSDK].conversationManager removeDelegate:self];
    //: [[NIMSDK sharedSDK].mediaManager removeDelegate:self];
    [[NIMSDK sharedSDK].mediaManager removeDelegate:self];
    //: [[NIMSDK sharedSDK].chatExtendManager removeDelegate:self];
    [[NIMSDK sharedSDK].chatExtendManager removeDelegate:self];

}


//: - (id<NIMConversationManager>)conversationManager{
- (id<NIMConversationManager>)domain{
    //: switch (self.session.sessionType) {
    switch (self.session.sessionType) {
        //: case NIMSessionTypeChatroom:
        case NIMSessionTypeChatroom:
            //: return nil;
            return nil;
            //: break;
            break;
        //: case NIMSessionTypeP2P:
        case NIMSessionTypeP2P:
        //: case NIMSessionTypeTeam:
        case NIMSessionTypeTeam:
        //: case NIMSessionTypeSuperTeam:
        case NIMSessionTypeSuperTeam:
        //: default:
        default:
            //: return [NIMSDK sharedSDK].conversationManager;
            return [NIMSDK sharedSDK].conversationManager;
    }
}


//: - (void)setUpTitleView
- (void)redirect
{
    //: ZZZKitTitleView *titleView = (ZZZKitTitleView *)self.navigationItem.titleView;
    KitView *titleView = (KitView *)self.navigationItem.titleView;
    //: if (!titleView || ![titleView isKindOfClass:[ZZZKitTitleView class]])
    if (!titleView || ![titleView isKindOfClass:[KitView class]])
    {
        //: titleView = [[ZZZKitTitleView alloc] initWithFrame:CGRectZero];
        titleView = [[KitView alloc] initWithFrame:CGRectZero];
        //: self.navigationItem.titleView = titleView;
        self.navigationItem.titleView = titleView;

        //: titleView.titleLabel.text = self.sessionTitle;
        titleView.titleLabel.text = self.name;
        //: titleView.subtitleLabel.text = self.sessionSubTitle;
        titleView.subtitleLabel.text = self.flushName;

        //: self.titleLabel = titleView.titleLabel;
        self.titleLabel = titleView.titleLabel;
        //: self.subTitleLabel = titleView.subtitleLabel;
        self.subTitleLabel = titleView.subtitleLabel;
    }

    //: [titleView sizeToFit];
    [titleView sizeToFit];
    //: self.subtitle.text = self.sessionSubTitle;
    self.subtitle.text = self.flushName;
}

//: - (void)refreshSessionTitle:(NSString *)title
- (void)viewTo:(NSString *)title
{
    //: self.titleLabel.text = title;
    self.titleLabel.text = title;
//    self.labtitle.text = self.sessionTitle;
    //: [self setUpTitleView];
    [self redirect];
}


//: - (void)refreshSessionSubTitle:(NSString *)title
- (void)betweenShould:(NSString *)title
{
    //: self.subTitleLabel.text = title;
    self.subTitleLabel.text = title;
    //: self.subtitle.text = title;
    self.subtitle.text = title;
    //: if([title isEqualToString:@"离线".ntes_localized]){
    if([title isEqualToString:@"离线".colorLocalized]){
        //: self.subtitle.textColor = [UIColor colorWithHexString:@"777777"];
        self.subtitle.textColor = [UIColor box:StringFromLifeData(kStr_survivalName)];
    //: }else{
    }else{
        //: self.subtitle.textColor = [UIColor colorWithHexString:@"#00B01B"];
        self.subtitle.textColor = [UIColor box:StringFromLifeData(kStr_integrationName)];
    }
    //: [self setUpTitleView];
    [self redirect];
}

//: - (void)refreshMessages
- (void)length
{
    //: [self.interactor resetMessages:nil];
    [self.interactor colorWith:nil];
}

//: - (NSArray *)menusItems:(NIMMessage *)message {
- (NSArray *)color:(NIMMessage *)message {
    //: return nil;
    return nil;
}

//: - (void)scrollToMessage:(NIMMessage *)message
- (void)filterAcross:(NIMMessage *)message
{
    //: NSInteger row = [self.interactor findMessageIndex:message];
    NSInteger row = [self.interactor table:message];
    //: if (row != -1) {
    if (row != -1) {
        //: NSIndexPath *indexPath = [NSIndexPath indexPathForRow:row inSection:0];
        NSIndexPath *indexPath = [NSIndexPath indexPathForRow:row inSection:0];
        //: [self.tableView scrollToRowAtIndexPath:indexPath atScrollPosition:UITableViewScrollPositionTop animated:YES];
        [self.tableView scrollToRowAtIndexPath:indexPath atScrollPosition:UITableViewScrollPositionTop animated:YES];
    }
}

//: - (void)cleanMenuMessage
- (void)edit
{
    //: [self.sessionInputView.replyedContent.closeButton sendActionsForControlEvents:UIControlEventTouchUpInside];
    [self.sessionInputView.replyedContent.closeButton sendActionsForControlEvents:UIControlEventTouchUpInside];
    //: self.messageForMenu = nil;
    self.messageForMenu = nil;
}

//: - (void)hadCommentThisMessage:(NIMMessage *)message
- (void)optionCompltion:(NIMMessage *)message
                         //: type:(int64_t)type
                         label4t:(int64_t)type
                    //: compltion:(void(^)(NSMapTable *))completion
                    assemblageView:(void(^)(NSMapTable *))completion
{
    //: [[NIMSDK sharedSDK].chatExtendManager quickCommentsByMessage:message completion:^(NSError * _Nullable error, NSMapTable<NSNumber *,NSArray<NIMQuickComment *> * >* _Nullable result) {
    [[NIMSDK sharedSDK].chatExtendManager quickCommentsByMessage:message completion:^(NSError * _Nullable error, NSMapTable<NSNumber *,NSArray<NIMQuickComment *> * >* _Nullable result) {
        //: if (completion)
        if (completion)
        {
            //: completion(result);
            completion(result);
        }
    //: }];
    }];
}

//: - (BOOL)shouldShowMenuByMessage:(NIMMessage *)message
- (BOOL)be:(NIMMessage *)message
{
    //: if (message.session.sessionType == NIMSessionTypeChatroom ||
    if (message.session.sessionType == NIMSessionTypeChatroom ||
        //: message.messageType == NIMMessageTypeTip ||
        message.messageType == NIMMessageTypeTip ||
        //: message.messageType == NIMMessageTypeNotification)
        message.messageType == NIMMessageTypeNotification)
    {
        //: return NO;
        return NO;
    }
    //: return YES;
    return YES;
}


//: - (void)showMenuWithMessage:(NIMMessage *)message withView:(UIView *)view {
- (void)valueSum:(NIMMessage *)message textInput:(UIView *)view {

    //: [[ZZZBubbleMenuView shareMenuView] removeFromSuperview];
    [[TextFrameView content] removeFromSuperview];

    //: NSArray *btns = [self genMediaButtonsWithMessage:message];
    NSArray *btns = [self enableByMessage:message];

    //: if (btns.count > 0) {
    if (btns.count > 0) {

        //: CGRect tempRect = [view convertRect:view.bounds toView:self.view];
        CGRect tempRect = [view convertRect:view.bounds toView:self.view];
        //: CGRect cursorStartRectToWindow = [view convertRect:view.bounds toView:self.view];
        CGRect cursorStartRectToWindow = [view convertRect:view.bounds toView:self.view];

        @
         //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
         autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                      ;
        //: [[ZZZBubbleMenuView shareMenuView] showViewWithButtonModels:btns cursorStartRect:cursorStartRectToWindow selectionTextRectInWindow:tempRect selectBlock:^(ZZZMediaItem *item) {
        [[TextFrameView content] button:btns findThreadRect:cursorStartRectToWindow toIndex:tempRect conversation:^(VagaryItem *item) {
            @
             //: try{} @finally{} __typeof__(self) self = __weak_self__;
             try{} @finally{} __typeof__(self) self = __weak_self__;
                            ;
            //: [self onTapMediaItem:item];
            [self cigaretteHolder:item];

            //: [ZZZBubbleMenuView.shareMenuView removeFromSuperview];
            [TextFrameView.content removeFromSuperview];
        //: }];
        }];
    }

}

//: - (NSArray *)genMediaButtonsWithMessage:(NIMMessage *)message {
- (NSArray *)enableByMessage:(NIMMessage *)message {

    //: NSMutableArray *selectedAllRangeButtons = [NSMutableArray array];
    NSMutableArray *selectedAllRangeButtons = [NSMutableArray array];

    //: NSArray *items;
    NSArray *items;
    //: if (!self.sessionConfig)
    if (!self.sessionConfig)
    {
        //: items = [[AppleProjectKit sharedKit].config defaultMenuItemsWithMessage:message];
        items = [[On along].config line:message];
    }
    //: else if([self.sessionConfig respondsToSelector:@selector(menuItemsWithMessage:)])
    else if([self.sessionConfig respondsToSelector:@selector(prixFixeUponMessage:)])
    {
        //: items = [self.sessionConfig menuItemsWithMessage:message];
        items = [self.sessionConfig prixFixeUponMessage:message];
    }

    //: [items enumerateObjectsUsingBlock:^(ZZZMediaItem *item, NSUInteger idx, BOOL *stop) {
    [items enumerateObjectsUsingBlock:^(VagaryItem *item, NSUInteger idx, BOOL *stop) {

        //: ZZZBubbleButtonModel *model = [[ZZZBubbleButtonModel alloc] init];
        BackgroundTitle *model = [[BackgroundTitle alloc] init];
        //: model.normalImage = item.normalImage;
        model.normalImage = item.normalImage;
        //: model.name = item.title;
        model.name = item.title;
        //: model.item = item;
        model.item = item;

        //: [selectedAllRangeButtons addObject:model];
        [selectedAllRangeButtons addObject:model];

    //: }];
    }];

    //: return selectedAllRangeButtons;
    return selectedAllRangeButtons;
}

//: - (ZZZInputAudioView *)audioContent
- (MediaView *)audioContent
{
    //: if(!_audioContent){
    if(!_audioContent){
        //: _audioContent = [[ZZZInputAudioView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _audioContent = [[MediaView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
//        _audioContent.hidden = YES;
    }
    //: return _audioContent;
    return _audioContent;
}

//: @end
@end

Byte * LifeDataToCache(Byte *data) {
    int varyGlance = data[0];
    int withSharp = data[1];
    Byte create = data[2];
    int lotsHim = data[3];
    if (!varyGlance) return data + lotsHim;
    for (int i = lotsHim; i < lotsHim + withSharp; i++) {
        int value = data[i] + create;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[lotsHim + withSharp] = 0;
    return data + lotsHim;
}

NSString *StringFromLifeData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)LifeDataToCache(data)];
}
