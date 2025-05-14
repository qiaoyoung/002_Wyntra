
#import <Foundation/Foundation.h>

NSString *StringFromNarrowData(Byte *data);


//: 群消息单向撤回
Byte kStr_expoName[] = {9, 21, 14, 4, 245, 204, 178, 244, 196, 150, 244, 143, 189, 243, 155, 163, 243, 158, 159, 244, 160, 178, 243, 169, 172, 98};


//: 点对点消息撤回
Byte kStr_impulseData[] = {94, 21, 82, 5, 127, 57, 212, 11, 55, 1, 11, 57, 212, 11, 56, 8, 218, 56, 211, 1, 56, 228, 246, 55, 237, 240, 118};


//: 群消息撤回
Byte kStr_orationName[] = {68, 15, 75, 14, 238, 11, 25, 122, 103, 65, 139, 86, 68, 81, 50, 9, 239, 49, 1, 211, 49, 204, 250, 49, 221, 239, 48, 230, 233, 146};


//: 超大群消息撤回
Byte kStr_chronicWallValue[] = {68, 21, 41, 13, 81, 84, 116, 26, 67, 238, 236, 112, 58, 17, 223, 174, 14, 205, 208, 16, 231, 205, 15, 223, 177, 15, 170, 216, 15, 187, 205, 14, 196, 199, 169};


//: [系统通知][%@]
Byte kStr_stockValue[] = {48, 18, 92, 14, 146, 122, 143, 183, 46, 143, 150, 187, 57, 218, 183, 67, 15, 23, 67, 23, 251, 69, 220, 246, 67, 251, 1, 185, 183, 129, 156, 185, 237};


//: 点对点消息单向撤回
Byte kStr_userLegislativeValue[] = {88, 27, 13, 5, 223, 244, 143, 198, 242, 188, 198, 244, 143, 198, 243, 195, 149, 243, 142, 188, 242, 154, 162, 242, 157, 158, 243, 159, 177, 242, 168, 171, 88};

// __DEBUG__
// __CLOSE_PRINT__
//
//  ShareSave.m
//  NIM
//
//  Created by Genning on 2020/8/27.
//  Copyright © 2020 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESNoticationUtil.h"
#import "ShareSave.h"
//: #import "ZZZGlobalMacro.h"
#import "ZZZGlobalMacro.h"

//: @implementation NTESNoticationUtil
@implementation ShareSave

//: + (NSString *)revokeNoticationContent:(NIMRevokeMessageNotification *)note {
+ (NSString *)conversationView:(NIMRevokeMessageNotification *)note {
    //: NSMutableString *ret = [NSMutableString stringWithFormat:@"[系统通知][%@]".nim_localized,
    NSMutableString *ret = [NSMutableString stringWithFormat:StringFromNarrowData(kStr_stockValue).start,
                            //: [self revokeTypeContent:note.notificationType]];
                            [self paintTheLilyName:note.notificationType]];
    //: return ret;
    return ret;
}

//: + (NSString *)revokeTypeContent:(NIMRevokeMessageNotificationType)type {
+ (NSString *)paintTheLilyName:(NIMRevokeMessageNotificationType)type {
    //: NSString *ret = @"点对点消息撤回".nim_localized;
    NSString *ret = StringFromNarrowData(kStr_impulseData).start;
    //: switch (type) {
    switch (type) {
        //: case NIMRevokeMessageNotificationTypeP2P:
        case NIMRevokeMessageNotificationTypeP2P:
        {
            //: ret = @"点对点消息撤回".nim_localized;
            ret = StringFromNarrowData(kStr_impulseData).start;
            //: break;
            break;
        }
        //: case NIMRevokeMessageNotificationTypeTeam:
        case NIMRevokeMessageNotificationTypeTeam:
        {
            //: ret = @"群消息撤回".nim_localized;
            ret = StringFromNarrowData(kStr_orationName).start;
            //: break;
            break;
        }
        //: case NIMRevokeMessageNotificationTypeSuperTeam:
        case NIMRevokeMessageNotificationTypeSuperTeam:
        {
            //: ret = @"超大群消息撤回".nim_localized;
            ret = StringFromNarrowData(kStr_chronicWallValue).start;
            //: break;
            break;
        }
        //: case NIMRevokeMessageNotificationTypeP2POneWay:
        case NIMRevokeMessageNotificationTypeP2POneWay:
        {
            //: ret = @"点对点消息单向撤回".nim_localized;
            ret = StringFromNarrowData(kStr_userLegislativeValue).start;
            //: break;
            break;
        }
        //: case NIMRevokeMessageNotificationTypeTeamOneWay:
        case NIMRevokeMessageNotificationTypeTeamOneWay:
        {
            //: ret = @"群消息单向撤回".nim_localized;
            ret = StringFromNarrowData(kStr_expoName).start;
            //: break;
            break;
        }
        //: default:
        default:
            //: break;
            break;
    }
    //: return ret;
    return ret;
}

//: @end
@end

Byte * NarrowDataToCache(Byte *data) {
    int promulgator = data[0];
    int cruiseCapePiracy = data[1];
    Byte halfDozenMidst = data[2];
    int setup = data[3];
    if (!promulgator) return data + setup;
    for (int i = setup; i < setup + cruiseCapePiracy; i++) {
        int value = data[i] - halfDozenMidst;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[setup + cruiseCapePiracy] = 0;
    return data + setup;
}

NSString *StringFromNarrowData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)NarrowDataToCache(data)];
}
