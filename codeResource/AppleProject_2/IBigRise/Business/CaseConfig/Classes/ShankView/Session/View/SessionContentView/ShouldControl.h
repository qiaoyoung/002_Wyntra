// __DEBUG__
// __CLOSE_PRINT__
//
//  ShouldControl.h
// On
//
//  Created by chris.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "ZZZKitEvent.h"
#import "ItemTap.h"

//: typedef NS_ENUM (NSInteger, ZZZSessionMessageContentViewLayout){
typedef NS_ENUM (NSInteger, ZZZSessionMessageContentViewLayout){
    //: ZZZSessionMessageContentViewLayoutAuto = 0, 
    ZZZSessionMessageContentViewLayoutAuto = 0, //根据消息自动布局
    //: ZZZSessionMessageContentViewLayoutLeft, 
    ZZZSessionMessageContentViewLayoutLeft, //左边布局
    //: ZZZSessionMessageContentViewLayoutRight, 
    ZZZSessionMessageContentViewLayoutRight, //右边布局
//: };
};

//: @class NIMKitBubbleStyleObject;
@class NIMKitBubbleStyleObject;

//: @protocol NIMMessageContentViewDelegate <NSObject>
@protocol NameDelegate <NSObject>

//: - (void)onCatchEvent:(ZZZKitEvent *)event;
- (void)inputStop:(ItemTap *)event;

//: - (void)disableLongPress:(BOOL)disable;
- (void)semipermanentPress:(BOOL)disable;

//: @optional
@optional
// 长按复制
//: - (BOOL)onLongTap:(NIMMessage *)message complete:(void(^)(id data))complete;
- (BOOL)longLastingLoadComplete:(NIMMessage *)message image:(void(^)(id data))complete;
//: - (BOOL)onLongTap:(NIMMessage *)message;
- (BOOL)dates:(NIMMessage *)message;


//: @end
@end

//: @class ZZZMessageModel;
@class CollectionModel;

//: @interface ZZZSessionMessageContentView : UIControl
@interface ShouldControl : UIControl

//: @property (nonatomic,strong,readonly) ZZZMessageModel *model;
@property (nonatomic,strong,readonly) CollectionModel *model;

//: @property (nonatomic,strong) UIImageView * bubbleImageView;
@property (nonatomic,strong) UIImageView * bubbleImageView;

//: @property (nonatomic,assign) ZZZSessionMessageContentViewLayout layoutStyle;
@property (nonatomic,assign) ZZZSessionMessageContentViewLayout layoutStyle;

//: @property (nonatomic,weak) id<NIMMessageContentViewDelegate> delegate;
@property (nonatomic,weak) id<NameDelegate> delegate;

/**
 *  contentView初始化方法
 *
 *  @return content实例
 */
//: - (instancetype)initSessionMessageContentView;
- (instancetype)initDistance;

/**
 *  刷新方法
 *
 *  @param data 刷新数据
 *
 */
//: - (void)refresh:(ZZZMessageModel*)data;
- (void)text:(CollectionModel*)data;


/**
 *  手指从contentView内部抬起
 */
//: - (void)onTouchUpInside:(id)sender;
- (void)directed:(id)sender;


/**
 *  手指从contentView外部抬起
 */
//: - (void)onTouchUpOutside:(id)sender;
- (void)dueDate:(id)sender;

/**
 *  手指按下contentView
 */
//: - (void)onTouchDown:(id)sender;
- (void)upDown:(id)sender;


/**
 *  聊天气泡图
 *
 *  @param state    目前的按压状态
 *  @param outgoing 是否是发出去的消息
 *
 */
//: - (UIImage *)chatBubbleImageForState:(UIControlState)state outgoing:(BOOL)outgoing;
- (UIImage *)withCell:(UIControlState)state colorUnwantedVisualizationStateGestureBubble:(BOOL)outgoing;

//: @end
@end