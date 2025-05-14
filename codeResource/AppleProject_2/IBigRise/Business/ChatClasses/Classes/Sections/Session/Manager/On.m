
#import <Foundation/Foundation.h>

NSString *StringFromBillData(Byte *data);


//: class should be subclass of NIMLayoutConfig
Byte kStr_appreciationText[] = {19, 43, 10, 43, 155, 143, 32, 223, 57, 182, 103, 105, 102, 110, 111, 67, 116, 117, 111, 121, 97, 76, 77, 73, 78, 32, 102, 111, 32, 115, 115, 97, 108, 99, 98, 117, 115, 32, 101, 98, 32, 100, 108, 117, 111, 104, 115, 32, 115, 115, 97, 108, 99, 61};


//: \"未知消息\"
Byte kStr_hostageRapidTitle[] = {94, 14, 8, 140, 240, 173, 255, 193, 34, 175, 129, 230, 136, 182, 230, 165, 159, 231, 170, 156, 230, 34, 167};

// __DEBUG__
// __CLOSE_PRINT__
//
// On.m
// On
//
//  Created by amao on 8/14/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "AppleProjectKit.h"
#import "On.h"
//: #import "ZZZKitTimerHolder.h"
#import "SumervalHolder.h"
//: #import "ZZZKitNotificationFirer.h"
#import "VersionFirer.h"
//: #import "ZZZKitDataProviderImpl.h"
#import "IndependentImpl.h"
//: #import "ZZZCellLayoutConfig.h"
#import "SumConfig.h"
//: #import "ZZZKitInfoFetchOption.h"
#import "CertainOption.h"
//: #import "NSBundle+AppleProjectKit.h"
#import "NSBundle+On.h"
//: #import "NSString+AppleProjectKit.h"
#import "NSString+On.h"
//: #import "ZZZChatUIManager.h"
#import "BackgroundKey.h"

//: extern NSString *const NIMKitUserInfoHasUpdatedNotification;
extern NSString *const kConst_outsideName;
//: extern NSString *const NIMKitTeamInfoHasUpdatedNotification;
extern NSString *const kConst_pathValue;


//: @interface AppleProjectKit(){
@interface On(){
    //: NSRegularExpression *_urlRegex;
    NSRegularExpression *_urlRegex;
}
//: @property (nonatomic,strong) ZZZKitNotificationFirer *firer;
@property (nonatomic,strong) VersionFirer *firer;
//: @property (nonatomic,strong) id<ZZZCellLayoutConfig> layoutConfig;
@property (nonatomic,strong) id<SumConfig> layoutConfig;
//: @end
@end


//: @implementation AppleProjectKit
@implementation On
//: - (instancetype)init
- (instancetype)init
{
    //: if (self = [super init]) {
    if (self = [super init]) {
        //: _firer = [[ZZZKitNotificationFirer alloc] init];
        _firer = [[VersionFirer alloc] init];
        //: _provider = [[ZZZKitDataProviderImpl alloc] init]; 
        _provider = [[IndependentImpl alloc] init]; //默认使用 On 的实现
        //: _layoutConfig = [[ZZZCellLayoutConfig alloc] init];
        _layoutConfig = [[SumConfig alloc] init];
        //: [self preloadNIMKitBundleResource];
        [self independent];
    }
    //: return self;
    return self;
}

//: + (instancetype)sharedKit
+ (instancetype)along
{
    //: static AppleProjectKit *instance = nil;
    static On *instance = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: instance = [[AppleProjectKit alloc] init];
        instance = [[On alloc] init];
    //: });
    });
    //: return instance;
    return instance;
}

//: - (void)registerLayoutConfig:(ZZZCellLayoutConfig *)layoutConfig
- (void)view:(SumConfig *)layoutConfig
{
    //: if ([layoutConfig isKindOfClass:[ZZZCellLayoutConfig class]])
    if ([layoutConfig isKindOfClass:[SumConfig class]])
    {
        //: self.layoutConfig = layoutConfig;
        self.layoutConfig = layoutConfig;
    }
    //: else
    else
    {
        //: NSAssert(0, @"class should be subclass of NIMLayoutConfig");
        NSAssert(0, StringFromBillData(kStr_appreciationText));
    }
}

//: - (NSBundle *)emoticonBundle {
- (NSBundle *)emoticonBundle {
    //: if (!_emoticonBundle) {
    if (!_emoticonBundle) {
        //: _emoticonBundle = [NSBundle nim_defaultEmojiBundle];
        _emoticonBundle = [NSBundle rubric];
    }
    //: return _emoticonBundle;
    return _emoticonBundle;
}

//: - (NSBundle *)languageBundle {
- (NSBundle *)languageBundle {
    //: if (!_languageBundle) {
    if (!_languageBundle) {
        //: _languageBundle = [NSBundle nim_defaultLanguageBundle];
        _languageBundle = [NSBundle text];
    }
    //: return _languageBundle;
    return _languageBundle;
}

//: - (id<ZZZChatUIManager>)chatUIManager
- (id<BackgroundKey>)chatUIManager
{
    //: return ZZZChatUIManager.sharedManager;
    return BackgroundKey.user;
}

//: - (id<ZZZCellLayoutConfig>)layoutConfig
- (id<SumConfig>)layoutConfig
{
    //: return _layoutConfig;
    return _layoutConfig;
}

//: - (ZZZKitConfig *)config
- (CaseConfig *)config
{
    //不要放在 On 初始化里面，因为 UIConfig 初始化会使用 NIMKit, 防止死循环
    //: if (!_config)
    if (!_config)
    {
        //: _config = [[ZZZKitConfig alloc] init];
        _config = [[CaseConfig alloc] init];
    }
    //: return _config;
    return _config;
}

//: - (void)notfiyUserInfoChanged:(NSArray *)userIds{
- (void)concealed:(NSArray *)userIds{
    //: if (!userIds.count) {
    if (!userIds.count) {
        //: return;
        return;
    }
    //: for (NSString *userId in userIds) {
    for (NSString *userId in userIds) {
        //: NIMSession *session = [NIMSession session:userId type:NIMSessionTypeP2P];
        NIMSession *session = [NIMSession session:userId type:NIMSessionTypeP2P];
        //: NIMKitFirerInfo *info = [[NIMKitFirerInfo alloc] init];
        HypothesisInfo *info = [[HypothesisInfo alloc] init];
        //: info.session = session;
        info.session = session;
        //: info.notificationName = NIMKitUserInfoHasUpdatedNotification;
        info.notificationName = kConst_outsideName;
        //: [self.firer addFireInfo:info];
        [self.firer pin:info];
    }
}

//: - (void)notifyTeamInfoChanged:(NSString *)teamId type:(NIMKitTeamType)type
- (void)cellHigh:(NSString *)teamId labelClose:(NIMKitTeamType)type
{
    //: NIMKitFirerInfo *info = [[NIMKitFirerInfo alloc] init];
    HypothesisInfo *info = [[HypothesisInfo alloc] init];
    //: if (teamId.length) {
    if (teamId.length) {
        //: NIMSession *session = nil;
        NIMSession *session = nil;
        //: if (type == NIMKitTeamTypeNomal) {
        if (type == NIMKitTeamTypeNomal) {
            //: session = [NIMSession session:teamId type:NIMSessionTypeTeam];
            session = [NIMSession session:teamId type:NIMSessionTypeTeam];
        //: } else if (type == NIMKitTeamTypeSuper) {
        } else if (type == NIMKitTeamTypeSuper) {
            //: session = [NIMSession session:teamId type:NIMSessionTypeSuperTeam];
            session = [NIMSession session:teamId type:NIMSessionTypeSuperTeam];
        }
        //: info.session = session;
        info.session = session;
    }
    //: info.notificationName = NIMKitTeamInfoHasUpdatedNotification;
    info.notificationName = kConst_pathValue;
    //: [self.firer addFireInfo:info];
    [self.firer pin:info];
}

//: - (void)notifyTeamMemebersChanged:(NSString *)teamId type:(NIMKitTeamType)type
- (void)distanceType:(NSString *)teamId crop:(NIMKitTeamType)type
{
    //: NIMKitFirerInfo *info = [[NIMKitFirerInfo alloc] init];
    HypothesisInfo *info = [[HypothesisInfo alloc] init];
    //: if (teamId.length) {
    if (teamId.length) {
        //: NIMSession *session = nil;
        NIMSession *session = nil;
        //: if (type == NIMKitTeamTypeNomal) {
        if (type == NIMKitTeamTypeNomal) {
            //: session = [NIMSession session:teamId type:NIMSessionTypeTeam];
            session = [NIMSession session:teamId type:NIMSessionTypeTeam];
        //: } else if (type == NIMKitTeamTypeSuper) {
        } else if (type == NIMKitTeamTypeSuper) {
            //: session = [NIMSession session:teamId type:NIMSessionTypeSuperTeam];
            session = [NIMSession session:teamId type:NIMSessionTypeSuperTeam];
        }
        //: info.session = session;
        info.session = session;
    }
    //: extern NSString *NIMKitTeamMembersHasUpdatedNotification;
    extern NSString *NIMKitTeamMembersHasUpdatedNotification;
    //: info.notificationName = NIMKitTeamMembersHasUpdatedNotification;
    info.notificationName = NIMKitTeamMembersHasUpdatedNotification;
    //: [self.firer addFireInfo:info];
    [self.firer pin:info];
}

//: - (ZZZKitInfo *)infoByUser:(NSString *)userId option:(ZZZKitInfoFetchOption *)option
- (MagnitudeCommentInfo *)toKey:(NSString *)userId image:(CertainOption *)option
{
    //: ZZZKitInfo *info = nil;
    MagnitudeCommentInfo *info = nil;
    //: if (self.provider && [self.provider respondsToSelector:@selector(infoByUser:option:)]) {
    if (self.provider && [self.provider respondsToSelector:@selector(toKey:image:)]) {
        //: info = [self.provider infoByUser:userId option:option];
        info = [self.provider toKey:userId image:option];
    }
    //: return info;
    return info;
}

//: - (ZZZKitInfo *)infoByTeam:(NSString *)teamId option:(ZZZKitInfoFetchOption *)option
- (MagnitudeCommentInfo *)center:(NSString *)teamId touch:(CertainOption *)option
{
    //: ZZZKitInfo *info = nil;
    MagnitudeCommentInfo *info = nil;
    //: if (self.provider && [self.provider respondsToSelector:@selector(infoByTeam:option:)]) {
    if (self.provider && [self.provider respondsToSelector:@selector(center:touch:)]) {
        //: info = [self.provider infoByTeam:teamId option:option];
        info = [self.provider center:teamId touch:option];
    }
    //: return info;
    return info;

}

//: - (ZZZKitInfo *)infoBySuperTeam:(NSString *)teamId option:(ZZZKitInfoFetchOption *)option
- (MagnitudeCommentInfo *)image:(NSString *)teamId status:(CertainOption *)option
{
    //: ZZZKitInfo *info = nil;
    MagnitudeCommentInfo *info = nil;
    //: if (self.provider && [self.provider respondsToSelector:@selector(infoBySuperTeam:option:)]) {
    if (self.provider && [self.provider respondsToSelector:@selector(image:status:)]) {
        //: info = [self.provider infoBySuperTeam:teamId option:option];
        info = [self.provider image:teamId status:option];
    }
    //: return info;
    return info;

}

//: - (void)preloadNIMKitBundleResource {
- (void)independent {
    //: dispatch_async(dispatch_get_main_queue(), ^{
    dispatch_async(dispatch_get_main_queue(), ^{
        //: [[ZZZInputEmoticonManager sharedManager] start];
        [[SumManager tap] image];
    //: });
    });
}

//: - (NSString *)replyedContentWithMessage:(NIMMessage *)message
- (NSString *)modes:(NIMMessage *)message
{
    //: NSString *info = nil;
    NSString *info = nil;

    //: if (!message)
    if (!message)
    {
        //: return @"\"未知消息\"".nim_localized;
        return StringFromBillData(kStr_hostageRapidTitle).start;
    }

    //: if (self.provider && [self.provider respondsToSelector:@selector(replyedContentWithMessage:)]) {
    if (self.provider && [self.provider respondsToSelector:@selector(modes:)]) {
        //: info = [self.provider replyedContentWithMessage:message];
        info = [self.provider modes:message];
    }
    //: return info;
    return info;
}

//: @end
@end

Byte * BillDataToCache(Byte *data) {
    int nonprofitGage = data[0];
    int charmWarning = data[1];
    int host = data[2];
    if (!nonprofitGage) return data + host;
    for (int i = 0; i < charmWarning / 2; i++) {
        int begin = host + i;
        int end = host + charmWarning - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[host + charmWarning] = 0;
    return data + host;
}

NSString *StringFromBillData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)BillDataToCache(data)];
}  
