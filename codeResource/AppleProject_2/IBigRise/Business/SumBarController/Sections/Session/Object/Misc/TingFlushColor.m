
#import <Foundation/Foundation.h>

NSString *StringFromPolicyStopData(Byte *data);


//: init_manager_nim_status_bar_image_message
Byte kStr_layerData[] = {78, 41, 82, 14, 173, 66, 20, 174, 52, 193, 31, 170, 153, 14, 187, 192, 187, 198, 177, 191, 179, 192, 179, 185, 183, 196, 177, 192, 187, 191, 177, 197, 198, 179, 198, 199, 197, 177, 180, 179, 196, 177, 187, 191, 179, 185, 183, 177, 191, 183, 197, 197, 179, 185, 183, 2};


//: init_manager_nim_status_bar_video_message
Byte kStr_sessionExtensiveValue[] = {1, 41, 5, 11, 175, 37, 25, 253, 192, 155, 103, 110, 115, 110, 121, 100, 114, 102, 115, 102, 108, 106, 119, 100, 115, 110, 114, 100, 120, 121, 102, 121, 122, 120, 100, 103, 102, 119, 100, 123, 110, 105, 106, 116, 100, 114, 106, 120, 120, 102, 108, 106, 206};


//: init_manager_nim_status_bar_audio_message
Byte kStr_withIllName[] = {31, 41, 22, 7, 112, 133, 62, 127, 132, 127, 138, 117, 131, 119, 132, 119, 125, 123, 136, 117, 132, 127, 131, 117, 137, 138, 119, 138, 139, 137, 117, 120, 119, 136, 117, 119, 139, 122, 127, 133, 117, 131, 123, 137, 137, 119, 125, 123, 212};


//: retracted_message
Byte kStr_hopefulText[] = {22, 17, 70, 4, 184, 171, 186, 184, 167, 169, 186, 171, 170, 165, 179, 171, 185, 185, 167, 173, 171, 77};


//: 发来了一个文件
Byte kStr_tartData[] = {1, 21, 97, 11, 5, 153, 149, 156, 164, 246, 227, 70, 240, 242, 71, 254, 6, 69, 27, 231, 69, 25, 225, 69, 25, 11, 71, 247, 232, 69, 28, 23, 109};


//: 发来了猜拳信息
Byte kStr_sportValue[] = {87, 21, 69, 7, 166, 154, 238, 42, 212, 214, 43, 226, 234, 41, 255, 203, 44, 209, 225, 43, 208, 248, 41, 4, 230, 43, 198, 244, 179};


//: 发来了阅后即焚
Byte kStr_regulatoryName[] = {36, 21, 98, 9, 114, 217, 58, 232, 177, 71, 241, 243, 72, 255, 7, 70, 28, 232, 75, 250, 231, 71, 242, 240, 71, 239, 21, 73, 230, 252, 7};


//: 发来一段聊天记录
Byte kStr_alongsideValue[] = {62, 24, 80, 8, 110, 110, 76, 168, 53, 223, 225, 54, 237, 245, 52, 8, 208, 54, 254, 5, 56, 209, 218, 53, 244, 249, 56, 254, 0, 53, 13, 229, 115};


//: 发来了一个红包
Byte kStr_recordingSharpData[] = {48, 21, 91, 10, 211, 221, 185, 249, 131, 42, 64, 234, 236, 65, 248, 0, 63, 21, 225, 63, 19, 219, 63, 19, 5, 66, 21, 253, 64, 231, 224, 90};

// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESSessionMsgHelper.m
//  NIMDemo
//
//  Created by ght on 15-1-28.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESSessionMsgConverter.h"
#import "TingFlushColor.h"
//: #import "NSString+NTES.h"
#import "NSString+Item.h"
//: #import "NTESJanKenPonAttachment.h"
#import "TeamAttachment.h"
//: #import "NTESSnapchatAttachment.h"
#import "BackgroundAttachment.h"
//: #import "NTESWhiteboardAttachment.h"
#import "InsertShare.h"
//: #import "NTESRedPacketAttachment.h"
#import "LanguageEnter.h"
//: #import "NTESRedPacketTipAttachment.h"
#import "TitleAttachment.h"
//: #import "NTESMultiRetweetAttachment.h"
#import "RefreshMessage.h"
//: #import "NTESBundleSetting.h"
#import "BackgroundTingIncidentGreen.h"

//: @implementation NTESSessionMsgConverter
@implementation TingFlushColor


//: + (NIMMessage*)msgWithText:(NSString*)text
+ (NIMMessage*)sum:(NSString*)text
{
    //: NIMMessage *textMessage = [[NIMMessage alloc] init];
    NIMMessage *textMessage = [[NIMMessage alloc] init];
    //: textMessage.text = text;
    textMessage.text = text;
    //: textMessage.setting = [[NIMMessageSetting alloc] init];
    textMessage.setting = [[NIMMessageSetting alloc] init];
    //: textMessage.setting.teamReceiptEnabled = YES;
    textMessage.setting.teamReceiptEnabled = YES;

    //: textMessage.setting.apnsWithPrefix = [[NTESBundleSetting sharedConfig] enableAPNsPrefix];
    textMessage.setting.apnsWithPrefix = [[BackgroundTingIncidentGreen pickApart] success];
    //: textMessage.apnsMemberOption = [[NIMMessageApnsMemberOption alloc] init];
    textMessage.apnsMemberOption = [[NIMMessageApnsMemberOption alloc] init];
    //: textMessage.apnsMemberOption.forcePush = [[NTESBundleSetting sharedConfig] enableTeamAPNsForce];
    textMessage.apnsMemberOption.forcePush = [[BackgroundTingIncidentGreen pickApart] size];
    //: textMessage.env = [[NTESBundleSetting sharedConfig] messageEnv];
    textMessage.env = [[BackgroundTingIncidentGreen pickApart] assign];
    //: return textMessage;
    return textMessage;
}

//: + (NIMMessage*)msgWithImage:(UIImage*)image
+ (NIMMessage*)load:(UIImage*)image
{
    //: NIMImageObject * imageObject = [[NIMImageObject alloc] initWithImage:image];
    NIMImageObject * imageObject = [[NIMImageObject alloc] initWithImage:image];
   //: return [NTESSessionMsgConverter generateImageMessage:imageObject];
   return [TingFlushColor change:imageObject];
}

//: + (NIMMessage *)msgWithImagePath:(NSString*)path
+ (NIMMessage *)stateInputColor:(NSString*)path
{
    //: NIMImageObject * imageObject = [[NIMImageObject alloc] initWithFilepath:path];
    NIMImageObject * imageObject = [[NIMImageObject alloc] initWithFilepath:path];
    //: return [NTESSessionMsgConverter generateImageMessage:imageObject];
    return [TingFlushColor change:imageObject];
}

//: + (NIMMessage *)generateImageMessage:(NIMImageObject *)imageObject
+ (NIMMessage *)change:(NIMImageObject *)imageObject
{
//    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
//    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm"];
//    NSString *dateString = [dateFormatter stringFromDate:[NSDate date]];
    //: imageObject.displayName = [NTESSessionMsgConverter generateUUID];
    imageObject.displayName = [TingFlushColor loadInsert];
    //: NIMImageOption *option = [[NIMImageOption alloc] init];
    NIMImageOption *option = [[NIMImageOption alloc] init];
    //: option.compressQuality = 0.8;
    option.compressQuality = 0.8;
    //: imageObject.option = option;
    imageObject.option = option;
    //: NIMMessage *message = [[NIMMessage alloc] init];
    NIMMessage *message = [[NIMMessage alloc] init];
    //: message.messageObject = imageObject;
    message.messageObject = imageObject;
    //: message.apnsContent = [NTESLanguageManager getTextWithKey:@"init_manager_nim_status_bar_image_message"];
    message.apnsContent = [LabelCell tinkleKey:StringFromPolicyStopData(kStr_layerData)];
    //: NIMMessageSetting *setting = [[NIMMessageSetting alloc] init];
    NIMMessageSetting *setting = [[NIMMessageSetting alloc] init];
    //: setting.teamReceiptEnabled = YES;
    setting.teamReceiptEnabled = YES;

    //: message.setting = setting;
    message.setting = setting;
    //: setting.apnsWithPrefix = [[NTESBundleSetting sharedConfig] enableAPNsPrefix];
    setting.apnsWithPrefix = [[BackgroundTingIncidentGreen pickApart] success];
    //: message.apnsMemberOption = [[NIMMessageApnsMemberOption alloc] init];
    message.apnsMemberOption = [[NIMMessageApnsMemberOption alloc] init];
    //: message.apnsMemberOption.forcePush = [[NTESBundleSetting sharedConfig] enableTeamAPNsForce];
    message.apnsMemberOption.forcePush = [[BackgroundTingIncidentGreen pickApart] size];
    //: message.env = [[NTESBundleSetting sharedConfig] messageEnv];
    message.env = [[BackgroundTingIncidentGreen pickApart] assign];
    //: return message;
    return message;
}

//: + (NIMMessage*)msgWithAudio:(NSString*)filePath
+ (NIMMessage*)phone:(NSString*)filePath
{
    //: NIMAudioObject *audioObject = [[NIMAudioObject alloc] initWithSourcePath:filePath];
    NIMAudioObject *audioObject = [[NIMAudioObject alloc] initWithSourcePath:filePath];
    //: NIMMessage *message = [[NIMMessage alloc] init];
    NIMMessage *message = [[NIMMessage alloc] init];
    //: message.messageObject = audioObject;
    message.messageObject = audioObject;
    //: message.apnsContent = [NTESLanguageManager getTextWithKey:@"init_manager_nim_status_bar_audio_message"];
    message.apnsContent = [LabelCell tinkleKey:StringFromPolicyStopData(kStr_withIllName)];
    //: NIMMessageSetting *setting = [[NIMMessageSetting alloc] init];
    NIMMessageSetting *setting = [[NIMMessageSetting alloc] init];
    //: setting.teamReceiptEnabled = YES;
    setting.teamReceiptEnabled = YES;

    //: message.setting = setting;
    message.setting = setting;
    //: message.env = [[NTESBundleSetting sharedConfig] messageEnv];
    message.env = [[BackgroundTingIncidentGreen pickApart] assign];
    //: return message;
    return message;
}

//: + (NIMMessage*)msgWithVideo:(NSString*)filePath
+ (NIMMessage*)telecasting:(NSString*)filePath
{
//    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
//    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm"];
//    NSString *dateString = [dateFormatter stringFromDate:[NSDate date]];
    //: NIMVideoObject *videoObject = [[NIMVideoObject alloc] initWithSourcePath:filePath];
    NIMVideoObject *videoObject = [[NIMVideoObject alloc] initWithSourcePath:filePath];
    //: videoObject.displayName = [NTESSessionMsgConverter generateUUID];
    videoObject.displayName = [TingFlushColor loadInsert];
    //: NIMMessage *message = [[NIMMessage alloc] init];
    NIMMessage *message = [[NIMMessage alloc] init];
    //: message.messageObject = videoObject;
    message.messageObject = videoObject;
    //: message.apnsContent = [NTESLanguageManager getTextWithKey:@"init_manager_nim_status_bar_video_message"];
    message.apnsContent = [LabelCell tinkleKey:StringFromPolicyStopData(kStr_sessionExtensiveValue)];
    //: NIMMessageSetting *setting = [[NIMMessageSetting alloc] init];
    NIMMessageSetting *setting = [[NIMMessageSetting alloc] init];
    //: setting.teamReceiptEnabled = YES;
    setting.teamReceiptEnabled = YES;

    //: message.setting = setting;
    message.setting = setting;
    //: message.env = [[NTESBundleSetting sharedConfig] messageEnv];
    message.env = [[BackgroundTingIncidentGreen pickApart] assign];
    //: return message;
    return message;
}


//: + (NIMMessage*)msgWithJenKenPon:(NTESJanKenPonAttachment *)attachment
+ (NIMMessage*)mode:(TeamAttachment *)attachment
{
    //: NIMMessage *message = [[NIMMessage alloc] init];
    NIMMessage *message = [[NIMMessage alloc] init];
    //: NIMCustomObject *customObject = [[NIMCustomObject alloc] init];
    NIMCustomObject *customObject = [[NIMCustomObject alloc] init];
    //: customObject.attachment = attachment;
    customObject.attachment = attachment;
    //: message.messageObject = customObject;
    message.messageObject = customObject;
    //: message.apnsContent = @"发来了猜拳信息".ntes_localized;
    message.apnsContent = StringFromPolicyStopData(kStr_sportValue).colorLocalized;
    //: message.setting = [[NIMMessageSetting alloc] init];
    message.setting = [[NIMMessageSetting alloc] init];
    //: message.setting.teamReceiptEnabled = YES;
    message.setting.teamReceiptEnabled = YES;

    //: message.setting.apnsWithPrefix = [[NTESBundleSetting sharedConfig] enableAPNsPrefix];
    message.setting.apnsWithPrefix = [[BackgroundTingIncidentGreen pickApart] success];
    //: message.apnsMemberOption = [[NIMMessageApnsMemberOption alloc] init];
    message.apnsMemberOption = [[NIMMessageApnsMemberOption alloc] init];
    //: message.apnsMemberOption.forcePush = [[NTESBundleSetting sharedConfig] enableTeamAPNsForce];
    message.apnsMemberOption.forcePush = [[BackgroundTingIncidentGreen pickApart] size];
    //: message.env = [[NTESBundleSetting sharedConfig] messageEnv];
    message.env = [[BackgroundTingIncidentGreen pickApart] assign];
    //: return message;
    return message;
}

//: + (NIMMessage*)msgWithSnapchatAttachment:(NTESSnapchatAttachment *)attachment
+ (NIMMessage*)smartDisableShould:(BackgroundAttachment *)attachment
{
    //: NIMMessage *message = [[NIMMessage alloc] init];
    NIMMessage *message = [[NIMMessage alloc] init];
    //: NIMCustomObject *customObject = [[NIMCustomObject alloc] init];
    NIMCustomObject *customObject = [[NIMCustomObject alloc] init];
    //: customObject.attachment = attachment;
    customObject.attachment = attachment;
    //: message.messageObject = customObject;
    message.messageObject = customObject;
    //: message.apnsContent = @"发来了阅后即焚".ntes_localized;
    message.apnsContent = StringFromPolicyStopData(kStr_regulatoryName).colorLocalized;

    //: NIMMessageSetting *setting = [[NIMMessageSetting alloc] init];
    NIMMessageSetting *setting = [[NIMMessageSetting alloc] init];
    //: setting.historyEnabled = NO;
    setting.historyEnabled = NO;
    //: setting.roamingEnabled = NO;
    setting.roamingEnabled = NO;
    //: setting.syncEnabled = NO;
    setting.syncEnabled = NO;
    //: setting.teamReceiptEnabled = YES;
    setting.teamReceiptEnabled = YES;

    //: message.setting = setting;
    message.setting = setting;

    //: message.env = [[NTESBundleSetting sharedConfig] messageEnv];
    message.env = [[BackgroundTingIncidentGreen pickApart] assign];

    //: return message;
    return message;
}


//: + (NIMMessage*)msgWithFilePath:(NSString*)path{
+ (NIMMessage*)background:(NSString*)path{
    //: NIMFileObject *fileObject = [[NIMFileObject alloc] initWithSourcePath:path];
    NIMFileObject *fileObject = [[NIMFileObject alloc] initWithSourcePath:path];
    //: NSString *displayName = path.lastPathComponent;
    NSString *displayName = path.lastPathComponent;
    //: fileObject.displayName = displayName;
    fileObject.displayName = displayName;
    //: NIMMessage *message = [[NIMMessage alloc] init];
    NIMMessage *message = [[NIMMessage alloc] init];
    //: message.messageObject = fileObject;
    message.messageObject = fileObject;
    //: message.apnsContent = @"发来了一个文件".ntes_localized;
    message.apnsContent = StringFromPolicyStopData(kStr_tartData).colorLocalized;
    //: NIMMessageSetting *setting = [[NIMMessageSetting alloc] init];
    NIMMessageSetting *setting = [[NIMMessageSetting alloc] init];
    //: setting.teamReceiptEnabled = YES;
    setting.teamReceiptEnabled = YES;

    //: message.setting = setting;
    message.setting = setting;
    //: message.setting.apnsWithPrefix = [[NTESBundleSetting sharedConfig] enableAPNsPrefix];
    message.setting.apnsWithPrefix = [[BackgroundTingIncidentGreen pickApart] success];
    //: message.apnsMemberOption = [[NIMMessageApnsMemberOption alloc] init];
    message.apnsMemberOption = [[NIMMessageApnsMemberOption alloc] init];
    //: message.apnsMemberOption.forcePush = [[NTESBundleSetting sharedConfig] enableTeamAPNsForce];
    message.apnsMemberOption.forcePush = [[BackgroundTingIncidentGreen pickApart] size];
    //: message.env = [[NTESBundleSetting sharedConfig] messageEnv];
    message.env = [[BackgroundTingIncidentGreen pickApart] assign];
    //: return message;
    return message;
}

//: + (NIMMessage*)msgWithFileData:(NSData*)data extension:(NSString*)extension{
+ (NIMMessage*)graduatedTable:(NSData*)data wait:(NSString*)extension{
    //: NIMFileObject *fileObject = [[NIMFileObject alloc] initWithData:data extension:extension];
    NIMFileObject *fileObject = [[NIMFileObject alloc] initWithData:data extension:extension];
    //: NSString *displayName;
    NSString *displayName;
    //: if (extension.length) {
    if (extension.length) {
        //: displayName = [NSString stringWithFormat:@"%@.%@",[NSUUID UUID].UUIDString.MD5String,extension];
        displayName = [NSString stringWithFormat:@"%@.%@",[NSUUID UUID].UUIDString.with,extension];
    //: }else{
    }else{
        //: displayName = [NSString stringWithFormat:@"%@",[NSUUID UUID].UUIDString.MD5String];
        displayName = [NSString stringWithFormat:@"%@",[NSUUID UUID].UUIDString.with];
    }
    //: fileObject.displayName = displayName;
    fileObject.displayName = displayName;
    //: NIMMessage *message = [[NIMMessage alloc] init];
    NIMMessage *message = [[NIMMessage alloc] init];
    //: message.messageObject = fileObject;
    message.messageObject = fileObject;
    //: message.apnsContent = @"发来了一个文件".ntes_localized;
    message.apnsContent = StringFromPolicyStopData(kStr_tartData).colorLocalized;
    //: NIMMessageSetting *setting = [[NIMMessageSetting alloc] init];
    NIMMessageSetting *setting = [[NIMMessageSetting alloc] init];
    //: setting.teamReceiptEnabled = YES;
    setting.teamReceiptEnabled = YES;

    //: message.setting = setting;
    message.setting = setting;
    //: message.env = [[NTESBundleSetting sharedConfig] messageEnv];
    message.env = [[BackgroundTingIncidentGreen pickApart] assign];
    //: return message;
    return message;
}

//: + (NIMMessage*)msgWithWhiteboardAttachment:(NTESWhiteboardAttachment *)attachment
+ (NIMMessage*)streetwiseWhiteboardAttachment:(InsertShare *)attachment
{
    //: NIMMessage *message = [[NIMMessage alloc] init];
    NIMMessage *message = [[NIMMessage alloc] init];
    //: NIMCustomObject *customObject = [[NIMCustomObject alloc] init];
    NIMCustomObject *customObject = [[NIMCustomObject alloc] init];
    //: customObject.attachment = attachment;
    customObject.attachment = attachment;
    //: message.messageObject = customObject;
    message.messageObject = customObject;

    //: NIMMessageSetting *setting = [[NIMMessageSetting alloc] init];
    NIMMessageSetting *setting = [[NIMMessageSetting alloc] init];
    //: setting.apnsEnabled = NO;
    setting.apnsEnabled = NO;
    //: setting.teamReceiptEnabled = YES;
    setting.teamReceiptEnabled = YES;

    //: message.setting = setting;
    message.setting = setting;

    //: message.env = [[NTESBundleSetting sharedConfig] messageEnv];
    message.env = [[BackgroundTingIncidentGreen pickApart] assign];
    //: return message;
    return message;
}


//: + (NIMMessage *)msgWithTip:(NSString *)tip
+ (NIMMessage *)modelAcross:(NSString *)tip
{
    //: NIMMessage *message = [[NIMMessage alloc] init];
    NIMMessage *message = [[NIMMessage alloc] init];
    //: NIMTipObject *tipObject = [[NIMTipObject alloc] init];
    NIMTipObject *tipObject = [[NIMTipObject alloc] init];
    //: message.messageObject = tipObject;
    message.messageObject = tipObject;
    //: message.text = tip;
    message.text = tip;
    //: NIMMessageSetting *setting = [[NIMMessageSetting alloc] init];
    NIMMessageSetting *setting = [[NIMMessageSetting alloc] init];
    //: setting.apnsEnabled = NO;
    setting.apnsEnabled = NO;
    //: setting.shouldBeCounted = NO;
    setting.shouldBeCounted = NO;
    //: setting.teamReceiptEnabled = YES;
    setting.teamReceiptEnabled = YES;

    //: message.setting = setting;
    message.setting = setting;
    //: message.env = [[NTESBundleSetting sharedConfig] messageEnv];
    message.env = [[BackgroundTingIncidentGreen pickApart] assign];
    //: return message;
    return message;
}

//: + (NIMMessage *)msgWithTip:(NSString *)tip
+ (NIMMessage *)infoWith:(NSString *)tip
              //: revokeAttach:(NSString *)revokeAttach
              registerExt:(NSString *)revokeAttach
         //: revokeCallbackExt:(NSString *)revokeCallbackExt {
         tapTip:(NSString *)revokeCallbackExt {
    //: NIMMessage *message = [[NIMMessage alloc] init];
    NIMMessage *message = [[NIMMessage alloc] init];
    //: NIMTipObject *tipObject = [[NIMTipObject alloc] initWithAttach:revokeAttach
    NIMTipObject *tipObject = [[NIMTipObject alloc] initWithAttach:revokeAttach
                                                          //: callbackExt:revokeCallbackExt];
                                                          callbackExt:revokeCallbackExt];
    //: message.messageObject = tipObject;
    message.messageObject = tipObject;
    //: message.text = tip;
    message.text = tip;
    //: NIMMessageSetting *setting = [[NIMMessageSetting alloc] init];
    NIMMessageSetting *setting = [[NIMMessageSetting alloc] init];
    //: setting.apnsEnabled = NO;
    setting.apnsEnabled = NO;
    //: setting.shouldBeCounted = NO;
    setting.shouldBeCounted = NO;
    //: setting.teamReceiptEnabled = YES;
    setting.teamReceiptEnabled = YES;

    //: message.setting = setting;
    message.setting = setting;
    //: message.env = [[NTESBundleSetting sharedConfig] messageEnv];
    message.env = [[BackgroundTingIncidentGreen pickApart] assign];
    //: return message;
    return message;
}


//: + (NIMMessage *)msgWithRedPacket:(NTESRedPacketAttachment *)attachment
+ (NIMMessage *)session:(LanguageEnter *)attachment
{
    //: NIMMessage *message = [[NIMMessage alloc] init];
    NIMMessage *message = [[NIMMessage alloc] init];
    //: NIMCustomObject *customObject = [[NIMCustomObject alloc] init];
    NIMCustomObject *customObject = [[NIMCustomObject alloc] init];
    //: customObject.attachment = attachment;
    customObject.attachment = attachment;
    //: message.messageObject = customObject;
    message.messageObject = customObject;

    //: message.apnsContent = @"发来了一个红包".ntes_localized;
    message.apnsContent = StringFromPolicyStopData(kStr_recordingSharpData).colorLocalized;

    //: NIMMessageSetting *setting = [[NIMMessageSetting alloc] init];
    NIMMessageSetting *setting = [[NIMMessageSetting alloc] init];
    //: setting.historyEnabled = NO;
    setting.historyEnabled = NO;
    //: setting.teamReceiptEnabled = YES;
    setting.teamReceiptEnabled = YES;

    //: message.setting = setting;
    message.setting = setting;
    //: message.env = [[NTESBundleSetting sharedConfig] messageEnv];
    message.env = [[BackgroundTingIncidentGreen pickApart] assign];
    //: return message;
    return message;
}

//: + (NIMMessage *)msgWithRedPacketTip:(NTESRedPacketTipAttachment *)attachment
+ (NIMMessage *)mediaBubble:(TitleAttachment *)attachment
{
    //: NIMMessage *message = [[NIMMessage alloc] init];
    NIMMessage *message = [[NIMMessage alloc] init];
    //: NIMCustomObject *customObject = [[NIMCustomObject alloc] init];
    NIMCustomObject *customObject = [[NIMCustomObject alloc] init];
    //: customObject.attachment = attachment;
    customObject.attachment = attachment;
    //: message.messageObject = customObject;
    message.messageObject = customObject;

    //: NIMMessageSetting *setting = [[NIMMessageSetting alloc] init];
    NIMMessageSetting *setting = [[NIMMessageSetting alloc] init];
    //: setting.apnsEnabled = NO;
    setting.apnsEnabled = NO;
    //: setting.shouldBeCounted = NO;
    setting.shouldBeCounted = NO;
    //: setting.historyEnabled = NO;
    setting.historyEnabled = NO;
    //: setting.teamReceiptEnabled = YES;
    setting.teamReceiptEnabled = YES;

    //: message.setting = setting;
    message.setting = setting;
    //: message.env = [[NTESBundleSetting sharedConfig] messageEnv];
    message.env = [[BackgroundTingIncidentGreen pickApart] assign];

    //: return message;
    return message;
}

//: + (NIMMessage *)msgWithMultiRetweetAttachment:(NTESMultiRetweetAttachment *)attachment {
+ (NIMMessage *)toNumber:(RefreshMessage *)attachment {
    //: NIMMessage *message = [[NIMMessage alloc] init];
    NIMMessage *message = [[NIMMessage alloc] init];
    //: NIMCustomObject *customObject = [[NIMCustomObject alloc] init];
    NIMCustomObject *customObject = [[NIMCustomObject alloc] init];
    //: customObject.attachment = attachment;
    customObject.attachment = attachment;
    //: message.messageObject = customObject;
    message.messageObject = customObject;
    //: message.apnsContent = @"发来一段聊天记录".ntes_localized;
    message.apnsContent = StringFromPolicyStopData(kStr_alongsideValue).colorLocalized;
    //: message.setting = [[NIMMessageSetting alloc] init];
    message.setting = [[NIMMessageSetting alloc] init];
    //: message.setting.teamReceiptEnabled = YES;
    message.setting.teamReceiptEnabled = YES;

    //: message.setting.apnsWithPrefix = [[NTESBundleSetting sharedConfig] enableAPNsPrefix];
    message.setting.apnsWithPrefix = [[BackgroundTingIncidentGreen pickApart] success];
    //: message.apnsMemberOption = [[NIMMessageApnsMemberOption alloc] init];
    message.apnsMemberOption = [[NIMMessageApnsMemberOption alloc] init];
    //: message.apnsMemberOption.forcePush = [[NTESBundleSetting sharedConfig] enableTeamAPNsForce];
    message.apnsMemberOption.forcePush = [[BackgroundTingIncidentGreen pickApart] size];
    //: message.env = [[NTESBundleSetting sharedConfig] messageEnv];
    message.env = [[BackgroundTingIncidentGreen pickApart] assign];
    //: return message;
    return message;
}

//: + (NIMMessage *)msgWithRevocationMessage:(NIMMessage *)revocationMessage
+ (NIMMessage *)color:(NIMMessage *)revocationMessage
{
    //: NIMMessage *message = [[NIMMessage alloc] init];
    NIMMessage *message = [[NIMMessage alloc] init];
    //: NIMCustomObject *customObject = [[NIMCustomObject alloc] init];
    NIMCustomObject *customObject = [[NIMCustomObject alloc] init];
    //: message.messageObject = customObject;
    message.messageObject = customObject;
    //: message.messageSubType = 20;
    message.messageSubType = 20;

    //: NSString *msg = [NSString stringWithFormat:@"%@%@", revocationMessage.senderName,[NTESLanguageManager getTextWithKey:@"retracted_message"]];
    NSString *msg = [NSString stringWithFormat:@"%@%@", revocationMessage.senderName,[LabelCell tinkleKey:StringFromPolicyStopData(kStr_hopefulText)]];

    //: NIMCustomObject *object = revocationMessage.messageObject;
    NIMCustomObject *object = revocationMessage.messageObject;
    //: if (object)
    if (object)
    {
        //: if ([object isKindOfClass:[NIMVideoObject class]]) {
        if ([object isKindOfClass:[NIMVideoObject class]]) {
            //: NIMVideoObject *obj = (NIMVideoObject *)object;
            NIMVideoObject *obj = (NIMVideoObject *)object;
            //: msg = [NSString stringWithFormat:@"%@:%@->%@",msg,@"[视频]".nim_localized, obj.coverUrl];
            msg = [NSString stringWithFormat:@"%@:%@->%@",msg,@"[视频]".start, obj.coverUrl];
        //: } else if ([object isKindOfClass:[NIMImageObject class]]){
        } else if ([object isKindOfClass:[NIMImageObject class]]){
            //: NIMImageObject *obj = (NIMImageObject *)object;
            NIMImageObject *obj = (NIMImageObject *)object;
            //: msg = [NSString stringWithFormat:@"%@:%@->%@",msg,@"[图片]".nim_localized, obj.url];
            msg = [NSString stringWithFormat:@"%@:%@->%@",msg,@"[图片]".start, obj.url];
        //: } else if ([object isKindOfClass:[NIMAudioObject class]]){
        } else if ([object isKindOfClass:[NIMAudioObject class]]){
            //: NIMAudioObject *obj = (NIMAudioObject *)object;
            NIMAudioObject *obj = (NIMAudioObject *)object;
            //: msg = [NSString stringWithFormat:@"%@:%@->%@",msg,@"[语音]".nim_localized, obj.url];
            msg = [NSString stringWithFormat:@"%@:%@->%@",msg,@"[语音]".start, obj.url];
        }

    //: } else {
    } else {
        //: msg = [NSString stringWithFormat:@"%@:%@",msg,revocationMessage.text?:@""];
        msg = [NSString stringWithFormat:@"%@:%@",msg,revocationMessage.text?:@""];
    }

    //: message.text = msg;
    message.text = msg;

    //: NIMMessageSetting *setting = [[NIMMessageSetting alloc] init];
    NIMMessageSetting *setting = [[NIMMessageSetting alloc] init];
    //: setting.historyEnabled = YES;
    setting.historyEnabled = YES;
    //: setting.apnsEnabled = NO;
    setting.apnsEnabled = NO;
    //: setting.shouldBeCounted = NO;
    setting.shouldBeCounted = NO;
    //: setting.teamReceiptEnabled = YES;
    setting.teamReceiptEnabled = YES;

    //: message.setting = setting;
    message.setting = setting;
    //: return message;
    return message;
}

//: + (NSString *)generateUUID {
+ (NSString *)loadInsert {

    // 创建一个UUID
    //: CFUUIDRef uuidObject = CFUUIDCreate(kCFAllocatorDefault);
    CFUUIDRef uuidObject = CFUUIDCreate(kCFAllocatorDefault);
    // 转换为字符串
    //: NSString *uuidString = (__bridge_transfer NSString *)CFUUIDCreateString(kCFAllocatorDefault, uuidObject);
    NSString *uuidString = (__bridge_transfer NSString *)CFUUIDCreateString(kCFAllocatorDefault, uuidObject);
    // 释放UUID对象
    //: CFRelease(uuidObject);
    CFRelease(uuidObject);
    //: return uuidString;
    return uuidString;
}

//: @end
@end

Byte * PolicyStopDataToCache(Byte *data) {
    int plot = data[0];
    int forbid = data[1];
    Byte fingerCircle = data[2];
    int bloodstained = data[3];
    if (!plot) return data + bloodstained;
    for (int i = bloodstained; i < bloodstained + forbid; i++) {
        int value = data[i] - fingerCircle;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[bloodstained + forbid] = 0;
    return data + bloodstained;
}

NSString *StringFromPolicyStopData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)PolicyStopDataToCache(data)];
}
