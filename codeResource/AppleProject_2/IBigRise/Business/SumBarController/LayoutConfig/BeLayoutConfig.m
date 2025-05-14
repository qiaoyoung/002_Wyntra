
#import <Foundation/Foundation.h>
typedef struct {
    Byte development;
    Byte *instrument;
    unsigned int cosy;
    bool strainGauge;
	int dominantGag;
	int negate;
	int quantityroduceOof;
} WearerData;

NSString *StringFromWearerData(WearerData *data);


//: chatroom_role_master
WearerData kStr_warningContent = (WearerData){34, (Byte []){65, 74, 67, 86, 80, 77, 77, 79, 125, 80, 77, 78, 71, 125, 79, 67, 81, 86, 71, 80, 19}, 20, false, 103, 198, 98};


//: chatroom_role_manager
WearerData kStr_lingPantValue = (WearerData){62, (Byte []){93, 86, 95, 74, 76, 81, 81, 83, 97, 76, 81, 82, 91, 97, 83, 95, 80, 95, 89, 91, 76, 21}, 21, false, 191, 80, 235};


//: type
WearerData kStr_investigationSharpText = (WearerData){215, (Byte []){163, 174, 167, 178, 192}, 4, false, 184, 11, 115};


//: NTESMessageRefusedTag
WearerData kStr_sharpContent = (WearerData){178, (Byte []){252, 230, 247, 225, 255, 215, 193, 193, 211, 213, 215, 224, 215, 212, 199, 193, 215, 214, 230, 211, 213, 129}, 21, false, 29, 173, 116};

// __DEBUG__
// __CLOSE_PRINT__
//
//  BeLayoutConfig.m
//  NIM
//
//  Created by amao on 2016/11/22.
//  Copyright © 2016年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESCellLayoutConfig.h"
#import "BeLayoutConfig.h"
//: #import "NTESSessionCustomContentConfig.h"
#import "DoingCenter.h"
//: #import "NTESChatroomTextContentConfig.h"
#import "SuggestEdgeConfig.h"
//: #import "NTESWhiteboardAttachment.h"
#import "InsertShare.h"
//: #import "NTESRedPacketTipAttachment.h"
#import "TitleAttachment.h"

//: @interface NTESCellLayoutConfig ()
@interface BeLayoutConfig ()
//: @property (nonatomic,strong) NSArray *types;
@property (nonatomic,strong) NSArray *types;
//: @property (nonatomic,strong) NTESSessionCustomContentConfig *sessionCustomconfig;
@property (nonatomic,strong) DoingCenter *sessionCustomconfig;
//: @property (nonatomic,strong) NTESChatroomTextContentConfig *chatroomTextConfig;
@property (nonatomic,strong) SuggestEdgeConfig *chatroomTextConfig;
//: @end
@end

//: @implementation NTESCellLayoutConfig
@implementation BeLayoutConfig

//: - (instancetype)init
- (instancetype)init
{
    //: if (self = [super init])
    if (self = [super init])
    {
        //: _types = @[
        _types = @[
                   //: @"NTESJanKenPonAttachment",
                   @"TeamAttachment",
                   //: @"NTESSnapchatAttachment",
                   @"BackgroundAttachment",
                   //: @"NTESWhiteboardAttachment",
                   @"InsertShare",
                   //: @"NTESRedPacketAttachment",
                   @"LanguageEnter",
                   //: @"NTESRedPacketTipAttachment",
                   @"TitleAttachment",
                   //: @"NTESMultiRetweetAttachment",
                   @"RefreshMessage",
                   //: @"NTESShareCardAttachment"
                   @"AggregationTap"
                   //: ];
                   ];
        //: _sessionCustomconfig = [[NTESSessionCustomContentConfig alloc] init];
        _sessionCustomconfig = [[DoingCenter alloc] init];
        //: _chatroomTextConfig = [[NTESChatroomTextContentConfig alloc] init];
        _chatroomTextConfig = [[SuggestEdgeConfig alloc] init];
    }
    //: return self;
    return self;
}
//: #pragma mark - ZZZCellLayoutConfig
#pragma mark - SumConfig
//: - (CGSize)contentSize:(ZZZMessageModel *)model cellWidth:(CGFloat)width{
- (CGSize)name:(CollectionModel *)model tinkle:(CGFloat)width{

    //: NIMMessage *message = model.message;
    NIMMessage *message = model.message;
    //检查是不是当前支持的自定义消息类型
    //: if ([self isSupportedCustomMessage:message])
    if ([self down:message])
    {
        //: return [_sessionCustomconfig contentSize:width message:message];
        return [_sessionCustomconfig myRefer:width view:message];
    }

    //检查是不是聊天室文本消息
    //: if ([self isChatroomTextMessage:message])
    if ([self language:message])
    {
        //: return [_chatroomTextConfig contentSize:width message:message];
        return [_chatroomTextConfig myRefer:width view:message];
    }

    //如果没有特殊需求，就走默认处理流程
    //: return [super contentSize:model
    return [super name:model
                    //: cellWidth:width];
                    tinkle:width];

}

//: - (NSString *)cellContent:(ZZZMessageModel *)model{
- (NSString *)image:(CollectionModel *)model{

    //: NIMMessage *message = model.message;
    NIMMessage *message = model.message;
    //检查是不是当前支持的自定义消息类型
    //: if ([self isSupportedCustomMessage:message]) {
    if ([self down:message]) {
        //: return [_sessionCustomconfig cellContent:message];
        return [_sessionCustomconfig month:message];
    }

    //检查是不是聊天室文本消息
    //: if ([self isChatroomTextMessage:message]) {
    if ([self language:message]) {
        //: return [_chatroomTextConfig cellContent:message];
        return [_chatroomTextConfig month:message];
    }

    //如果没有特殊需求，就走默认处理流程
    //: return [super cellContent:model];
    return [super image:model];
}

//: - (UIEdgeInsets)contentViewInsets:(ZZZMessageModel *)model
- (UIEdgeInsets)insets:(CollectionModel *)model
{
    //: NIMMessage *message = model.message;
    NIMMessage *message = model.message;
    //检查是不是当前支持的自定义消息类型
    //: if ([self isSupportedCustomMessage:message]) {
    if ([self down:message]) {
        //: return [_sessionCustomconfig contentViewInsets:message];
        return [_sessionCustomconfig sign:message];
    }

    //检查是不是聊天室文本消息
    //: if ([self isChatroomTextMessage:message]) {
    if ([self language:message]) {
        //: return [_chatroomTextConfig contentViewInsets:message];
        return [_chatroomTextConfig sign:message];
    }

    //如果没有特殊需求，就走默认处理流程
    //: return [super contentViewInsets:model];
    return [super insets:model];
}

//: - (UIEdgeInsets)cellInsets:(ZZZMessageModel *)model
- (UIEdgeInsets)should:(CollectionModel *)model
{
    //: NIMMessage *message = model.message;
    NIMMessage *message = model.message;

    //检查是不是聊天室消息
    //: if (message.session.sessionType == NIMSessionTypeChatroom)
    if (message.session.sessionType == NIMSessionTypeChatroom)
    {
        //: return UIEdgeInsetsZero;
        return UIEdgeInsetsZero;
    }

    //如果没有特殊需求，就走默认处理流程
    //: return [super cellInsets:model];
    return [super should:model];
}




//: - (BOOL)shouldShowAvatar:(ZZZMessageModel *)model
- (BOOL)pressed:(CollectionModel *)model
{
    //: if ([self isSupportedChatroomMessage:model.message]) {
    if ([self play:model.message]) {
        //: return NO;
        return NO;
    }
    //: if ([self isWhiteboardCloseNotificationMessage:model.message]){
    if ([self brand:model.message]){
        //: return NO;
        return NO;
    }
    //: if ([self isRedpacketTip:model.message]) {
    if ([self corner:model.message]) {
        //: return NO;
        return NO;
    }
    //: return [super shouldShowAvatar:model];
    return [super pressed:model];
}

//: - (BOOL)shouldShowLeft:(ZZZMessageModel *)model{
- (BOOL)domain:(CollectionModel *)model{
    //: if ([self isSupportedChatroomMessage:model.message]) {
    if ([self play:model.message]) {
        //: return YES;
        return YES;
    }
    //: return [super shouldShowLeft:model];
    return [super domain:model];
}


//: - (BOOL)shouldShowNickName:(ZZZMessageModel *)model{
- (BOOL)media:(CollectionModel *)model{
    //: if ([self isSupportedChatroomMessage:model.message]) {
    if ([self play:model.message]) {
        //: return YES;
        return YES;
    }
    //: if ([self isRedpacketTip:model.message]) {
    if ([self corner:model.message]) {
        //: return NO;
        return NO;
    }
    //: return [super shouldShowNickName:model];
    return [super media:model];
}

//: - (CGPoint)nickNameMargin:(ZZZMessageModel *)model{
- (CGPoint)reload:(CollectionModel *)model{

    //: if ([self isSupportedChatroomMessage:model.message]) {
    if ([self play:model.message]) {
        //: NSDictionary *ext = model.message.remoteExt;
        NSDictionary *ext = model.message.remoteExt;
        //: NIMChatroomMemberType type = [ext[@"type"] integerValue];
        NIMChatroomMemberType type = [ext[StringFromWearerData(&kStr_investigationSharpText)] integerValue];
        //: switch (type) {
        switch (type) {
            //: case NIMChatroomMemberTypeManager:
            case NIMChatroomMemberTypeManager:
            //: case NIMChatroomMemberTypeCreator:
            case NIMChatroomMemberTypeCreator:
                //: return CGPointMake(50.f, -3.f);
                return CGPointMake(50.f, -3.f);
            //: default:
            default:
                //: break;
                break;
        }
        //: return CGPointMake(15.f, -3.f);;
        return CGPointMake(15.f, -3.f);;

    }
    //: return [super nickNameMargin:model];
    return [super reload:model];
}

//: - (NSArray *)customViews:(ZZZMessageModel *)model
- (NSArray *)topImage:(CollectionModel *)model
{
    //: if ([self isSupportedChatroomMessage:model.message]) {
    if ([self play:model.message]) {
        //: NSDictionary *ext = model.message.remoteExt;
        NSDictionary *ext = model.message.remoteExt;
        //: NIMChatroomMemberType type = [ext[@"type"] integerValue];
        NIMChatroomMemberType type = [ext[StringFromWearerData(&kStr_investigationSharpText)] integerValue];
        //: NSString *imageName;
        NSString *imageName;

        //: switch (type)
        switch (type)
        {
            //: case NIMChatroomMemberTypeManager:
            case NIMChatroomMemberTypeManager:
                //: imageName = @"chatroom_role_manager";
                imageName = StringFromWearerData(&kStr_lingPantValue);
                //: break;
                break;
            //: case NIMChatroomMemberTypeCreator:
            case NIMChatroomMemberTypeCreator:
                //: imageName = @"chatroom_role_master";
                imageName = StringFromWearerData(&kStr_warningContent);
                //: break;
                break;
            //: default:
            default:
                //: break;
                break;
        }

        //: UIImageView *imageView;
        UIImageView *imageView;
        //: if (imageName.length) {
        if (imageName.length) {
            //: UIImage *image = [UIImage imageNamed:imageName];
            UIImage *image = [UIImage imageNamed:imageName];
            //: imageView = [[UIImageView alloc] initWithImage:image];
            imageView = [[UIImageView alloc] initWithImage:image];
            //: CGFloat leftMargin = 15.f;
            CGFloat leftMargin = 15.f;
            //: CGFloat topMatgin = 0.f;
            CGFloat topMatgin = 0.f;
            //: CGRect frame = imageView.frame;
            CGRect frame = imageView.frame;
            //: frame.origin = CGPointMake(leftMargin, topMatgin);
            frame.origin = CGPointMake(leftMargin, topMatgin);
            //: imageView.frame = frame;
            imageView.frame = frame;
        }
        //: return imageView ? @[imageView] : nil;
        return imageView ? @[imageView] : nil;
    }
    //: return [super customViews:model];
    return [super topImage:model];
}


//: - (BOOL)disableRetryButton:(ZZZMessageModel *)model
- (BOOL)keying:(CollectionModel *)model
{
    //: if ([model.message.localExt.allKeys containsObject:@"NTESMessageRefusedTag"])
    if ([model.message.localExt.allKeys containsObject:StringFromWearerData(&kStr_sharpContent)])
    {
        //: return [[model.message.localExt objectForKey:@"NTESMessageRefusedTag"] boolValue];
        return [[model.message.localExt objectForKey:StringFromWearerData(&kStr_sharpContent)] boolValue];
    }
    //: return [super disableRetryButton:model];
    return [super keying:model];
}



//: #pragma mark - misc
#pragma mark - misc
//: - (BOOL)isSupportedCustomMessage:(NIMMessage *)message
- (BOOL)down:(NIMMessage *)message
{
    //: NIMCustomObject *object = message.messageObject;
    NIMCustomObject *object = message.messageObject;
    //: return [object isKindOfClass:[NIMCustomObject class]] &&
    return [object isKindOfClass:[NIMCustomObject class]] &&
    //: [_types indexOfObject:NSStringFromClass([object.attachment class])] != NSNotFound;
    [_types indexOfObject:NSStringFromClass([object.attachment class])] != NSNotFound;
}


//: - (BOOL)isSupportedChatroomMessage:(NIMMessage *)message
- (BOOL)play:(NIMMessage *)message
{
    //: return message.session.sessionType == NIMSessionTypeChatroom &&
    return message.session.sessionType == NIMSessionTypeChatroom &&
    //: (message.messageType == NIMMessageTypeText || [self isSupportedCustomMessage:message]);
    (message.messageType == NIMMessageTypeText || [self down:message]);
}

//: - (BOOL)isChatroomTextMessage:(NIMMessage *)message
- (BOOL)language:(NIMMessage *)message
{
    //: return message.session.sessionType == NIMSessionTypeChatroom &&
    return message.session.sessionType == NIMSessionTypeChatroom &&
    //: message.messageType == NIMMessageTypeText;
    message.messageType == NIMMessageTypeText;
}

//: - (BOOL)isWhiteboardCloseNotificationMessage:(NIMMessage *)message
- (BOOL)brand:(NIMMessage *)message
{
    //: if (message.messageType == NIMMessageTypeCustom) {
    if (message.messageType == NIMMessageTypeCustom) {
        //: NIMCustomObject *object = message.messageObject;
        NIMCustomObject *object = message.messageObject;
        //: if ([object.attachment isKindOfClass:[NTESWhiteboardAttachment class]]) {
        if ([object.attachment isKindOfClass:[InsertShare class]]) {
            //: return [(NTESWhiteboardAttachment *)object.attachment flag] == CustomWhiteboardFlagClose;
            return [(InsertShare *)object.attachment flag] == CustomWhiteboardFlagClose;
        }
    }
    //: return NO;
    return NO;
}

//: - (BOOL)isRedpacketTip:(NIMMessage *)message
- (BOOL)corner:(NIMMessage *)message
{
    //: if (message.messageType == NIMMessageTypeCustom) {
    if (message.messageType == NIMMessageTypeCustom) {
        //: NIMCustomObject *object = message.messageObject;
        NIMCustomObject *object = message.messageObject;
        //: if ([object.attachment isKindOfClass:[NTESRedPacketTipAttachment class]]) {
        if ([object.attachment isKindOfClass:[TitleAttachment class]]) {
            //: return YES;
            return YES;
        }
    }
    //: return NO;
    return NO;
}

//: - (BOOL)shouldDisplayBubbleBackground:(ZZZMessageModel *)model
- (BOOL)touch:(CollectionModel *)model
{
    //: NIMMessage *message = model.message;
    NIMMessage *message = model.message;
    //: if (!message)
    if (!message)
    {
        //: return NO;
        return NO;
    }

    //: if ([self isSupportedCustomMessage:message])
    if ([self down:message])
    {
        //: return [_sessionCustomconfig enableBackgroundBubbleView:message];
        return [_sessionCustomconfig fasted:message];
    }

    //检查是不是聊天室文本消息
    //: if (message.session.sessionType == NIMSessionTypeChatroom)
    if (message.session.sessionType == NIMSessionTypeChatroom)
    {
        //: if ([_chatroomTextConfig respondsToSelector:@selector(enableBackgroundBubbleView:)])
        if ([_chatroomTextConfig respondsToSelector:@selector(fasted:)])
        {
            //: return [_chatroomTextConfig enableBackgroundBubbleView:message];
            return [_chatroomTextConfig fasted:message];
        }
        //: return NO;
        return NO;
    }

    //: return [super shouldDisplayBubbleBackground:model];
    return [super touch:model];
}
//: @end
@end

Byte *WearerDataToByte(WearerData *data) {
    if (data->strainGauge) return data->instrument;
    for (int i = 0; i < data->cosy; i++) {
        data->instrument[i] ^= data->development;
    }
    data->instrument[data->cosy] = 0;
    data->strainGauge = true;
	if (data->cosy >= 3) {
		data->dominantGag = data->instrument[0];
		data->negate = data->instrument[1];
		data->quantityroduceOof = data->instrument[2];
	}
    return data->instrument;
}

NSString *StringFromWearerData(WearerData *data) {
    return [NSString stringWithUTF8String:(char *)WearerDataToByte(data)];
}
