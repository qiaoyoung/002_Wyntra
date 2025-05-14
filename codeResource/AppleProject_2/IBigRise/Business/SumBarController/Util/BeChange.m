
#import <Foundation/Foundation.h>
typedef struct {
    Byte fibFinger;
    Byte *riffraff;
    unsigned int somedayUntil;
    bool sayGag;
	int finishChronic;
	int finalCause;
} PantUntilData;

NSString *StringFromPantUntilData(PantUntilData *data);


//: 向你发起了一个白板请求
PantUntilData kStr_moleData = (PantUntilData){164, (Byte []){65, 52, 53, 64, 25, 4, 65, 43, 53, 76, 17, 19, 64, 30, 34, 64, 28, 36, 64, 28, 14, 67, 61, 25, 66, 57, 27, 76, 11, 19, 66, 21, 38, 167}, 33, false, 234, 188};


//: message.wav
PantUntilData kStr_commentGagData = (PantUntilData){168, (Byte []){197, 205, 219, 219, 201, 207, 205, 134, 223, 201, 222, 10}, 11, false, 20, 242};


//: content
PantUntilData kStr_alongsideResideRegulatoryValue = (PantUntilData){118, (Byte []){21, 25, 24, 2, 19, 24, 2, 183}, 7, false, 251, 26};


//: 你收到了一个白板请求
PantUntilData kStr_hopefulPantMedicineName = (PantUntilData){204, (Byte []){40, 113, 108, 42, 88, 122, 41, 68, 124, 40, 118, 74, 40, 116, 76, 40, 116, 102, 43, 85, 113, 42, 81, 115, 36, 99, 123, 42, 125, 78, 94}, 30, false, 35, 96};

// __DEBUG__
// __CLOSE_PRINT__
//
//  BeChange.m
//  NIM
//
//  Created by Xuhui on 15/3/25.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESNotificationCenter.h"
#import "BeChange.h"
//: #import "NTESMainTabController.h"
#import "SumBarController.h"
//: #import "NTESSessionViewController.h"
#import "ValueEmptyViewController.h"
//: #import "NSDictionary+NTESJson.h"
#import "NSDictionary+ImageGreen.h"
//: #import "NTESCustomNotificationDB.h"
#import "IrruptDb.h"
//: #import "NTESCustomNotificationObject.h"
#import "MediaObject.h"
//: #import "UIView+Toast.h"
#import "UIView+Toast.h"
//: #import "NTESCustomSysNotificationSender.h"
#import "ShouldSender.h"
//: #import <AVFoundation/AVFoundation.h>
#import <AVFoundation/AVFoundation.h>
//: #import "NTESSessionMsgConverter.h"
#import "TingFlushColor.h"
//: #import "NTESSessionUtil.h"
#import "ComponentUtil.h"
//: #import "NTESAVNotifier.h"
#import "PinName.h"
//: #import "NTESRedPacketTipAttachment.h"
#import "TitleAttachment.h"
//: #import "SSZipArchiveManager.h"
#import "OnManager.h"

//: NSString *kConst_methodValue = @"kConst_methodValue";
NSString *kConst_methodValue = @"kConst_methodValue";

//: @interface NTESNotificationCenter () <NIMSystemNotificationManagerDelegate,NIMChatManagerDelegate,NIMBroadcastManagerDelegate, NIMSignalManagerDelegate,NIMConversationManagerDelegate>
@interface BeChange () <NIMSystemNotificationManagerDelegate,NIMChatManagerDelegate,NIMBroadcastManagerDelegate, NIMSignalManagerDelegate,NIMConversationManagerDelegate>

//: @property (nonatomic,strong) AVAudioPlayer *player; 
@property (nonatomic,strong) AVAudioPlayer *player; //播放提示音
//: @property (nonatomic,strong) NTESAVNotifier *notifier;
@property (nonatomic,strong) PinName *notifier;

//: @end
@end

//: @implementation NTESNotificationCenter
@implementation BeChange

//: + (instancetype)sharedCenter
+ (instancetype)min
{
    //: static NTESNotificationCenter *instance = nil;
    static BeChange *instance = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: instance = [[NTESNotificationCenter alloc] init];
        instance = [[BeChange alloc] init];
    //: });
    });
    //: return instance;
    return instance;
}

//: - (void)start
- (void)color
{
}

//: - (instancetype)init {
- (instancetype)init {
    //: self = [super init];
    self = [super init];
    //: if(self) {
    if(self) {
        //: NSString *voicePath = [[[SSZipArchiveManager sharedManager] getVoicePath] stringByAppendingPathComponent:[NSString stringWithFormat:@"message.wav"]];
        NSString *voicePath = [[[OnManager directorLength] event] stringByAppendingPathComponent:[NSString stringWithFormat:StringFromPantUntilData(&kStr_commentGagData)]];
        //: if ([[NSFileManager defaultManager] fileExistsAtPath:voicePath]) {
        if ([[NSFileManager defaultManager] fileExistsAtPath:voicePath]) {
            //: NSURL *url = [NSURL fileURLWithPath:voicePath];
            NSURL *url = [NSURL fileURLWithPath:voicePath];
            //: _player = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:nil];
            _player = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:nil];
        }

        //: _notifier = [[NTESAVNotifier alloc] init];
        _notifier = [[PinName alloc] init];

        //: [[NIMSDK sharedSDK].systemNotificationManager addDelegate:self];
        [[NIMSDK sharedSDK].systemNotificationManager addDelegate:self];
        //: [[NIMSDK sharedSDK].chatManager addDelegate:self];
        [[NIMSDK sharedSDK].chatManager addDelegate:self];
        //: [[NIMSDK sharedSDK].broadcastManager addDelegate:self];
        [[NIMSDK sharedSDK].broadcastManager addDelegate:self];

        //: [[NIMSDK sharedSDK].signalManager addDelegate:self];
        [[NIMSDK sharedSDK].signalManager addDelegate:self];
        //: [[NIMSDK sharedSDK].conversationManager addDelegate:self];
        [[NIMSDK sharedSDK].conversationManager addDelegate:self];

//        [[NERtcCallKit sharedInstance] addDelegate:self];
    }
    //: return self;
    return self;
}


//: - (void)dealloc{
- (void)dealloc{
    //: [[NIMSDK sharedSDK].systemNotificationManager removeDelegate:self];
    [[NIMSDK sharedSDK].systemNotificationManager removeDelegate:self];
    //: [[NIMSDK sharedSDK].chatManager removeDelegate:self];
    [[NIMSDK sharedSDK].chatManager removeDelegate:self];
    //: [[NIMSDK sharedSDK].broadcastManager removeDelegate:self];
    [[NIMSDK sharedSDK].broadcastManager removeDelegate:self];
    //: [[NIMSDK sharedSDK].conversationManager removeDelegate:self];
    [[NIMSDK sharedSDK].conversationManager removeDelegate:self];
}

//: #pragma mark - NIMConversationDelegate
#pragma mark - NIMConversationDelegate

//: - (void)didServerSessionUpdated:(NIMRecentSession *)recentSession {
- (void)didServerSessionUpdated:(NIMRecentSession *)recentSession {
    //: [[UIApplication sharedApplication].windows.firstObject.rootViewController.view makeToast:[NSString stringWithFormat:@"%@",recentSession.serverExt] duration:1 position:CSToastPositionCenter];
    [[UIApplication sharedApplication].windows.firstObject.rootViewController.view makeToast:[NSString stringWithFormat:@"%@",recentSession.serverExt] duration:1 position:CSToastPositionCenter];
}

//: #pragma mark - NIMChatManagerDelegate
#pragma mark - NIMChatManagerDelegate
//: - (void)onRecvMessages:(NSArray *)recvMessages
- (void)onRecvMessages:(NSArray *)recvMessages
{
    //: NSArray *messages = [self filterMessages:recvMessages];
    NSArray *messages = [self ignore:recvMessages];
    //: if (messages.count)
    if (messages.count)
    {
        //: static BOOL isPlaying = NO;
        static BOOL isPlaying = NO;
        //: if (isPlaying) {
        if (isPlaying) {
            //: return;
            return;
        }
        //: isPlaying = YES;
        isPlaying = YES;
        //: [self playMessageAudioTip];
        [self barQuick];
        //: dispatch_after(dispatch_time((0ull), (int64_t)(0.3 * 1000000000ull)), dispatch_get_main_queue(), ^{
        dispatch_after(dispatch_time((0ull), (int64_t)(0.3 * 1000000000ull)), dispatch_get_main_queue(), ^{
            //: isPlaying = NO;
            isPlaying = NO;
        //: });
        });
        //: [self checkMessageAt:messages];
        [self glasses:messages];
    }
}

//: - (void)playMessageAudioTip
- (void)barQuick
{
    //: UINavigationController *nav = [NTESMainTabController instance].selectedViewController;
    UINavigationController *nav = [SumBarController displayName].selectedViewController;
    //: BOOL needPlay = YES;
    BOOL needPlay = YES;
    //: for (UIViewController *vc in nav.viewControllers) {
    for (UIViewController *vc in nav.viewControllers) {
        //: if ([vc isKindOfClass:[ZZZSessionViewController class]])
        if ([vc isKindOfClass:[GroupDiscussionViewController class]])
        {
            //: needPlay = NO;
            needPlay = NO;
            //: break;
            break;
        }
    }
    //: if (needPlay) {
    if (needPlay) {
        //: [self.player stop];
        [self.player stop];
        //: [[AVAudioSession sharedInstance] setCategory: AVAudioSessionCategoryAmbient error:nil];
        [[AVAudioSession sharedInstance] setCategory: AVAudioSessionCategoryAmbient error:nil];
        //: [self.player play];
        [self.player play];
    }
}

//: - (void)checkMessageAt:(NSArray<NIMMessage *> *)messages
- (void)glasses:(NSArray<NIMMessage *> *)messages
{
    //一定是同个 session 的消息
    //: NIMSession *session = [messages.firstObject session];
    NIMSession *session = [messages.firstObject session];
    //: if ([self.currentSessionViewController.session isEqual:session])
    if ([self.sub.session isEqual:session])
    {
        //只有在@所属会话页外面才需要标记有人@你
        //: return;
        return;
    }

    //: NSString *me = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSString *me = [[NIMSDK sharedSDK].loginManager currentAccount];

    //: for (NIMMessage *message in messages) {
    for (NIMMessage *message in messages) {
        //: if ([message.apnsMemberOption.userIds containsObject:me]) {
        if ([message.apnsMemberOption.userIds containsObject:me]) {
            //: [NTESSessionUtil addRecentSessionMark:session type:NTESRecentSessionMarkTypeAt];
            [ComponentUtil top:session with:NTESRecentSessionMarkTypeAt];
            //: return;
            return;
        }
    }
}


//: - (NSArray *)filterMessages:(NSArray *)messages
- (NSArray *)ignore:(NSArray *)messages
{
    //: NSMutableArray *array = [[NSMutableArray alloc] init];
    NSMutableArray *array = [[NSMutableArray alloc] init];
    //: for (NIMMessage *message in messages)
    for (NIMMessage *message in messages)
    {
        //: if ([self checkRedPacketTip:message] && ![self canSaveMessageRedPacketTip:message])
        if ([self sumeract:message] && ![self corner:message])
        {
            //: [[NIMSDK sharedSDK].conversationManager deleteMessage:message];
            [[NIMSDK sharedSDK].conversationManager deleteMessage:message];
            //: [self.currentSessionViewController uiDeleteMessage:message];
            [self.sub bubbleMedia:message];
            //: continue;
            continue;
        }
        //: [array addObject:message];
        [array addObject:message];
    }
    //: return [NSArray arrayWithArray:array];
    return [NSArray arrayWithArray:array];
}


//: - (BOOL)checkRedPacketTip:(NIMMessage *)message
- (BOOL)sumeract:(NIMMessage *)message
{
    //: NIMCustomObject *object = message.messageObject;
    NIMCustomObject *object = message.messageObject;
    //: if ([object isKindOfClass:[NIMCustomObject class]] && [object.attachment isKindOfClass:[NTESRedPacketTipAttachment class]])
    if ([object isKindOfClass:[NIMCustomObject class]] && [object.attachment isKindOfClass:[TitleAttachment class]])
    {
        //: return YES;
        return YES;
    }
    //: return NO;
    return NO;
}

//: - (BOOL)canSaveMessageRedPacketTip:(NIMMessage *)message
- (BOOL)corner:(NIMMessage *)message
{
    //: NIMCustomObject *object = message.messageObject;
    NIMCustomObject *object = message.messageObject;
    //: NTESRedPacketTipAttachment *attach = (NTESRedPacketTipAttachment *)object.attachment;
    TitleAttachment *attach = (TitleAttachment *)object.attachment;
    //: NSString *me = [NIMSDK sharedSDK].loginManager.currentAccount;
    NSString *me = [NIMSDK sharedSDK].loginManager.currentAccount;
    //: return [attach.sendPacketId isEqualToString:me] || [attach.openPacketId isEqualToString:me];
    return [attach.sendPacketId isEqualToString:me] || [attach.openPacketId isEqualToString:me];
}

//: - (void)onRecvRevokeMessageNotification:(NIMRevokeMessageNotification *)notification
- (void)onRecvRevokeMessageNotification:(NIMRevokeMessageNotification *)notification
{
    //撤回消息中收到的attach和callbackExt字段需要获取出来存放到message中去
    //: NIMMessage *tipMessage = [NTESSessionMsgConverter msgWithTip:[NTESSessionUtil tipOnMessageRevoked:notification]
    NIMMessage *tipMessage = [TingFlushColor infoWith:[ComponentUtil lockUpOption:notification]
                                                    //: revokeAttach:notification.attach
                                                    registerExt:notification.attach
                                               //: revokeCallbackExt:notification.callbackExt];
                                               tapTip:notification.callbackExt];
    //: NIMMessageSetting *setting = [[NIMMessageSetting alloc] init];
    NIMMessageSetting *setting = [[NIMMessageSetting alloc] init];
    //: setting.shouldBeCounted = NO;
    setting.shouldBeCounted = NO;
    //: setting.teamReceiptEnabled = YES;
    setting.teamReceiptEnabled = YES;

    //: tipMessage.setting = setting;
    tipMessage.setting = setting;
    //: tipMessage.timestamp = notification.timestamp;
    tipMessage.timestamp = notification.timestamp;

    //: NTESMainTabController *tabVC = [NTESMainTabController instance];
    SumBarController *tabVC = [SumBarController displayName];
    //: UINavigationController *nav = tabVC.selectedViewController;
    UINavigationController *nav = tabVC.selectedViewController;

    //: for (NTESSessionViewController *vc in nav.viewControllers) {
    for (ValueEmptyViewController *vc in nav.viewControllers) {
        //: if ([vc isKindOfClass:[NTESSessionViewController class]]
        if ([vc isKindOfClass:[ValueEmptyViewController class]]
            //: && [vc.session.sessionId isEqualToString:notification.session.sessionId]) {
            && [vc.session.sessionId isEqualToString:notification.session.sessionId]) {
            //: ZZZMessageModel *model = [vc uiDeleteMessage:notification.message];
            CollectionModel *model = [vc bubbleMedia:notification.message];
            //: if (notification.notificationType == NIMRevokeMessageNotificationTypeP2POneWay ||
            if (notification.notificationType == NIMRevokeMessageNotificationTypeP2POneWay ||
                //: notification.notificationType == NIMRevokeMessageNotificationTypeTeamOneWay)
                notification.notificationType == NIMRevokeMessageNotificationTypeTeamOneWay)
            {
                //: break;
                break;
            }

            //: if (model) {
            if (model) {
                //[vc uiInsertMessages:@[tipMessage]];//撤回消息不显示
            }
            //: break;
            break;
        }
    }

    // saveMessage 方法执行成功后会触发 onRecvMessages: 回调，但是这个回调上来的 NIMMessage 时间为服务器时间，和界面上的时间有一定出入，所以要提前先在界面上插入一个和被删消息的界面时间相符的 Tip, 当触发 onRecvMessages: 回调时，组件判断这条消息已经被插入过了，就会忽略掉。
    //: if (notification.notificationType != NIMRevokeMessageNotificationTypeP2POneWay &&
    if (notification.notificationType != NIMRevokeMessageNotificationTypeP2POneWay &&
        //: notification.notificationType != NIMRevokeMessageNotificationTypeTeamOneWay)
        notification.notificationType != NIMRevokeMessageNotificationTypeTeamOneWay)
    {
        //: [[NIMSDK sharedSDK].conversationManager saveMessage:tipMessage
        [[NIMSDK sharedSDK].conversationManager saveMessage:tipMessage
                                                 //: forSession:notification.session
                                                 forSession:notification.session
                                                 //: completion:nil];
                                                 completion:nil];
    }

}

//: - (void)onRecvMessagesDeleted:(NSArray<NIMMessage *> *)messages exts:(NSDictionary<NSString *,NSString *> *)exts {
- (void)onRecvMessagesDeleted:(NSArray<NIMMessage *> *)messages exts:(NSDictionary<NSString *,NSString *> *)exts {

    //: NTESMainTabController *tabVC = [NTESMainTabController instance];
    SumBarController *tabVC = [SumBarController displayName];
    //: UINavigationController *nav = tabVC.selectedViewController;
    UINavigationController *nav = tabVC.selectedViewController;

    //: for (NTESSessionViewController *vc in nav.viewControllers) {
    for (ValueEmptyViewController *vc in nav.viewControllers) {
        //: for (NIMMessage *message in messages) {
        for (NIMMessage *message in messages) {
            //: if ([vc isKindOfClass:[NTESSessionViewController class]]
            if ([vc isKindOfClass:[ValueEmptyViewController class]]
                //: && [vc.session.sessionId isEqualToString:message.session.sessionId]) {
                && [vc.session.sessionId isEqualToString:message.session.sessionId]) {
                //: [vc uiDeleteMessage:message];
                [vc bubbleMedia:message];
            }
        }
    }
}


//: #pragma mark - NIMSystemNotificationManagerDelegate
#pragma mark - NIMSystemNotificationManagerDelegate
//: - (void)onReceiveCustomSystemNotification:(NIMCustomSystemNotification *)notification{
- (void)onReceiveCustomSystemNotification:(NIMCustomSystemNotification *)notification{

    //: NSString *content = notification.content;
    NSString *content = notification.content;
    //: NSData *data = [content dataUsingEncoding:NSUTF8StringEncoding];
    NSData *data = [content dataUsingEncoding:NSUTF8StringEncoding];
    //: if (data)
    if (data)
    {
        //: NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:data
        NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:data
                                                             //: options:0
                                                             options:0
                                                               //: error:nil];
                                                               error:nil];
        //: if ([dict isKindOfClass:[NSDictionary class]])
        if ([dict isKindOfClass:[NSDictionary class]])
        {
            //: switch ([dict jsonInteger:@"id"]) {
            switch ([dict plumbSum:@"id"]) {
                //: case (2):{
                case (2):{
                    //SDK并不会存储自定义的系统通知，需要上层结合业务逻辑考虑是否做存储。这里给出一个存储的例子。
                    //: NTESCustomNotificationObject *object = [[NTESCustomNotificationObject alloc] initWithNotification:notification];
                    MediaObject *object = [[MediaObject alloc] initWithMode:notification];
                    //这里只负责存储可离线的自定义通知，推荐上层应用也这么处理，需要持久化的通知都走可离线通知
                    //: if (!notification.sendToOnlineUsersOnly) {
                    if (!notification.sendToOnlineUsersOnly) {
                        //: [[NTESCustomNotificationDB sharedInstance] saveNotification:object];
                        [[IrruptDb dueDate] notification:object];
                    }
                    //: if (notification.setting.shouldBeCounted) {
                    if (notification.setting.shouldBeCounted) {
                        //: [[NSNotificationCenter defaultCenter] postNotificationName:kConst_methodValue object:nil];
                        [[NSNotificationCenter defaultCenter] postNotificationName:kConst_methodValue object:nil];
                    }
                    //: NSString *content = [dict jsonString:@"content"];
                    NSString *content = [dict show:StringFromPantUntilData(&kStr_alongsideResideRegulatoryValue)];
                    //: [self makeToast:content];
                    [self make:content];
                }
                    //: break;
                    break;
                //: case (3):{
                case (3):{

                }
                    //: break;
                    break;
                //: default:
                default:
                    //: break;
                    break;
            }
        }
    }
}

//: #pragma mark - NIMNetCallManagerDelegate
#pragma mark - NIMNetCallManagerDelegate

//: - (void)onHangup:(UInt64)callID
- (void)parentSizeDetail:(UInt64)callID
              //: by:(NSString *)user
              accumulation:(NSString *)user
{
    //: [_notifier stop];
    [_notifier old];
}

//: - (void)onRTSRequest:(NSString *)sessionID
- (void)backLabelMessage:(NSString *)sessionID
                //: from:(NSString *)caller
                show:(NSString *)caller
            //: services:(NSUInteger)types
            storage:(NSUInteger)types
             //: message:(NSString *)info
             voiceRow:(NSString *)info
{


}


//: - (void)presentModelViewController:(UIViewController *)vc
- (void)team:(UIViewController *)vc
{
    //: NTESMainTabController *tab = [NTESMainTabController instance];
    SumBarController *tab = [SumBarController displayName];
    //: [tab.view endEditing:YES];
    [tab.view endEditing:YES];
    //: if (tab.presentedViewController) {
    if (tab.presentedViewController) {
        //: __weak NTESMainTabController *wtabVC = tab;
        __weak SumBarController *wtabVC = tab;
        //: [tab.presentedViewController dismissViewControllerAnimated:NO completion:^{
        [tab.presentedViewController dismissViewControllerAnimated:NO completion:^{
            //: [wtabVC presentViewController:vc animated:NO completion:nil];
            [wtabVC presentViewController:vc animated:NO completion:nil];
        //: }];
        }];
    //: }else{
    }else{
        //: [tab presentViewController:vc animated:NO completion:nil];
        [tab presentViewController:vc animated:NO completion:nil];
    }
}

//: - (void)onRTSTerminate:(NSString *)sessionID
- (void)share:(NSString *)sessionID
                    //: by:(NSString *)user
                    bubbleBy:(NSString *)user
{
    //: [_notifier stop];
    [_notifier old];
}



//: #pragma mark - NIMBroadcastManagerDelegate
#pragma mark - NIMBroadcastManagerDelegate
//: - (void)onReceiveBroadcastMessage:(NIMBroadcastMessage *)broadcastMessage
- (void)onReceiveBroadcastMessage:(NIMBroadcastMessage *)broadcastMessage
{
    //: [self makeToast:broadcastMessage.content];
    [self make:broadcastMessage.content];
}

//: #pragma mark - format
#pragma mark - format

//: - (NSString *)textByCaller:(NSString *)caller
- (NSString *)begin:(NSString *)caller
{
    //: NSString *text = @"你收到了一个白板请求".ntes_localized;
    NSString *text = StringFromPantUntilData(&kStr_hopefulPantMedicineName).colorLocalized;
    //: ZZZKitInfo *info = [[AppleProjectKit sharedKit] infoByUser:caller option:nil];
    MagnitudeCommentInfo *info = [[On along] toKey:caller image:nil];
    //: if ([info.showName length])
    if ([info.showName length])
    {
        //: text = [NSString stringWithFormat:@"%@%@",
        text = [NSString stringWithFormat:@"%@%@",
                //: info.showName,
                info.showName,
                //: @"向你发起了一个白板请求".ntes_localized];
                StringFromPantUntilData(&kStr_moleData).colorLocalized];
    }
    //: return text;
    return text;
}

//: - (BOOL)shouldFireNotification:(NSString *)callerId
- (BOOL)container:(NSString *)callerId
{
    //退后台后 APP 存活，然后收到通知
    //: BOOL should = YES;
    BOOL should = YES;

    //消息不提醒
    //: id<NIMUserManager> userManager = [[NIMSDK sharedSDK] userManager];
    id<NIMUserManager> userManager = [[NIMSDK sharedSDK] userManager];
    //: if (![userManager notifyForNewMsg:callerId])
    if (![userManager notifyForNewMsg:callerId])
    {
        //: should = NO;
        should = NO;
    }

    //当前在正处于免打扰
    //: id<NIMApnsManager> apnsManager = [[NIMSDK sharedSDK] apnsManager];
    id<NIMApnsManager> apnsManager = [[NIMSDK sharedSDK] apnsManager];
    //: NIMPushNotificationSetting *setting = [apnsManager currentSetting];
    NIMPushNotificationSetting *setting = [apnsManager currentSetting];
    //: if (setting.noDisturbing)
    if (setting.noDisturbing)
    {
        //: NSDate *date = [NSDate date];
        NSDate *date = [NSDate date];
        //: NSCalendar *calendar = [NSCalendar currentCalendar];
        NSCalendar *calendar = [NSCalendar currentCalendar];
        //: NSDateComponents *components = [calendar components:(NSCalendarUnitHour | NSCalendarUnitMinute) fromDate:date];
        NSDateComponents *components = [calendar components:(NSCalendarUnitHour | NSCalendarUnitMinute) fromDate:date];
        //: NSInteger now = components.hour * 60 + components.minute;
        NSInteger now = components.hour * 60 + components.minute;
        //: NSInteger start = setting.noDisturbingStartH * 60 + setting.noDisturbingStartM;
        NSInteger start = setting.noDisturbingStartH * 60 + setting.noDisturbingStartM;
        //: NSInteger end = setting.noDisturbingEndH * 60 + setting.noDisturbingEndM;
        NSInteger end = setting.noDisturbingEndH * 60 + setting.noDisturbingEndM;

        //当天区间
        //: if (end > start && end >= now && now >= start)
        if (end > start && end >= now && now >= start)
        {
            //: should = NO;
            should = NO;
        }
        //隔天区间
        //: else if(end < start && (now <= end || now >= start))
        else if(end < start && (now <= end || now >= start))
        {
            //: should = NO;
            should = NO;
        }
    }

    //: return should;
    return should;
}

//: - (ZZZSessionViewController *)currentSessionViewController
- (GroupDiscussionViewController *)sub
{
    //: UINavigationController *nav = [NTESMainTabController instance].selectedViewController;
    UINavigationController *nav = [SumBarController displayName].selectedViewController;
    //: for (UIViewController *vc in nav.viewControllers)
    for (UIViewController *vc in nav.viewControllers)
    {
        //: if ([vc isKindOfClass:[ZZZSessionViewController class]])
        if ([vc isKindOfClass:[GroupDiscussionViewController class]])
        {
            //: return (ZZZSessionViewController *)vc;
            return (GroupDiscussionViewController *)vc;
        }
    }
    //: return nil;
    return nil;
}

//: - (void)makeToast:(NSString *)content
- (void)make:(NSString *)content
{
    //: [[NTESMainTabController instance].selectedViewController.view makeToast:content duration:2.0 position:CSToastPositionCenter];
    [[SumBarController displayName].selectedViewController.view makeToast:content duration:2.0 position:CSToastPositionCenter];
}


//: @end
@end

Byte *PantUntilDataToByte(PantUntilData *data) {
    if (data->sayGag) return data->riffraff;
    for (int i = 0; i < data->somedayUntil; i++) {
        data->riffraff[i] ^= data->fibFinger;
    }
    data->riffraff[data->somedayUntil] = 0;
    data->sayGag = true;
	if (data->somedayUntil >= 2) {
		data->finishChronic = data->riffraff[0];
		data->finalCause = data->riffraff[1];
	}
    return data->riffraff;
}

NSString *StringFromPantUntilData(PantUntilData *data) {
    return [NSString stringWithUTF8String:(char *)PantUntilDataToByte(data)];
}
