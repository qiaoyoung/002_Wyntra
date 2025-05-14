// __DEBUG__
// __CLOSE_PRINT__
//
//  IndependentSource.h
// On
//
//  Created by Netease on 2019/6/17.
//  Copyright © 2019 NetEase. All rights reserved.
//
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import "ZZZTeamCardMemberItem.h"
#import "WithQuantityerval.h"
//: #import "ZZZMembersFetchOption.h"
#import "TingEnterEnable.h"

// __M_A_C_R_O__

//: typedef void(^NIMTeamListDataBlock)(NSError * _Nullable error, NSString * _Nullable msg);
typedef void(^NIMTeamListDataBlock)(NSError * _Nullable error, NSString * _Nullable msg);
//: typedef void(^NIMTeamMuteListDataBlock)(NSError * _Nullable error, NSMutableArray<ZZZTeamCardMemberItem *> * _Nullable members);
typedef void(^NIMTeamMuteListDataBlock)(NSError * _Nullable error, NSMutableArray<WithQuantityerval *> * _Nullable members);
//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN


//: @protocol NIMTeamOperation <NSObject>
@protocol LabelText <NSObject>

//加人
//: - (void)addUsers:(NSArray *)userIds
- (void)location:(NSArray *)userIds
            //: info:(NSDictionary *)info
            data:(NSDictionary *)info
      //: completion:(NIMTeamListDataBlock)completion;
      info:(NIMTeamListDataBlock)completion;

//踢人
//: - (void)kickUsers:(NSArray *)userIds
- (void)language:(NSArray *)userIds
       //: completion:(NIMTeamListDataBlock)completion;
       down:(NIMTeamListDataBlock)completion;

//更新群公告
//: - (void)updateTeamAnnouncement:(NSString *)content
- (void)be:(NSString *)content
                    //: completion:(NIMTeamListDataBlock)completion;
                    path:(NIMTeamListDataBlock)completion;

//更新群头像
//: - (void)updateTeamAvatar:(NSString *)filePath
- (void)sessionTeamRestoreTime:(NSString *)filePath
              //: completion:(NIMTeamListDataBlock)completion;
              natalDay:(NIMTeamListDataBlock)completion;

//更新群名称
//: - (void)updateTeamName:(NSString *)name
- (void)kindAdd:(NSString *)name
            //: completion:(NIMTeamListDataBlock)completion;
            completion:(NIMTeamListDataBlock)completion;

//更新群昵称
//: - (void)updateTeamNick:(NSString *)nick
- (void)lipReadContent:(NSString *)nick
            //: completion:(NIMTeamListDataBlock)completion;
            center:(NIMTeamListDataBlock)completion;

//更新群简介
//: - (void)updateTeamIntro:(NSString *)intro
- (void)recordMessage:(NSString *)intro
             //: completion:(NIMTeamListDataBlock)completion;
             date:(NIMTeamListDataBlock)completion;

//更新群禁言
//: - (void)updateTeamMute:(BOOL)mute
- (void)addHide:(BOOL)mute
            //: completion:(NIMTeamListDataBlock)completion;
            path:(NIMTeamListDataBlock)completion;

//权限更改
//: - (void)updateTeamJoinMode:(NIMTeamJoinMode)mode
- (void)itemCompletion:(NIMTeamJoinMode)mode
                //: completion:(NIMTeamListDataBlock)completion;
                scaleCompletion:(NIMTeamListDataBlock)completion;

//邀请模式更改
//: - (void)updateTeamInviteMode:(NIMTeamInviteMode)mode
- (void)locationOrigin:(NIMTeamInviteMode)mode
                  //: completion:(NIMTeamListDataBlock)completion;
                  misnomer:(NIMTeamListDataBlock)completion;

//群信息修改权限更改
//: - (void)updateTeamInfoMode:(NIMTeamUpdateInfoMode)mode
- (void)inputOff:(NIMTeamUpdateInfoMode)mode
                //: completion:(NIMTeamListDataBlock)completion;
                child:(NIMTeamListDataBlock)completion;

//群通知状态修改
//: - (void)updateTeamNotifyState:(NIMTeamNotifyState)state
- (void)system:(NIMTeamNotifyState)state
                   //: completion:(NIMTeamListDataBlock)completion;
                   aggregation:(NIMTeamListDataBlock)completion;

//被邀请模式更改
//: - (void)updateTeamBeInviteMode:(NIMTeamBeInviteMode)mode
- (void)index:(NIMTeamBeInviteMode)mode
                    //: completion:(NIMTeamListDataBlock)completion;
                    isHigh:(NIMTeamListDataBlock)completion;

//增加管理员
//: - (void)addManagers:(NSArray *)userIds
- (void)cell:(NSArray *)userIds
         //: completion:(NIMTeamListDataBlock)completion;
         bottom:(NIMTeamListDataBlock)completion;

//移除管理员
//: - (void)removeManagers:(NSArray *)userIds
- (void)calendarCompletion:(NSArray *)userIds
            //: completion:(NIMTeamListDataBlock)completion;
            info:(NIMTeamListDataBlock)completion;

//群主转移
//: - (void)transferOwnerWithUserId:(NSString *)newOwnerId
- (void)title:(NSString *)newOwnerId
                           //: leave:(BOOL)leave
                           stateTip:(BOOL)leave
                      //: completion:(NIMTeamListDataBlock)completion;
                      camera:(NIMTeamListDataBlock)completion;

//修改用户昵称
//: - (void)updateUserNick:(NSString *)userId
- (void)sound:(NSString *)userId
                  //: nick:(NSString *)nick
                  image:(NSString *)nick
            //: completion:(NIMTeamListDataBlock)completion;
            my:(NIMTeamListDataBlock)completion;

//修改用户禁言状态
//: - (void)updateUserMuteState:(NSString *)userId
- (void)book:(NSString *)userId
                       //: mute:(BOOL)mute
                       wearerCompletion:(BOOL)mute
                 //: completion:(NIMTeamListDataBlock)completion;
                 viewDown:(NIMTeamListDataBlock)completion;

//查询群成员
//: - (void)fetchTeamMembersWithOption:(ZZZMembersFetchOption * _Nullable )option
- (void)addCompletion:(TingEnterEnable * _Nullable )option
                        //: completion:(NIMTeamListDataBlock)completion;
                        user:(NIMTeamListDataBlock)completion;

//查询群禁言列表
//: - (void)fetchTeamMutedMembersCompletion:(NIMTeamMuteListDataBlock)completion;
- (void)changeShow:(NIMTeamMuteListDataBlock)completion;

//退群
//: - (void)quitTeamCompletion:(NIMTeamListDataBlock)completion;
- (void)accumulation:(NIMTeamListDataBlock)completion;

//解散群
//: - (void)dismissTeamCompletion:(NIMTeamListDataBlock)completion;
- (void)infoPop:(NIMTeamListDataBlock)completion;

//: @end
@end



//: @protocol ZZZTeamMemberListDataSource <NIMTeamOperation>
@protocol IndependentSource <LabelText>

//: - (NIMTeam *)team;
- (NIMTeam *)should;

- (NIMSession *)session;

//: - (NSInteger)memberNumber;
- (NSInteger)majority;

//: - (NSMutableArray <ZZZTeamCardMemberItem *> *)members;
- (NSMutableArray <WithQuantityerval *> *)voice;

//: - (ZZZTeamCardMemberItem *)myCard;
- (WithQuantityerval *)image;

//: - (ZZZTeamCardMemberItem *)memberWithUserId:(NSString *)userId;
- (WithQuantityerval *)showMode:(NSString *)userId;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END
