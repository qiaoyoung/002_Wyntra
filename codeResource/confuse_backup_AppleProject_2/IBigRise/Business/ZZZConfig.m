//
//  ZZZConfig.m
//  NIM
//
//  Created by amao on 4/21/15.
//  Copyright (c) 2015 Netease. All rights reserved.
//

#import "ZZZConfig.h"
#import "RestUtil.h"


@interface ZZZConfig ()

@property (nonatomic,copy)    NSString    *hostFrom;
@property (nonatomic,copy)    NSString    *hostFrom2;

@end

@implementation ZZZConfig

- (void)getDomainurlWithComplete:(void(^)(BOOL sucess))complete; {
    

    @weakify(self);
    [RestUtil get:self.hostFrom params:nil success:^(NSString *oss) {
        
        @strongify(self);
        NSString *HOST = [[NSString alloc] initWithString:oss];//设置host主域名
        
        //如果包含了api则不处理了，否则就要加上api
        if ([HOST containsString:@"/api"])
        {} else {
            if ([HOST hasSuffix:@"/"]) {
                HOST = [HOST stringByAppendingString:@"api"];
            } else {
                HOST = [HOST stringByAppendingString:@"/api"];
            }
        }
        self.domainURL = HOST;

        !complete ? : complete(YES);
        
    } fail:^(int code, NSString *msg) {
        
        !complete ? : complete(NO);
    }];
}


+ (instancetype)sharedConfig
{
    static ZZZConfig *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[ZZZConfig alloc] init];
    });
    return instance;
}

- (instancetype)init
{
    if (self = [super init])
    {
        _appKey = @"bb423e522c32002210fe5623f81a89ea";//本项目使用
        
        _apiURL = @"https://app.netease.im/api";
#ifdef DEBUG
        //        _apnsCername = @"DEVELOPER";
        _apnsCername = @"push_Wyntra_release";
        _pkCername = @"pushkit_voice_test";
        
#else
        _apnsCername = @"push_Wyntra_release";
        _pkCername = @"pushkit_voice";
        
#endif
        
        _redPacketConfig = [[NTESRedPacketConfig alloc] init];
        
        
        _allowAutoLogin = YES; //如果网上的host和本地的一致，允许自动登录
        
        _Gdic = [NSMutableDictionary dictionary];
        
        // 打包OSS-1
        self.hostFrom = @"https://tratra.oss-ap-northeast-1.aliyuncs.com/wyntra.txt";
        
        // 打包OSS-2
        self.hostFrom2 = @"https://wyntra2025.s3.ap-east-1.amazonaws.com/wyntra.txt";
        
    }
    
    return self;
}

- (NSString *)apiURL
{
    return _apiURL;
}

- (void)registerConfig:(NSDictionary *)config
{
    if (config[@"red_packet_online"])
    {
        _redPacketConfig.useOnlineEnv = [config[@"red_packet_online"] boolValue];
    }
}


@end



@implementation NTESRedPacketConfig

- (instancetype)init
{
    self = [super init];
    if (self)
    {
        _useOnlineEnv = YES;
        _aliPaySchemeUrl = @"alipay052969";
        _weChatSchemeUrl = @"wx2a5538052969956e";
    }
    return self;
}

@end
