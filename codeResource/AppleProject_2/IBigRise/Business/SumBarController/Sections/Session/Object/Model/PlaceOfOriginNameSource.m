
#import <Foundation/Foundation.h>

NSString *StringFromTeenData(Byte *data);        


//: %@。error:%zd
Byte kStr_thereOperateCramTitle[] = {61, 14, 31, 10, 9, 245, 228, 133, 189, 231, 6, 33, 196, 97, 99, 70, 83, 83, 80, 83, 27, 6, 91, 69, 67};


//: 附件下载错误
Byte kStr_sendHemeName[] = {29, 18, 96, 4, 137, 57, 36, 132, 91, 86, 132, 88, 43, 136, 93, 93, 137, 52, 57, 136, 79, 79, 157};


//: 文件解码错误
Byte kStr_inventOofShouldContent[] = {58, 18, 11, 9, 45, 96, 223, 229, 220, 219, 139, 124, 217, 176, 171, 221, 156, 152, 220, 149, 118, 222, 137, 142, 221, 164, 164, 113};

// __DEBUG__
// __CLOSE_PRINT__
//
//  PlaceOfOriginNameSource.m
//  NIM
//
//  Created by zhanggenning on 2019/10/18.
//  Copyright © 2019 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESMergeMessageDataSource.h"
#import "PlaceOfOriginNameSource.h"
//: #import "NTESMessageSerialization.h"
#import "EmptyRemoveSerialization.h"
//: #import "NTESMessageModel.h"
#import "HeritageMessageModel.h"
//: #import "ZZZTimestampModel.h"
#import "GreenTingLanguage.h"
//: #import "NTESMultiRetweetAttachment.h"
#import "RefreshMessage.h"

//: @interface NTESMergeMessageDataSource ()
@interface PlaceOfOriginNameSource ()

//: @property (nonatomic, assign) NSInteger currentDay;
@property (nonatomic, assign) NSInteger currentDay;
//: @property (nonatomic, strong) NTESMessageSerialization *serialization;
@property (nonatomic, strong) EmptyRemoveSerialization *serialization;
//: @end
@end

//: @implementation NTESMergeMessageDataSource
@implementation PlaceOfOriginNameSource

//: - (instancetype)init {
- (instancetype)init {
    //: if (self = [super init]) {
    if (self = [super init]) {
        //: _serialization = [[NTESMessageSerialization alloc] init];
        _serialization = [[EmptyRemoveSerialization alloc] init];
    }
    //: return self;
    return self;
}

//: - (void)pullDataWithAttachment:(NTESMultiRetweetAttachment *)attachment
- (void)data:(RefreshMessage *)attachment
                    //: completion:(void (^)(NSString *msg))complete {
                    aggregation:(void (^)(NSString *msg))complete {
    //: __block NSString *msg = nil;
    __block NSString *msg = nil;
    //: NSFileManager *fm = [NSFileManager defaultManager];
    NSFileManager *fm = [NSFileManager defaultManager];
    //: BOOL isDir = NO;
    BOOL isDir = NO;
    //: NSString *filePath = attachment.filePath;
    NSString *filePath = attachment.filePath;
    //: NSString *fileUrl = attachment.url;
    NSString *fileUrl = attachment.url;
    //: BOOL fileExist = ([fm fileExistsAtPath:filePath isDirectory:&isDir] && !isDir);
    BOOL fileExist = ([fm fileExistsAtPath:filePath isDirectory:&isDir] && !isDir);
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: if (fileExist) {
    if (fileExist) {
        //: [weakSelf.serialization decode:filePath
        [weakSelf.serialization container:filePath
                               //: encrypt:attachment.encrypted
                               visualization:attachment.encrypted
                              //: password:attachment.password
                              manager:attachment.password
                            //: completion:^(NSError * _Nullable error, NSMutableArray<NIMMessage *> * _Nullable messages) {
                            show:^(NSError * _Nullable error, NSMutableArray<NIMMessage *> * _Nullable messages) {
            //: if (error) {
            if (error) {
                //: msg = [NSString stringWithFormat:@"%@。error:%zd",@"文件解码错误".ntes_localized, error.code];
                msg = [NSString stringWithFormat:StringFromTeenData(kStr_thereOperateCramTitle),StringFromTeenData(kStr_inventOofShouldContent).colorLocalized, error.code];
            //: } else {
            } else {
                //: [weakSelf checkAttachmentState:messages];
                [weakSelf top:messages];
                //: weakSelf.items = [weakSelf itemsWithMessages:messages];
                weakSelf.items = [weakSelf format:messages];
            }
            //: if (complete) {
            if (complete) {
                //: complete(msg);
                complete(msg);
            }
        //: }];
        }];
    //: } else {
    } else {
        //: __weak typeof(self) weakSelf = self;
        __weak typeof(self) weakSelf = self;
        //: [[NIMSDK sharedSDK].resourceManager download:fileUrl filepath:filePath progress:nil completion:^(NSError * _Nullable error) {
        [[NIMSDK sharedSDK].resourceManager download:fileUrl filepath:filePath progress:nil completion:^(NSError * _Nullable error) {
            //: if (error) {
            if (error) {
                //: msg = [NSString stringWithFormat:@"%@。error:%zd",@"附件下载错误".ntes_localized, error.code];
                msg = [NSString stringWithFormat:StringFromTeenData(kStr_thereOperateCramTitle),StringFromTeenData(kStr_sendHemeName).colorLocalized, error.code];
            //: } else {
            } else {
                //: [weakSelf.serialization decode:filePath
                [weakSelf.serialization container:filePath
                                       //: encrypt:attachment.encrypted
                                       visualization:attachment.encrypted
                                      //: password:attachment.password
                                      manager:attachment.password
                                    //: completion:^(NSError * _Nullable error, NSMutableArray<NIMMessage *> * _Nullable messages) {
                                    show:^(NSError * _Nullable error, NSMutableArray<NIMMessage *> * _Nullable messages) {
                    //: if (error) {
                    if (error) {
                        //: msg = [NSString stringWithFormat:@"%@。error:%zd",@"文件解码错误".ntes_localized, error.code];
                        msg = [NSString stringWithFormat:StringFromTeenData(kStr_thereOperateCramTitle),StringFromTeenData(kStr_inventOofShouldContent).colorLocalized, error.code];
                    //: } else {
                    } else {
                        //: [weakSelf checkAttachmentState:messages];
                        [weakSelf top:messages];
                        //: weakSelf.items = [weakSelf itemsWithMessages:messages];
                        weakSelf.items = [weakSelf format:messages];
                    }
                    //: if (complete) {
                    if (complete) {
                        //: complete(msg);
                        complete(msg);
                    }
                //: }];
                }];
            }
        //: }];
        }];
    }
}

//: - (NSIndexPath *)updateMessage:(NIMMessage *)message
- (NSIndexPath *)telegramAtLink:(NIMMessage *)message
{
    //: NTESMessageModel *model = nil;
    HeritageMessageModel *model = nil;
    //: NSIndexPath *indexPath = nil;
    NSIndexPath *indexPath = nil;
    //: for (id item in _items) {
    for (id item in _items) {

        //: if (![item isKindOfClass:[NTESMessageModel class]]) {
        if (![item isKindOfClass:[HeritageMessageModel class]]) {
            //: continue;
            continue;
        }

        //: NTESMessageModel *modelItem = (NTESMessageModel *)item;
        HeritageMessageModel *modelItem = (HeritageMessageModel *)item;
        //: if ([modelItem.message.messageId isEqualToString:message.messageId]) {
        if ([modelItem.message.messageId isEqualToString:message.messageId]) {
            //: model = item;
            model = item;
            //: break;
            break;
        }
    }
    //: if (model)
    if (model)
    {
        //: NTESMessageModel *target = [self setupMessageModel:message];
        HeritageMessageModel *target = [self user:message];
        //: NSInteger index = [_items indexOfObject:model];
        NSInteger index = [_items indexOfObject:model];
        //: [_items replaceObjectAtIndex:index withObject:target];
        [_items replaceObjectAtIndex:index withObject:target];
        //: indexPath = [NSIndexPath indexPathForRow:index inSection:0];
        indexPath = [NSIndexPath indexPathForRow:index inSection:0];
    }
    //: return indexPath;
    return indexPath;
}

//: - (NTESMessageModel *)setupMessageModel:(NIMMessage *)message {
- (HeritageMessageModel *)user:(NIMMessage *)message {
    //: NTESMessageModel *model = [[NTESMessageModel alloc] initWithMessage:message];
    HeritageMessageModel *model = [[HeritageMessageModel alloc] initWithName:message];
    //: model.focreShowAvatar = YES;
    model.focreShowAvatar = YES;
    //: model.focreShowNickName = YES;
    model.focreShowNickName = YES;
    //: model.focreShowLeft = YES;
    model.focreShowLeft = YES;
    //: return model;
    return model;
}

//: - (ZZZTimestampModel *)setupTimeModel:(NSTimeInterval)timestamp {
- (GreenTingLanguage *)app:(NSTimeInterval)timestamp {
    //: ZZZTimestampModel *ret = [[ZZZTimestampModel alloc] init];
    GreenTingLanguage *ret = [[GreenTingLanguage alloc] init];
    //: ret.messageTime = timestamp;
    ret.messageTime = timestamp;
    //: ret.height = 8.0f;
    ret.height = 8.0f;
    //: return ret;
    return ret;
}

//: - (NSMutableArray<NTESMessageModel *> *)itemsWithMessages:(NSMutableArray <NIMMessage *> *)messages {
- (NSMutableArray<HeritageMessageModel *> *)format:(NSMutableArray <NIMMessage *> *)messages {
    //: NSMutableArray *items = [NSMutableArray array];
    NSMutableArray *items = [NSMutableArray array];

    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [messages enumerateObjectsUsingBlock:^(NIMMessage * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
    [messages enumerateObjectsUsingBlock:^(NIMMessage * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        //: if (idx == 0) { 
        if (idx == 0) { //插入时间
            //: weakSelf.currentDay = [weakSelf getDay:obj.timestamp];
            weakSelf.currentDay = [weakSelf towardApplicationDay:obj.timestamp];
            //: ZZZTimestampModel *timeModel = [weakSelf setupTimeModel:obj.timestamp];
            GreenTingLanguage *timeModel = [weakSelf app:obj.timestamp];
            //: [items addObject:timeModel];
            [items addObject:timeModel];

            //: NTESMessageModel *msgModel = [self setupMessageModel:obj];
            HeritageMessageModel *msgModel = [self user:obj];
            //: [items addObject:msgModel];
            [items addObject:msgModel];
        //: } else if ([weakSelf needInsertTimeModel:obj]){
        } else if ([weakSelf plantConvert:obj]){

            //: id lastMsgModel = items.lastObject;
            id lastMsgModel = items.lastObject;
            //: if ([lastMsgModel isKindOfClass:[NTESMessageModel class]]) {
            if ([lastMsgModel isKindOfClass:[HeritageMessageModel class]]) {
                //: NTESMessageModel *model = (NTESMessageModel *)lastMsgModel;
                HeritageMessageModel *model = (HeritageMessageModel *)lastMsgModel;
                //: model.hiddenSeparatorLine = YES;
                model.hiddenSeparatorLine = YES;
            }

            //: ZZZTimestampModel *timeModel = [weakSelf setupTimeModel:obj.timestamp];
            GreenTingLanguage *timeModel = [weakSelf app:obj.timestamp];
            //: [items addObject:timeModel];
            [items addObject:timeModel];

            //: NTESMessageModel *msgModel = [self setupMessageModel:obj];
            HeritageMessageModel *msgModel = [self user:obj];
            //: [items addObject:msgModel];
            [items addObject:msgModel];
        //: } else {
        } else {
            //: NTESMessageModel *msgModel = [self setupMessageModel:obj];
            HeritageMessageModel *msgModel = [self user:obj];
            //: [items addObject:msgModel];
            [items addObject:msgModel];
        }
    //: }];
    }];
    //: return items;
    return items;
}

//: - (BOOL)needInsertTimeModel:(NIMMessage *)message {
- (BOOL)plantConvert:(NIMMessage *)message {
    //: BOOL ret = NO;
    BOOL ret = NO;
    //: NSInteger currentDay = [self getDay:message.timestamp];
    NSInteger currentDay = [self towardApplicationDay:message.timestamp];
    //: if (_currentDay != currentDay) {
    if (_currentDay != currentDay) {
        //: _currentDay = currentDay;
        _currentDay = currentDay;
        //: ret = YES;
        ret = YES;
    }
    //: return ret;
    return ret;
}

//: - (NSInteger)getDay:(NSTimeInterval)timestamp {
- (NSInteger)towardApplicationDay:(NSTimeInterval)timestamp {
    //: NSDate *date = [NSDate dateWithTimeIntervalSince1970:timestamp];
    NSDate *date = [NSDate dateWithTimeIntervalSince1970:timestamp];
    //: NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    //: [formatter setDateFormat:@"dd"];
    [formatter setDateFormat:@"dd"];
    //: NSInteger currentDay=[[formatter stringFromDate:date] integerValue];
    NSInteger currentDay=[[formatter stringFromDate:date] integerValue];
    //: return currentDay;
    return currentDay;
}


//: - (void)checkAttachmentState:(NSArray *)messages{
- (void)top:(NSArray *)messages{
    //: NSArray *items = [NSArray arrayWithArray:messages];
    NSArray *items = [NSArray arrayWithArray:messages];
    //: for (id item in items) {
    for (id item in items) {
        //: NIMMessage *message;
        NIMMessage *message;
        //: if ([item isKindOfClass:[NIMMessage class]]) {
        if ([item isKindOfClass:[NIMMessage class]]) {
            //: message = item;
            message = item;
        }
        //: if ([item isKindOfClass:[ZZZMessageModel class]]) {
        if ([item isKindOfClass:[CollectionModel class]]) {
            //: message = [(ZZZMessageModel *)item message];
            message = [(CollectionModel *)item message];
        }
        //: if (message && !message.isOutgoingMsg
        if (message && !message.isOutgoingMsg
            //: && message.attachmentDownloadState == NIMMessageAttachmentDownloadStateNeedDownload
            && message.attachmentDownloadState == NIMMessageAttachmentDownloadStateNeedDownload
            //: && message.messageType != NIMMessageTypeFile)
            && message.messageType != NIMMessageTypeFile)
        {
            //: [[NIMSDK sharedSDK].chatManager fetchMessageAttachment:message error:nil];
            [[NIMSDK sharedSDK].chatManager fetchMessageAttachment:message error:nil];
        }
    }
}

//: @end
@end

Byte * TeenDataToCache(Byte *data) {
    int bit = data[0];
    int heave = data[1];
    Byte viewSharp = data[2];
    int poo = data[3];
    if (!bit) return data + poo;
    for (int i = poo; i < poo + heave; i++) {
        int value = data[i] + viewSharp;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[poo + heave] = 0;
    return data + poo;
}

NSString *StringFromTeenData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)TeenDataToCache(data)];
}
