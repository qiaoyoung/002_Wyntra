
#import <Foundation/Foundation.h>

NSString *StringFromFinishData(Byte *data);


//: value
Byte kStr_documentaryText[] = {52, 5, 3, 101, 117, 108, 97, 118, 226};


//: key
Byte kStr_storeValue[] = {99, 3, 3, 121, 101, 107, 113};


//: 发来了一段语音
Byte kStr_federalData[] = {8, 21, 8, 204, 80, 201, 198, 180, 179, 159, 233, 173, 175, 232, 181, 174, 230, 128, 184, 228, 134, 186, 228, 165, 157, 230, 145, 143, 229, 245};


//: nim_test_msg_env
Byte kStr_rangeContent[] = {9, 16, 8, 231, 93, 192, 28, 125, 118, 110, 101, 95, 103, 115, 109, 95, 116, 115, 101, 116, 95, 109, 105, 110, 169};


//: 发来了一段视频
Byte kStr_saltGoryData[] = {70, 21, 10, 151, 129, 31, 10, 41, 68, 71, 145, 162, 233, 134, 167, 232, 181, 174, 230, 128, 184, 228, 134, 186, 228, 165, 157, 230, 145, 143, 229, 63};


//: 你收到了一条快捷评论
Byte kStr_nonprofitValue[] = {27, 30, 8, 18, 97, 8, 17, 1, 186, 174, 232, 132, 175, 232, 183, 141, 230, 171, 191, 229, 161, 157, 230, 128, 184, 228, 134, 186, 228, 176, 136, 229, 182, 148, 230, 160, 189, 228, 150};


//: apns-collapse-id
Byte kStr_scrimPhysicallyData[] = {56, 16, 4, 1, 100, 105, 45, 101, 115, 112, 97, 108, 108, 111, 99, 45, 115, 110, 112, 97, 185};


//: init_manager_nim_status_bar_image_message
Byte kStr_nonprofitData[] = {42, 41, 3, 101, 103, 97, 115, 115, 101, 109, 95, 101, 103, 97, 109, 105, 95, 114, 97, 98, 95, 115, 117, 116, 97, 116, 115, 95, 109, 105, 110, 95, 114, 101, 103, 97, 110, 97, 109, 95, 116, 105, 110, 105, 142};

// __DEBUG__
// __CLOSE_PRINT__
//
//  ZZZMessageMaker.m
// On
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZZZMessageMaker.h"
#import "ViewCreate.h"
//: #import "NSString+AppleProjectKit.h"
#import "NSString+On.h"
//: #import "AppleProjectKit.h"
#import "On.h"
//: #import "ZZZInputAtCache.h"
#import "DistanceCache.h"

//: NSString * generateUUID(void) {
NSString * generateUUID(void) {
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

//: @implementation ZZZMessageMaker
@implementation ViewCreate

//: + (NIMMessage*)msgWithText:(NSString*)text
+ (NIMMessage*)name:(NSString*)text
{
    //: NIMMessage *textMessage = [[NIMMessage alloc] init];
    NIMMessage *textMessage = [[NIMMessage alloc] init];
    //: textMessage.text = text;
    textMessage.text = text;
    //: [self setupMessage:textMessage];
    [self signMessage:textMessage];
    //: return textMessage;
    return textMessage;
}

//: + (NIMMessage*)msgWithAudio:(NSString*)filePath
+ (NIMMessage*)shareVoice:(NSString*)filePath
{
    //: NIMAudioObject *audioObject = [[NIMAudioObject alloc] initWithSourcePath:filePath];
    NIMAudioObject *audioObject = [[NIMAudioObject alloc] initWithSourcePath:filePath];
    //: NIMMessage *message = [[NIMMessage alloc] init];
    NIMMessage *message = [[NIMMessage alloc] init];
    //: message.messageObject = audioObject;
    message.messageObject = audioObject;
    //: message.text = @"发来了一段语音".nim_localized;
    message.text = StringFromFinishData(kStr_federalData).start;
    //: [self setupMessage:message];
    [self signMessage:message];
    //: return message;
    return message;
}

//: + (NIMMessage*)msgWithVideo:(NSString*)filePath
+ (NIMMessage*)length:(NSString*)filePath
{
//    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
//    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm"];
//    NSString *dateString = [dateFormatter stringFromDate:[NSDate date]];
    //: NIMVideoObject *videoObject = [[NIMVideoObject alloc] initWithSourcePath:filePath];
    NIMVideoObject *videoObject = [[NIMVideoObject alloc] initWithSourcePath:filePath];
    //: videoObject.displayName = generateUUID();
    videoObject.displayName = generateUUID();
    //: NIMMessage *message = [[NIMMessage alloc] init];
    NIMMessage *message = [[NIMMessage alloc] init];
    //: message.messageObject = videoObject;
    message.messageObject = videoObject;
    //: message.apnsContent = @"发来了一段视频".nim_localized;
    message.apnsContent = StringFromFinishData(kStr_saltGoryData).start;
    //: [self setupMessage:message];
    [self signMessage:message];
    //: return message;
    return message;
}

//: + (NIMMessage*)msgWithImage:(UIImage*)image
+ (NIMMessage*)statuteName:(UIImage*)image
{
    //: NIMImageObject *imageObject = [[NIMImageObject alloc] initWithImage:image];
    NIMImageObject *imageObject = [[NIMImageObject alloc] initWithImage:image];
    //: NIMImageOption *option = [[NIMImageOption alloc] init];
    NIMImageOption *option = [[NIMImageOption alloc] init];
    //: option.compressQuality = 0.7;
    option.compressQuality = 0.7;
    //: imageObject.option = option;
    imageObject.option = option;
    //: return [ZZZMessageMaker generateImageMessage:imageObject];
    return [ViewCreate byMessage:imageObject];
}

//: + (NIMMessage *)msgWithImagePath:(NSString*)path
+ (NIMMessage *)title:(NSString*)path
{
    //: NIMImageObject * imageObject = [[NIMImageObject alloc] initWithFilepath:path];
    NIMImageObject * imageObject = [[NIMImageObject alloc] initWithFilepath:path];
    //: return [ZZZMessageMaker generateImageMessage:imageObject];
    return [ViewCreate byMessage:imageObject];
}

//: + (NIMMessage *)msgWithImageData:(NSData *)data extension:(NSString *)extension
+ (NIMMessage *)can:(NSData *)data postponement_strong:(NSString *)extension
{
    //: NIMImageObject *imageObject = [[NIMImageObject alloc] initWithData:data extension:extension];
    NIMImageObject *imageObject = [[NIMImageObject alloc] initWithData:data extension:extension];
    //: return [ZZZMessageMaker generateImageMessage:imageObject];
    return [ViewCreate byMessage:imageObject];
}

//: + (NIMMessage *)generateImageMessage:(NIMImageObject *)imageObject
+ (NIMMessage *)byMessage:(NIMImageObject *)imageObject
{
//    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
//    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm"];
//    NSString *dateString = [dateFormatter stringFromDate:[NSDate date]];
    //: imageObject.displayName = generateUUID();
    imageObject.displayName = generateUUID();
    //: NIMMessage *message = [[NIMMessage alloc] init];
    NIMMessage *message = [[NIMMessage alloc] init];
    //: message.messageObject = imageObject;
    message.messageObject = imageObject;
    //: message.apnsContent = [NTESLanguageManager getTextWithKey:@"init_manager_nim_status_bar_image_message"];
    message.apnsContent = [LabelCell tinkleKey:StringFromFinishData(kStr_nonprofitData)];
    //: [self setupMessage:message];
    [self signMessage:message];
    //: return message;
    return message;
}



//: + (void)setupMessage:(NIMMessage *)message
+ (void)signMessage:(NIMMessage *)message
{
    //: message.apnsPayload = @{
    message.apnsPayload = @{
        //: @"apns-collapse-id": message.messageId,
        StringFromFinishData(kStr_scrimPhysicallyData): message.messageId,
    //: };
    };

    //: NIMMessageSetting *setting = [[NIMMessageSetting alloc] init];
    NIMMessageSetting *setting = [[NIMMessageSetting alloc] init];
    //: setting.teamReceiptEnabled = YES;
    setting.teamReceiptEnabled = YES;

    //: message.setting = setting;
    message.setting = setting;
    //: message.env = [[NSUserDefaults standardUserDefaults] objectForKey:@"nim_test_msg_env"];
    message.env = [[NSUserDefaults standardUserDefaults] objectForKey:StringFromFinishData(kStr_rangeContent)];
}


//: @end
@end


//: @implementation NIMCommentMaker
@implementation CellMaker

//: + (NIMQuickComment *)commentWithType:(int64_t)type
+ (NIMQuickComment *)info:(int64_t)type
                             //: content:(NSString *)content
                             contentMessage:(NSString *)content
                                 //: ext:(NSString *)ext
                                 cerise:(NSString *)ext
{
    //: NIMQuickComment *comment = [[NIMQuickComment alloc] init];
    NIMQuickComment *comment = [[NIMQuickComment alloc] init];
    //: comment.ext = ext;
    comment.ext = ext;
    //: NIMQuickCommentSetting *setting = [[NIMQuickCommentSetting alloc] init];
    NIMQuickCommentSetting *setting = [[NIMQuickCommentSetting alloc] init];
    //: setting.needPush = YES;
    setting.needPush = YES;
    //: setting.needBadge = YES;
    setting.needBadge = YES;
    //: setting.pushTitle = @"你收到了一条快捷评论";
    setting.pushTitle = StringFromFinishData(kStr_nonprofitValue);
    //: setting.pushContent = content;
    setting.pushContent = content;
    //: setting.pushPayload = @{
    setting.pushPayload = @{
        //: @"key" : @"value"
        StringFromFinishData(kStr_storeValue) : StringFromFinishData(kStr_documentaryText)
    //: };
    };
    //: comment.setting = setting;
    comment.setting = setting;
    //: comment.replyType = type;
    comment.replyType = type;
    //: return comment;
    return comment;
}

//: @end
@end

Byte * FinishDataToCache(Byte *data) {
    int thanCur = data[0];
    int courseRub = data[1];
    int drownLots = data[2];
    if (!thanCur) return data + drownLots;
    for (int i = 0; i < courseRub / 2; i++) {
        int begin = drownLots + i;
        int end = drownLots + courseRub - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[drownLots + courseRub] = 0;
    return data + drownLots;
}

NSString *StringFromFinishData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)FinishDataToCache(data)];
}  
