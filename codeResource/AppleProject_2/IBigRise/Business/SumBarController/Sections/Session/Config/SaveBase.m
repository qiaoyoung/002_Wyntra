
#import <Foundation/Foundation.h>

NSString *StringFromWeekendData(Byte *data);


//: onTapMenuItemReport:
Byte kStr_vasText[] = {29, 20, 9, 7, 127, 122, 198, 120, 119, 93, 106, 121, 86, 110, 119, 126, 82, 125, 110, 118, 91, 110, 121, 120, 123, 125, 67, 246};


//: menu_report
Byte kStr_merelyDriverData[] = {17, 11, 15, 9, 133, 245, 136, 5, 223, 124, 116, 125, 132, 110, 129, 116, 127, 126, 129, 131, 40};


//: menu_copy
Byte kStr_mathAtText[] = {40, 9, 90, 6, 37, 14, 199, 191, 200, 207, 185, 189, 201, 202, 211, 239};


//: onTapMenuItemCopy:
Byte kStr_menuData[] = {70, 18, 15, 12, 2, 112, 46, 241, 46, 203, 242, 108, 126, 125, 99, 112, 127, 92, 116, 125, 132, 88, 131, 116, 124, 82, 126, 127, 136, 73, 164};


//: onTapMenuItemTranslation:
Byte kStr_regulatoryValue[] = {60, 25, 86, 13, 72, 51, 143, 175, 115, 73, 254, 20, 98, 197, 196, 170, 183, 198, 163, 187, 196, 203, 159, 202, 187, 195, 170, 200, 183, 196, 201, 194, 183, 202, 191, 197, 196, 144, 181};


//: menu_translation
Byte kStr_elsewherePointTitle[] = {97, 16, 61, 4, 170, 162, 171, 178, 156, 177, 175, 158, 171, 176, 169, 158, 177, 166, 172, 171, 208};


//: menu_forword
Byte kStr_billVeryName[] = {61, 12, 19, 10, 159, 186, 104, 204, 217, 218, 128, 120, 129, 136, 114, 121, 130, 133, 138, 130, 133, 119, 200};


//: menu_revoke
Byte kStr_therapyImmigrationText[] = {78, 11, 46, 4, 155, 147, 156, 163, 141, 160, 147, 164, 157, 153, 147, 17};


//: onTapMenuItemForword:
Byte kStr_virtuallyName[] = {49, 21, 68, 13, 210, 145, 10, 6, 62, 60, 206, 197, 95, 179, 178, 152, 165, 180, 145, 169, 178, 185, 141, 184, 169, 177, 138, 179, 182, 187, 179, 182, 168, 126, 91};


//: report_Content
Byte kStr_extensiveRueContent[] = {84, 14, 66, 12, 35, 252, 173, 36, 226, 214, 162, 106, 180, 167, 178, 177, 180, 182, 161, 133, 177, 176, 182, 167, 176, 182, 92};


//: onTapMenuItemRevoke:
Byte kStr_chronicTextName[] = {78, 20, 65, 6, 144, 92, 176, 175, 149, 162, 177, 142, 166, 175, 182, 138, 181, 166, 174, 147, 166, 183, 176, 172, 166, 123, 67};

// __DEBUG__
// __CLOSE_PRINT__
//
//  SaveBase.m
//  NIM
//
//  Created by amao on 8/11/15.
//  Copyright (c) 2015 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZZZSessionConfigBase.h"
#import "SaveBase.h"
//: #import "ZZZMediaItem.h"
#import "VagaryItem.h"
//: #import "NTESBundleSetting.h"
#import "BackgroundTingIncidentGreen.h"
//: #import "NTESSnapchatAttachment.h"
#import "BackgroundAttachment.h"
//: #import "NTESWhiteboardAttachment.h"
#import "InsertShare.h"
//: #import "NTESBundleSetting.h"
#import "BackgroundTingIncidentGreen.h"
//: #import "NSString+NTES.h"
#import "NSString+Item.h"
//: #import "ZZZSessionConfig.h"
#import "PastConfig.h"
//: #import "NTESSessionUtil.h"
#import "ComponentUtil.h"
//: #import "ZZZInputEmoticonManager.h"
#import "SumManager.h"
//: #import "ZZZKitUtil.h"
#import "TingText.h"

//: @interface ZZZSessionConfigBase()
@interface SaveBase()
//: @property (nonatomic,strong) NIMMessage *threadMessage;
@property (nonatomic,strong) NIMMessage *threadMessage;
//: @end
@end

//: @implementation ZZZSessionConfigBase
@implementation SaveBase

//: - (NSArray *)mediaItems
- (NSArray *)signalFor
{
    //: NSArray *defaultMediaItems = [AppleProjectKit sharedKit].config.defaultMediaItems;
    NSArray *defaultMediaItems = [On along].config.accumulationFrame;

//    VagaryItem *janKenPon = [VagaryItem item:@"onTapMediaItemJanKenPon:"
//                                     normalImage:[UIImage imageNamed:@"icon_jankenpon_normal"]
//                                   selectedImage:[UIImage imageNamed:@"icon_jankenpon_pressed"]
//                                           title:LangKey(@"message_send_RPS")];//@"石头剪刀布".ntes_localized

//    VagaryItem *fileTrans = [VagaryItem item:@"onTapMediaItemFileTrans:"
//                                                normalImage:[UIImage imageNamed:@"icon_file_trans_normal"]
//                                              selectedImage:[UIImage imageNamed:@"icon_file_trans_pressed"]
//                                           title:LangKey(@"message_send_transfer")];//@"文件传输".ntes_localized

//    VagaryItem *tip       = [VagaryItem item:@"onTapMediaItemTip:"
//                                     normalImage:[UIImage imageNamed:@"bk_media_tip_normal"]
//                                   selectedImage:[UIImage imageNamed:@"bk_media_tip_pressed"]
//                                           title:@"提示消息".ntes_localized];

//    VagaryItem *audioChat =  [VagaryItem item:@"onTapMediaItemAudioChat:"
//                                      normalImage:[UIImage imageNamed:@"btn_media_telphone_message_normal"]
//                                    selectedImage:[UIImage imageNamed:@"btn_media_telphone_message_pressed"]
//                                           title:LangKey(@"message_send_voice_chat")];//@"实时语音".ntes_localized
//
//    VagaryItem *videoChat =  [VagaryItem item:@"onTapMediaItemVideoChat:"
//                                      normalImage:[UIImage imageNamed:@"btn_bk_media_video_chat_normal"]
//                                    selectedImage:[UIImage imageNamed:@"btn_bk_media_video_chat_pressed"]
//                                            title:LangKey(@"message_send_video_chat")];//@"视频聊天".ntes_localized
//
//    VagaryItem *teamMeeting =  [VagaryItem item:@"onTapMediaItemTeamMeeting:"
//                                      normalImage:[UIImage imageNamed:@"btn_media_telphone_message_normal"]
//                                    selectedImage:[UIImage imageNamed:@"btn_media_telphone_message_pressed"]
//                                            title:LangKey(@"message_send_video_chat")];//@"视频通话".ntes_localized

//    VagaryItem *snapChat =   [VagaryItem item:@"onTapMediaItemSnapChat:"
//                                      normalImage:[UIImage imageNamed:@"bk_media_snap_normal"]
//                                    selectedImage:[UIImage imageNamed:@"bk_media_snap_pressed"]
//                                            title:@"阅后即焚".ntes_localized];

//    VagaryItem *whiteBoard = [VagaryItem item:@"onTapMediaItemWhiteBoard:"
//                                      normalImage:[UIImage imageNamed:@"btn_whiteboard_invite_normal"]
//                                    selectedImage:[UIImage imageNamed:@"btn_whiteboard_invite_pressed"]
//
//                                            title:@"白板".ntes_localized];
    //红包功能因合作终止，暂时关闭
//    VagaryItem *redPacket  = [VagaryItem item:@"onTapMediaItemRedPacket:"
//                                      normalImage:[UIImage imageNamed:@"icon_redpacket_normal"]
//                                    selectedImage:[UIImage imageNamed:@"icon_redpacket_pressed"]
//                                            title:LangKey(@"message_send_red_packet")];//@"红包"

//    VagaryItem *teamReceipt  = [VagaryItem item:@"onTapMediaItemTeamReceipt:"
//                                      normalImage:[UIImage imageNamed:@"icon_team_receipt_normal"]
//                                    selectedImage:[UIImage imageNamed:@"icon_team_receipt_pressed"]
//                                            title:@"已读回执".ntes_localized];



//    BOOL isMe   = _session.sessionType == NIMSessionTypeP2P
//    && [_session.sessionId isEqualToString:[[NIMSDK sharedSDK].loginManager currentAccount]];
//    NSArray *items = nil;

//    if (isMe)
//    {
//        items = @[janKenPon,tip];
//    }
//    else if(_session.sessionType == NIMSessionTypeTeam || _session.sessionType == NIMSessionTypeSuperTeam)
//    {
//        items = @[janKenPon];
//    }
//    else
//    {
//        items = @[janKenPon];
//    }


//    return [defaultMediaItems arrayByAddingObjectsFromArray:items];
    //: return defaultMediaItems;
    return defaultMediaItems;
}


//: - (NSArray<ZZZMediaItem *> *)menuItemsWithMessage:(NIMMessage *)message {
- (NSArray<VagaryItem *> *)prixFixeUponMessage:(NIMMessage *)message {
    //: NSMutableArray *items = [NSMutableArray array];
    NSMutableArray *items = [NSMutableArray array];

//    VagaryItem *reply = [VagaryItem item:@"onTapMenuItemReply:"
//                                 normalImage:[UIImage imageNamed:@"menu_reply"]
//                               selectedImage:nil
//                                       title:LangKey(@"回复")];

    //: ZZZMediaItem *copy = [ZZZMediaItem item:@"onTapMenuItemCopy:"
    VagaryItem *copy = [VagaryItem confines:StringFromWeekendData(kStr_menuData)
                                //: normalImage:[UIImage imageNamed:@"menu_copy"]
                                session:[UIImage imageNamed:StringFromWeekendData(kStr_mathAtText)]
                              //: selectedImage:nil
                              searched:nil
                                      //: title:[NTESLanguageManager getTextWithKey:@"复制"]];
                                      numberelligentsia:[LabelCell tinkleKey:@"复制"]];

    //: ZZZMediaItem *forword = [ZZZMediaItem item:@"onTapMenuItemForword:"
    VagaryItem *forword = [VagaryItem confines:StringFromWeekendData(kStr_virtuallyName)
                                   //: normalImage:[UIImage imageNamed:@"menu_forword"]
                                   session:[UIImage imageNamed:StringFromWeekendData(kStr_billVeryName)]
                                 //: selectedImage:nil
                                 searched:nil
                                         //: title:[NTESLanguageManager getTextWithKey:@"转发"]];
                                         numberelligentsia:[LabelCell tinkleKey:@"转发"]];

//    VagaryItem *mark = [VagaryItem item:@"onTapMenuItemMark:"
//                                normalImage:[UIImage imageNamed:@"menu_collect"]
//                              selectedImage:nil
//                                      title:LangKey(@"收藏")];

//    BOOL isMessagePined = [NIMSDK.sharedSDK.chatExtendManager pinItemForMessage:message] != nil;
//    NSString *pinTitle = isMessagePined ? @"Un-pin": @"Pin";
//    NSString *pinAction = isMessagePined ? @"onTapMenuItemUnpin:" : @"onTapMenuItemPin:";
//    VagaryItem *pin = [VagaryItem item:pinAction
//                               normalImage:[UIImage imageNamed:@"menu_pin"]
//                             selectedImage:nil
//                                     title:pinTitle];

    //: ZZZMediaItem *report = [ZZZMediaItem item:@"onTapMenuItemReport:"
    VagaryItem *report = [VagaryItem confines:StringFromWeekendData(kStr_vasText)
                                  //: normalImage:[UIImage imageNamed:@"menu_report"]
                                  session:[UIImage imageNamed:StringFromWeekendData(kStr_merelyDriverData)]
                                //: selectedImage:nil
                                searched:nil
                                        //: title:[NTESLanguageManager getTextWithKey:@"report_Content"]];
                                        numberelligentsia:[LabelCell tinkleKey:StringFromWeekendData(kStr_extensiveRueContent)]];

    //: ZZZMediaItem *translation = [ZZZMediaItem item:@"onTapMenuItemTranslation:"
    VagaryItem *translation = [VagaryItem confines:StringFromWeekendData(kStr_regulatoryValue)
                                  //: normalImage:[UIImage imageNamed:@"menu_translation"]
                                  session:[UIImage imageNamed:StringFromWeekendData(kStr_elsewherePointTitle)]
                                //: selectedImage:nil
                                searched:nil
                                        //: title:[NTESLanguageManager getTextWithKey:@"翻译"]];
                                        numberelligentsia:[LabelCell tinkleKey:@"翻译"]];

    //: ZZZMediaItem *revoke = [ZZZMediaItem item:@"onTapMenuItemRevoke:"
    VagaryItem *revoke = [VagaryItem confines:StringFromWeekendData(kStr_chronicTextName)
                                  //: normalImage:[UIImage imageNamed:@"menu_revoke"]
                                  session:[UIImage imageNamed:StringFromWeekendData(kStr_therapyImmigrationText)]
                                //: selectedImage:nil
                                searched:nil
                                        //: title:[NTESLanguageManager getTextWithKey:@"撤回"]];
                                        numberelligentsia:[LabelCell tinkleKey:@"撤回"]];

//    VagaryItem *delete = [VagaryItem item:@"onTapMenuItemDelete:"
//                                  normalImage:[UIImage imageNamed:@"menu_del"]
//                                selectedImage:nil
//                                        title:LangKey(@"删除")];

//    VagaryItem *mutiSelect = [VagaryItem item:@"onTapMenuItemMutiSelect:"
//                                      normalImage:[UIImage imageNamed:@"menu_choose"]
//                                    selectedImage:nil
//                                            title:LangKey(@"多选")];
//    if ([ComponentUtil canMessageBeForwarded:message])
//    {
//        [items addObject:reply];
//    }

    //: BOOL isMe = [message.from isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount];
    BOOL isMe = [message.from isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount];
    //: if (!isMe)
    if (!isMe)
    {
        //: [items addObject:report];
        [items addObject:report];
    }

    //: if (message.messageType == NIMMessageTypeText)
    if (message.messageType == NIMMessageTypeText)
    {
        //: [items addObject:copy];
        [items addObject:copy];
    }

    //: if ([NTESSessionUtil canMessageBeForwarded:message]) {
    if ([ComponentUtil wateringPot:message]) {
        //: [items addObject:forword];
        [items addObject:forword];
    }
//    if ([ComponentUtil canMessageBeForwarded:message]) {
//        [items addObject:mark];
//        [items addObject:pin];
//    }
    //: if (message.messageType == NIMMessageTypeText){
    if (message.messageType == NIMMessageTypeText){
        //: [items addObject:translation];
        [items addObject:translation];
    }
    //: if ([NTESSessionUtil canMessageBeRevoked:message]) {
    if ([ComponentUtil straddle:message]) {
        //: [items addObject:revoke];
        [items addObject:revoke];
    }



//    [items addObject:delete];

//    if ([ComponentUtil canMessageBeForwarded:message])
//    {
//        [items addObject:mutiSelect];
//    }

//    if (message.messageType == NIMMessageTypeAudio)
//    {
//        VagaryItem *audio2text = [VagaryItem item:@"onTapMenuItemAudio2Text:"
//          normalImage:[UIImage imageNamed:@"menu_audio2text"]
//        selectedImage:nil
//                title:@"转文字".ntes_localized];
//
//        [items addObject:audio2text];
//    }
    //: return items;
    return items;
}

//: - (NSArray *)emotionItems
- (NSArray *)press
{
    //NSArray *indexs = @[@(1),@(145),@(12),@(15),@(10),@(18),@(19)];
    //: NSArray *indexs = @[];
    NSArray *indexs = @[];
    //: NSMutableArray *items = [NSMutableArray array];
    NSMutableArray *items = [NSMutableArray array];
    //: for (NSNumber *index in indexs)
    for (NSNumber *index in indexs)
    {
        //: NSString * ID = [NSString stringWithFormat:NIMKitQuickCommentFormat, [index integerValue]];
        NSString * ID = [NSString stringWithFormat:kConst_whiteWordData, [index integerValue]];
        //: NIMInputEmoticon *item = [[ZZZInputEmoticonManager sharedManager] emoticonByID:ID];
        IndependentSure *item = [[SumManager tap] at:ID];
        //: if (item)
        if (item)
        {
            //: [items addObject:item];
            [items addObject:item];
        }
    }

    //: return [items copy];
    return [items copy];
}

//: - (BOOL)shouldHandleReceipt{
- (BOOL)messageComment{
    //: return YES;
    return YES;
}

//: - (NSArray<NSNumber *> *)inputBarItemTypes{
- (NSArray<NSNumber *> *)itemText{
    //: return @[
    return @[
//        @(DataInputBarItemTypeMore),
//        @(DataInputBarItemTypeEmoticon),
//             @(DataInputBarItemTypeVoice),
             //: @(DataInputBarItemTypeTextAndRecord),
             @(DataInputBarItemTypeTextAndRecord),
        //: @(DataInputBarItemTypeSend),
        @(DataInputBarItemTypeSend),
            //: ];
            ];
}

//: - (BOOL)shouldHandleReceiptForMessage:(NIMMessage *)message
- (BOOL)sendDeleteMessage:(NIMMessage *)message
{
    //文字，语音，图片，视频，文件，地址位置和自定义消息都支持已读回执，其他的不支持
    //: NIMMessageType type = message.messageType;
    NIMMessageType type = message.messageType;
    //: if (type == NIMMessageTypeCustom) {
    if (type == NIMMessageTypeCustom) {
        //: NIMCustomObject *object = (NIMCustomObject *)message.messageObject;
        NIMCustomObject *object = (NIMCustomObject *)message.messageObject;
        //: id attachment = object.attachment;
        id attachment = object.attachment;

        //: if ([attachment isKindOfClass:[NTESWhiteboardAttachment class]]) {
        if ([attachment isKindOfClass:[InsertShare class]]) {
            //: return NO;
            return NO;
        }
    }



    //: return type == NIMMessageTypeText ||
    return type == NIMMessageTypeText ||
    //: type == NIMMessageTypeAudio ||
    type == NIMMessageTypeAudio ||
    //: type == NIMMessageTypeImage ||
    type == NIMMessageTypeImage ||
    //: type == NIMMessageTypeVideo ||
    type == NIMMessageTypeVideo ||
    //: type == NIMMessageTypeFile ||
    type == NIMMessageTypeFile ||
    //: type == NIMMessageTypeLocation ||
    type == NIMMessageTypeLocation ||
    //: type == NIMMessageTypeCustom;
    type == NIMMessageTypeCustom;
}

//: - (NSArray<NIMInputEmoticonCatalog *> *)charlets
- (NSArray<WithInput *> *)subornFilter
{
    //: return nil;
    return nil;
}

//: - (BOOL)disableProximityMonitor{
- (BOOL)observerMonitor{
    //: return [[NTESBundleSetting sharedConfig] disableProximityMonitor];
    return [[BackgroundTingIncidentGreen pickApart] observerMonitor];
}

//: - (BOOL)autoFetchAttachment {
- (BOOL)withEmpty {
    //: return [[NTESBundleSetting sharedConfig] autoFetchAttachment];
    return [[BackgroundTingIncidentGreen pickApart] withEmpty];
}

//: - (NIMAudioType)recordType
- (NIMAudioType)graphicalHistoricalRecord
{
    //: return [[NTESBundleSetting sharedConfig] usingAmr] ? NIMAudioTypeAMR : NIMAudioTypeAAC;
    return [[BackgroundTingIncidentGreen pickApart] empty] ? NIMAudioTypeAMR : NIMAudioTypeAAC;
}

//: - (BOOL)disableSelectedForMessage:(NIMMessage *)message {
- (BOOL)restraining:(NIMMessage *)message {
    //: return ![NTESSessionUtil canMessageBeForwarded:message];
    return ![ComponentUtil wateringPot:message];
}

//: - (void)setThreadMessage:(NIMMessage *)message
- (void)setThreadMessage:(NIMMessage *)message
{
    //: _threadMessage = message;
    _threadMessage = message;
}

//: - (void)cleanThreadMessage
- (void)size
{
    //: _threadMessage = nil;
    _threadMessage = nil;
}

//: - (BOOL)clearThreadMessageAfterSent
- (BOOL)viewSend
{
    //: return YES;
    return YES;
}

//: @end
@end

Byte * WeekendDataToCache(Byte *data) {
    int wallConscience = data[0];
    int convictEaster = data[1];
    Byte fashion = data[2];
    int fieldTruly = data[3];
    if (!wallConscience) return data + fieldTruly;
    for (int i = fieldTruly; i < fieldTruly + convictEaster; i++) {
        int value = data[i] - fashion;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[fieldTruly + convictEaster] = 0;
    return data + fieldTruly;
}

NSString *StringFromWeekendData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)WeekendDataToCache(data)];
}
