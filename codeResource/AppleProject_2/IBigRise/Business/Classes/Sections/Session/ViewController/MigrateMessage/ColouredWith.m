// __DEBUG__
// __CLOSE_PRINT__
//
//  ColouredWith.m
//  NIM
//
//  Created by Sampson on 2018/12/16.
//  Copyright © 2018 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESImportMessageDelegateImpl.h"
#import "ColouredWith.h"
//: #import "NTESRedPacketAttachment.h"
#import "LanguageEnter.h"
//: #import "NTESRedPacketTipAttachment.h"
#import "TitleAttachment.h"
//: #import "NTESJanKenPonAttachment.h"
#import "TeamAttachment.h"
//: #import "NTESWhiteboardAttachment.h"
#import "InsertShare.h"
//: #import "NTESSnapchatAttachment.h"
#import "BackgroundAttachment.h"

//: @implementation NTESImportMessageDelegateImpl
@implementation ColouredWith

// 对于自定义消息的类型，用户需自行处理是否支持历史消息迁移
//: - (BOOL)shouldImportMessage:(NIMMessage *)message {
- (BOOL)shouldImportMessage:(NIMMessage *)message {
    //: if (message.messageType == NIMMessageTypeCustom) {
    if (message.messageType == NIMMessageTypeCustom) {
        //: NIMCustomObject *customObject = message.messageObject;
        NIMCustomObject *customObject = message.messageObject;
        //: id<NIMCustomAttachment> attachment = customObject.attachment;
        id<NIMCustomAttachment> attachment = customObject.attachment;

        // 支持的自定义消息
        //: if ([attachment isKindOfClass:[NTESJanKenPonAttachment class]]) {
        if ([attachment isKindOfClass:[TeamAttachment class]]) {
            //: return YES;
            return YES;
        }

        // 其他类型的过滤
        //: return NO;
        return NO;
    }
    //: return YES;
    return YES;
}

//: - (void)onMessageWillImport:(NIMMessage *)message {
- (void)onMessageWillImport:(NIMMessage *)message {

}

//: @end
@end