
#import <Foundation/Foundation.h>

NSString *StringFromIndexData(Byte *data);


//: ntes.message.serialization
Byte kStr_lengthPitValue[] = {93, 26, 8, 12, 229, 135, 255, 224, 249, 191, 224, 3, 118, 124, 109, 123, 54, 117, 109, 123, 123, 105, 111, 109, 54, 123, 109, 122, 113, 105, 116, 113, 130, 105, 124, 113, 119, 118, 128};


//: .txt
Byte kStr_curName[] = {57, 4, 52, 14, 253, 175, 72, 75, 125, 103, 221, 146, 47, 212, 98, 168, 172, 168, 107};


//: YYYYMMddhhmmssSSS
Byte kStr_gelTitle[] = {32, 17, 15, 4, 104, 104, 104, 104, 92, 92, 115, 115, 119, 119, 124, 124, 130, 130, 98, 98, 98, 3};

// __DEBUG__
// __CLOSE_PRINT__
//
//  EmptyRemoveSerialization.m
//  NIM
//
//  Created by Netease on 2019/10/16.
//  Copyright © 2019 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESMessageSerialization.h"
#import "EmptyRemoveSerialization.h"
//: #import "NTESFileLocationHelper.h"
#import "FileWithAddCell.h"
//: #import "NTESFileUtil.h"
#import "TingUtil.h"
//: #import "NTESMigrateHeader.h"
#import "SureMedia.h"
//: #import "NSData+NTES.h"
#import "NSData+Item.h"

//: static dispatch_queue_t NTESMessageSerializationQueue()
static dispatch_queue_t NTESMessageSerializationQueue()
{
    //: static dispatch_queue_t queue;
    static dispatch_queue_t queue;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: queue = dispatch_queue_create("nim.demo.message.serialization.queue", 0);
        queue = dispatch_queue_create("nim.demo.message.serialization.queue", 0);
    //: });
    });
    //: return queue;
    return queue;
}

//: @interface NTESMessageSerialization ()
@interface EmptyRemoveSerialization ()

//: @property (nonatomic, copy) NSString *targetFile;
@property (nonatomic, copy) NSString *targetFile;

//: @end
@end


//: @implementation NTESMessageSerialization
@implementation EmptyRemoveSerialization

//: - (void)encode:(NSArray <NIMMessage *>*)messages
- (void)view:(NSArray <NIMMessage *>*)messages
       //: encrypt:(BOOL)encrypt
       duringWith:(BOOL)encrypt
      //: password:(NSString *)password
      color:(NSString *)password
    //: completion:(NTESMessageEncodeResult)completion {
    imageFormat:(NTESMessageEncodeResult)completion {

    //: dispatch_async(NTESMessageSerializationQueue(), ^{
    dispatch_async(NTESMessageSerializationQueue(), ^{
        //: NSMutableArray *datas = [NSMutableArray array];
        NSMutableArray *datas = [NSMutableArray array];
        //: __block NSError *error = nil;
        __block NSError *error = nil;

        //header
        //: NSData *headerRowData = [self fileHeaderWithCount:messages.count];
        NSData *headerRowData = [self with:messages.count];

        //: if (!headerRowData) {
        if (!headerRowData) {
            //: dispatch_async(dispatch_get_main_queue(), ^{
            dispatch_async(dispatch_get_main_queue(), ^{
                //: error = [NSError errorWithDomain:@"ntes.message.serialization" code:1000 userInfo:nil];
                error = [NSError errorWithDomain:StringFromIndexData(kStr_lengthPitValue) code:1000 userInfo:nil];
                //: if (completion) {
                if (completion) {
                    //: completion(error, nil);
                    completion(error, nil);
                }
            //: });
            });
            //: return;
            return;
        }
        //: [datas addObject:headerRowData];
        [datas addObject:headerRowData];

        //message
        //: NSArray *messageRowData = [self messageRowData:messages];
        NSArray *messageRowData = [self text:messages];
        //: if (messageRowData.count == 0) {
        if (messageRowData.count == 0) {
            //: dispatch_async(dispatch_get_main_queue(), ^{
            dispatch_async(dispatch_get_main_queue(), ^{
                //: error = [NSError errorWithDomain:@"ntes.message.serialization" code:1001 userInfo:nil];
                error = [NSError errorWithDomain:StringFromIndexData(kStr_lengthPitValue) code:1001 userInfo:nil];
                //: if (completion) {
                if (completion) {
                    //: completion(error, nil);
                    completion(error, nil);
                }
            //: });
            });
            //: return;
            return;
        }
        //: [datas addObjectsFromArray:messageRowData];
        [datas addObjectsFromArray:messageRowData];

        //write
        //: NSString *file = [self writeRowDatasToFile:datas encrypt:encrypt password:password];
        NSString *file = [self key:datas languageWrite:encrypt approximateRange:password];
        //: if (file == nil) {
        if (file == nil) {
            //: error = [NSError errorWithDomain:@"ntes.message.serialization" code:1002 userInfo:nil];
            error = [NSError errorWithDomain:StringFromIndexData(kStr_lengthPitValue) code:1002 userInfo:nil];
            //: dispatch_async(dispatch_get_main_queue(), ^{
            dispatch_async(dispatch_get_main_queue(), ^{
                //: if (completion) {
                if (completion) {
                    //: completion(error, nil);
                    completion(error, nil);
                }
            //: });
            });
            //: return;
            return;
        }

        //md5
        //: NSString *md5 = [NTESFileUtil fileMD5:file];
        NSString *md5 = [TingUtil quantity:file];
        //: if (!md5) {
        if (!md5) {
            //delete
            //: [[NSFileManager defaultManager] removeItemAtPath:file error:nil];
            [[NSFileManager defaultManager] removeItemAtPath:file error:nil];

            //error
            //: error = [NSError errorWithDomain:@"ntes.message.serialization" code:1003 userInfo:nil];
            error = [NSError errorWithDomain:StringFromIndexData(kStr_lengthPitValue) code:1003 userInfo:nil];
            //: dispatch_async(dispatch_get_main_queue(), ^{
            dispatch_async(dispatch_get_main_queue(), ^{
                //: if (completion) {
                if (completion) {
                    //: completion(error, nil);
                    completion(error, nil);
                }
            //: });
            });
            //: return;
            return;
        }

        //callback
        //: NTESMessageSerializationInfo *info = [[NTESMessageSerializationInfo alloc] init];
        ContentInfo *info = [[ContentInfo alloc] init];
        //: info.filePath = file;
        info.filePath = file;
        //: info.md5 = md5;
        info.md5 = md5;
        //: info.encrypted = YES;
        info.encrypted = YES;
        //: info.password = password;
        info.password = password;
        //: dispatch_async(dispatch_get_main_queue(), ^{
        dispatch_async(dispatch_get_main_queue(), ^{
            //: if (completion) {
            if (completion) {
                //: completion(error, info);
                completion(error, info);
            }
        //: });
        });
    //: });
    });

}

//: - (void)decode:(NSString *)filePath
- (void)container:(NSString *)filePath
       //: encrypt:(BOOL)encrypt
       visualization:(BOOL)encrypt
      //: password:(NSString *)password
      manager:(NSString *)password
    //: completion:(NTESMessageDecodeResult)completion {
    show:(NTESMessageDecodeResult)completion {
    //: dispatch_async(NTESMessageSerializationQueue(), ^{
    dispatch_async(NTESMessageSerializationQueue(), ^{
        //: NSError *error = nil;
        NSError *error = nil;

        //: NSMutableArray *ret = [self readRowDatasFromFile:filePath encrypt:encrypt password:password];
        NSMutableArray *ret = [self fromPassword:filePath record:encrypt to:password];
        //: if (!ret) {
        if (!ret) {
            //: error = [NSError errorWithDomain:@"ntes.message.serialization" code:1003 userInfo:nil];
            error = [NSError errorWithDomain:StringFromIndexData(kStr_lengthPitValue) code:1003 userInfo:nil];
        }
        //: dispatch_async(dispatch_get_main_queue(), ^{
        dispatch_async(dispatch_get_main_queue(), ^{
            //: if (completion) {
            if (completion) {
                //: completion(error, ret);
                completion(error, ret);
            }
        //: });
        });
    //: });
    });
}

//: #pragma mark - Export
#pragma mark - Export
//: - (NSString *)targetFile {
- (NSString *)targetFile {
    //: NSDate * date = [[NSDate alloc] init];
    NSDate * date = [[NSDate alloc] init];
    //: NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    //: formatter.dateFormat = @"YYYYMMddhhmmssSSS";
    formatter.dateFormat = StringFromIndexData(kStr_gelTitle);
    //: NSString *fileName = [[formatter stringFromDate:date] stringByAppendingString:@".txt"];
    NSString *fileName = [[formatter stringFromDate:date] stringByAppendingString:StringFromIndexData(kStr_curName)];
    //: return [NTESFileLocationHelper filepathForMergeForwardFile:fileName];
    return [FileWithAddCell paper:fileName];
}

//: - (NSData *)fileHeaderWithCount:(NSInteger)count {
- (NSData *)with:(NSInteger)count {
    //: NTESMigrateHeader *header = [NTESMigrateHeader initWithDefaultConfig];
    SureMedia *header = [SureMedia initWithContainerAcross];
    //: header.totalInfoCount = count;
    header.totalInfoCount = count;
    //: return [header toRawContent];
    return [header light];
}

//: - (NSMutableArray <NSData *>*)messageRowData:(NSArray <NIMMessage *>*)messages {
- (NSMutableArray <NSData *>*)text:(NSArray <NIMMessage *>*)messages {
    //: NSMutableArray *ret = [NSMutableArray array];
    NSMutableArray *ret = [NSMutableArray array];
    //: [messages enumerateObjectsUsingBlock:^(NIMMessage * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
    [messages enumerateObjectsUsingBlock:^(NIMMessage * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        //: NSData *data = [[NIMSDK sharedSDK].conversationManager encodeMessageToData:obj];
        NSData *data = [[NIMSDK sharedSDK].conversationManager encodeMessageToData:obj];
        //: if (data) {
        if (data) {
            //: [ret addObject:data];
            [ret addObject:data];
        }
    //: }];
    }];
    //: return ret;
    return ret;
}

//: - (NSString *)writeRowDatasToFile:(NSMutableArray *)datas
- (NSString *)key:(NSMutableArray *)datas
                          //: encrypt:(BOOL)encrypt
                          languageWrite:(BOOL)encrypt
                         //: password:(NSString *)password {
                         approximateRange:(NSString *)password {
    //: NSString *filePath = [self targetFile];
    NSString *filePath = [self targetFile];
    //: FILE *fp = fopen([filePath UTF8String], "wb");
    FILE *fp = fopen([filePath UTF8String], "wb");
    //: if (!fp) {
    if (!fp) {
        //: return nil;
        return nil;
    }
    //: NSMutableData *temp = [NSMutableData data];
    NSMutableData *temp = [NSMutableData data];
    //: NSString *newlineStr = @"\n";
    NSString *newlineStr = @"\n";
    //: NSData *newline = [newlineStr dataUsingEncoding:NSUTF8StringEncoding];
    NSData *newline = [newlineStr dataUsingEncoding:NSUTF8StringEncoding];
    //: [datas enumerateObjectsUsingBlock:^(NSData *_Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
    [datas enumerateObjectsUsingBlock:^(NSData *_Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        //: [temp appendData:obj];
        [temp appendData:obj];
        //: [temp appendData:newline];
        [temp appendData:newline];
    //: }];
    }];

    //: if (temp.length != 0) {
    if (temp.length != 0) {
        //: if (encrypt) {
        if (encrypt) {
            //: NSData *encryptData = [temp rc4EncryptWithKey:password];
            NSData *encryptData = [temp imageKey:password];
            //: fwrite(encryptData.bytes, 1, encryptData.length, fp);
            fwrite(encryptData.bytes, 1, encryptData.length, fp);
        //: } else {
        } else {
            //: fwrite(temp.bytes, 1, temp.length, fp);
            fwrite(temp.bytes, 1, temp.length, fp);
        }
        //: [temp resetBytesInRange:NSMakeRange(0, temp.length)];
        [temp resetBytesInRange:NSMakeRange(0, temp.length)];
        //: [temp setLength:0];
        [temp setLength:0];
    }

    //: fclose(fp);
    fclose(fp);
    //: return filePath;
    return filePath;
}

//: #pragma mark - Import
#pragma mark - Import
//: - (NSString *)readFileString:(NSString *)file
- (NSString *)black:(NSString *)file
                     //: encrypt:(BOOL)encrypt
                     title:(BOOL)encrypt
                    //: password:(NSString *)password{
                    fileWith:(NSString *)password{
    //: FILE *fp = NULL;
    FILE *fp = NULL;
    //: char szBlock[1024*100] = {0};
    char szBlock[1024*100] = {0};
    //: size_t len = 0;
    size_t len = 0;
    //: NSMutableString *ret = [NSMutableString string];
    NSMutableString *ret = [NSMutableString string];

    //: fp = fopen(file.UTF8String, "r");
    fp = fopen(file.UTF8String, "r");
    //: if (fp == NULL) {
    if (fp == NULL) {
        //: return nil;
        return nil;
    }

    //: while (!feof(fp)) {
    while (!feof(fp)) {
        //: len = fread(szBlock, 1, sizeof(szBlock), fp);
        len = fread(szBlock, 1, sizeof(szBlock), fp);
        //: NSData *fileData = [NSData dataWithBytes:szBlock length:len];
        NSData *fileData = [NSData dataWithBytes:szBlock length:len];
        //: if (encrypt) {
        if (encrypt) {
            //: NSData *decryptData = [fileData rc4DecryptWithKey:password];
            NSData *decryptData = [fileData success:password];
            //: NSString *decryptStr = [[NSString alloc] initWithData:decryptData encoding:NSUTF8StringEncoding];
            NSString *decryptStr = [[NSString alloc] initWithData:decryptData encoding:NSUTF8StringEncoding];
            //: if (decryptStr) {
            if (decryptStr) {
                //: [ret appendString:decryptStr];
                [ret appendString:decryptStr];
            }
        //: } else {
        } else {
            //: NSString *fileStr = [[NSString alloc] initWithData:fileData encoding:NSUTF8StringEncoding];
            NSString *fileStr = [[NSString alloc] initWithData:fileData encoding:NSUTF8StringEncoding];
            //: if (fileStr) {
            if (fileStr) {
                //: [ret appendString:fileStr];
                [ret appendString:fileStr];
            }
        }
    }

    //: fclose(fp);
    fclose(fp);
    //: return ret;
    return ret;
}


//: - (NSMutableArray <NIMMessage *>*)readRowDatasFromFile:(NSString *)file
- (NSMutableArray <NIMMessage *>*)fromPassword:(NSString *)file
                                               //: encrypt:(BOOL)encrypt
                                               record:(BOOL)encrypt
                                              //: password:(NSString *)password {
                                              to:(NSString *)password {

    //: NSMutableArray *ret = nil;
    NSMutableArray *ret = nil;
    //: NSString *fileString = [self readFileString:file encrypt:encrypt password:password];
    NSString *fileString = [self black:file title:encrypt fileWith:password];
    //: NSArray *subStrings = [fileString componentsSeparatedByString:@"\n"];
    NSArray *subStrings = [fileString componentsSeparatedByString:@"\n"];
    //: NTESMigrateHeader *header = nil;
    SureMedia *header = nil;
    //: NSInteger count = 0;
    NSInteger count = 0;
    //: if (subStrings.count == 0) {
    if (subStrings.count == 0) {
        //: return ret;
        return ret;
    }

    //: for (int i = 0; i < subStrings.count; i++) {
    for (int i = 0; i < subStrings.count; i++) {
        //: NSString *jsonString = subStrings[i];
        NSString *jsonString = subStrings[i];
        //: if (i == 0) {
        if (i == 0) {
            //: NSData *headerData = [jsonString dataUsingEncoding:NSUTF8StringEncoding];
            NSData *headerData = [jsonString dataUsingEncoding:NSUTF8StringEncoding];
            //: header = [NTESMigrateHeader initWithRawContent:headerData];
            header = [SureMedia initWithPage:headerData];
            //: if (header == nil) {
            if (header == nil) {
                //: break;
                break;
            }
        //: } else {
        } else {
            //: if (count++ == header.totalInfoCount) {
            if (count++ == header.totalInfoCount) {
                //: break;
                break;
            }
            //: if (!ret) {
            if (!ret) {
                //: ret = [NSMutableArray array];
                ret = [NSMutableArray array];
            }
            //: NSData *data = [jsonString dataUsingEncoding:NSUTF8StringEncoding];
            NSData *data = [jsonString dataUsingEncoding:NSUTF8StringEncoding];
            //: NIMMessage *message = [[NIMSDK sharedSDK].conversationManager decodeMessageFromData:data];
            NIMMessage *message = [[NIMSDK sharedSDK].conversationManager decodeMessageFromData:data];
            //: if (message) {
            if (message) {
                //: [ret addObject:message];
                [ret addObject:message];
            }
        }
    }
    //: return ret;
    return ret;
}

//: @end
@end


//: @implementation NTESMessageSerializationInfo
@implementation ContentInfo

//: @end
@end

Byte * IndexDataToCache(Byte *data) {
    int flu = data[0];
    int practically = data[1];
    Byte oof = data[2];
    int scanShrinkText = data[3];
    if (!flu) return data + scanShrinkText;
    for (int i = scanShrinkText; i < scanShrinkText + practically; i++) {
        int value = data[i] - oof;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[scanShrinkText + practically] = 0;
    return data + scanShrinkText;
}

NSString *StringFromIndexData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)IndexDataToCache(data)];
}
