
#import <Foundation/Foundation.h>

NSString *StringFromKeyData(Byte *data);


//: content
Byte kStr_currentTitle[] = {82, 7, 49, 5, 4, 148, 160, 159, 165, 150, 159, 165, 197};


//: select * from notifications where status != ? order by timetag desc limit ?
Byte kStr_eventText[] = {47, 75, 66, 14, 160, 60, 26, 36, 118, 68, 104, 88, 249, 150, 181, 167, 174, 167, 165, 182, 98, 108, 98, 168, 180, 177, 175, 98, 176, 177, 182, 171, 168, 171, 165, 163, 182, 171, 177, 176, 181, 98, 185, 170, 167, 180, 167, 98, 181, 182, 163, 182, 183, 181, 98, 99, 127, 98, 129, 98, 177, 180, 166, 167, 180, 98, 164, 187, 98, 182, 171, 175, 167, 182, 163, 169, 98, 166, 167, 181, 165, 98, 174, 171, 175, 171, 182, 98, 129, 242};


//: create index if not exists readindex on notifications(status)
Byte kStr_useTitle[] = {14, 61, 3, 4, 102, 117, 104, 100, 119, 104, 35, 108, 113, 103, 104, 123, 35, 108, 105, 35, 113, 114, 119, 35, 104, 123, 108, 118, 119, 118, 35, 117, 104, 100, 103, 108, 113, 103, 104, 123, 35, 114, 113, 35, 113, 114, 119, 108, 105, 108, 102, 100, 119, 108, 114, 113, 118, 43, 118, 119, 100, 119, 120, 118, 44, 4};


//: update notifications set status  = ? where status < ? or status > ?
Byte kStr_scaleCircleNewTitle[] = {71, 67, 23, 11, 139, 1, 26, 40, 187, 84, 184, 140, 135, 123, 120, 139, 124, 55, 133, 134, 139, 128, 125, 128, 122, 120, 139, 128, 134, 133, 138, 55, 138, 124, 139, 55, 138, 139, 120, 139, 140, 138, 55, 55, 84, 55, 86, 55, 142, 127, 124, 137, 124, 55, 138, 139, 120, 139, 140, 138, 55, 83, 55, 86, 55, 134, 137, 55, 138, 139, 120, 139, 140, 138, 55, 85, 55, 86, 164};


//: create table if not exists notifications(serial integer primary key,                           timetag integer,sender text,receiver text,content text,status integer)
Byte kStr_successColorContent[] = {13, 165, 97, 7, 131, 149, 243, 196, 211, 198, 194, 213, 198, 129, 213, 194, 195, 205, 198, 129, 202, 199, 129, 207, 208, 213, 129, 198, 217, 202, 212, 213, 212, 129, 207, 208, 213, 202, 199, 202, 196, 194, 213, 202, 208, 207, 212, 137, 212, 198, 211, 202, 194, 205, 129, 202, 207, 213, 198, 200, 198, 211, 129, 209, 211, 202, 206, 194, 211, 218, 129, 204, 198, 218, 141, 129, 129, 129, 129, 129, 129, 129, 129, 129, 129, 129, 129, 129, 129, 129, 129, 129, 129, 129, 129, 129, 129, 129, 129, 129, 129, 129, 213, 202, 206, 198, 213, 194, 200, 129, 202, 207, 213, 198, 200, 198, 211, 141, 212, 198, 207, 197, 198, 211, 129, 213, 198, 217, 213, 141, 211, 198, 196, 198, 202, 215, 198, 211, 129, 213, 198, 217, 213, 141, 196, 208, 207, 213, 198, 207, 213, 129, 213, 198, 217, 213, 141, 212, 213, 194, 213, 214, 212, 129, 202, 207, 213, 198, 200, 198, 211, 138, 139};


//: serial
Byte kStr_messageTingValue[] = {61, 6, 67, 14, 101, 47, 244, 161, 5, 41, 243, 64, 207, 141, 182, 168, 181, 172, 164, 175, 78};


//: notification.db
Byte kStr_selectedAccountMediaValue[] = {3, 15, 22, 5, 45, 132, 133, 138, 127, 124, 127, 121, 119, 138, 127, 133, 132, 68, 122, 120, 92};


//: receiver
Byte kStr_withCommentText[] = {20, 8, 81, 6, 128, 160, 195, 182, 180, 182, 186, 199, 182, 195, 165};


//: timetag
Byte kStr_adjustmentBarScanText[] = {78, 7, 43, 6, 119, 204, 159, 148, 152, 144, 159, 140, 146, 48};


//: select * from notifications where timetag < %f and status != ? order by timetag desc limit ?
Byte kStr_pointText[] = {21, 92, 73, 7, 255, 86, 212, 188, 174, 181, 174, 172, 189, 105, 115, 105, 175, 187, 184, 182, 105, 183, 184, 189, 178, 175, 178, 172, 170, 189, 178, 184, 183, 188, 105, 192, 177, 174, 187, 174, 105, 189, 178, 182, 174, 189, 170, 176, 105, 133, 105, 110, 175, 105, 170, 183, 173, 105, 188, 189, 170, 189, 190, 188, 105, 106, 134, 105, 136, 105, 184, 187, 173, 174, 187, 105, 171, 194, 105, 189, 178, 182, 174, 189, 170, 176, 105, 173, 174, 188, 172, 105, 181, 178, 182, 178, 189, 105, 136, 6};


//: sender
Byte kStr_textContent[] = {79, 6, 4, 10, 164, 29, 190, 172, 156, 80, 119, 105, 114, 104, 105, 118, 250};


//: update notifications set status  = ? where serial = ?
Byte kStr_sessionSendName[] = {64, 53, 58, 7, 104, 131, 34, 175, 170, 158, 155, 174, 159, 90, 168, 169, 174, 163, 160, 163, 157, 155, 174, 163, 169, 168, 173, 90, 173, 159, 174, 90, 173, 174, 155, 174, 175, 173, 90, 90, 119, 90, 121, 90, 177, 162, 159, 172, 159, 90, 173, 159, 172, 163, 155, 166, 90, 119, 90, 121, 212};


//: select count(serial) from notifications where status = ?
Byte kStr_atData[] = {29, 56, 53, 9, 122, 3, 52, 101, 111, 168, 154, 161, 154, 152, 169, 85, 152, 164, 170, 163, 169, 93, 168, 154, 167, 158, 150, 161, 94, 85, 155, 167, 164, 162, 85, 163, 164, 169, 158, 155, 158, 152, 150, 169, 158, 164, 163, 168, 85, 172, 157, 154, 167, 154, 85, 168, 169, 150, 169, 170, 168, 85, 114, 85, 116, 255};


//: create index if not exists timetagindex on notifications(timetag)
Byte kStr_barMessageValue[] = {97, 65, 26, 10, 185, 205, 114, 72, 10, 80, 125, 140, 127, 123, 142, 127, 58, 131, 136, 126, 127, 146, 58, 131, 128, 58, 136, 137, 142, 58, 127, 146, 131, 141, 142, 141, 58, 142, 131, 135, 127, 142, 123, 129, 131, 136, 126, 127, 146, 58, 137, 136, 58, 136, 137, 142, 131, 128, 131, 125, 123, 142, 131, 137, 136, 141, 66, 142, 131, 135, 127, 142, 123, 129, 67, 252};


//: insert into notifications(timetag,sender,receiver,content,status)              values(?,?,?,?,?)
Byte kStr_operationTingIContent[] = {40, 96, 91, 4, 196, 201, 206, 192, 205, 207, 123, 196, 201, 207, 202, 123, 201, 202, 207, 196, 193, 196, 190, 188, 207, 196, 202, 201, 206, 131, 207, 196, 200, 192, 207, 188, 194, 135, 206, 192, 201, 191, 192, 205, 135, 205, 192, 190, 192, 196, 209, 192, 205, 135, 190, 202, 201, 207, 192, 201, 207, 135, 206, 207, 188, 207, 208, 206, 132, 123, 123, 123, 123, 123, 123, 123, 123, 123, 123, 123, 123, 123, 123, 209, 188, 199, 208, 192, 206, 131, 154, 135, 154, 135, 154, 135, 154, 135, 154, 132, 170};


//: update notifications set status  = ? where status = ?
Byte kStr_addViewValue[] = {40, 53, 25, 4, 142, 137, 125, 122, 141, 126, 57, 135, 136, 141, 130, 127, 130, 124, 122, 141, 130, 136, 135, 140, 57, 140, 126, 141, 57, 140, 141, 122, 141, 142, 140, 57, 57, 86, 57, 88, 57, 144, 129, 126, 139, 126, 57, 140, 141, 122, 141, 142, 140, 57, 86, 57, 88, 23};

// __DEBUG__
// __CLOSE_PRINT__
//
//  IrruptDb.m
//  NIM
//
//  Created by chris on 15/5/26.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESCustomNotificationDB.h"
#import "IrruptDb.h"
//: #import <FMDB/FMDB.h>
#import <FMDB/FMDB.h>
//: #import "NTESFileLocationHelper.h"
#import "FileWithAddCell.h"
//: #import "NTESCustomNotificationObject.h"
#import "MediaObject.h"

//: typedef NS_ENUM(NSInteger, CustomNotificationStatus){
typedef NS_ENUM(NSInteger, CustomNotificationStatus){
    //: CustomNotificationStatusNone = 0,
    CustomNotificationStatusNone = 0,
    //: CustomNotificationStatusRead = 1,
    CustomNotificationStatusRead = 1,
    //: CustomNotificationStatusDeleted = 2,
    CustomNotificationStatusDeleted = 2,
//: };
};

//: @interface NTESCustomNotificationDB ()
@interface IrruptDb ()
//: @property (nonatomic,strong) FMDatabase *db;
@property (nonatomic,strong) FMDatabase *db;
//: @end
@end


//: @implementation NTESCustomNotificationDB
@implementation IrruptDb

//: + (instancetype)sharedInstance { static NTESCustomNotificationDB *sharedNTESCustomNotificationDB = nil; static dispatch_once_t pred; _dispatch_once(&pred, ^{ sharedNTESCustomNotificationDB = [[NTESCustomNotificationDB alloc] init]; }); return sharedNTESCustomNotificationDB; };
+ (instancetype)dueDate { static IrruptDb *sharedNTESCustomNotificationDB = nil; static dispatch_once_t pred; _dispatch_once(&pred, ^{ sharedNTESCustomNotificationDB = [[IrruptDb alloc] init]; }); return sharedNTESCustomNotificationDB; };

//: - (instancetype)init
- (instancetype)init
{
    //: if (self = [super init])
    if (self = [super init])
    {
        //: [self openDatabase];
        [self press];
    }
    //: return self;
    return self;
}


//: - (NSInteger)unreadCount
- (NSInteger)unreadCount
{
    //: __block NSInteger count = 0;
    __block NSInteger count = 0;
    //: io_sync_safe(^{
    io_sync_safe(^{
        //: count = _unreadCount;
        count = _unreadCount;
    //: });
    });
    //: return count;
    return count;
}

//: - (NSArray *)fetchNotifications:(NTESCustomNotificationObject *)notification
- (NSArray *)perimeter:(MediaObject *)notification
                          //: limit:(NSInteger)limit{
                          tabularMatter:(NSInteger)limit{
    //: __block NSArray *result = nil;
    __block NSArray *result = nil;

    //: NSString *sql = nil;
    NSString *sql = nil;
    //: if (notification)
    if (notification)
    {
        //: sql = [NSString stringWithFormat:@"select * from notifications where timetag < %f and status != ? order by timetag desc limit ?",
        sql = [NSString stringWithFormat:StringFromKeyData(kStr_pointText),
               //: notification.timestamp] ;
               notification.timestamp] ;
    }
    //: else
    else
    {
        //: sql = @"select * from notifications where status != ? order by timetag desc limit ?";
        sql = StringFromKeyData(kStr_eventText);
    }
    //: io_sync_safe(^{
    io_sync_safe(^{
        //: NSMutableArray *array = [NSMutableArray array];
        NSMutableArray *array = [NSMutableArray array];
        //: FMResultSet *rs = [self.db executeQuery:sql,@(CustomNotificationStatusDeleted),@(limit)];
        FMResultSet *rs = [self.db executeQuery:sql,@(CustomNotificationStatusDeleted),@(limit)];
        //: while ([rs next])
        while ([rs next])
        {
            //: NTESCustomNotificationObject *notification = [[NTESCustomNotificationObject alloc] init];
            MediaObject *notification = [[MediaObject alloc] init];
            //: notification.serial = (NSInteger)[rs intForColumn:@"serial"];
            notification.serial = (NSInteger)[rs intForColumn:StringFromKeyData(kStr_messageTingValue)];
            //: notification.timestamp = [rs doubleForColumn:@"timetag"];
            notification.timestamp = [rs doubleForColumn:StringFromKeyData(kStr_adjustmentBarScanText)];
            //: notification.sender = [rs stringForColumn:@"sender"];
            notification.sender = [rs stringForColumn:StringFromKeyData(kStr_textContent)];
            //: notification.receiver = [rs stringForColumn:@"receiver"];
            notification.receiver = [rs stringForColumn:StringFromKeyData(kStr_withCommentText)];
            //: notification.content = [rs stringForColumn:@"content"];
            notification.content = [rs stringForColumn:StringFromKeyData(kStr_currentTitle)];
            //: [array addObject:notification];
            [array addObject:notification];
        }
        //: [rs close];
        [rs close];
        //: result = array;
        result = array;
    //: });
    });

    //: return result;
    return result;

}

//: - (BOOL)saveNotification:(NTESCustomNotificationObject *)notification{
- (BOOL)notification:(MediaObject *)notification{
    //: __block BOOL result = NO;
    __block BOOL result = NO;
    //: io_sync_safe(^{
    io_sync_safe(^{
        //: if (notification)
        if (notification)
        {
            //: CustomNotificationStatus status = notification.needBadge? CustomNotificationStatusNone : CustomNotificationStatusRead;
            CustomNotificationStatus status = notification.needBadge? CustomNotificationStatusNone : CustomNotificationStatusRead;
            //: NSString *sql = @"insert into notifications(timetag,sender,receiver,content,status)              values(?,?,?,?,?)";
            NSString *sql = StringFromKeyData(kStr_operationTingIContent);

            //: if (![self.db executeUpdate:sql,
            if (![self.db executeUpdate:sql,
                  //: @(notification.timestamp),
                  @(notification.timestamp),
                  //: notification.sender,
                  notification.sender,
                  //: notification.receiver,
                  notification.receiver,
                  //: notification.content,
                  notification.content,
                  //: @(status)])
                  @(status)])
            {
            }
            //: else
            else
            {
                //: notification.serial = (NSInteger)[self.db lastInsertRowId];
                notification.serial = (NSInteger)[self.db lastInsertRowId];
                //: if (notification.needBadge) {
                if (notification.needBadge) {
                    //: self.unreadCount++;
                    self.unreadCount++;
                }
                //: result = YES;
                result = YES;
            }
        }
    //: });
    });
    //: return result;
    return result;

}

//: - (void)deleteNotification:(NTESCustomNotificationObject *)notification{
- (void)colorMin:(MediaObject *)notification{
    //: NSString *sql = @"update notifications set status  = ? where serial = ?";
    NSString *sql = StringFromKeyData(kStr_sessionSendName);
    //: io_async(^{
    io_async(^{
        //: if (![self.db executeUpdate:sql,@(CustomNotificationStatusDeleted),@(notification.serial)])
        if (![self.db executeUpdate:sql,@(CustomNotificationStatusDeleted),@(notification.serial)])
        {
        }
        //: [self queryUnreadCount];
        [self tap];
    //: });
    });
}


//: - (void)deleteAllNotification{
- (void)message{
    //: NSString *sql = @"update notifications set status  = ? where status < ? or status > ?";
    NSString *sql = StringFromKeyData(kStr_scaleCircleNewTitle);
    //: io_async(^{
    io_async(^{
        //: if (![self.db executeUpdate:sql,@(CustomNotificationStatusDeleted),@(CustomNotificationStatusDeleted),@(CustomNotificationStatusDeleted)])
        if (![self.db executeUpdate:sql,@(CustomNotificationStatusDeleted),@(CustomNotificationStatusDeleted),@(CustomNotificationStatusDeleted)])
        {
        }
        //: [self queryUnreadCount];
        [self tap];
    //: });
    });
}


//: - (void)markAllNotificationsAsRead{
- (void)text{
    //: NSString *sql = @"update notifications set status  = ? where status = ?";
    NSString *sql = StringFromKeyData(kStr_addViewValue);
    //: io_sync_safe(^{
    io_sync_safe(^{
        //: if (![self.db executeUpdate:sql,@(CustomNotificationStatusRead),@(CustomNotificationStatusNone)])
        if (![self.db executeUpdate:sql,@(CustomNotificationStatusRead),@(CustomNotificationStatusNone)])
        {
        }
        //: [self queryUnreadCount];
        [self tap];
    //: });
    });
}

//: - (void)queryUnreadCount{
- (void)tap{
    //: NSInteger count = 0;
    NSInteger count = 0;
    //: NSString *sql = @"select count(serial) from notifications where status = ?";
    NSString *sql = StringFromKeyData(kStr_atData);
    //: FMResultSet *rs = [_db executeQuery:sql,@(CustomNotificationStatusNone)];
    FMResultSet *rs = [_db executeQuery:sql,@(CustomNotificationStatusNone)];
    //: if ([rs next])
    if ([rs next])
    {
        //: count = (NSInteger)[rs intForColumnIndex:0];
        count = (NSInteger)[rs intForColumnIndex:0];
    }
    //: [rs close];
    [rs close];

    //: if (count != _unreadCount)
    if (count != _unreadCount)
    {
        //: self.unreadCount = count;
        self.unreadCount = count;
    }
}


//: #pragma mark - Misc
#pragma mark - Misc
//: - (void)openDatabase
- (void)press
{
    //: NSString *filepath = [[NTESFileLocationHelper userDirectory] stringByAppendingString:@"notification.db"];
    NSString *filepath = [[FileWithAddCell addDirectory] stringByAppendingString:StringFromKeyData(kStr_selectedAccountMediaValue)];
    //: FMDatabase *db = [FMDatabase databaseWithPath:filepath];
    FMDatabase *db = [FMDatabase databaseWithPath:filepath];
    //: if ([db open])
    if ([db open])
    {
        //: _db = db;
        _db = db;
        //: NSArray *sqls = @[@"create table if not exists notifications(serial integer primary key,                           timetag integer,sender text,receiver text,content text,status integer)",
        NSArray *sqls = @[StringFromKeyData(kStr_successColorContent),

                          //: @"create index if not exists readindex on notifications(status)",
                          StringFromKeyData(kStr_useTitle),
                          //: @"create index if not exists timetagindex on notifications(timetag)"];
                          StringFromKeyData(kStr_barMessageValue)];
        //: for (NSString *sql in sqls)
        for (NSString *sql in sqls)
        {
            //: if (![_db executeUpdate:sql])
            if (![_db executeUpdate:sql])
            {
            }
        }
        //: [self queryUnreadCount];
        [self tap];
    }
    //: else
    else
    {
    }
}

//: static const void * const NTESDispatchIOSpecificKey = &NTESDispatchIOSpecificKey;
static const void * const kConst_labelData = &kConst_labelData;
//: dispatch_queue_t NTESDispatchIOQueue()
dispatch_queue_t NTESDispatchIOQueue()
{
    //: static dispatch_queue_t queue;
    static dispatch_queue_t queue;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: queue = dispatch_queue_create("nim.demo.io.queue", 0);
        queue = dispatch_queue_create("nim.demo.io.queue", 0);
        //: dispatch_queue_set_specific(queue, NTESDispatchIOSpecificKey, (void *)NTESDispatchIOSpecificKey, NULL);
        dispatch_queue_set_specific(queue, kConst_labelData, (void *)kConst_labelData, NULL);
    //: });
    });
    //: return queue;
    return queue;
}


//: typedef void(^dispatch_block)(void);
typedef void(^dispatch_block)(void);
//: void io_sync_safe(dispatch_block block)
void io_sync_safe(dispatch_block block)
{
    //: if (dispatch_get_specific(NTESDispatchIOSpecificKey))
    if (dispatch_get_specific(kConst_labelData))
    {
        //: block();
        block();
    }
    //: else
    else
    {
        //: dispatch_sync(NTESDispatchIOQueue(), ^() {
        dispatch_sync(NTESDispatchIOQueue(), ^() {
            //: block();
            block();
        //: });
        });
    }
}


//: void io_async(dispatch_block block){
void io_async(dispatch_block block){
    //: dispatch_async(NTESDispatchIOQueue(), ^() {
    dispatch_async(NTESDispatchIOQueue(), ^() {
        //: block();
        block();
    //: });
    });
}


//: @end
@end

Byte * KeyDataToCache(Byte *data) {
    int messagePoint = data[0];
    int activitySessionScale = data[1];
    Byte operationAt = data[2];
    int ricePaddy = data[3];
    if (!messagePoint) return data + ricePaddy;
    for (int i = ricePaddy; i < ricePaddy + activitySessionScale; i++) {
        int value = data[i] - operationAt;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[ricePaddy + activitySessionScale] = 0;
    return data + ricePaddy;
}

NSString *StringFromKeyData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)KeyDataToCache(data)];
}
