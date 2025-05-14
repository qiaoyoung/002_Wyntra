
#import <Foundation/Foundation.h>

NSString *StringFromHerbData(Byte *data);


//: 回复详情
Byte kStr_vitalScanTitle[] = {86, 12, 28, 14, 67, 86, 126, 150, 18, 137, 66, 213, 149, 120, 1, 183, 186, 1, 192, 169, 4, 203, 194, 2, 159, 161, 139};

// __DEBUG__
// __CLOSE_PRINT__
//
//  ClotheslineBeCellViewController.m
//  NIM
//
//  Created by He on 2020/4/12.
//  Copyright © 2020 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZZZThreadTalkSessionViewController.h"
#import "ClotheslineBeCellViewController.h"
//: #import "ZZZThreadSessionConfig.h"
#import "WastePaperBasketConfigBase.h"

//: @interface ZZZThreadTalkSessionViewController ()
@interface ClotheslineBeCellViewController ()
//: @property (nonatomic,strong) NIMMessage *threadMesssage;
@property (nonatomic,strong) NIMMessage *threadMesssage;
//: @property (nonatomic,strong) ZZZThreadSessionConfig *sessionConfig;
@property (nonatomic,strong) WastePaperBasketConfigBase *sessionConfig;
//: @end
@end

//: @implementation ZZZThreadTalkSessionViewController
@implementation ClotheslineBeCellViewController

//: - (instancetype)initWithThreadMessage:(NIMMessage *)message
- (instancetype)initWithTag:(NIMMessage *)message
{
    //: self = [super initWithSession:message.session];
    self = [super initWithMessage:message.session];
    //: if (self)
    if (self)
    {
        //: _threadMesssage = message;
        _threadMesssage = message;
    }
    //: return self;
    return self;
}

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
}

//: - (void)setupNormalNav
- (void)can
{
}

//: - (NSString *)sessionTitle
- (NSString *)name
{
    //: return @"回复详情".ntes_localized;
    return StringFromHerbData(kStr_vitalScanTitle).colorLocalized;
}

//接收消息

//: - (void)willSendMessage:(NIMMessage *)message
- (void)willSendMessage:(NIMMessage *)message
{
    //: if (![self shouldReceive:message])
    if (![self background:message])
    {
        //: return;
        return;
    }
    //: [super willSendMessage:message];
    [super willSendMessage:message];
}

//发送结果
//: - (void)sendMessage:(NIMMessage *)message didCompleteWithError:(NSError *)error
- (void)sendMessage:(NIMMessage *)message didCompleteWithError:(NSError *)error
{
    //: if (![self shouldReceive:message])
    if (![self background:message])
    {
       //: return;
       return;
    }

    //: [super sendMessage:message didCompleteWithError:error];
    [super sendMessage:message didCompleteWithError:error];
}


//发送进度
//: -(void)sendMessage:(NIMMessage *)message progress:(float)progress
-(void)sendMessage:(NIMMessage *)message progress:(float)progress
{
     //: if (![self shouldReceive:message])
     if (![self background:message])
     {
         //: return;
         return;
     }

    //: [super sendMessage:message progress:progress];
    [super sendMessage:message progress:progress];
}

//: - (void)onRecvMessages:(NSArray *)messages
- (void)onRecvMessages:(NSArray *)messages
{
    //: NSMutableArray *subMessages = [NSMutableArray array];
    NSMutableArray *subMessages = [NSMutableArray array];
    //: for (NIMMessage *message in messages)
    for (NIMMessage *message in messages)
    {
        //: if ([self shouldReceive:message])
        if ([self background:message])
        {
            //: [subMessages addObject:message];
            [subMessages addObject:message];
        }
    }
    //: if (subMessages.count == 0)
    if (subMessages.count == 0)
    {
        //: return;
        return;
    }
    //: [super onRecvMessages:messages];
    [super onRecvMessages:messages];
}

//: - (void)fetchMessageAttachment:(NIMMessage *)message progress:(float)progress
- (void)fetchMessageAttachment:(NIMMessage *)message progress:(float)progress
{
    //: if (![self shouldReceive:message])
    if (![self background:message])
    {
        //: return;
        return;
    }

    //: [super fetchMessageAttachment:message progress:progress];
    [super fetchMessageAttachment:message progress:progress];
}

//: - (void)fetchMessageAttachment:(NIMMessage *)message didCompleteWithError:(NSError *)error
- (void)fetchMessageAttachment:(NIMMessage *)message didCompleteWithError:(NSError *)error
{
    //: if (![self shouldReceive:message])
    if (![self background:message])
    {
        //: return;
        return;
    }

    //: [super fetchMessageAttachment:message didCompleteWithError:error];
    [super fetchMessageAttachment:message didCompleteWithError:error];
}

//: - (void)onRecvMessageReceipts:(NSArray<NIMMessageReceipt *> *)receipts
- (void)onRecvMessageReceipts:(NSArray<NIMMessageReceipt *> *)receipts
{
}


//: - (BOOL)shouldReceive:(NIMMessage *)message
- (BOOL)background:(NIMMessage *)message
{
    //: BOOL should = [message.session isEqual:self.session] &&
    BOOL should = [message.session isEqual:self.session] &&
    //: [message.threadMessageId isEqualToString:self.threadMesssage.messageId];
    [message.threadMessageId isEqualToString:self.threadMesssage.messageId];
    //: should = should || [message.messageId isEqualToString:self.threadMesssage.messageId];
    should = should || [message.messageId isEqualToString:self.threadMesssage.messageId];

    //: return should;
    return should;
}

//: - (id<ZZZSessionConfig>)sessionConfig
- (id<PastConfig>)sessionConfig
{
    //: if (_sessionConfig == nil) {
    if (_sessionConfig == nil) {
        //: _sessionConfig = [[ZZZThreadSessionConfig alloc] initWithMessage:self.threadMesssage];
        _sessionConfig = [[WastePaperBasketConfigBase alloc] initWithStreetwiseDoing:self.threadMesssage];
        //: _sessionConfig.session = self.session;
        _sessionConfig.session = self.session;
    }
    //: return _sessionConfig;
    return _sessionConfig;
}

//: #pragma mark - Override
#pragma mark - Override
//: - (void)onClickReplyButton:(NIMMessage *)message
- (void)texting:(NIMMessage *)message
{

}

//: - (BOOL)onLongPressCell:(NIMMessage *)message
- (BOOL)longInput:(NIMMessage *)message
                 //: inView:(UIView *)view
                 old:(UIView *)view
{
    //: return YES;
    return YES;
}

//: @end
@end

Byte * HerbDataToCache(Byte *data) {
    int tingMedicineQueryed = data[0];
    int decrease = data[1];
    Byte worryEngine = data[2];
    int entertainLit = data[3];
    if (!tingMedicineQueryed) return data + entertainLit;
    for (int i = entertainLit; i < entertainLit + decrease; i++) {
        int value = data[i] - worryEngine;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[entertainLit + decrease] = 0;
    return data + entertainLit;
}

NSString *StringFromHerbData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)HerbDataToCache(data)];
}
