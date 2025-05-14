// __DEBUG__
// __CLOSE_PRINT__
//
//  NIMSessionDefaultConfig.m
// On
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZZZCellLayoutConfig.h"
#import "SumConfig.h"
//: #import "ZZZSessionMessageContentView.h"
#import "ShouldControl.h"
//: #import "ZZZSessionUnknowContentView.h"
#import "CountDisableControl.h"
//: #import "M80AttributedLabel+AppleProjectKit.h"
#import "GreenNameView+On.h"
//: #import "ZZZKitUtil.h"
#import "TingText.h"
//: #import "UIImage+AppleProjectKit.h"
#import "UIImage+On.h"
//: #import "ZZZMessageModel.h"
#import "CollectionModel.h"
//: #import "DataBaseSessionContentConfig.h"
#import "DataBaseSessionContentConfig.h"
//: #import "AppleProjectKit.h"
#import "On.h"

//: @interface ZZZCellLayoutConfig()
@interface SumConfig()

//: @end
@end

//: @implementation ZZZCellLayoutConfig
@implementation SumConfig

//: - (CGSize)contentSize:(ZZZMessageModel *)model cellWidth:(CGFloat)cellWidth{
- (CGSize)name:(CollectionModel *)model tinkle:(CGFloat)cellWidth{
    //: id<CCCSessionContentConfig>config = [[CCCSessionContentConfigFactory sharedFacotry] configBy:model.message];
    id<MaxSize>config = [[ContainerFactory colorTo] addBy:model.message];
    //: return [config contentSize:cellWidth message:model.message];
    return [config myRefer:cellWidth view:model.message];
}

//: - (NSString *)cellContent:(ZZZMessageModel *)model{
- (NSString *)image:(CollectionModel *)model{
    //: id<CCCSessionContentConfig>config = [[CCCSessionContentConfigFactory sharedFacotry] configBy:model.message];
    id<MaxSize>config = [[ContainerFactory colorTo] addBy:model.message];
    //: NSString *cellContent = [config cellContent:model.message];
    NSString *cellContent = [config month:model.message];
    //: return cellContent.length ? cellContent : @"ZZZSessionUnknowContentView";
    return cellContent.length ? cellContent : @"CountDisableControl";
}


//: - (UIEdgeInsets)contentViewInsets:(ZZZMessageModel *)model{
- (UIEdgeInsets)insets:(CollectionModel *)model{
    //: id<CCCSessionContentConfig>config = [[CCCSessionContentConfigFactory sharedFacotry] configBy:model.message];
    id<MaxSize>config = [[ContainerFactory colorTo] addBy:model.message];
    //: return [config contentViewInsets:model.message];
    return [config sign:model.message];
}


//: - (UIEdgeInsets)cellInsets:(ZZZMessageModel *)model
- (UIEdgeInsets)should:(CollectionModel *)model
{
    //: if ([[self cellContent:model] isEqualToString:@"ZZZSessionNotificationContentView"]) {
    if ([[self image:model] isEqualToString:@"SessionControl"]) {
        //: return UIEdgeInsetsZero;
        return UIEdgeInsetsZero;
    }
    //: CGFloat cellTopToBubbleTop = 3;
    CGFloat cellTopToBubbleTop = 3;
    //: CGFloat otherNickNameHeight = 20;
    CGFloat otherNickNameHeight = 20;
    //: CGFloat bubbleLeftToCellLeft = 13;
    CGFloat bubbleLeftToCellLeft = 13;
    //: CGFloat otherBubbleOriginX = [self shouldShowAvatar:model] ? [self avatarSize:model].width + bubbleLeftToCellLeft : 0;
    CGFloat otherBubbleOriginX = [self pressed:model] ? [self gestureSize:model].width + bubbleLeftToCellLeft : 0;
    //: CGFloat cellBubbleButtomToCellButtom = 13;
    CGFloat cellBubbleButtomToCellButtom = 13;
    //: if ([self shouldShowNickName:model])
    if ([self media:model])
    {
        //要显示名字
        //: return UIEdgeInsetsMake(cellTopToBubbleTop + otherNickNameHeight ,otherBubbleOriginX,cellBubbleButtomToCellButtom, 0);
        return UIEdgeInsetsMake(cellTopToBubbleTop + otherNickNameHeight ,otherBubbleOriginX,cellBubbleButtomToCellButtom, 0);
    }
    //: else
    else
    {
        //: return UIEdgeInsetsMake(cellTopToBubbleTop,otherBubbleOriginX,cellBubbleButtomToCellButtom, 0);
        return UIEdgeInsetsMake(cellTopToBubbleTop,otherBubbleOriginX,cellBubbleButtomToCellButtom, 0);
    }

}

//: - (UIEdgeInsets)replyContentViewInsets:(ZZZMessageModel *)model{
- (UIEdgeInsets)state:(CollectionModel *)model{
    //: id<CCCSessionContentConfig>config = [[CCCSessionContentConfigFactory sharedFacotry] replyConfigBy:model.repliedMessage];
    id<MaxSize>config = [[ContainerFactory colorTo] sound:model.repliedMessage];
    //: return [config contentViewInsets:model.repliedMessage];
    return [config sign:model.repliedMessage];
}


//: - (UIEdgeInsets)replyCellInsets:(ZZZMessageModel *)model
- (UIEdgeInsets)compartment:(CollectionModel *)model
{
    //: if ([[self cellContent:model] isEqualToString:@"ZZZSessionNotificationContentView"]) {
    if ([[self image:model] isEqualToString:@"SessionControl"]) {
        //: return UIEdgeInsetsZero;
        return UIEdgeInsetsZero;
    }
    //: CGFloat cellTopToBubbleTop = 3;
    CGFloat cellTopToBubbleTop = 3;
    //: CGFloat otherNickNameHeight = 20;
    CGFloat otherNickNameHeight = 20;
    //: CGFloat bubbleLeftToCellLeft = 13;
    CGFloat bubbleLeftToCellLeft = 13;
    //: CGFloat otherBubbleOriginX = [self shouldShowAvatar:model] ? [self avatarSize:model].width + bubbleLeftToCellLeft : 0;
    CGFloat otherBubbleOriginX = [self pressed:model] ? [self gestureSize:model].width + bubbleLeftToCellLeft : 0;
    //: CGFloat cellBubbleButtomToCellButtom = 1;
    CGFloat cellBubbleButtomToCellButtom = 1;
    //: if ([self shouldShowNickName:model])
    if ([self media:model])
    {
        //要显示名字
        //: return UIEdgeInsetsMake(cellTopToBubbleTop + otherNickNameHeight ,otherBubbleOriginX,cellBubbleButtomToCellButtom, 0);
        return UIEdgeInsetsMake(cellTopToBubbleTop + otherNickNameHeight ,otherBubbleOriginX,cellBubbleButtomToCellButtom, 0);
    }
    //: else
    else
    {
        //: return UIEdgeInsetsMake(cellTopToBubbleTop,otherBubbleOriginX,cellBubbleButtomToCellButtom, 0);
        return UIEdgeInsetsMake(cellTopToBubbleTop,otherBubbleOriginX,cellBubbleButtomToCellButtom, 0);
    }

}

//: - (CGSize)replyContentSize:(ZZZMessageModel *)model cellWidth:(CGFloat)cellWidth {
- (CGSize)label:(CollectionModel *)model generate:(CGFloat)cellWidth {
    //: id<CCCSessionContentConfig>config = [[CCCSessionContentConfigFactory sharedFacotry] replyConfigBy:model.repliedMessage];
    id<MaxSize>config = [[ContainerFactory colorTo] sound:model.repliedMessage];
    //: return [config contentSize:cellWidth message:model.repliedMessage];
    return [config myRefer:cellWidth view:model.repliedMessage];
}

//: - (NSString *)replyContent:(ZZZMessageModel *)model {
- (NSString *)exhibit:(CollectionModel *)model {
    //: id<CCCSessionContentConfig>config = [[CCCSessionContentConfigFactory sharedFacotry] replyConfigBy:model.repliedMessage];
    id<MaxSize>config = [[ContainerFactory colorTo] sound:model.repliedMessage];
    //: NSString *cellContent = [config cellContent:model.repliedMessage];
    NSString *cellContent = [config month:model.repliedMessage];
    //: return cellContent.length ? cellContent : @"ZZZSessionUnknowContentView";
    return cellContent.length ? cellContent : @"CountDisableControl";
}

//: - (BOOL)shouldShowAvatar:(ZZZMessageModel *)model
- (BOOL)pressed:(CollectionModel *)model
{
    //: return [[AppleProjectKit sharedKit].config setting:model.message].showAvatar;
    return [[On along].config style:model.message].showAvatar;
}


//: - (BOOL)shouldShowNickName:(ZZZMessageModel *)model{
- (BOOL)media:(CollectionModel *)model{
    //: NIMMessage *message = model.message;
    NIMMessage *message = model.message;
    //: if (message.messageType == NIMMessageTypeNotification)
    if (message.messageType == NIMMessageTypeNotification)
    {
        //: NIMNotificationType type = [(NIMNotificationObject *)message.messageObject notificationType];
        NIMNotificationType type = [(NIMNotificationObject *)message.messageObject notificationType];
        //: if (type == NIMNotificationTypeTeam || type == NIMNotificationTypeSuperTeam) {
        if (type == NIMNotificationTypeTeam || type == NIMNotificationTypeSuperTeam) {
            //: return NO;
            return NO;
        }
    }
    //: if (message.messageType == NIMMessageTypeTip) {
    if (message.messageType == NIMMessageTypeTip) {
        //: return NO;
        return NO;
    }

    //: BOOL isTeamMessage = (message.session.sessionType == NIMSessionTypeTeam
    BOOL isTeamMessage = (message.session.sessionType == NIMSessionTypeTeam
                          //: || message.session.sessionType == NIMSessionTypeSuperTeam);
                          || message.session.sessionType == NIMSessionTypeSuperTeam);
    //: return (!message.isOutgoingMsg && isTeamMessage);
    return (!message.isOutgoingMsg && isTeamMessage);
}


//: - (BOOL)shouldShowLeft:(ZZZMessageModel *)model
- (BOOL)domain:(CollectionModel *)model
{
    //: return !model.message.isOutgoingMsg;
    return !model.message.isOutgoingMsg;
}

//: - (CGPoint)avatarMargin:(ZZZMessageModel *)model
- (CGPoint)lineMargin:(CollectionModel *)model
{
    //: return CGPointMake(8.f, 0.f);
    return CGPointMake(8.f, 0.f);
}

//: - (CGSize)avatarSize:(ZZZMessageModel *)model
- (CGSize)gestureSize:(CollectionModel *)model
{
    //: return CGSizeMake(42, 42);
    return CGSizeMake(42, 42);
}

//: - (CGPoint)nickNameMargin:(ZZZMessageModel *)model
- (CGPoint)reload:(CollectionModel *)model
{
    //: return [self shouldShowAvatar:model] ? CGPointMake([self avatarSize:model].width + 15.f, -3.f) : CGPointMake(10.f, -3.f);
    return [self pressed:model] ? CGPointMake([self gestureSize:model].width + 15.f, -3.f) : CGPointMake(10.f, -3.f);
}


//: - (NSArray *)customViews:(ZZZMessageModel *)model
- (NSArray *)topImage:(CollectionModel *)model
{
    //: return nil;
    return nil;
}

//: - (BOOL)disableRetryButton:(ZZZMessageModel *)model
- (BOOL)keying:(CollectionModel *)model
{

    //: if (model.message.session.sessionType == NIMSessionTypeTeam)
    if (model.message.session.sessionType == NIMSessionTypeTeam)
    {
        //: id<ZZZCellLayoutConfig> layoutConfig = [[AppleProjectKit sharedKit] layoutConfig];
        id<SumConfig> layoutConfig = [[On along] layoutConfig];
        //: BOOL left = [layoutConfig shouldShowLeft:model];
        BOOL left = [layoutConfig domain:model];
        //: if (!left) {
        if (!left) {
            //: NSString *userID = [NIMSDK sharedSDK].loginManager.currentAccount;
            NSString *userID = [NIMSDK sharedSDK].loginManager.currentAccount;
            //: NIMTeamMember *member = [[NIMSDK sharedSDK].teamManager teamMember:userID inTeam:model.message.session.sessionId];
            NIMTeamMember *member = [[NIMSDK sharedSDK].teamManager teamMember:userID inTeam:model.message.session.sessionId];
            //: if (member.isMuted) {
            if (member.isMuted) {
                //: return YES;
                return YES;
            }
        }
    }
    //: else if (model.message.session.sessionType == NIMSessionTypeSuperTeam)
    else if (model.message.session.sessionType == NIMSessionTypeSuperTeam)
    {
        //: id<ZZZCellLayoutConfig> layoutConfig = [[AppleProjectKit sharedKit] layoutConfig];
        id<SumConfig> layoutConfig = [[On along] layoutConfig];
        //: BOOL left = [layoutConfig shouldShowLeft:model];
        BOOL left = [layoutConfig domain:model];
        //: if (!left) {
        if (!left) {
            //: NSString *userID = [NIMSDK sharedSDK].loginManager.currentAccount;
            NSString *userID = [NIMSDK sharedSDK].loginManager.currentAccount;
            //: NIMTeamMember *member = [[NIMSDK sharedSDK].superTeamManager teamMember:userID inTeam:model.message.session.sessionId];
            NIMTeamMember *member = [[NIMSDK sharedSDK].superTeamManager teamMember:userID inTeam:model.message.session.sessionId];
            //: if (member.isMuted) {
            if (member.isMuted) {
                //: return YES;
                return YES;
            }
        }
    }

    //: if (!model.message.isReceivedMsg)
    if (!model.message.isReceivedMsg)
    {
        //: return model.message.deliveryState != NIMMessageDeliveryStateFailed;
        return model.message.deliveryState != NIMMessageDeliveryStateFailed;
    }
    //: else
    else
    {
//        return model.message.attachmentDownloadState != NIMMessageAttachmentDownloadStateFailed;
        //: return YES;
        return YES;
    }
}

//: - (BOOL)shouldDisplayBubbleBackground:(ZZZMessageModel *)model
- (BOOL)touch:(CollectionModel *)model
{
    //: id<CCCSessionContentConfig> config = [[CCCSessionContentConfigFactory sharedFacotry] configBy:model.message];
    id<MaxSize> config = [[ContainerFactory colorTo] addBy:model.message];
    //: if ([config respondsToSelector:@selector(enableBackgroundBubbleView:)])
    if ([config respondsToSelector:@selector(fasted:)])
    {
        //: return [config enableBackgroundBubbleView:model.message];
        return [config fasted:model.message];
    }
    //: return YES;
    return YES;
}

//: @end
@end
