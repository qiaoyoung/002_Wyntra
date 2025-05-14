// __DEBUG__
// __CLOSE_PRINT__
//
//  WastePaperBasketConfigBase.m
//  NIM
//
//  Created by He on 2020/4/12.
//  Copyright © 2020 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZZZThreadSessionConfig.h"
#import "WastePaperBasketConfigBase.h"
//: #import "NTESBundleSetting.h"
#import "BackgroundTingIncidentGreen.h"

//: @interface ZZZThreadSessionConfig ()
@interface WastePaperBasketConfigBase ()

//: @property (nonatomic,strong) NTESThreadDataSourceProvider *provider;
@property (nonatomic,strong) MessageVersion *provider;

//: @property (nonatomic,strong) NIMMessage *threadMessage;
@property (nonatomic,strong) NIMMessage *threadMessage;

//: @end
@end

//: @implementation ZZZThreadSessionConfig
@implementation WastePaperBasketConfigBase

//: - (instancetype)initWithMessage:(NIMMessage *)message
- (instancetype)initWithStreetwiseDoing:(NIMMessage *)message
{
    //: self = [super init];
    self = [super init];
    //: if (self)
    if (self)
    {
        //: _threadMessage = message;
        _threadMessage = message;
        //: _provider = [[NTESThreadDataSourceProvider alloc] init];
        _provider = [[MessageVersion alloc] init];
        //: _provider.threadMessage = message;
        _provider.threadMessage = message;
    }
    //: return self;
    return self;
}

//: - (id<ZZZKitMessageProvider>)messageDataProvider
- (id<EmptySizeWith>)resolutionSuper
{
    //: return self.provider;
    return self.provider;
}

//: - (BOOL)needShowReplyContent
- (BOOL)bringHomeContent
{
    //: return NO;
    return NO;
}

//: - (BOOL)shouldShowPinContent
- (BOOL)colorInsideCollection
{
    //: return NO;
    return NO;
}

//: - (BOOL)needShowQuickComments
- (BOOL)tillComments
{
    //: return NO;
    return NO;
}

//: - (void)cleanThreadMessage
- (void)size
{
    //: _threadMessage = nil;
    _threadMessage = nil;
}

//: - (NIMMessage *)threadMessage
- (NIMMessage *)threadMessage
{
    //: return _threadMessage;
    return _threadMessage;
}

//: - (BOOL)clearThreadMessageAfterSent
- (BOOL)viewSend
{
    //: return NO;
    return NO;
}

//: @end
@end

//: @interface NTESThreadDataSourceProvider ()
@interface MessageVersion ()

//: @property (nonatomic,assign) BOOL didInsertThreadMessage;
@property (nonatomic,assign) BOOL didInsertThreadMessage;

//: @end
@end

//: @implementation NTESThreadDataSourceProvider
@implementation MessageVersion

//: - (void)pullDown:(NIMMessage *)firstMessage handler:(NIMKitDataProvideHandler)handler
- (void)discontinue:(NIMMessage *)firstMessage redHandler:(NIMKitDataProvideHandler)handler
{
    //: BOOL enablePullCloudMessages = [[NTESBundleSetting sharedConfig] enablePullSubMessagesFromServer];
    BOOL enablePullCloudMessages = [[BackgroundTingIncidentGreen pickApart] back];
    //: if (!enablePullCloudMessages)
    if (!enablePullCloudMessages)
    {
        //: NSArray *array = [[NIMSDK sharedSDK].chatExtendManager subMessages:self.threadMessage];
        NSArray *array = [[NIMSDK sharedSDK].chatExtendManager subMessages:self.threadMessage];
        //: if (!self.didInsertThreadMessage && self.threadMessage)
        if (!self.didInsertThreadMessage && self.threadMessage)
        {
            //: NSMutableArray *tmp = [NSMutableArray arrayWithArray:array];
            NSMutableArray *tmp = [NSMutableArray arrayWithArray:array];
            //: [tmp insertObject:self.threadMessage atIndex:0];
            [tmp insertObject:self.threadMessage atIndex:0];
            //: array = tmp;
            array = tmp;
            //: self.didInsertThreadMessage = YES;
            self.didInsertThreadMessage = YES;
        }

        //: if (handler)
        if (handler)
        {
            //: handler(nil, array);
            handler(nil, array);
        }
    }
    //: else
    else
    {
        //: NIMThreadTalkFetchOption *option = [[NIMThreadTalkFetchOption alloc] init];
        NIMThreadTalkFetchOption *option = [[NIMThreadTalkFetchOption alloc] init];
        //: option.limit = 100;
        option.limit = 100;
        //: option.excludeMessage = firstMessage;
        option.excludeMessage = firstMessage;
        //: option.end = firstMessage.timestamp;
        option.end = firstMessage.timestamp;
        //: option.sync = YES;
        option.sync = YES;
        //: option.reverse = NO;
        option.reverse = NO;

         //: [[NIMSDK sharedSDK].chatExtendManager fetchSubMessagesFrom:self.threadMessage option:option completion:^(NSError * error, NIMThreadTalkFetchResult * result)
         [[NIMSDK sharedSDK].chatExtendManager fetchSubMessagesFrom:self.threadMessage option:option completion:^(NSError * error, NIMThreadTalkFetchResult * result)
         {
             //: if (!self.didInsertThreadMessage && self.threadMessage)
             if (!self.didInsertThreadMessage && self.threadMessage)
             {
                 //: NSMutableArray *tmp = [NSMutableArray arrayWithArray:result.subMessages];
                 NSMutableArray *tmp = [NSMutableArray arrayWithArray:result.subMessages];
                 //: [tmp insertObject:self.threadMessage atIndex:0];
                 [tmp insertObject:self.threadMessage atIndex:0];
                 //: result.subMessages = tmp;
                 result.subMessages = tmp;
                 //: self.didInsertThreadMessage = YES;
                 self.didInsertThreadMessage = YES;
             }

            //: result.subMessages = [result.subMessages sortedArrayUsingComparator:^NSComparisonResult(NIMMessage * obj1, NIMMessage * obj2) {
            result.subMessages = [result.subMessages sortedArrayUsingComparator:^NSComparisonResult(NIMMessage * obj1, NIMMessage * obj2) {
                //: return obj1.timestamp < obj2.timestamp ? NSOrderedAscending : NSOrderedDescending;
                return obj1.timestamp < obj2.timestamp ? NSOrderedAscending : NSOrderedDescending;

             //: }];
             }];

             //: if (handler)
             if (handler)
             {
                 //: handler(error, result.subMessages);
                 handler(error, result.subMessages);
             }
         //: }];
         }];
    }
}

//: @end
@end