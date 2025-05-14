
#import <Foundation/Foundation.h>

NSString *StringFromUserData(Byte *data);        


//: message_red_packet
Byte kStr_fluWillingData[] = {88, 18, 16, 10, 123, 159, 122, 165, 79, 251, 93, 85, 99, 99, 81, 87, 85, 79, 98, 85, 84, 79, 96, 81, 83, 91, 85, 100, 139};


//: message_guess
Byte kStr_inventGalValue[] = {37, 13, 17, 4, 92, 84, 98, 98, 80, 86, 84, 78, 86, 100, 84, 98, 98, 237};


//: 群名片
Byte kStr_byTeenName[] = {55, 9, 98, 13, 133, 191, 133, 99, 205, 167, 122, 79, 80, 133, 92, 66, 131, 46, 43, 133, 39, 37, 107};


//: retracted_message
Byte kStr_convictSleeveData[] = {24, 17, 30, 8, 226, 230, 174, 184, 84, 71, 86, 84, 67, 69, 86, 71, 70, 65, 79, 71, 85, 85, 67, 73, 71, 56};


//: home_fragment_yue
Byte kStr_darknessText[] = {63, 17, 49, 12, 75, 105, 142, 95, 90, 170, 244, 84, 55, 62, 60, 52, 46, 53, 65, 48, 54, 60, 52, 61, 67, 46, 72, 68, 52, 147};


//: home_fragment_bai
Byte kStr_goryPiracyData[] = {97, 17, 25, 5, 66, 79, 86, 84, 76, 70, 77, 89, 72, 78, 84, 76, 85, 91, 70, 73, 72, 80, 196};


//: home_fragment_liao
Byte kStr_tensionValue[] = {22, 18, 29, 5, 240, 75, 82, 80, 72, 66, 73, 85, 68, 74, 80, 72, 81, 87, 66, 79, 76, 68, 82, 216};


//: 个人名片
Byte kStr_botFluName[] = {84, 12, 86, 11, 70, 218, 240, 126, 136, 138, 160, 142, 98, 84, 142, 100, 100, 143, 58, 55, 145, 51, 49, 84};

// __DEBUG__
// __CLOSE_PRINT__
//
//  CommentTitle.m
//  NIM
//
//  Created by Netease on 2019/10/17.
//  Copyright © 2019 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESMessageUtil.h"
#import "CommentTitle.h"
//: #import "ZZZMessageUtil.h"
#import "ColorLabelUtil.h"
//: #import "NTESShareCardAttachment.h"
#import "AggregationTap.h"

//: @implementation NTESMessageUtil
@implementation CommentTitle

//: + (NSString *)messageContent:(NIMMessage *)message {
+ (NSString *)complete:(NIMMessage *)message {
    //: NSString *text = nil;
    NSString *text = nil;
    //: if (message.messageType == NIMMessageTypeCustom) {
    if (message.messageType == NIMMessageTypeCustom) {
        //: text = [self customMessageContent:message];
        text = [self collection:message];
    //: } else {
    } else {
        //: text = [ZZZMessageUtil messageContent:message];
        text = [ColorLabelUtil keyOfMy:message];
    }
    //: return text;
    return text;
}

//: + (NSString *)customMessageContent:(NIMMessage *)message {
+ (NSString *)collection:(NIMMessage *)message {
    //: NSString *text = nil;
    NSString *text = nil;
    //: NIMCustomObject *object = message.messageObject;
    NIMCustomObject *object = message.messageObject;
    //: if ([object.attachment isKindOfClass:[NTESSnapchatAttachment class]])
    if ([object.attachment isKindOfClass:[BackgroundAttachment class]])
    {
        //: text = [NTESLanguageManager getTextWithKey:@"home_fragment_yue"];
        text = [LabelCell tinkleKey:StringFromUserData(kStr_darknessText)];//@"[阅后即焚]".ntes_localized;
    }
    //: else if ([object.attachment isKindOfClass:[NTESJanKenPonAttachment class]])
    else if ([object.attachment isKindOfClass:[TeamAttachment class]])
    {
        //: text = [NTESLanguageManager getTextWithKey:@"message_guess"];
        text = [LabelCell tinkleKey:StringFromUserData(kStr_inventGalValue)];//@"[猜拳]".ntes_localized;
    }
    //: else if ([object.attachment isKindOfClass:[NTESWhiteboardAttachment class]])
    else if ([object.attachment isKindOfClass:[InsertShare class]])
    {
        //: text = [NTESLanguageManager getTextWithKey:@"home_fragment_bai"];
        text = [LabelCell tinkleKey:StringFromUserData(kStr_goryPiracyData)];//@"[白板]".ntes_localized;
    }
    //: else if ([object.attachment isKindOfClass:[NTESRedPacketAttachment class]])
    else if ([object.attachment isKindOfClass:[LanguageEnter class]])
    {
        //: text = [NTESLanguageManager getTextWithKey:@"message_red_packet"];
        text = [LabelCell tinkleKey:StringFromUserData(kStr_fluWillingData)];//@"[红包消息]".ntes_localized;
    }
    //: else if ([object.attachment isKindOfClass:[NTESRedPacketTipAttachment class]])
    else if ([object.attachment isKindOfClass:[TitleAttachment class]])
    {
        //: NTESRedPacketTipAttachment *attach = (NTESRedPacketTipAttachment *)object.attachment;
        TitleAttachment *attach = (TitleAttachment *)object.attachment;
        //: text = attach.formatedMessage;
        text = attach.withLabel;
    }
    //: else if ([object.attachment isKindOfClass:[NTESMultiRetweetAttachment class]])
    else if ([object.attachment isKindOfClass:[RefreshMessage class]])
    {
        //: text = [NTESLanguageManager getTextWithKey:@"home_fragment_liao"];
        text = [LabelCell tinkleKey:StringFromUserData(kStr_tensionValue)];//@"[聊天记录]".ntes_localized;
    }
    //: else if ([object.attachment isKindOfClass:[NTESShareCardAttachment class]])
    else if ([object.attachment isKindOfClass:[AggregationTap class]])
    {
        //: NTESShareCardAttachment *cardAtt = (NTESShareCardAttachment *)object.attachment;
        AggregationTap *cardAtt = (AggregationTap *)object.attachment;
        //: if ([cardAtt.type boolValue]) {
        if ([cardAtt.type boolValue]) {
            //: text = [NSString stringWithFormat:@"[%@]",@"群名片".nim_localized];
            text = [NSString stringWithFormat:@"[%@]",StringFromUserData(kStr_byTeenName).start];//@"[聊天记录]".ntes_localized;
        //: } else {
        } else {
            //: text = [NSString stringWithFormat:@"[%@]",@"个人名片".nim_localized];
            text = [NSString stringWithFormat:@"[%@]",StringFromUserData(kStr_botFluName).start];//@"[聊天记录]".ntes_localized;
        }
    }
    //: else if (message.messageSubType == 20)
    else if (message.messageSubType == 20)
    {
        //: text = [NTESLanguageManager getTextWithKey:@"retracted_message"];
        text = [LabelCell tinkleKey:StringFromUserData(kStr_convictSleeveData)];//撤回
    }
    //: else
    else
    {
        //: text = @"";
        text = @"";//@"[未知消息]".ntes_localized;LangKey(@"message_unknow_message")
    }
    //: return text;
    return text;
}
//: @end
@end

Byte * UserDataToCache(Byte *data) {
    int gelMessage = data[0];
    int sorryLayer = data[1];
    Byte stainViewImage = data[2];
    int merelyHeySector = data[3];
    if (!gelMessage) return data + merelyHeySector;
    for (int i = merelyHeySector; i < merelyHeySector + sorryLayer; i++) {
        int value = data[i] + stainViewImage;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[merelyHeySector + sorryLayer] = 0;
    return data + merelyHeySector;
}

NSString *StringFromUserData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)UserDataToCache(data)];
}
