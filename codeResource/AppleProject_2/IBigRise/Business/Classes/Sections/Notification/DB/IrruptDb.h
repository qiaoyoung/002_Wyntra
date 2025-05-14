// __DEBUG__
// __CLOSE_PRINT__
//
//  IrruptDb.h
//  NIM
//
//  Created by chris on 15/5/26.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @class NTESCustomNotificationObject;
@class MediaObject;
//: @interface NTESCustomNotificationDB : NSObject
@interface IrruptDb : NSObject

//: + (instancetype)sharedInstance;;
+ (instancetype)dueDate;;

//: @property (nonatomic,assign) NSInteger unreadCount;
@property (nonatomic,assign) NSInteger unreadCount;

//: - (NSArray *)fetchNotifications:(NTESCustomNotificationObject *)notification
- (NSArray *)perimeter:(MediaObject *)notification
                          //: limit:(NSInteger)limit;
                          tabularMatter:(NSInteger)limit;

//: - (BOOL)saveNotification:(NTESCustomNotificationObject *)notification;
- (BOOL)notification:(MediaObject *)notification;

//: - (void)deleteNotification:(NTESCustomNotificationObject *)notification;
- (void)colorMin:(MediaObject *)notification;

//: - (void)deleteAllNotification;
- (void)message;

//: - (void)markAllNotificationsAsRead;
- (void)text;

//: @end
@end