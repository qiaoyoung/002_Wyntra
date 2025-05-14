// __DEBUG__
// __CLOSE_PRINT__
//
//  VersionFirer.h
// On
//
//  Created by chris on 16/6/13.
//  Copyright © 2016年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>
//: #import "ZZZKitTimerHolder.h"
#import "SumervalHolder.h"

//: @class NIMKitFirerInfo;
@class HypothesisInfo;

//: @interface ZZZKitNotificationFirer : NSObject<ZZZKitTimerHolderDelegate>
@interface VersionFirer : NSObject<TitleModel>

//: @property (nonatomic,strong) NSMutableDictionary *cachedInfo;
@property (nonatomic,strong) NSMutableDictionary *cachedInfo;

//: @property (nonatomic,strong) ZZZKitTimerHolder *timer;
@property (nonatomic,strong) SumervalHolder *timer;

//: @property (nonatomic,assign) NSTimeInterval timeInterval;
@property (nonatomic,assign) NSTimeInterval timeInterval;

//: - (void)addFireInfo:(NIMKitFirerInfo *)info;
- (void)pin:(HypothesisInfo *)info;

//: @end
@end


//: @interface NIMKitFirerInfo : NSObject
@interface HypothesisInfo : NSObject

//: @property (nonatomic,strong) NIMSession *session;
@property (nonatomic,strong) NIMSession *session;

//: @property (nonatomic,copy) NSString *notificationName;
@property (nonatomic,copy) NSString *notificationName;

//: - (NSObject *)fireObject;
- (NSObject *)tingBackground;

//: - (NSString *)saveIdentity;
- (NSString *)table;

//: @end
@end