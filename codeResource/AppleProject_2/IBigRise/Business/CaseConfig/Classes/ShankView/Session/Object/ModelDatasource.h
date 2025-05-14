// __DEBUG__
// __CLOSE_PRINT__
//
//  ModelDatasource.h
// On
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import "ZZZKitMessageProvider.h"
#import "EmptySizeWith.h"
//: #import "ZZZSessionConfig.h"
#import "PastConfig.h"

//: @class ZZZMessageModel;
@class CollectionModel;

//: @interface ZZZSessionMsgDatasource : NSObject
@interface ModelDatasource : NSObject

//: - (instancetype)initWithSession:(NIMSession*)session
- (instancetype)initWithProgress:(NIMSession*)session
                         //: config:(id<ZZZSessionConfig>)sessionConfig;
                         withSessionGreen:(id<PastConfig>)sessionConfig;


//: @property (nonatomic, strong) NSMutableArray *items;
@property (nonatomic, strong) NSMutableArray *items;
//: @property (nonatomic, strong) NSMutableDictionary<NSString *, NSString *> *pinUsers;
@property (nonatomic, strong) NSMutableDictionary<NSString *, NSString *> *pinUsers;
//: @property (nonatomic, readonly) NSInteger messageLimit; 
@property (nonatomic, readonly) NSInteger messageLimit; //每页消息显示条数
//: @property (nonatomic, readonly) NSInteger showTimeInterval; 
@property (nonatomic, readonly) NSInteger showTimeInterval; //两条消息相隔多久显示一条时间戳
//: @property (nonatomic, weak) id<ZZZSessionConfig> sessionConfig;
@property (nonatomic, weak) id<PastConfig> sessionConfig;

//: - (NSInteger)indexAtModelArray:(ZZZMessageModel*)model;
- (NSInteger)halogen:(CollectionModel*)model;

//复位消息
//: - (void)resetMessages:(void(^)(NSError *error)) handler;
- (void)text:(void(^)(NSError *error)) handler;

//: - (void)enhancedResetMessages:(void(^)(NSError *error, NSArray *))handler;
- (void)enable:(void(^)(NSError *error, NSArray *))handler;

//数据对外接口
//: - (void)loadHistoryMessagesWithComplete:(void(^)(NSInteger index , NSArray *messages ,NSError *error))handler;
- (void)cognomen:(void(^)(NSInteger index , NSArray *messages ,NSError *error))handler;

//数据load接口
//: - (void)loadPullUpMessagesWithComplete:(void(^)(NSInteger index, NSArray *messages, NSError *error))handler;
- (void)to:(void(^)(NSInteger index, NSArray *messages, NSError *error))handler;

//获取PIN
//: - (void)loadMessagePins:(void (^)(NSError *))handler;
- (void)bombUpDataRequest:(void (^)(NSError *))handler;

// 展示message之前做额外配置
//: - (void)willDisplayMessageModel:(ZZZMessageModel *)model;
- (void)from:(CollectionModel *)model;

//添加消息，会根据时间戳插入到相应位置
//: - (NSArray<NSNumber *> *)insertMessageModels:(NSArray*)models;
- (NSArray<NSNumber *> *)tag:(NSArray*)models;

//添加消息，直接插入消息列表末尾
//: - (NSArray<NSNumber *> *)appendMessageModels:(NSArray *)models;
- (NSArray<NSNumber *> *)file:(NSArray *)models;

//删除消息
//: - (NSArray<NSNumber *> *)deleteMessageModel:(ZZZMessageModel*)model;
- (NSArray<NSNumber *> *)background:(CollectionModel*)model;

//根据范围批量删除消息
//: - (NSArray<NSNumber *> *)deleteModels:(NSRange)range;
- (NSArray<NSNumber *> *)red:(NSRange)range;

// 添加pin
//: - (void)addPinForMessage:(NIMMessage *)message callback:(void (^)(NSError *))handler;
- (void)sub:(NIMMessage *)message list:(void (^)(NSError *))handler;

// 移除pin
//: - (void)removePinForMessage:(NIMMessage *)message callback:(void (^)(NSError *))handler;
- (void)arrayCallback:(NIMMessage *)message messageUnpackTabImmobilizeUnwanted:(void (^)(NSError *))handler;

//清理缓存数据
//: - (void)cleanCache;
- (void)ignitionKeyCache;

//是否显示选择
//: - (void)refreshMessageModelShowSelect:(BOOL)isShow;
- (void)input:(BOOL)isShow;

//: @end
@end