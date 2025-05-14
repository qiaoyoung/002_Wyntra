// __DEBUG__
// __CLOSE_PRINT__
//
//  DistanceKeyViewController.h
// On
//
//  Created by Genning-Work on 2019/12/12.
//  Copyright © 2019 NetEase. All rights reserved.
//  群组操作

// __M_A_C_R_O__
//: #import "ZZZTeamCardViewController.h"
#import "SectionViewController.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: #pragma mark - 外部配置项
#pragma mark - 外部配置项
//: @interface ZZZTeamCardViewControllerOption : NSObject
@interface ByOption : NSObject

//: @property (nonatomic, assign) BOOL isTop;
@property (nonatomic, assign) BOOL isTop;

//: @end
@end

//: @interface ZZZTeamCardOperationViewController : ZZZTeamCardViewController
@interface DistanceKeyViewController : SectionViewController

//外部配置
//: @property (nonatomic,strong) ZZZTeamCardViewControllerOption *option;
@property (nonatomic,strong) ByOption *option;

//群组管理
//: @property (nonatomic,strong) ZZZTeamListDataManager *teamListManager;
@property (nonatomic,strong) InformationShould *teamListManager;


//初始化
//: - (instancetype)initWithTeam:(NIMTeam *)team
- (instancetype)initWithLockUpOption:(NIMTeam *)team
                     //: session:(NIMSession *)session
                     model:(NIMSession *)session
                      //: option:(ZZZTeamCardViewControllerOption * _Nullable)option;
                      change:(ByOption * _Nullable)option;
//查询全部群成员
//: - (void)didFetchTeamMember:(nullable ZZZMembersFetchOption *)option;
- (void)pinTeam:(nullable TingEnterEnable *)option;

//加人
//: - (void)didInviteUsers:(NSArray<NSString *> *)userIds
- (void)videoImage:(NSArray<NSString *> *)userIds
            //: completion:(nullable dispatch_block_t)completion;
            along:(nullable dispatch_block_t)completion;

//踢人
//: - (void)didKickUser:(NSString *)userId;
- (void)containerForward:(NSString *)userId;

//更新群名称
//: - (void)didUpdateTeamName:(NSString *)name;
- (void)chiaroscuro:(NSString *)name;

//更新群昵称
//: - (void)didUpdateTeamNick:(NSString *)nick;
- (void)inputOf:(NSString *)nick;

//更新群公告
//: - (void)didUpdateTeamIntro:(NSString *)intro;
- (void)titleFile:(NSString *)intro;

//更新群禁言
//: - (void)didUpdateTeamMute:(BOOL)mute;
- (void)success:(BOOL)mute;

//更新群头像
//: - (void)didUpdateTeamAvatarWithType:(UIImagePickerControllerSourceType)type;
- (void)item:(UIImagePickerControllerSourceType)type;

//更新群组验证方式
//: - (void)didupdateTeamJoinMode:(NIMTeamJoinMode)mode;
- (void)showEmpty:(NIMTeamJoinMode)mode;

//更新邀请模式
//: - (void)didUpdateTeamInviteMode:(NIMTeamInviteMode)mode;
- (void)ofMode:(NIMTeamInviteMode)mode;

//更新被邀请模式
//: - (void)didUpdateTeamBeInviteMode:(NIMTeamBeInviteMode)mode;
- (void)comeToGripsLabel:(NIMTeamBeInviteMode)mode;

//更新群信息修改权限
//: - (void)didUpdateTeamInfoMode:(NIMTeamUpdateInfoMode)mode;
- (void)teamExamineed:(NIMTeamUpdateInfoMode)mode;

//更新群消息接受状态
//: - (void)didUpdateNotifiyState:(NIMTeamNotifyState)state;
- (void)withView:(NIMTeamNotifyState)state;

//转移群组
//: - (void)didOntransferToUser:(NSString *)userId leave:(BOOL)leave;
- (void)duringRecord:(NSString *)userId drape:(BOOL)leave;

//退出群组
//: - (void)didQuitTeam;
- (void)inputDown;

//解散群组
//: - (void)didDismissTeam;
- (void)nameerText;

//: - (void)reloadData;
- (void)message;


//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END