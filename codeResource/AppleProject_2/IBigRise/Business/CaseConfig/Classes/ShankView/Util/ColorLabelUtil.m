
#import <Foundation/Foundation.h>

NSString *StringFromCoarseData(Byte *data);        


//: teamgonggao_record_
Byte kStr_resideCruiseSleeveText[] = {63, 19, 10, 10, 42, 40, 197, 137, 128, 47, 106, 91, 87, 99, 93, 101, 100, 93, 93, 87, 101, 85, 104, 91, 89, 101, 104, 90, 85, 97};


//: Image
Byte kStr_viseLotsTitle[] = {16, 5, 2, 10, 154, 218, 65, 19, 228, 174, 71, 107, 95, 101, 99, 227};


//: Video
Byte kStr_confusionTitle[] = {38, 5, 11, 5, 171, 75, 94, 89, 90, 100, 12};


//: File
Byte kStr_classicStairsText[] = {18, 4, 74, 9, 231, 119, 180, 110, 34, 252, 31, 34, 27, 68};


//: Video_chat
Byte kStr_bureauOughtValue[] = {12, 10, 79, 6, 170, 199, 7, 26, 21, 22, 32, 16, 20, 25, 18, 37, 203};


//: Audio
Byte kStr_universeData[] = {7, 5, 16, 12, 227, 30, 152, 136, 181, 241, 164, 5, 49, 101, 84, 89, 95, 208};


//: Internet_call
Byte kStr_committeeName[] = {27, 13, 31, 4, 42, 79, 85, 70, 83, 79, 70, 85, 64, 68, 66, 77, 77, 240};


//: Group_chat_information_update
Byte kStr_varyTitle[] = {49, 29, 85, 11, 230, 80, 9, 222, 244, 27, 173, 242, 29, 26, 32, 27, 10, 14, 19, 12, 31, 10, 20, 25, 17, 26, 29, 24, 12, 31, 20, 26, 25, 10, 32, 27, 15, 12, 31, 16, 19};


//: Location
Byte kStr_corridorData[] = {32, 8, 34, 10, 211, 118, 44, 19, 186, 1, 42, 77, 65, 63, 82, 71, 77, 76, 12};


//: teamgonggao_title_
Byte kStr_reignValue[] = {40, 18, 41, 12, 46, 120, 252, 227, 195, 38, 114, 176, 75, 60, 56, 68, 62, 70, 69, 62, 62, 56, 70, 54, 75, 64, 75, 67, 60, 54, 180};


//: content
Byte kStr_speakData[] = {54, 7, 87, 13, 93, 163, 140, 230, 14, 114, 211, 160, 103, 12, 24, 23, 29, 14, 23, 29, 143};


//: Super_Group_Information_Update
Byte kStr_reignCombineData[] = {56, 30, 34, 10, 63, 161, 157, 163, 255, 25, 49, 83, 78, 67, 80, 61, 37, 80, 77, 83, 78, 61, 39, 76, 68, 77, 80, 75, 63, 82, 71, 77, 76, 61, 51, 78, 66, 63, 82, 67, 212};


//: teamgonggao_
Byte kStr_methodCurName[] = {94, 12, 37, 14, 221, 130, 204, 201, 88, 20, 77, 73, 138, 121, 79, 64, 60, 72, 66, 74, 73, 66, 66, 60, 74, 58, 57};


//: Group_information_update
Byte kStr_withBankingText[] = {55, 24, 72, 4, 255, 42, 39, 45, 40, 23, 33, 38, 30, 39, 42, 37, 25, 44, 33, 39, 38, 23, 45, 40, 28, 25, 44, 29, 161};


//: teamgonggao_content_
Byte kStr_cramContent[] = {44, 20, 18, 8, 51, 210, 5, 88, 98, 83, 79, 91, 85, 93, 92, 85, 85, 79, 93, 77, 81, 93, 92, 98, 83, 92, 98, 77, 216};


//: title
Byte kStr_looOutsideBankingValue[] = {37, 5, 76, 14, 118, 114, 153, 135, 81, 154, 176, 245, 83, 87, 40, 29, 40, 32, 25, 169};

// __DEBUG__
// __CLOSE_PRINT__
//
//  ColorLabelUtil.m
// On
//
//  Created by Netease on 2019/10/17.
//  Copyright © 2019 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZZZMessageUtil.h"
#import "ColorLabelUtil.h"
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>
 
//: #import "ZZZKitUtil.h"
#import "TingText.h"
//: #import "AppleProjectKit.h"
#import "On.h"
//: #import "NSDictionary+AppleProjectKit.h"
#import "NSDictionary+On.h"

//: @implementation ZZZMessageUtil
@implementation ColorLabelUtil

//: + (NSString *)messageContent:(NIMMessage*)message {
+ (NSString *)keyOfMy:(NIMMessage*)message {
    //: NSString *text = @"";
    NSString *text = @"";
    //: switch (message.messageType) {
    switch (message.messageType) {
        //: case NIMMessageTypeText:
        case NIMMessageTypeText:
            //: text = message.text;
            text = message.text;
            //: break;
            break;
        //: case NIMMessageTypeAudio:
        case NIMMessageTypeAudio:
            //: text = [NTESLanguageManager getTextWithKey:@"Audio"]; 
            text = [LabelCell tinkleKey:StringFromCoarseData(kStr_universeData)]; //@"[语音]".nim_localized;
            //: break;
            break;
        //: case NIMMessageTypeImage:
        case NIMMessageTypeImage:
            //: text = [NTESLanguageManager getTextWithKey:@"Image"];
            text = [LabelCell tinkleKey:StringFromCoarseData(kStr_viseLotsTitle)];//@"[图片]".nim_localized;
            //: break;
            break;
        //: case NIMMessageTypeVideo:
        case NIMMessageTypeVideo:
            //: text = [NTESLanguageManager getTextWithKey:@"Video"];
            text = [LabelCell tinkleKey:StringFromCoarseData(kStr_confusionTitle)];//@"[视频]".nim_localized;
            //: break;
            break;
        //: case NIMMessageTypeLocation:
        case NIMMessageTypeLocation:
            //: text = [NTESLanguageManager getTextWithKey:@"Location"];
            text = [LabelCell tinkleKey:StringFromCoarseData(kStr_corridorData)];//@"[位置]".nim_localized;
            //: break;
            break;
        //: case NIMMessageTypeNotification:{
        case NIMMessageTypeNotification:{
            //: return [self notificationMessageContent:message];
            return [self inputModelName:message];
        }
        //: case NIMMessageTypeFile:
        case NIMMessageTypeFile:
            //: text = [NTESLanguageManager getTextWithKey:@"File"];
            text = [LabelCell tinkleKey:StringFromCoarseData(kStr_classicStairsText)];//@"[文件]".nim_localized;
            //: break;
            break;
        //: case NIMMessageTypeTip:
        case NIMMessageTypeTip:
            //: text = message.text;
            text = message.text;
            //: break;
            break;
        //: case NIMMessageTypeRtcCallRecord: {
        case NIMMessageTypeRtcCallRecord: {
            //: NIMRtcCallRecordObject *record = message.messageObject;
            NIMRtcCallRecordObject *record = message.messageObject;
            //: return (record.callType == NIMRtcCallTypeAudio ? [NTESLanguageManager getTextWithKey:@"Internet_call"] : [NTESLanguageManager getTextWithKey:@"Video_chat"]);
            return (record.callType == NIMRtcCallTypeAudio ? [LabelCell tinkleKey:StringFromCoarseData(kStr_committeeName)] : [LabelCell tinkleKey:StringFromCoarseData(kStr_bureauOughtValue)]);
//            return (record.callType == NIMRtcCallTypeAudio ? @"[网络通话]" : @"[视频聊天]").nim_localized;
        }
        //: default:
        default:
            //: text = @"";
            text = @"";//@"[未知消息]".nim_localized;
    }
    //: return text;
    return text;
}

//: + (NSString *)notificationMessageContent:(NIMMessage *)message{
+ (NSString *)inputModelName:(NIMMessage *)message{
    //: NIMNotificationObject *object = message.messageObject;
    NIMNotificationObject *object = message.messageObject;
    //: if (object.notificationType == NIMNotificationTypeNetCall) {
    if (object.notificationType == NIMNotificationTypeNetCall) {
        //: NIMNetCallNotificationContent *content = (NIMNetCallNotificationContent *)object.content;
        NIMNetCallNotificationContent *content = (NIMNetCallNotificationContent *)object.content;
        //: if (content.callType == NIMNetCallTypeAudio) {
        if (content.callType == NIMNetCallTypeAudio) {
            //: return [NTESLanguageManager getTextWithKey:@"Internet_call"];
            return [LabelCell tinkleKey:StringFromCoarseData(kStr_committeeName)];//@"[网络通话]".nim_localized;
        }
        //: return [NTESLanguageManager getTextWithKey:@"Video_chat"];
        return [LabelCell tinkleKey:StringFromCoarseData(kStr_bureauOughtValue)];//@"[视频聊天]".nim_localized;
    }
    //: if (object.notificationType == NIMNotificationTypeTeam) {
    if (object.notificationType == NIMNotificationTypeTeam) {
        //: NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:message.session.sessionId];
        NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:message.session.sessionId];
        //: if (team.type == NIMTeamTypeNormal) {
        if (team.type == NIMTeamTypeNormal) {
            //: return [NTESLanguageManager getTextWithKey:@"Group_chat_information_update"];
            return [LabelCell tinkleKey:StringFromCoarseData(kStr_varyTitle)];//@"[讨论组信息更新]".nim_localized;
        //: }else{
        }else{

            //: NSString * flag=nil;
            NSString * flag=nil;
            //: NSString * title=nil;
            NSString * title=nil;
            //: NIMTeamNotificationContent *content = (NIMTeamNotificationContent*)object.content;
            NIMTeamNotificationContent *content = (NIMTeamNotificationContent*)object.content;
            //: switch (content.operationType) {
            switch (content.operationType) {
                    //: case NIMTeamOperationTypeUpdate:
                    case NIMTeamOperationTypeUpdate:

                        //: if ([[content attachment] isKindOfClass:[NIMUpdateTeamInfoAttachment class]]) {
                        if ([[content attachment] isKindOfClass:[NIMUpdateTeamInfoAttachment class]]) {
                            //: NIMUpdateTeamInfoAttachment *teamAttachment = (NIMUpdateTeamInfoAttachment *)[content attachment];
                            NIMUpdateTeamInfoAttachment *teamAttachment = (NIMUpdateTeamInfoAttachment *)[content attachment];
                            //: if ([teamAttachment.values count] == 1) {
                            if ([teamAttachment.values count] == 1) {
                                //: NIMTeamUpdateTag tag = [[[teamAttachment.values allKeys] firstObject] integerValue];
                                NIMTeamUpdateTag tag = [[[teamAttachment.values allKeys] firstObject] integerValue];
                                //: switch (tag) {
                                switch (tag) {
                                    //: case NIMTeamUpdateTagAnouncement:
                                    case NIMTeamUpdateTagAnouncement:
                                    {
                                        //: title=[[[teamAttachment.values allValues] firstObject] lowercaseString];
                                        title=[[[teamAttachment.values allValues] firstObject] lowercaseString];
                                        //: NSData* data = [title dataUsingEncoding:NSUTF8StringEncoding];
                                        NSData* data = [title dataUsingEncoding:NSUTF8StringEncoding];
                                        //: NSArray *datas = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
                                        NSArray *datas = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
                                        //: if([datas count]==0){
                                        if([datas count]==0){
                                            //: break;
                                            break;
                                        }
                                        //: title=[datas lastObject][@"title"];
                                        title=[datas lastObject][StringFromCoarseData(kStr_looOutsideBankingValue)];
                                        //: content=[datas lastObject][@"content"];
                                        content=[datas lastObject][StringFromCoarseData(kStr_speakData)];

                                       //记录群公告标志
                                        //记录messageid
                                        //: flag = [[NSUserDefaults standardUserDefaults] valueForKey:[[NSString alloc]initWithFormat:@"%@%@",@"teamgonggao_record_",message.messageId]];
                                        flag = [[NSUserDefaults standardUserDefaults] valueForKey:[[NSString alloc]initWithFormat:@"%@%@",StringFromCoarseData(kStr_resideCruiseSleeveText),message.messageId]];
                                        //: if(flag.length==0){
                                        if(flag.length==0){
                                            //: [[NSUserDefaults standardUserDefaults] setValue:@"1" forKey:[[NSString alloc]initWithFormat:@"%@%@",@"teamgonggao_record_",message.messageId]];
                                            [[NSUserDefaults standardUserDefaults] setValue:@"1" forKey:[[NSString alloc]initWithFormat:@"%@%@",StringFromCoarseData(kStr_resideCruiseSleeveText),message.messageId]];
                                            //: [[NSUserDefaults standardUserDefaults] setValue:@"1" forKey:[[NSString alloc]initWithFormat:@"%@%@",@"teamgonggao_",message.session.sessionId]];
                                            [[NSUserDefaults standardUserDefaults] setValue:@"1" forKey:[[NSString alloc]initWithFormat:@"%@%@",StringFromCoarseData(kStr_methodCurName),message.session.sessionId]];
                                            //记录标题和内容
                                            //: [[NSUserDefaults standardUserDefaults] setValue:title forKey:[[NSString alloc] initWithFormat:@"%@%@",@"teamgonggao_title_",message.session.sessionId]];
                                            [[NSUserDefaults standardUserDefaults] setValue:title forKey:[[NSString alloc] initWithFormat:@"%@%@",StringFromCoarseData(kStr_reignValue),message.session.sessionId]];
                                            //: [[NSUserDefaults standardUserDefaults] setValue:content forKey:[[NSString alloc] initWithFormat:@"%@%@",@"teamgonggao_content_",message.session.sessionId]];
                                            [[NSUserDefaults standardUserDefaults] setValue:content forKey:[[NSString alloc] initWithFormat:@"%@%@",StringFromCoarseData(kStr_cramContent),message.session.sessionId]];
                                        }

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

                        //: break;
                        break;
                    //: default:
                    default:
                        //: break;
                        break;
            }

            //: return [NTESLanguageManager getTextWithKey:@"Group_information_update"];
            return [LabelCell tinkleKey:StringFromCoarseData(kStr_withBankingText)];//@"[群信息更新]".nim_localized;
        }
    }

    //: if (object.notificationType == NIMNotificationTypeSuperTeam) {
    if (object.notificationType == NIMNotificationTypeSuperTeam) {
        //: return [NTESLanguageManager getTextWithKey:@"Super_Group_Information_Update"];
        return [LabelCell tinkleKey:StringFromCoarseData(kStr_reignCombineData)];//@"[超大群信息更新]".nim_localized;
    }
    //: return @"";
    return @"";//@"[未知消息]".nim_localized;LangKey(@"Unknown_message")
}

//: @end
@end

Byte * CoarseDataToCache(Byte *data) {
    int component = data[0];
    int throughout = data[1];
    Byte hard = data[2];
    int withPolicy = data[3];
    if (!component) return data + withPolicy;
    for (int i = withPolicy; i < withPolicy + throughout; i++) {
        int value = data[i] + hard;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[withPolicy + throughout] = 0;
    return data + withPolicy;
}

NSString *StringFromCoarseData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)CoarseDataToCache(data)];
}
