// __DEBUG__
// __CLOSE_PRINT__
//
//  ZZZSessionPrivateProtocol.h
// On
//
//  Created by chris on 2016/11/7.
//  Copyright © 2016年 NetEase. All rights reserved.
//
//: #import "ZZZSessionViewController.h"
#import "GroupDiscussionViewController.h"

// __M_A_C_R_O__

//: @class NIMMessage;
@class NIMMessage;
//: @class ZZZMessageModel;
@class CollectionModel;

//: @interface NIMSessionMessageOperateResult : NSObject
@interface RegisterResult : NSObject

//: @property (nonatomic,copy) NSArray *indexpaths;
@property (nonatomic,copy) NSArray *indexpaths;

//: @property (nonatomic,copy) NSArray *messageModels;
@property (nonatomic,copy) NSArray *messageModels;

//: @end
@end

//: @protocol NIMSessionDataSource <NSObject>
@protocol PointSourceTing <NSObject>

//: - (NSArray *)items;
- (NSArray *)maxBackground;

//: - (NIMSessionMessageOperateResult *)addMessageModels:(NSArray *)models;
- (RegisterResult *)cypher:(NSArray *)models;

//: - (NIMSessionMessageOperateResult *)insertMessageModels:(NSArray *)models;
- (RegisterResult *)can:(NSArray *)models;

//: - (NIMSessionMessageOperateResult *)deleteMessageModel:(ZZZMessageModel *)model;
- (RegisterResult *)nameTheoryModel:(CollectionModel *)model;

//: - (NIMSessionMessageOperateResult *)updateMessageModel:(ZZZMessageModel *)model;
- (RegisterResult *)item:(CollectionModel *)model;

//: - (ZZZMessageModel *)findModel:(NIMMessage *)message;
- (CollectionModel *)afterForRed:(NIMMessage *)message;

//: - (NSInteger)indexAtModelArray:(ZZZMessageModel *)model;
- (NSInteger)beforeKey:(CollectionModel *)model;

//: - (NSArray *)deleteModels:(NSRange)range;
- (NSArray *)appModels:(NSRange)range;

//: - (void)resetMessages:(void(^)(NSError *error))handler;
- (void)forward:(void(^)(NSError *error))handler;

//: - (void)enhancedResetMessages:(void(^)(NSError *error, NSArray *))handler;
- (void)searched:(void(^)(NSError *error, NSArray *))handler;

//: - (void)loadHistoryMessagesWithComplete:(void(^)(NSInteger index, NSArray *messages , NSError *error))handler;
- (void)rangeStorageComplete:(void(^)(NSInteger index, NSArray *messages , NSError *error))handler;

//: - (void)loadNewMessagesWithComplete:(void(^)(NSInteger index, NSArray *messages , NSError *error))handler;
- (void)surcharge:(void(^)(NSInteger index, NSArray *messages , NSError *error))handler;

//: - (void)checkAttachmentState:(NSArray *)messages;
- (void)territorialDivisionInfo:(NSArray *)messages;

//: - (NSDictionary *)checkReceipts:(NSArray<NIMMessageReceipt *> *)receipts;
- (NSDictionary *)client:(NSArray<NIMMessageReceipt *> *)receipts;

//: - (void)sendMessageReceipt:(NSArray *)messages;
- (void)actionItem:(NSArray *)messages;

//: - (void)cleanCache;
- (void)cleanBy;

//: - (void)refreshMessageModelShowSelect:(BOOL)isShow;
- (void)max:(BOOL)isShow;

//: - (void)loadMessagePins:(void (^)(NSError *))handler;
- (void)changeLength:(void (^)(NSError *))handler;

// 展示message之前做额外配置
//: - (void)willDisplayMessageModel:(ZZZMessageModel *)model;
- (void)glitter:(CollectionModel *)model;

//: - (void)addPinForMessage:(NIMMessage *)message callback:(void (^)(NSError *))handler;
- (void)info:(NIMMessage *)message disable:(void (^)(NSError *))handler;

//: - (void)removePinForMessage:(NIMMessage *)message callback:(void (^)(NSError *))handler;
- (void)allowImage:(NIMMessage *)message display:(void (^)(NSError *))handler;

//: @end
@end


//: @protocol NIMSessionLayoutDelegate <NSObject>
@protocol WithDelegate <NSObject>

//: - (void)onRefresh;
- (void)enableLight;

//: @end
@end

//: @protocol NIMSessionLayout <NSObject>
@protocol EnabledSessionSumerval <NSObject>

//: - (void)update:(NSIndexPath *)indexPath;
- (void)whenFlip:(NSIndexPath *)indexPath;

//: - (void)insert:(NSArray *)indexPaths animated:(BOOL)animated;
- (void)data:(NSArray *)indexPaths selected:(BOOL)animated;

//: - (void)remove:(NSArray *)indexPaths;
- (void)names:(NSArray *)indexPaths;

//: - (BOOL)canInsertChatroomMessages;
- (BOOL)doing;

//: - (void)calculateContent:(ZZZMessageModel *)model;
- (void)surveyContent:(CollectionModel *)model;

//: - (void)reloadTable;
- (void)tap;

//: - (void)resetLayout;
- (void)crop;

//: - (void)changeLayout:(CGFloat)inputViewHeight;
- (void)chemicalElement:(CGFloat)inputViewHeight;

//: - (void)setDelegate:(id<NIMSessionLayoutDelegate>)delegate;
- (void)setInputText:(id<WithDelegate>)delegate;

//: - (void)layoutAfterRefresh;
- (void)view;

//: - (void)adjustOffset:(NSInteger)row;
- (void)will:(NSInteger)row;

//: - (void)dismissReplyContent;
- (void)region;

//: - (NSInteger)numberOfRows;
- (NSInteger)backgroundState;

//: @end
@end





//: @interface ZZZSessionViewController(Interactor)
@interface GroupDiscussionViewController(Interactor)

//: - (void)setInteractor:(id<NIMSessionInteractor>) interactor;
- (void)setInteractor:(id<SuggestEmptyQuantityeractor>) interactor;

//: - (void)setTableDelegate:(id<UITableViewDelegate, UITableViewDataSource>) tableDelegate;
- (void)setMessageDelegate:(id<UITableViewDelegate, UITableViewDataSource>) tableDelegate;

//: @end
@end