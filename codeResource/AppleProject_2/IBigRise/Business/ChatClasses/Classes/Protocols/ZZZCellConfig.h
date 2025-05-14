// __DEBUG__
// __CLOSE_PRINT__
//
//  ZZZCellConfig.h
// On
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

// __M_A_C_R_O__

//: @class ZZZSessionMessageContentView;
@class ShouldControl;
//: @class ZZZMessageModel;
@class CollectionModel;

//: @protocol ZZZCellLayoutConfig <NSObject>
@protocol SumConfig <NSObject>

//: @optional
@optional

/**
 * @return 返回message的内容大小
 */
//: - (CGSize)contentSize:(ZZZMessageModel *)model cellWidth:(CGFloat)width;
- (CGSize)name:(CollectionModel *)model tinkle:(CGFloat)width;

/**
 *  需要构造的cellContent类名
 */
//: - (NSString *)cellContent:(ZZZMessageModel *)model;
- (NSString *)image:(CollectionModel *)model;

/**
 *  左对齐的气泡，cell气泡距离整个cell的内间距
 */
//: - (UIEdgeInsets)cellInsets:(ZZZMessageModel *)model;
- (UIEdgeInsets)should:(CollectionModel *)model;

/**
 *  左对齐的气泡，cell内容距离气泡的内间距，
 */
//: - (UIEdgeInsets)contentViewInsets:(ZZZMessageModel *)model;
- (UIEdgeInsets)insets:(CollectionModel *)model;

/**
 * @return 返回message的所回复消息内容大小
 */
//: - (CGSize)replyContentSize:(ZZZMessageModel *)model cellWidth:(CGFloat)width;
- (CGSize)label:(CollectionModel *)model generate:(CGFloat)width;

/**
 *  需要构造的ReplyContent类名
 */
//: - (NSString *)replyContent:(ZZZMessageModel *)model;
- (NSString *)exhibit:(CollectionModel *)model;

/**
 *  左对齐的气泡，cell reply气泡距离整个cell的内间距
 */
//: - (UIEdgeInsets)replyCellInsets:(ZZZMessageModel *)model;
- (UIEdgeInsets)compartment:(CollectionModel *)model;

/**
 *  左对齐的气泡，cell reply内容距离气泡的内间距，
 */
//: - (UIEdgeInsets)replyContentViewInsets:(ZZZMessageModel *)model;
- (UIEdgeInsets)state:(CollectionModel *)model;

/**
 *  是否显示头像
 */
//: - (BOOL)shouldShowAvatar:(ZZZMessageModel *)model;
- (BOOL)pressed:(CollectionModel *)model;


/**
 *  左对齐的气泡，头像控件的 origin 点
 */
//: - (CGPoint)avatarMargin:(ZZZMessageModel *)model;
- (CGPoint)lineMargin:(CollectionModel *)model;

/**
 *  左对齐的气泡，头像控件的 size
 */
//: - (CGSize)avatarSize:(ZZZMessageModel *)model;
- (CGSize)gestureSize:(CollectionModel *)model;

/**
 *  是否显示姓名
 */
//: - (BOOL)shouldShowNickName:(ZZZMessageModel *)model;
- (BOOL)media:(CollectionModel *)model;

/**
 *  左对齐的气泡，昵称控件的 origin 点
 */
//: - (CGPoint)nickNameMargin:(ZZZMessageModel *)model;
- (CGPoint)reload:(CollectionModel *)model;


/**
 *  消息显示在左边
 */
//: - (BOOL)shouldShowLeft:(ZZZMessageModel *)model;
- (BOOL)domain:(CollectionModel *)model;


/**
 *  需要添加到Cell上的自定义视图
 */
//: - (NSArray *)customViews:(ZZZMessageModel *)model;
- (NSArray *)topImage:(CollectionModel *)model;


/**
 *  是否开启重试叹号开关
 */
//: - (BOOL)disableRetryButton:(ZZZMessageModel *)model;
- (BOOL)keying:(CollectionModel *)model;

/**
 * 是否显示气泡背景图
 */
//: - (BOOL)shouldDisplayBubbleBackground:(ZZZMessageModel *)model;
- (BOOL)touch:(CollectionModel *)model;


//: @end
@end