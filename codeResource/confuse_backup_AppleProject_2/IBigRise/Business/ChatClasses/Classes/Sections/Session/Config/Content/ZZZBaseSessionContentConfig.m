//
//  ZZZBaseSessionContentConfig.m
// AppleProjectKit
//
//  Created by amao on 9/15/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//

#import "ZZZBaseSessionContentConfig.h"
#import "ZZZTextContentConfig.h"
#import "ZZZImageContentConfig.h"
#import "ZZZAudioContentConfig.h"
#import "ZZZVideoContentConfig.h"
#import "ZZZFileContentConfig.h"
#import "ZZZNotificationContentConfig.h"
#import "ZZZLocationContentConfig.h"
#import "ZZZUnsupportContentConfig.h"
#import "ZZZTipContentConfig.h"
#import "ZZZReplyedTextContentConfig.h"
#import "ZZZRtcCallRecordContentConfig.h"

@interface CCCSessionContentConfigFactory ()
@property (nonatomic,strong)    NSDictionary                *dict;
@property (nonatomic,strong)    NSDictionary                *replyDict;
@property (nonatomic,strong)    ZZZUnsupportContentConfig   *unsupportConfig;
@end

@implementation CCCSessionContentConfigFactory

+ (instancetype)sharedFacotry
{
    static CCCSessionContentConfigFactory *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[CCCSessionContentConfigFactory alloc] init];
    });
    return instance;
}

- (instancetype)init
{
    if (self = [super init])
    {
        _dict = @{@(NIMMessageTypeText)         :       [ZZZTextContentConfig new],
                  @(NIMMessageTypeImage)        :       [ZZZImageContentConfig new],
                  @(NIMMessageTypeAudio)        :       [ZZZAudioContentConfig new],
                  @(NIMMessageTypeVideo)        :       [ZZZVideoContentConfig new],
                  @(NIMMessageTypeFile)         :       [ZZZFileContentConfig new],
                  @(NIMMessageTypeLocation)     :       [ZZZLocationContentConfig new],
                  @(NIMMessageTypeNotification) :       [ZZZNotificationContentConfig new],
                  @(NIMMessageTypeTip)          :       [ZZZTipContentConfig new],
                  @(NIMMessageTypeRtcCallRecord):       [ZZZRtcCallRecordContentConfig new],
        };
        
        ZZZReplyedTextContentConfig *replyedTextConfig = [ZZZReplyedTextContentConfig new];
        _replyDict = @{
            @(NIMMessageTypeText)       : replyedTextConfig,
            @(NIMMessageTypeAudio)      : replyedTextConfig,
            @(NIMMessageTypeVideo)      : replyedTextConfig,
            @(NIMMessageTypeFile)       : replyedTextConfig,
            @(NIMMessageTypeTip)        : replyedTextConfig,
            @(NIMMessageTypeRobot)      : replyedTextConfig,
            @(NIMMessageTypeNotification)   : replyedTextConfig,
            @(NIMMessageTypeLocation)   : replyedTextConfig,
            @(NIMMessageTypeCustom)     : replyedTextConfig,
            @(NIMMessageTypeImage)      : replyedTextConfig,
            @(NIMMessageTypeRtcCallRecord)      : replyedTextConfig,
        };
        _unsupportConfig = [[ZZZUnsupportContentConfig alloc] init];
    }
    return self;
}

- (id<CCCSessionContentConfig>)replyConfigBy:(NIMMessage *)message
{
    NIMMessageType type = message.messageType;
    id<CCCSessionContentConfig>config = [_replyDict objectForKey:@(type)];
    if (config == nil)
    {
        config = _unsupportConfig;
    }
    return config;
}

- (id<CCCSessionContentConfig>)configBy:(NIMMessage *)message
{
    NIMMessageType type = message.messageType;
    id<CCCSessionContentConfig>config = [_dict objectForKey:@(type)];
    if (config == nil)
    {
        config = _unsupportConfig;
    }
    return config;
}

@end
