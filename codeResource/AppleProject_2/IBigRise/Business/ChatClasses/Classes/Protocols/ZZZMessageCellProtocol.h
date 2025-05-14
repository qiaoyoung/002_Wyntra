// __DEBUG__
// __CLOSE_PRINT__
//
//  ZZZMessageCellProtocol.h
// On
//
//  Created by NetEase.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import "ZZZCellConfig.h"
#import "ZZZCellConfig.h"

// __M_A_C_R_O__

//: @class ZZZMessageModel;
@class CollectionModel;
//: @class NIMMessage;
@class NIMMessage;
//: @class NIMQuickComment;
@class NIMQuickComment;
//: @class ZZZKitEvent;
@class ItemTap;
//: @class ZZZTextView;
@class WeltanschauungTextView;

//: @protocol ZZZMessageCellDelegate <NSObject>
@protocol ImageDelegate <NSObject>

//: @optional
@optional

//: #pragma mark - cell 样式更改
#pragma mark - cell 样式更改

//: - (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath;
- (void)we:(UITableView *)tableView mentalFaculty:(UITableViewCell *)cell accumulation:(NSIndexPath *)indexPath;

//: - (BOOL)disableAudioPlayedStatusIcon:(NIMMessage *)message;
- (BOOL)titles:(NIMMessage *)message;

//: #pragma mark - 点击事件
#pragma mark - 点击事件
//: - (BOOL)onTapCell:(ZZZKitEvent *)event;
- (BOOL)iconned:(ItemTap *)event;

//: - (BOOL)onLongPressCell:(NIMMessage *)message
- (BOOL)longInput:(NIMMessage *)message
                 //: inView:(UIView *)view;
                 old:(UIView *)view;

// 新长按代理方法
//: - (BOOL)onLongPressCell:(NIMMessage *)message;
- (BOOL)buttonned:(NIMMessage *)message;
//: - (BOOL)onLongPressCell:(NIMMessage *)message complete:(void(^)(id data))complete;
- (BOOL)exceptView:(NIMMessage *)message clinicMessage:(void(^)(id data))complete;

//: - (BOOL)onTapAvatar:(NIMMessage *)message;
- (BOOL)endBottom:(NIMMessage *)message;

//: - (BOOL)onLongPressAvatar:(NIMMessage *)message;
- (BOOL)barsed:(NIMMessage *)message;

//: - (BOOL)onPressReadLabel:(NIMMessage *)message;
- (BOOL)nameColor:(NIMMessage *)message;

//: - (void)onRetryMessage:(NIMMessage *)message;
- (void)alongMaxMessageShould:(NIMMessage *)message;

//: - (void)onSelectedMessage:(BOOL)selected message:(NIMMessage *)message;
- (void)sub:(BOOL)selected toAGreaterExtent:(NIMMessage *)message;

//: - (void)onClickReplyButton:(NIMMessage *)message;
- (void)texting:(NIMMessage *)message;

//: - (void)onClickEmoticon:(NIMMessage *)message
- (void)elite:(NIMMessage *)message
                //: comment:(NIMQuickComment *)comment
                underSelected:(NIMQuickComment *)comment
               //: selected:(BOOL)isSelected;
               off:(BOOL)isSelected;

//: @end
@end