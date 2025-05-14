//
// AppleProjectKit.m
// AppleProjectKit
//
//  Created by amao on 8/14/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//

#import "AppleProjectKit.h"
#import "ZZZKitTimerHolder.h"
#import "ZZZKitNotificationFirer.h"
#import "ZZZKitDataProviderImpl.h"
#import "ZZZCellLayoutConfig.h"
#import "ZZZKitInfoFetchOption.h"
#import "NSBundle+AppleProjectKit.h"
#import "NSString+AppleProjectKit.h"
#import "ZZZChatUIManager.h"

extern NSString *const NIMKitUserInfoHasUpdatedNotification;
extern NSString *const NIMKitTeamInfoHasUpdatedNotification;


@interface AppleProjectKit(){
    NSRegularExpression *_urlRegex;
}
@property (nonatomic,strong)    ZZZKitNotificationFirer *firer;
@property (nonatomic,strong)    id<ZZZCellLayoutConfig> layoutConfig;
@end


@implementation AppleProjectKit
- (instancetype)init
{
    if (self = [super init]) {
        _firer = [[ZZZKitNotificationFirer alloc] init];
        _provider = [[ZZZKitDataProviderImpl alloc] init];   //默认使用 AppleProjectKit 的实现
        _layoutConfig = [[ZZZCellLayoutConfig alloc] init];
        [self preloadNIMKitBundleResource];
    }
    return self;
}

+ (instancetype)sharedKit
{
    static AppleProjectKit *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[AppleProjectKit alloc] init];
    });
    return instance;
}

- (void)registerLayoutConfig:(ZZZCellLayoutConfig *)layoutConfig
{
    if ([layoutConfig isKindOfClass:[ZZZCellLayoutConfig class]])
    {
        self.layoutConfig = layoutConfig;
    }
    else
    {
        NSAssert(0, @"class should be subclass of NIMLayoutConfig");
    }
}

- (NSBundle *)emoticonBundle {
    if (!_emoticonBundle) {
        _emoticonBundle = [NSBundle nim_defaultEmojiBundle];
    }
    return _emoticonBundle;
}

- (NSBundle *)languageBundle {
    if (!_languageBundle) {
        _languageBundle = [NSBundle nim_defaultLanguageBundle];
    }
    return _languageBundle;
}

- (id<ZZZChatUIManager>)chatUIManager
{
    return ZZZChatUIManager.sharedManager;
}

- (id<ZZZCellLayoutConfig>)layoutConfig
{
    return _layoutConfig;
}

- (ZZZKitConfig *)config
{
    //不要放在 AppleProjectKit 初始化里面，因为 UIConfig 初始化会使用 NIMKit, 防止死循环
    if (!_config)
    {
        _config = [[ZZZKitConfig alloc] init];
    }
    return _config;
}

- (void)notfiyUserInfoChanged:(NSArray *)userIds{
    if (!userIds.count) {
        return;
    }
    for (NSString *userId in userIds) {
        NIMSession *session = [NIMSession session:userId type:NIMSessionTypeP2P];
        NIMKitFirerInfo *info = [[NIMKitFirerInfo alloc] init];
        info.session = session;
        info.notificationName = NIMKitUserInfoHasUpdatedNotification;
        [self.firer addFireInfo:info];
    }
}

- (void)notifyTeamInfoChanged:(NSString *)teamId type:(NIMKitTeamType)type
{
    NIMKitFirerInfo *info = [[NIMKitFirerInfo alloc] init];
    if (teamId.length) {
        NIMSession *session = nil;
        if (type == NIMKitTeamTypeNomal) {
            session = [NIMSession session:teamId type:NIMSessionTypeTeam];
        } else if (type == NIMKitTeamTypeSuper) {
            session = [NIMSession session:teamId type:NIMSessionTypeSuperTeam];
        }
        info.session = session;
    }
    info.notificationName = NIMKitTeamInfoHasUpdatedNotification;
    [self.firer addFireInfo:info];
}

- (void)notifyTeamMemebersChanged:(NSString *)teamId type:(NIMKitTeamType)type
{
    NIMKitFirerInfo *info = [[NIMKitFirerInfo alloc] init];
    if (teamId.length) {
        NIMSession *session = nil;
        if (type == NIMKitTeamTypeNomal) {
            session = [NIMSession session:teamId type:NIMSessionTypeTeam];
        } else if (type == NIMKitTeamTypeSuper) {
            session = [NIMSession session:teamId type:NIMSessionTypeSuperTeam];
        }
        info.session = session;
    }
    extern NSString *NIMKitTeamMembersHasUpdatedNotification;
    info.notificationName = NIMKitTeamMembersHasUpdatedNotification;
    [self.firer addFireInfo:info];
}

- (ZZZKitInfo *)infoByUser:(NSString *)userId option:(ZZZKitInfoFetchOption *)option
{
    ZZZKitInfo *info = nil;
    if (self.provider && [self.provider respondsToSelector:@selector(infoByUser:option:)]) {
        info = [self.provider infoByUser:userId option:option];
    }
    return info;
}

- (ZZZKitInfo *)infoByTeam:(NSString *)teamId option:(ZZZKitInfoFetchOption *)option
{
    ZZZKitInfo *info = nil;
    if (self.provider && [self.provider respondsToSelector:@selector(infoByTeam:option:)]) {
        info = [self.provider infoByTeam:teamId option:option];
    }
    return info;

}

- (ZZZKitInfo *)infoBySuperTeam:(NSString *)teamId option:(ZZZKitInfoFetchOption *)option
{
    ZZZKitInfo *info = nil;
    if (self.provider && [self.provider respondsToSelector:@selector(infoBySuperTeam:option:)]) {
        info = [self.provider infoBySuperTeam:teamId option:option];
    }
    return info;
    
}

- (void)preloadNIMKitBundleResource {
    dispatch_async(dispatch_get_main_queue(), ^{
        [[ZZZInputEmoticonManager sharedManager] start];
    });
}

- (NSString *)replyedContentWithMessage:(NIMMessage *)message
{
    NSString *info = nil;

    if (!message)
    {
        return @"\"未知消息\"".nim_localized;
    }
    
    if (self.provider && [self.provider respondsToSelector:@selector(replyedContentWithMessage:)]) {
        info = [self.provider replyedContentWithMessage:message];
    }
    return info;
}

@end



