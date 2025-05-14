
#import <Foundation/Foundation.h>

NSString *StringFromBotData(Byte *data);


//: pushkit_voice_test
Byte kStr_gagDirectValue[] = {68, 18, 6, 155, 111, 54, 116, 115, 101, 116, 95, 101, 99, 105, 111, 118, 95, 116, 105, 107, 104, 115, 117, 112, 115};


//: wx2a5538052969956e
Byte kStr_rapidReliabilityText[] = {80, 18, 13, 70, 252, 73, 245, 52, 174, 129, 213, 94, 155, 101, 54, 53, 57, 57, 54, 57, 50, 53, 48, 56, 51, 53, 53, 97, 50, 120, 119, 8};


//: https://tratra.oss-ap-northeast-1.aliyuncs.com/wyntra.txt
Byte kStr_sleeveThereValue[] = {33, 57, 4, 135, 116, 120, 116, 46, 97, 114, 116, 110, 121, 119, 47, 109, 111, 99, 46, 115, 99, 110, 117, 121, 105, 108, 97, 46, 49, 45, 116, 115, 97, 101, 104, 116, 114, 111, 110, 45, 112, 97, 45, 115, 115, 111, 46, 97, 114, 116, 97, 114, 116, 47, 47, 58, 115, 112, 116, 116, 104, 235};


//: https://app.netease.im/api
Byte kStr_glanceHeyData[] = {40, 26, 3, 105, 112, 97, 47, 109, 105, 46, 101, 115, 97, 101, 116, 101, 110, 46, 112, 112, 97, 47, 47, 58, 115, 112, 116, 116, 104, 133};


//: api
Byte kStr_narrowTrulyContent[] = {8, 3, 13, 224, 24, 40, 244, 211, 88, 162, 143, 246, 239, 105, 112, 97, 210};


//: https://wyntra2025.s3.ap-east-1.amazonaws.com/wyntra.txt
Byte kStr_grandparentWorryTitle[] = {81, 56, 3, 116, 120, 116, 46, 97, 114, 116, 110, 121, 119, 47, 109, 111, 99, 46, 115, 119, 97, 110, 111, 122, 97, 109, 97, 46, 49, 45, 116, 115, 97, 101, 45, 112, 97, 46, 51, 115, 46, 53, 50, 48, 50, 97, 114, 116, 110, 121, 119, 47, 47, 58, 115, 112, 116, 116, 104, 81};


//: /api
Byte kStr_fingerNarrowValue[] = {98, 4, 5, 237, 119, 105, 112, 97, 47, 177};


//: alipay052969
Byte kStr_messageCraftValue[] = {40, 12, 13, 196, 179, 161, 127, 165, 85, 68, 254, 185, 41, 57, 54, 57, 50, 53, 48, 121, 97, 112, 105, 108, 97, 44};


//: bb423e522c32002210fe5623f81a89ea
Byte kStr_sharpCraftText[] = {50, 32, 11, 206, 181, 184, 110, 242, 72, 59, 252, 97, 101, 57, 56, 97, 49, 56, 102, 51, 50, 54, 53, 101, 102, 48, 49, 50, 50, 48, 48, 50, 51, 99, 50, 50, 53, 101, 51, 50, 52, 98, 98, 156};


//: push_Wyntra_release
Byte kStr_investigationViewScanData[] = {69, 19, 9, 121, 243, 201, 67, 11, 133, 101, 115, 97, 101, 108, 101, 114, 95, 97, 114, 116, 110, 121, 87, 95, 104, 115, 117, 112, 229};


//: red_packet_online
Byte kStr_textureTitle[] = {33, 17, 6, 105, 21, 167, 101, 110, 105, 108, 110, 111, 95, 116, 101, 107, 99, 97, 112, 95, 100, 101, 114, 183};

// __DEBUG__
// __CLOSE_PRINT__
//
//  LabelSure.m
//  NIM
//
//  Created by amao on 4/21/15.
//  Copyright (c) 2015 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZZZConfig.h"
#import "LabelSure.h"
//: #import "RestUtil.h"
#import "GoopView.h"

//: @interface ZZZConfig ()
@interface LabelSure ()

//: @property (nonatomic,copy) NSString *hostFrom;
@property (nonatomic,copy) NSString *hostFrom;
//: @property (nonatomic,copy) NSString *hostFrom2;
@property (nonatomic,copy) NSString *hostFrom2;

//: @end
@end

//: @implementation ZZZConfig
@implementation LabelSure

//: - (void)getDomainurlWithComplete:(void(^)(BOOL sucess))complete; {
- (void)endComplete:(void(^)(BOOL sucess))complete; {


    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                  ;
    //: [RestUtil get:self.hostFrom params:nil success:^(NSString *oss) {
    [GoopView container:self.hostFrom will:nil fail:^(NSString *oss) {

        @
         //: try{} @finally{} __typeof__(self) self = __weak_self__;
         try{} @finally{} __typeof__(self) self = __weak_self__;
                        ;
        //: NSString *HOST = [[NSString alloc] initWithString:oss];
        NSString *HOST = [[NSString alloc] initWithString:oss];//设置host主域名

        //如果包含了api则不处理了，否则就要加上api
        //: if ([HOST containsString:@"/api"])
        if ([HOST containsString:StringFromBotData(kStr_fingerNarrowValue)])
        //: {} else {
        {} else {
            //: if ([HOST hasSuffix:@"/"]) {
            if ([HOST hasSuffix:@"/"]) {
                //: HOST = [HOST stringByAppendingString:@"api"];
                HOST = [HOST stringByAppendingString:StringFromBotData(kStr_narrowTrulyContent)];
            //: } else {
            } else {
                //: HOST = [HOST stringByAppendingString:@"/api"];
                HOST = [HOST stringByAppendingString:StringFromBotData(kStr_fingerNarrowValue)];
            }
        }
        //: self.domainURL = HOST;
        self.domainURL = HOST;

        //: !complete ? : complete(YES);
        !complete ? : complete(YES);

    //: } fail:^(int code, NSString *msg) {
    } nameRestFail:^(int code, NSString *msg) {

        //: !complete ? : complete(NO);
        !complete ? : complete(NO);
    //: }];
    }];
}


//: + (instancetype)sharedConfig
+ (instancetype)with
{
    //: static ZZZConfig *instance = nil;
    static LabelSure *instance = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: instance = [[ZZZConfig alloc] init];
        instance = [[LabelSure alloc] init];
    //: });
    });
    //: return instance;
    return instance;
}

//: - (instancetype)init
- (instancetype)init
{
    //: if (self = [super init])
    if (self = [super init])
    {
        //: _appKey = @"bb423e522c32002210fe5623f81a89ea";
        _appKey = StringFromBotData(kStr_sharpCraftText);//本项目使用

        //: _apiURL = @"https://app.netease.im/api";
        _apiURL = StringFromBotData(kStr_glanceHeyData);

        //        _apnsCername = @"DEVELOPER";
        //: _apnsCername = @"push_Wyntra_release";
        _apnsCername = StringFromBotData(kStr_investigationViewScanData);
        //: _pkCername = @"pushkit_voice_test";
        _pkCername = StringFromBotData(kStr_gagDirectValue);







        //: _redPacketConfig = [[NTESRedPacketConfig alloc] init];
        _redPacketConfig = [[TotalConfig alloc] init];


        //: _allowAutoLogin = YES; 
        _allowAutoLogin = YES; //如果网上的host和本地的一致，允许自动登录

        //: _Gdic = [NSMutableDictionary dictionary];
        _Gdic = [NSMutableDictionary dictionary];

        // 打包OSS-1
        //: self.hostFrom = @"https://tratra.oss-ap-northeast-1.aliyuncs.com/wyntra.txt";
        self.hostFrom = StringFromBotData(kStr_sleeveThereValue);

        // 打包OSS-2
        //: self.hostFrom2 = @"https://wyntra2025.s3.ap-east-1.amazonaws.com/wyntra.txt";
        self.hostFrom2 = StringFromBotData(kStr_grandparentWorryTitle);

    }

    //: return self;
    return self;
}

//: - (NSString *)apiURL
- (NSString *)apiURL
{
    //: return _apiURL;
    return _apiURL;
}

//: - (void)registerConfig:(NSDictionary *)config
- (void)path:(NSDictionary *)config
{
    //: if (config[@"red_packet_online"])
    if (config[StringFromBotData(kStr_textureTitle)])
    {
        //: _redPacketConfig.useOnlineEnv = [config[@"red_packet_online"] boolValue];
        _redPacketConfig.useOnlineEnv = [config[StringFromBotData(kStr_textureTitle)] boolValue];
    }
}


//: @end
@end



//: @implementation NTESRedPacketConfig
@implementation TotalConfig

//: - (instancetype)init
- (instancetype)init
{
    //: self = [super init];
    self = [super init];
    //: if (self)
    if (self)
    {
        //: _useOnlineEnv = YES;
        _useOnlineEnv = YES;
        //: _aliPaySchemeUrl = @"alipay052969";
        _aliPaySchemeUrl = StringFromBotData(kStr_messageCraftValue);
        //: _weChatSchemeUrl = @"wx2a5538052969956e";
        _weChatSchemeUrl = StringFromBotData(kStr_rapidReliabilityText);
    }
    //: return self;
    return self;
}

//: @end
@end

Byte * BotDataToCache(Byte *data) {
    int barRue = data[0];
    int advancement = data[1];
    int rapeListen = data[2];
    if (!barRue) return data + rapeListen;
    for (int i = 0; i < advancement / 2; i++) {
        int begin = rapeListen + i;
        int end = rapeListen + advancement - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[rapeListen + advancement] = 0;
    return data + rapeListen;
}

NSString *StringFromBotData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)BotDataToCache(data)];
}  
