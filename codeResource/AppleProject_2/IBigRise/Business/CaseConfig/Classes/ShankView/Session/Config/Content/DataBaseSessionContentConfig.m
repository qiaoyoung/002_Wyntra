// __DEBUG__
// __CLOSE_PRINT__
//
//  DataBaseSessionContentConfig.m
// On
//
//  Created by amao on 9/15/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "DataBaseSessionContentConfig.h"
#import "DataBaseSessionContentConfig.h"
//: #import "ZZZTextContentConfig.h"
#import "TextNameConfig.h"
//: #import "ZZZImageContentConfig.h"
#import "ChangeConfig.h"
//: #import "ZZZAudioContentConfig.h"
#import "FrameShould.h"
//: #import "ZZZVideoContentConfig.h"
#import "ModelImage.h"
//: #import "ZZZFileContentConfig.h"
#import "DisableModel.h"
//: #import "ZZZNotificationContentConfig.h"
#import "TitleTotal.h"
//: #import "ZZZLocationContentConfig.h"
#import "Config.h"
//: #import "ZZZUnsupportContentConfig.h"
#import "WithDistance.h"
//: #import "ZZZTipContentConfig.h"
#import "ImageNameShould.h"
//: #import "ZZZReplyedTextContentConfig.h"
#import "MessageConfig.h"
//: #import "ZZZRtcCallRecordContentConfig.h"
#import "AppealsBoardVersion.h"

//: @interface CCCSessionContentConfigFactory ()
@interface ContainerFactory ()
//: @property (nonatomic,strong) NSDictionary *dict;
@property (nonatomic,strong) NSDictionary *dict;
//: @property (nonatomic,strong) NSDictionary *replyDict;
@property (nonatomic,strong) NSDictionary *replyDict;
//: @property (nonatomic,strong) ZZZUnsupportContentConfig *unsupportConfig;
@property (nonatomic,strong) WithDistance *unsupportConfig;
//: @end
@end

//: @implementation CCCSessionContentConfigFactory
@implementation ContainerFactory

//: + (instancetype)sharedFacotry
+ (instancetype)colorTo
{
    //: static CCCSessionContentConfigFactory *instance = nil;
    static ContainerFactory *instance = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: instance = [[CCCSessionContentConfigFactory alloc] init];
        instance = [[ContainerFactory alloc] init];
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
        //: _dict = @{@(NIMMessageTypeText) : [ZZZTextContentConfig new],
        _dict = @{@(NIMMessageTypeText) : [TextNameConfig new],
                  //: @(NIMMessageTypeImage) : [ZZZImageContentConfig new],
                  @(NIMMessageTypeImage) : [ChangeConfig new],
                  //: @(NIMMessageTypeAudio) : [ZZZAudioContentConfig new],
                  @(NIMMessageTypeAudio) : [FrameShould new],
                  //: @(NIMMessageTypeVideo) : [ZZZVideoContentConfig new],
                  @(NIMMessageTypeVideo) : [ModelImage new],
                  //: @(NIMMessageTypeFile) : [ZZZFileContentConfig new],
                  @(NIMMessageTypeFile) : [DisableModel new],
                  //: @(NIMMessageTypeLocation) : [ZZZLocationContentConfig new],
                  @(NIMMessageTypeLocation) : [Config new],
                  //: @(NIMMessageTypeNotification) : [ZZZNotificationContentConfig new],
                  @(NIMMessageTypeNotification) : [TitleTotal new],
                  //: @(NIMMessageTypeTip) : [ZZZTipContentConfig new],
                  @(NIMMessageTypeTip) : [ImageNameShould new],
                  //: @(NIMMessageTypeRtcCallRecord): [ZZZRtcCallRecordContentConfig new],
                  @(NIMMessageTypeRtcCallRecord): [AppealsBoardVersion new],
        //: };
        };

        //: ZZZReplyedTextContentConfig *replyedTextConfig = [ZZZReplyedTextContentConfig new];
        MessageConfig *replyedTextConfig = [MessageConfig new];
        //: _replyDict = @{
        _replyDict = @{
            //: @(NIMMessageTypeText) : replyedTextConfig,
            @(NIMMessageTypeText) : replyedTextConfig,
            //: @(NIMMessageTypeAudio) : replyedTextConfig,
            @(NIMMessageTypeAudio) : replyedTextConfig,
            //: @(NIMMessageTypeVideo) : replyedTextConfig,
            @(NIMMessageTypeVideo) : replyedTextConfig,
            //: @(NIMMessageTypeFile) : replyedTextConfig,
            @(NIMMessageTypeFile) : replyedTextConfig,
            //: @(NIMMessageTypeTip) : replyedTextConfig,
            @(NIMMessageTypeTip) : replyedTextConfig,
            //: @(NIMMessageTypeRobot) : replyedTextConfig,
            @(NIMMessageTypeRobot) : replyedTextConfig,
            //: @(NIMMessageTypeNotification) : replyedTextConfig,
            @(NIMMessageTypeNotification) : replyedTextConfig,
            //: @(NIMMessageTypeLocation) : replyedTextConfig,
            @(NIMMessageTypeLocation) : replyedTextConfig,
            //: @(NIMMessageTypeCustom) : replyedTextConfig,
            @(NIMMessageTypeCustom) : replyedTextConfig,
            //: @(NIMMessageTypeImage) : replyedTextConfig,
            @(NIMMessageTypeImage) : replyedTextConfig,
            //: @(NIMMessageTypeRtcCallRecord) : replyedTextConfig,
            @(NIMMessageTypeRtcCallRecord) : replyedTextConfig,
        //: };
        };
        //: _unsupportConfig = [[ZZZUnsupportContentConfig alloc] init];
        _unsupportConfig = [[WithDistance alloc] init];
    }
    //: return self;
    return self;
}

//: - (id<CCCSessionContentConfig>)replyConfigBy:(NIMMessage *)message
- (id<MaxSize>)sound:(NIMMessage *)message
{
    //: NIMMessageType type = message.messageType;
    NIMMessageType type = message.messageType;
    //: id<CCCSessionContentConfig>config = [_replyDict objectForKey:@(type)];
    id<MaxSize>config = [_replyDict objectForKey:@(type)];
    //: if (config == nil)
    if (config == nil)
    {
        //: config = _unsupportConfig;
        config = _unsupportConfig;
    }
    //: return config;
    return config;
}

//: - (id<CCCSessionContentConfig>)configBy:(NIMMessage *)message
- (id<MaxSize>)addBy:(NIMMessage *)message
{
    //: NIMMessageType type = message.messageType;
    NIMMessageType type = message.messageType;
    //: id<CCCSessionContentConfig>config = [_dict objectForKey:@(type)];
    id<MaxSize>config = [_dict objectForKey:@(type)];
    //: if (config == nil)
    if (config == nil)
    {
        //: config = _unsupportConfig;
        config = _unsupportConfig;
    }
    //: return config;
    return config;
}

//: @end
@end
