// __DEBUG__
// __CLOSE_PRINT__
//
//  ZZZSessionConfigurateProtocol.h
// On
//
//  Created by chris on 2016/11/7.
//  Copyright © 2016年 NetEase. All rights reserved.
//
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>
//: #import "ZZZMessageModel.h"
#import "CollectionModel.h"

// __M_A_C_R_O__

//: typedef NS_ENUM(NSUInteger, NIMKitSessionState) {
typedef NS_ENUM(NSUInteger, NIMKitSessionState) {
    //: NIMKitSessionStateNormal = 0,
    NIMKitSessionStateNormal = 0,
    //: NIMKitSessionStateSelect,
    NIMKitSessionStateSelect,
//: };
};

//: @protocol NIMSessionInteractorDelegate <NSObject>
@protocol ColorDelegate <NSObject>

//: - (void)didFetchMessageData;
- (void)mailColor;

//: - (void)didRefreshMessageData;
- (void)dateApp;

//: - (void)didPullUpMessageData;
- (void)belowTeam;


//: @end
@end

//: @protocol NIMSessionInteractor <NSObject>
@protocol SuggestEmptyQuantityeractor <NSObject>

//网络接口
//: - (void)sendMessage:(NIMMessage *)message;
- (void)send:(NIMMessage *)message;

//: - (void)sendMessage:(NIMMessage *)message toMessage:(NIMMessage *)toMessage;
- (void)pressedMessage:(NIMMessage *)message permission:(NIMMessage *)toMessage;

//: - (void)sendMessage:(NIMMessage *)message completion:(void(^)(NSError * error))completion;
- (void)view:(NIMMessage *)message tab:(void(^)(NSError * error))completion;

//: - (void)sendMessage:(NIMMessage *)message
- (void)imageOption:(NIMMessage *)message
          //: toMessage:(NIMMessage *)toMessage
          onName:(NIMMessage *)toMessage
         //: completion:(void(^)(NSError * error))completion;
         telegram:(void(^)(NSError * error))completion;


//: - (void)sendMessageReceipt:(NSArray *)messages;
- (void)molarityTap:(NSArray *)messages;

//: - (void)addQuickComment:(NIMQuickComment *)comment
- (void)completionCriticizeEnrichQuick:(NIMQuickComment *)comment
             //: completion:(void(^)(NSError *error))completion;
             container:(void(^)(NSError *error))completion;

//: - (void)addQuickComment:(NIMQuickComment *)comment
- (void)kibbitz:(NIMQuickComment *)comment
              //: toMessage:(NIMMessage *)toMessage
              request_strong:(NIMMessage *)toMessage
             //: completion:(void(^)(NSError *error))completion;
             concatenateRead:(void(^)(NSError *error))completion;

//: - (void)delQuickComment:(NIMQuickComment *)comment
- (void)completionNeed:(NIMQuickComment *)comment
          //: targetMessage:(NIMMessage *)message
          commentOptionImage:(NIMMessage *)message
             //: completion:(void(^)(NSError *error))completion;
             rubricBubble:(void(^)(NSError *error))completion;


//界面操作接口
//: - (void)addMessages:(NSArray *)messages;
- (void)farawaynessMessages:(NSArray *)messages;

//: - (void)insertMessages:(NSArray *)messages;
- (void)transplantColor:(NSArray *)messages;

//: - (ZZZMessageModel *)updateMessage:(NIMMessage *)message;
- (CollectionModel *)sendPlayer:(NIMMessage *)message;

//: - (ZZZMessageModel *)deleteMessage:(NIMMessage *)message;
- (CollectionModel *)show:(NIMMessage *)message;

//: - (void)addPinForMessage:(NIMMessage *)message;
- (void)everyLabel:(NIMMessage *)message;

//: - (void)removePinForMessage:(NIMMessage *)message;
- (void)viewWith:(NIMMessage *)message;

//数据接口
//: - (NSArray *)items;
- (NSArray *)along;

//: - (void)markRead:(BOOL)needMarkDataModel;
- (void)quickMark:(BOOL)needMarkDataModel;

//: - (ZZZMessageModel *)findMessageModel:(NIMMessage *)message;
- (CollectionModel *)model:(NIMMessage *)message;

//: - (BOOL)shouldHandleReceipt;
- (BOOL)messageComment;

//: - (void)checkReceipts:(NSArray<NIMMessageReceipt *> *)receipts;
- (void)quantity:(NSArray<NIMMessageReceipt *> *)receipts;

//: - (void)resetMessages:(void (^)(NSError *error))handler;
- (void)colorWith:(void (^)(NSError *error))handler;

//: - (void)loadMessages:(void (^)(NSArray *messages, NSError *error))handler;
- (void)insert:(void (^)(NSArray *messages, NSError *error))handler;

//: - (void)pullUpMessages:(void(^)(NSArray *messages, NSError *error))handler;
- (void)addInfo:(void(^)(NSArray *messages, NSError *error))handler;

//: - (NSInteger)findMessageIndex:(NIMMessage *)message;
- (NSInteger)table:(NIMMessage *)message;

//: - (BOOL)messageCanBeSelected:(NIMMessage *)message;
- (BOOL)keep:(NIMMessage *)message;

//: - (void)loadMessagePins:(void (^)(NSError *error))handler;
- (void)pins:(void (^)(NSError *error))handler;

//: - (void)willDisplayMessageModel:(ZZZMessageModel *)model;
- (void)display:(CollectionModel *)model;

//排版接口

//: - (void)resetLayout;
- (void)number;

//: - (void)changeLayout:(CGFloat)inputHeight;
- (void)change:(CGFloat)inputHeight;

//: - (void)cleanCache;
- (void)backgroundSelected;

//: - (void)pullUp;
- (void)allowChange;

//按钮响应接口
//: - (void)mediaAudioPressed:(ZZZMessageModel *)messageModel;
- (void)date:(CollectionModel *)messageModel;

//: - (void)mediaPicturePressed;
- (void)pressedName;

//: - (void)mediaShootPressed;
- (void)secret;

//: - (void)mediaLocationPressed;
- (void)writtenRecord;

//页面状态同步接口

//: - (void)onViewWillAppear;
- (void)change;

//: - (void)onViewDidDisappear;
- (void)after;

//页面状态切换接口(正常/选择)
//: - (NIMKitSessionState)sessionState;
- (NIMKitSessionState)eparchy;

//: - (void)setSessionState:(NIMKitSessionState)sessionState;
- (void)setEparchy:(NIMKitSessionState)sessionState;

//: - (void)setReferenceMessage:(NIMMessage *)message;
- (void)setPacketRetrospectionSetMessage:(NIMMessage *)message;

//: @end
@end