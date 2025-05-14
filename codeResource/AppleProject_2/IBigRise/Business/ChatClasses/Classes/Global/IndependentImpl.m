
#import <Foundation/Foundation.h>

NSString *StringFromRegulatoryData(Byte *data);


//: invalid type
Byte kStr_saltText[] = {27, 12, 39, 13, 39, 148, 28, 78, 102, 170, 222, 156, 118, 144, 149, 157, 136, 147, 144, 139, 71, 155, 160, 151, 140, 121};


//: invalid mode
Byte kStr_physicReminderTitle[] = {52, 12, 69, 7, 164, 216, 132, 174, 179, 187, 166, 177, 174, 169, 101, 178, 180, 169, 170, 216};


//: %@: [自定义消息]
Byte kStr_goryPayerWarningContent[] = {17, 21, 98, 9, 241, 181, 3, 138, 60, 135, 162, 156, 130, 189, 74, 233, 12, 71, 16, 252, 70, 27, 235, 72, 24, 234, 72, 227, 17, 191, 23};


//: head_default
Byte kStr_muscleMarkName[] = {9, 12, 45, 8, 78, 67, 101, 191, 149, 146, 142, 145, 140, 145, 146, 147, 142, 162, 153, 161, 171};


//: 未知消息
Byte kStr_lobeValue[] = {4, 12, 46, 6, 153, 227, 20, 202, 216, 21, 205, 211, 20, 228, 182, 20, 175, 221, 157};

// __DEBUG__
// __CLOSE_PRINT__
//
//  IndependentImpl.m
// On
//
//  Created by chris on 2016/10/31.
//  Copyright © 2016年 NetEase. All rights reserved.
//
//: #pragma mark - kit data request
#pragma mark - kit data request

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "AppleProjectKit.h"
#import "On.h"
//: #import "ZZZKitDataProviderImpl.h"
#import "IndependentImpl.h"
//: #import "ZZZKitInfoFetchOption.h"
#import "CertainOption.h"
//: #import "UIImage+AppleProjectKit.h"
#import "UIImage+On.h"
//: #import "NSString+AppleProjectKit.h"
#import "NSString+On.h"

//: @interface NIMKitDataRequest : NSObject
@interface LabelSureContainer : NSObject

//: @property (nonatomic,strong) NSMutableSet *failedUserIds;
@property (nonatomic,strong) NSMutableSet *failedUserIds;

//: @property (nonatomic,assign) NSInteger maxMergeCount; 
@property (nonatomic,assign) NSInteger maxMergeCount; //最大合并数

//: - (void)requestUserIds:(NSArray *)userIds;
- (void)halogenIds:(NSArray *)userIds;

//: @end
@end


//: @implementation NIMKitDataRequest{
@implementation LabelSureContainer{
    //: NSMutableArray *_requstUserIdArray; 
    NSMutableArray *_requstUserIdArray; //待请求池
    //: BOOL _isRequesting;
    BOOL _isRequesting;
}

//: - (instancetype)init{
- (instancetype)init{
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: _failedUserIds = [[NSMutableSet alloc] init];
        _failedUserIds = [[NSMutableSet alloc] init];
        //: _requstUserIdArray = [[NSMutableArray alloc] init];
        _requstUserIdArray = [[NSMutableArray alloc] init];
    }
    //: return self;
    return self;
}


//: - (void)requestUserIds:(NSArray *)userIds
- (void)halogenIds:(NSArray *)userIds
{
    //: for (NSString *userId in userIds)
    for (NSString *userId in userIds)
    {
        //: if (![_requstUserIdArray containsObject:userId] && ![_failedUserIds containsObject:userId])
        if (![_requstUserIdArray containsObject:userId] && ![_failedUserIds containsObject:userId])
        {
            //: [_requstUserIdArray addObject:userId];
            [_requstUserIdArray addObject:userId];
        }
    }
    //: [self request];
    [self item];
}


//: - (void)request
- (void)item
{
    //: static NSUInteger MaxBatchReuqestCount = 10;
    static NSUInteger MaxBatchReuqestCount = 10;
    //: if (_isRequesting || [_requstUserIdArray count] == 0) {
    if (_isRequesting || [_requstUserIdArray count] == 0) {
        //: return;
        return;
    }
    //: _isRequesting = YES;
    _isRequesting = YES;
    //: NSArray *userIds = [_requstUserIdArray count] > MaxBatchReuqestCount ?
    NSArray *userIds = [_requstUserIdArray count] > MaxBatchReuqestCount ?
    //: [_requstUserIdArray subarrayWithRange:NSMakeRange(0, MaxBatchReuqestCount)] : [_requstUserIdArray copy];
    [_requstUserIdArray subarrayWithRange:NSMakeRange(0, MaxBatchReuqestCount)] : [_requstUserIdArray copy];

    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [[NIMSDK sharedSDK].userManager fetchUserInfos:userIds
    [[NIMSDK sharedSDK].userManager fetchUserInfos:userIds
                                        //: completion:^(NSArray *users, NSError *error) {
                                        completion:^(NSArray *users, NSError *error) {
                                            //: [weakSelf afterReuquest:userIds];
                                            [weakSelf statuteTitleReuquest:userIds];
                                            //: if (!error && users.count)
                                            if (!error && users.count)
                                            {
                                                //: [[AppleProjectKit sharedKit] notfiyUserInfoChanged:userIds];
                                                [[On along] concealed:userIds];
                                            }
                                            //: else if ([weakSelf shouldAddToFailedUsers:error])
                                            else if ([weakSelf oldBar:error])
                                            {
                                                //: [weakSelf.failedUserIds addObjectsFromArray:userIds];
                                                [weakSelf.failedUserIds addObjectsFromArray:userIds];
                                            }
                                        //: }];
                                        }];
}

//: - (void)afterReuquest:(NSArray *)userIds
- (void)statuteTitleReuquest:(NSArray *)userIds
{
    //: _isRequesting = NO;
    _isRequesting = NO;
    //: [_requstUserIdArray removeObjectsInArray:userIds];
    [_requstUserIdArray removeObjectsInArray:userIds];
    //: [self request];
    [self item];

}

//: - (BOOL)shouldAddToFailedUsers:(NSError *)error
- (BOOL)oldBar:(NSError *)error
{
    //没有错误这种异常情况走到这个路径里也不对，不再请求
    //: return error.code != NIMRemoteErrorCodeTimeoutError || !error;
    return error.code != NIMRemoteErrorCodeTimeoutError || !error;
}

//: @end
@end

//: #pragma mark - data provider impl
#pragma mark - data provider impl

//: @interface ZZZKitDataProviderImpl()<NIMUserManagerDelegate,
@interface IndependentImpl()<NIMUserManagerDelegate,
                                    //: NIMTeamManagerDelegate,
                                    NIMTeamManagerDelegate,
                                    //: NIMLoginManagerDelegate,
                                    NIMLoginManagerDelegate,
                                    //: NIMTeamManagerDelegate>
                                    NIMTeamManagerDelegate>

//: @property (nonatomic,strong) UIImage *defaultUserAvatar;
@property (nonatomic,strong) UIImage *defaultUserAvatar;

//: @property (nonatomic,strong) UIImage *defaultTeamAvatar;
@property (nonatomic,strong) UIImage *defaultTeamAvatar;

//: @property (nonatomic,strong) NIMKitDataRequest *request;
@property (nonatomic,strong) LabelSureContainer *request;

//: @end
@end


//: @implementation ZZZKitDataProviderImpl
@implementation IndependentImpl

//: - (instancetype)init{
- (instancetype)init{
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: _request = [[NIMKitDataRequest alloc] init];
        _request = [[LabelSureContainer alloc] init];
        //: _request.maxMergeCount = 20;
        _request.maxMergeCount = 20;
        //: [[NIMSDK sharedSDK].userManager addDelegate:self];
        [[NIMSDK sharedSDK].userManager addDelegate:self];
        //: [[NIMSDK sharedSDK].teamManager addDelegate:self];
        [[NIMSDK sharedSDK].teamManager addDelegate:self];
        //: [[NIMSDK sharedSDK].loginManager addDelegate:self];
        [[NIMSDK sharedSDK].loginManager addDelegate:self];
        //: [[NIMSDK sharedSDK].superTeamManager addDelegate:self];
        [[NIMSDK sharedSDK].superTeamManager addDelegate:self];
    }
    //: return self;
    return self;
}

//: - (void)dealloc
- (void)dealloc
{
    //: [[NIMSDK sharedSDK].userManager removeDelegate:self];
    [[NIMSDK sharedSDK].userManager removeDelegate:self];
    //: [[NIMSDK sharedSDK].teamManager removeDelegate:self];
    [[NIMSDK sharedSDK].teamManager removeDelegate:self];
    //: [[NIMSDK sharedSDK].loginManager removeDelegate:self];
    [[NIMSDK sharedSDK].loginManager removeDelegate:self];
}


//: #pragma mark - public api
#pragma mark - public api
//: - (ZZZKitInfo *)infoByUser:(NSString *)userId
- (MagnitudeCommentInfo *)toKey:(NSString *)userId
                    //: option:(ZZZKitInfoFetchOption *)option
                    image:(CertainOption *)option
{
    //: NIMSession *session = option.message.session?:option.session;
    NIMSession *session = option.message.session?:option.session;
    //: ZZZKitInfo *info = [self infoByUser:userId session:session option:option];
    MagnitudeCommentInfo *info = [self item:userId size:session tool:option];
    //: return info;
    return info;
}

//: - (ZZZKitInfo *)infoByTeam:(NSString *)teamId
- (MagnitudeCommentInfo *)center:(NSString *)teamId
                    //: option:(ZZZKitInfoFetchOption *)option
                    touch:(CertainOption *)option
{
    //: NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:teamId];
    NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:teamId];
    //: ZZZKitInfo *info = [[ZZZKitInfo alloc] init];
    MagnitudeCommentInfo *info = [[MagnitudeCommentInfo alloc] init];
    //: info.showName = team.teamName;
    info.showName = team.teamName;
    //: info.infoId = teamId;
    info.infoId = teamId;
    //: info.avatarImage = self.defaultTeamAvatar;
    info.avatarImage = self.defaultTeamAvatar;
    //: info.avatarUrlString = team.thumbAvatarUrl;
    info.avatarUrlString = team.thumbAvatarUrl;
    //: return info;
    return info;
}

//: - (ZZZKitInfo *)infoBySuperTeam:(NSString *)teamId
- (MagnitudeCommentInfo *)image:(NSString *)teamId
                         //: option:(ZZZKitInfoFetchOption *)option
                         status:(CertainOption *)option
{
    //: NIMTeam *team = [[NIMSDK sharedSDK].superTeamManager teamById:teamId];
    NIMTeam *team = [[NIMSDK sharedSDK].superTeamManager teamById:teamId];
    //: ZZZKitInfo *info = [[ZZZKitInfo alloc] init];
    MagnitudeCommentInfo *info = [[MagnitudeCommentInfo alloc] init];
    //: info.showName = team.teamName;
    info.showName = team.teamName;
    //: info.infoId = teamId;
    info.infoId = teamId;
    //: info.avatarImage = self.defaultTeamAvatar;
    info.avatarImage = self.defaultTeamAvatar;
    //: info.avatarUrlString = team.thumbAvatarUrl;
    info.avatarUrlString = team.thumbAvatarUrl;
    //: return info;
    return info;
}

//: - (NSString *)replyedContentWithMessage:(NIMMessage *)replyedMessage
- (NSString *)modes:(NIMMessage *)replyedMessage
{
    //: NIMMessageType messageType = replyedMessage.messageType;
    NIMMessageType messageType = replyedMessage.messageType;
    //: NSString *content = @"未知消息".nim_localized;
    NSString *content = StringFromRegulatoryData(kStr_lobeValue).start;
    //: ZZZKitInfoFetchOption *option = [[ZZZKitInfoFetchOption alloc] init];
    CertainOption *option = [[CertainOption alloc] init];
    //: option.message = replyedMessage;
    option.message = replyedMessage;
    //: ZZZKitInfo *info = [[AppleProjectKit sharedKit] infoByUser:replyedMessage.from option:option];
    MagnitudeCommentInfo *info = [[On along] toKey:replyedMessage.from image:option];
    //: NSString *from = info.showName;
    NSString *from = info.showName;
    //: switch (messageType) {
    switch (messageType) {
        //: case NIMMessageTypeText:
        case NIMMessageTypeText:
            //: content = [NSString stringWithFormat:@"%@: %@".nim_localized, from, replyedMessage.text];
            content = [NSString stringWithFormat:@"%@: %@".start, from, replyedMessage.text];
            //: break;
            break;
        //: case NIMMessageTypeImage:
        case NIMMessageTypeImage:
            //: content = [NSString stringWithFormat:@"%@: [图片]".nim_localized, from];
            content = [NSString stringWithFormat:@"%@: [图片]".start, from];
            //: break;
            break;
        //: case NIMMessageTypeVideo:
        case NIMMessageTypeVideo:
            //: content = [NSString stringWithFormat:@"%@: [视频]".nim_localized, from];
            content = [NSString stringWithFormat:@"%@: [视频]".start, from];
            //: break;
            break;
        //: case NIMMessageTypeFile:
        case NIMMessageTypeFile:
            //: content = [NSString stringWithFormat:@"%@: [文件]".nim_localized, from];
            content = [NSString stringWithFormat:@"%@: [文件]".start, from];
            //: break;
            break;
        //: case NIMMessageTypeLocation:
        case NIMMessageTypeLocation:
            //: content = [NSString stringWithFormat:@"%@: [位置]".nim_localized, from];
            content = [NSString stringWithFormat:@"%@: [位置]".start, from];
            //: break;
            break;
        //: case NIMMessageTypeNotification:
        case NIMMessageTypeNotification:
            //: content = [NSString stringWithFormat:@"%@: [通知]".nim_localized, from];
            content = [NSString stringWithFormat:@"%@: [通知]".start, from];
            //: break;
            break;
        //: case NIMMessageTypeTip:
        case NIMMessageTypeTip:
            //: content = [NSString stringWithFormat:@"%@: [提示]".nim_localized, from];
            content = [NSString stringWithFormat:@"%@: [提示]".start, from];
            //: break;
            break;
        //: case NIMMessageTypeAudio:
        case NIMMessageTypeAudio:
            //: content = [NSString stringWithFormat:@"%@: [语音]".nim_localized, from];
            content = [NSString stringWithFormat:@"%@: [语音]".start, from];
            //: break;
            break;
        //: case NIMMessageTypeCustom:
        case NIMMessageTypeCustom:
            //: content = [NSString stringWithFormat:@"%@: [自定义消息]".nim_localized, from];
            content = [NSString stringWithFormat:StringFromRegulatoryData(kStr_goryPayerWarningContent).start, from];
            //: break;
            break;
        //: default:
        default:
            //: break;
            break;
    }

    //: if (content.length > 0)
    if (content.length > 0)
    {
        //: content = [NSString stringWithFormat:@"“%@”".nim_localized, content];
        content = [NSString stringWithFormat:@"“%@”".start, content];
    }
    //: return content;
    return content;
}

//: #pragma mark - 用户信息拼装
#pragma mark - 用户信息拼装
//会话中用户信息
//: - (ZZZKitInfo *)infoByUser:(NSString *)userId
- (MagnitudeCommentInfo *)item:(NSString *)userId
                   //: session:(NIMSession *)session
                   size:(NIMSession *)session
                    //: option:(ZZZKitInfoFetchOption *)option
                    tool:(CertainOption *)option
{
    //: NIMSessionType sessionType = session.sessionType;
    NIMSessionType sessionType = session.sessionType;
    //: ZZZKitInfo *info;
    MagnitudeCommentInfo *info;

    //: switch (sessionType) {
    switch (sessionType) {
        //: case NIMSessionTypeP2P:
        case NIMSessionTypeP2P:
        {
            //: info = [self userInfoInP2P:userId option:option];
            info = [self backInput:userId regular:option];
        }
            //: break;
            break;
        //: case NIMSessionTypeTeam:
        case NIMSessionTypeTeam:
        {
            //: info = [self userInfo:userId inTeam:session.sessionId option:option];
            info = [self name:userId barrelhouse:session.sessionId stop:option];
        }
            //: break;
            break;
        //: case NIMSessionTypeChatroom:
        case NIMSessionTypeChatroom:
        {
            //: info = [self userInfo:userId inChatroom:session.sessionId option:option];
            info = [self view:userId account:session.sessionId infoIndividualChatroomInNakedOption:option];
        }
            //: break;
            break;
        //: case NIMSessionTypeSuperTeam:
        case NIMSessionTypeSuperTeam:
        {
            //: info = [self userInfo:userId inSuperTeam:session.sessionId option:option];
            info = [self inward:userId tip:session.sessionId user:option];
            //: break;
            break;
        }
        //: default:
        default:
            //: NSAssert(0, @"invalid type");
            NSAssert(0, StringFromRegulatoryData(kStr_saltText));
            //: break;
            break;
    }

    //: if (!info)
    if (!info)
    {
        //: if (!userId.length)
        if (!userId.length)
        {
            //: NSLog(@"warning: fetch user failed because userid is empty");
        }
        //: else
        else
        {
            //: [self.request requestUserIds:@[userId]];
            [self.request halogenIds:@[userId]];
        }

        //: info = [[ZZZKitInfo alloc] init];
        info = [[MagnitudeCommentInfo alloc] init];
        //: info.infoId = userId;
        info.infoId = userId;
        //: info.showName = userId; 
        info.showName = userId; //默认值
        //: info.avatarImage = self.defaultUserAvatar;
        info.avatarImage = self.defaultUserAvatar;
    }
    //: return info;
    return info;
}



//: #pragma mark - P2P 用户信息
#pragma mark - P2P 用户信息
//: - (ZZZKitInfo *)userInfoInP2P:(NSString *)userId
- (MagnitudeCommentInfo *)backInput:(NSString *)userId
                       //: option:(ZZZKitInfoFetchOption *)option
                       regular:(CertainOption *)option
{
    //: NIMUser *user = [[NIMSDK sharedSDK].userManager userInfo:userId];
    NIMUser *user = [[NIMSDK sharedSDK].userManager userInfo:userId];
    //: NIMUserInfo *userInfo = user.userInfo;
    NIMUserInfo *userInfo = user.userInfo;
    //: ZZZKitInfo *info;
    MagnitudeCommentInfo *info;
    //: if (userInfo)
    if (userInfo)
    {
        //: info = [[ZZZKitInfo alloc] init];
        info = [[MagnitudeCommentInfo alloc] init];
        //: info.infoId = userId;
        info.infoId = userId;
        //: NSString *name = [self nicknameWithUser:user
        NSString *name = [self step:user
                                           //: nick:nil
                                           reply:nil
                                         //: option:option];
                                         undersurfaceTitle:option];
        //: info.showName = name?:@"";
        info.showName = name?:@"";
        //: info.avatarUrlString = userInfo.thumbAvatarUrl;
        info.avatarUrlString = userInfo.thumbAvatarUrl;
        //: info.avatarImage = self.defaultUserAvatar;
        info.avatarImage = self.defaultUserAvatar;
    }
    //: return info;
    return info;
}


//: #pragma mark - 群组用户信息
#pragma mark - 群组用户信息
//: - (ZZZKitInfo *)userInfo:(NSString *)userId
- (MagnitudeCommentInfo *)name:(NSString *)userId
                  //: inTeam:(NSString *)teamId
                  barrelhouse:(NSString *)teamId
                  //: option:(ZZZKitInfoFetchOption *)option
                  stop:(CertainOption *)option
{
    //: NIMUser *user = [[NIMSDK sharedSDK].userManager userInfo:userId];
    NIMUser *user = [[NIMSDK sharedSDK].userManager userInfo:userId];
    //: NIMUserInfo *userInfo = user.userInfo;
    NIMUserInfo *userInfo = user.userInfo;
    //: NIMTeamMember *member = [[NIMSDK sharedSDK].teamManager teamMember:userId
    NIMTeamMember *member = [[NIMSDK sharedSDK].teamManager teamMember:userId
                                                                 //: inTeam:teamId];
                                                                 inTeam:teamId];

    //: ZZZKitInfo *info;
    MagnitudeCommentInfo *info;

    //: if (userInfo || member)
    if (userInfo || member)
    {
        //: info = [[ZZZKitInfo alloc] init];
        info = [[MagnitudeCommentInfo alloc] init];
        //: info.infoId = userId;
        info.infoId = userId;

        //: NSString *name = [self nicknameWithUser:user
        NSString *name = [self step:user
                                           //: nick:member.nickname
                                           reply:member.nickname
                                         //: option:option];
                                         undersurfaceTitle:option];
        //: info.showName = name?:@"";
        info.showName = name?:@"";
        //: info.avatarUrlString = userInfo.thumbAvatarUrl;
        info.avatarUrlString = userInfo.thumbAvatarUrl;
        //: info.avatarImage = self.defaultUserAvatar;
        info.avatarImage = self.defaultUserAvatar;
    }
    //: return info;
    return info;
}

//: #pragma mark - 超大群用户信息
#pragma mark - 超大群用户信息
//: - (ZZZKitInfo *)userInfo:(NSString *)userId
- (MagnitudeCommentInfo *)inward:(NSString *)userId
             //: inSuperTeam:(NSString *)teamId
             tip:(NSString *)teamId
                  //: option:(ZZZKitInfoFetchOption *)option
                  user:(CertainOption *)option
{
    //: NIMUser *user = [[NIMSDK sharedSDK].userManager userInfo:userId];
    NIMUser *user = [[NIMSDK sharedSDK].userManager userInfo:userId];
    //: NIMUserInfo *userInfo = user.userInfo;
    NIMUserInfo *userInfo = user.userInfo;
    //: NIMTeamMember *member = [[NIMSDK sharedSDK].superTeamManager teamMember:userId
    NIMTeamMember *member = [[NIMSDK sharedSDK].superTeamManager teamMember:userId
                                                                      //: inTeam:teamId];
                                                                      inTeam:teamId];

    //: ZZZKitInfo *info;
    MagnitudeCommentInfo *info;

    //: if (userInfo || member)
    if (userInfo || member)
    {
        //: info = [[ZZZKitInfo alloc] init];
        info = [[MagnitudeCommentInfo alloc] init];
        //: info.infoId = userId;
        info.infoId = userId;

        //: NSString *name = [self nicknameWithUser:user
        NSString *name = [self step:user
                                           //: nick:member.nickname
                                           reply:member.nickname
                                         //: option:option];
                                         undersurfaceTitle:option];
        //: info.showName = name?:@"";
        info.showName = name?:@"";
        //: info.avatarUrlString = userInfo.thumbAvatarUrl;
        info.avatarUrlString = userInfo.thumbAvatarUrl;
        //: info.avatarImage = self.defaultUserAvatar;
        info.avatarImage = self.defaultUserAvatar;
    }
    //: return info;
    return info;
}


//: #pragma mark - 聊天室用户信息
#pragma mark - 聊天室用户信息
//: - (ZZZKitInfo *)userInfo:(NSString *)userId
- (MagnitudeCommentInfo *)view:(NSString *)userId
              //: inChatroom:(NSString *)roomId
              account:(NSString *)roomId
                  //: option:(ZZZKitInfoFetchOption *)option
                  infoIndividualChatroomInNakedOption:(CertainOption *)option
{
    //: ZZZKitInfo *info = [[ZZZKitInfo alloc] init];
    MagnitudeCommentInfo *info = [[MagnitudeCommentInfo alloc] init];
    //: info.infoId = userId;
    info.infoId = userId;
    //: NIMMessageChatroomExtension *ext = [option.message.messageExt isKindOfClass:[NIMMessageChatroomExtension class]] ?
    NIMMessageChatroomExtension *ext = [option.message.messageExt isKindOfClass:[NIMMessageChatroomExtension class]] ?
    //: (NIMMessageChatroomExtension *)option.message.messageExt : nil;
    (NIMMessageChatroomExtension *)option.message.messageExt : nil;
    //: if (ext)
    if (ext)
    {
        //: info.showName = ext.roomNickname;
        info.showName = ext.roomNickname;
        //: info.avatarUrlString = ext.roomAvatar;
        info.avatarUrlString = ext.roomAvatar;
    }
    //: else if ([userId isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount])
    else if ([userId isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount])
    {
        //: NIMSDKAuthMode mode = [[NIMSDK sharedSDK].chatroomManager chatroomAuthMode:roomId];
        NIMSDKAuthMode mode = [[NIMSDK sharedSDK].chatroomManager chatroomAuthMode:roomId];

        //: switch (mode) {
        switch (mode) {
            //: case NIMSDKAuthModeChatroom:
            case NIMSDKAuthModeChatroom:
            {
//                NSAssert([On sharedKit].independentModeExtraInfo, @"in mode NIMSDKAuthModeChatroom , must has independentModeExtraInfo");
                //: info.showName = [AppleProjectKit sharedKit].independentModeExtraInfo.myChatroomNickname;
                info.showName = [On along].independentModeExtraInfo.myChatroomNickname;
                //: info.avatarUrlString = [AppleProjectKit sharedKit].independentModeExtraInfo.myChatroomAvatar;
                info.avatarUrlString = [On along].independentModeExtraInfo.myChatroomAvatar;
            }
                //: break;
                break;
            //: case NIMSDKAuthModeIM:
            case NIMSDKAuthModeIM:
            {
                //: NIMUser *user = [[NIMSDK sharedSDK].userManager userInfo:userId];
                NIMUser *user = [[NIMSDK sharedSDK].userManager userInfo:userId];
                //: info.showName = user.userInfo.nickName;
                info.showName = user.userInfo.nickName;
                //: info.avatarUrlString = user.userInfo.thumbAvatarUrl;
                info.avatarUrlString = user.userInfo.thumbAvatarUrl;
            }
                //: break;
                break;
            //: default:
            default:
            {
                //: NSAssert(0, @"invalid mode");
                NSAssert(0, StringFromRegulatoryData(kStr_physicReminderTitle));
            }
                //: break;
                break;
        }
    }

    //: info.avatarImage = self.defaultUserAvatar;
    info.avatarImage = self.defaultUserAvatar;
    //: return info;
    return info;
}

//昵称优先级
//: - (NSString *)nicknameWithUser:(NIMUser *)user
- (NSString *)step:(NIMUser *)user
                          //: nick:(NSString *)nick
                          reply:(NSString *)nick
                        //: option:(ZZZKitInfoFetchOption *)option
                        undersurfaceTitle:(CertainOption *)option
{
    //: NSString *name = nil;
    NSString *name = nil;
    //: do{
    do{
        //: if (!option.forbidaAlias && [user.alias length])
        if (!option.forbidaAlias && [user.alias length])
        {
            //: name = user.alias;
            name = user.alias;
            //: break;
            break;
        }
        //: if (nick && [nick length])
        if (nick && [nick length])
        {
            //: name = nick;
            name = nick;
            //: break;
            break;
        }

        //: if ([user.userInfo.nickName length])
        if ([user.userInfo.nickName length])
        {
            //: name = user.userInfo.nickName;
            name = user.userInfo.nickName;
            //: break;
            break;
        }
    //: }while (0);
    }while (0);
    //: return name;
    return name;
}

//: #pragma mark - avatar
#pragma mark - avatar
//: - (UIImage *)defaultTeamAvatar
- (UIImage *)defaultTeamAvatar
{
    //: if (!_defaultTeamAvatar)
    if (!_defaultTeamAvatar)
    {
        //: _defaultTeamAvatar = [UIImage imageNamed:@"head_default"];
        _defaultTeamAvatar = [UIImage imageNamed:StringFromRegulatoryData(kStr_muscleMarkName)];
    }
    //: return _defaultTeamAvatar;
    return _defaultTeamAvatar;
}

//: - (UIImage *)defaultUserAvatar
- (UIImage *)defaultUserAvatar
{
    //: if (!_defaultUserAvatar)
    if (!_defaultUserAvatar)
    {
        //: _defaultUserAvatar = [UIImage imageNamed:@"head_default"];
        _defaultUserAvatar = [UIImage imageNamed:StringFromRegulatoryData(kStr_muscleMarkName)];
    }
    //: return _defaultUserAvatar;
    return _defaultUserAvatar;
}




//将个人信息和群组信息变化通知给 On 。
//如果您的应用不托管个人信息给云信，则需要您自行在上层监听个人信息变动，并将变动通知给 NIMKit。

//: #pragma mark - NIMUserManagerDelegate
#pragma mark - NIMUserManagerDelegate

//: - (void)onFriendChanged:(NIMUser *)user
- (void)onFriendChanged:(NIMUser *)user
{
    //: [self notifyUser:user];
    [self touchUser:user];
}

//: - (void)onUserInfoChanged:(NIMUser *)user
- (void)onUserInfoChanged:(NIMUser *)user
{
    //: [self notifyUser:user];
    [self touchUser:user];
}

//: - (void)notifyUser:(NIMUser *)user
- (void)touchUser:(NIMUser *)user
{
    //: if (!user)
    if (!user)
    {
        //: NSLog(@"warning: notify user failed because user is empty");
    }
    //: else
    else
    {
        //: [[AppleProjectKit sharedKit] notfiyUserInfoChanged:@[user.userId]];
        [[On along] concealed:@[user.userId]];
    }

}

//: #pragma mark - NIMTeamManagerDelegate
#pragma mark - NIMTeamManagerDelegate
//: - (void)onTeamAdded:(NIMTeam *)team
- (void)onTeamAdded:(NIMTeam *)team
{
    //: [self notifyTeamInfo:team];
    [self comment:team];
}

//: - (void)onTeamUpdated:(NIMTeam *)team
- (void)onTeamUpdated:(NIMTeam *)team
{
    //: [self notifyTeamInfo:team];
    [self comment:team];
}

//: - (void)onTeamRemoved:(NIMTeam *)team
- (void)onTeamRemoved:(NIMTeam *)team
{
    //: [self notifyTeamInfo:team];
    [self comment:team];
}

//: - (void)onTeamMemberChanged:(NIMTeam *)team
- (void)onTeamMemberChanged:(NIMTeam *)team
{
    //: [self notifyTeamMember:team];
    [self withCell:team];
}

//: - (void)notifyTeamInfo:(NIMTeam *)team
- (void)comment:(NIMTeam *)team
{
    //: if (!team.teamId.length)
    if (!team.teamId.length)
    {
        //: NSLog(@"warning: notify teamid failed because teamid is empty");
    }
    //: else
    else
    {
        //: switch (team.type) {
        switch (team.type) {
            //: case NIMTeamTypeNormal:
            case NIMTeamTypeNormal:
            //: case NIMTeamTypeAdvanced:
            case NIMTeamTypeAdvanced:
                //: [[AppleProjectKit sharedKit] notifyTeamInfoChanged:team.teamId type:NIMKitTeamTypeNomal];
                [[On along] cellHigh:team.teamId labelClose:NIMKitTeamTypeNomal];
                //: break;
                break;
            //: case NIMTeamTypeSuper:
            case NIMTeamTypeSuper:
                //: [[AppleProjectKit sharedKit] notifyTeamInfoChanged:team.teamId type:NIMKitTeamTypeSuper];
                [[On along] cellHigh:team.teamId labelClose:NIMKitTeamTypeSuper];
                //: break;
                break;
            //: default:
            default:
                //: break;
                break;
        }
    }
}

//: - (void)notifyTeamMember:(NIMTeam *)team
- (void)withCell:(NIMTeam *)team
{
    //: if (!team.teamId.length)
    if (!team.teamId.length)
    {
        //: NSLog(@"warning: notify team member failed because teamid is empty");
    }
    //: else
    else
    {
        //: switch (team.type) {
        switch (team.type) {
            //: case NIMTeamTypeNormal:
            case NIMTeamTypeNormal:
            //: case NIMTeamTypeAdvanced:
            case NIMTeamTypeAdvanced:
                //: [[AppleProjectKit sharedKit] notifyTeamInfoChanged:team.teamId type:NIMKitTeamTypeNomal];
                [[On along] cellHigh:team.teamId labelClose:NIMKitTeamTypeNomal];
                //: break;
                break;
            //: case NIMTeamTypeSuper:
            case NIMTeamTypeSuper:
                //: [[AppleProjectKit sharedKit] notifyTeamInfoChanged:team.teamId type:NIMKitTeamTypeSuper];
                [[On along] cellHigh:team.teamId labelClose:NIMKitTeamTypeSuper];
                //: break;
                break;
            //: default:
            default:
                //: break;
                break;
        }
    }
}

//: #pragma mark - NIMLoginManagerDelegate
#pragma mark - NIMLoginManagerDelegate
//: - (void)onLogin:(NIMLoginStep)step
- (void)onLogin:(NIMLoginStep)step
{
    //: if (step == NIMLoginStepSyncOK) {
    if (step == NIMLoginStepSyncOK) {
        //: [[AppleProjectKit sharedKit] notifyTeamInfoChanged:nil type:NIMKitTeamTypeNomal];
        [[On along] cellHigh:nil labelClose:NIMKitTeamTypeNomal];
        //: [[AppleProjectKit sharedKit] notifyTeamMemebersChanged:nil type:NIMKitTeamTypeNomal];
        [[On along] distanceType:nil crop:NIMKitTeamTypeNomal];
    }
}



//: @end
@end

Byte * RegulatoryDataToCache(Byte *data) {
    int tartManner = data[0];
    int declareTitle = data[1];
    Byte paysheet = data[2];
    int prisonerSuccess = data[3];
    if (!tartManner) return data + prisonerSuccess;
    for (int i = prisonerSuccess; i < prisonerSuccess + declareTitle; i++) {
        int value = data[i] - paysheet;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[prisonerSuccess + declareTitle] = 0;
    return data + prisonerSuccess;
}

NSString *StringFromRegulatoryData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)RegulatoryDataToCache(data)];
}
