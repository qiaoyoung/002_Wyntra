//
//  ZZZKitNotificationFirer.h
// AppleProjectKit
//
//  Created by chris on 16/6/13.
//  Copyright © 2016年 NetEase. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <NIMSDK/NIMSDK.h>
#import "ZZZKitTimerHolder.h"


@class NIMKitFirerInfo;

@interface ZZZKitNotificationFirer : NSObject<ZZZKitTimerHolderDelegate>

@property (nonatomic,strong) NSMutableDictionary *cachedInfo;

@property (nonatomic,strong) ZZZKitTimerHolder *timer;

@property (nonatomic,assign) NSTimeInterval timeInterval;

- (void)addFireInfo:(NIMKitFirerInfo *)info;

@end


@interface NIMKitFirerInfo : NSObject

@property (nonatomic,strong) NIMSession *session;

@property (nonatomic,copy)   NSString *notificationName;

- (NSObject *)fireObject;

- (NSString *)saveIdentity;

@end
