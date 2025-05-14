
#import <Foundation/Foundation.h>

NSString *StringFromVoterAddData(Byte *data);


//: info must be fired in main thread
Byte kStr_compareInvestigationValue[] = {44, 33, 12, 110, 183, 100, 183, 13, 248, 210, 86, 125, 100, 97, 101, 114, 104, 116, 32, 110, 105, 97, 109, 32, 110, 105, 32, 100, 101, 114, 105, 102, 32, 101, 98, 32, 116, 115, 117, 109, 32, 111, 102, 110, 105, 182};

// __DEBUG__
// __CLOSE_PRINT__
//
//  VersionFirer.m
// On
//
//  Created by chris on 16/6/13.
//  Copyright © 2016年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZZZKitNotificationFirer.h"
#import "VersionFirer.h"

//: NSString *const NIMKitUserInfoHasUpdatedNotification = @"NIMKitUserInfoHasUpdatedNotification";
NSString *const kConst_outsideName = @"NIMKitUserInfoHasUpdatedNotification";
//: NSString *const NIMKitTeamInfoHasUpdatedNotification = @"NIMKitTeamInfoHasUpdatedNotification";
NSString *const kConst_pathValue = @"NIMKitTeamInfoHasUpdatedNotification";

//: NSString *const NIMKitUserBlackListHasUpdatedNotification = @"NIMKitUserBlackListHasUpdatedNotification";
NSString *const kConst_makeRowButtonValue = @"NIMKitUserBlackListHasUpdatedNotification";
//: NSString *const NIMKitUserMuteListHasUpdatedNotification = @"NIMKitUserMuteListHasUpdatedNotification";
NSString *const kConst_componentValue = @"NIMKitUserMuteListHasUpdatedNotification";

//: NSString *const NIMKitTeamMembersHasUpdatedNotification = @"NIMKitTeamMembersHasUpdatedNotification";
NSString *const kConst_cellTopValue = @"NIMKitTeamMembersHasUpdatedNotification";

//: NSString *const ZZZKitInfoKey = @"InfoId";
NSString *const kConst_controlData = @"InfoId";

//: @implementation ZZZKitNotificationFirer
@implementation VersionFirer

//: - (instancetype)init{
- (instancetype)init{
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: _timer = [[ZZZKitTimerHolder alloc] init];
        _timer = [[SumervalHolder alloc] init];
        //: _timeInterval = 1.0f;
        _timeInterval = 1.0f;
        //: _cachedInfo = [[NSMutableDictionary alloc] init];
        _cachedInfo = [[NSMutableDictionary alloc] init];
    }
    //: return self;
    return self;
}

//: - (void)addFireInfo:(NIMKitFirerInfo *)info{
- (void)pin:(HypothesisInfo *)info{
    //: NSAssert([NSThread currentThread].isMainThread, @"info must be fired in main thread");
    NSAssert([NSThread currentThread].isMainThread, StringFromVoterAddData(kStr_compareInvestigationValue));
    //: if (!self.cachedInfo.count) {
    if (!self.cachedInfo.count) {
        //: [self.timer startTimer:self.timeInterval delegate:self repeats:NO];
        [self.timer window:self.timeInterval smallFryOpen:self blue:NO];
    }
    //: [self.cachedInfo setObject:info forKey:info.saveIdentity];
    [self.cachedInfo setObject:info forKey:info.table];
}

//: #pragma mark - ZZZKitTimerHolderDelegate
#pragma mark - TitleModel

//: - (void)onNIMKitTimerFired:(ZZZKitTimerHolder *)holder{
- (void)lengthing:(SumervalHolder *)holder{
    //: NSMutableDictionary *dict = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *dict = [[NSMutableDictionary alloc] init];
    //: for (NIMKitFirerInfo *info in self.cachedInfo.allValues) {
    for (HypothesisInfo *info in self.cachedInfo.allValues) {
        //: NSMutableArray *fireInfos = dict[info.notificationName];
        NSMutableArray *fireInfos = dict[info.notificationName];
        //: if (!fireInfos) {
        if (!fireInfos) {
            //: fireInfos = [[NSMutableArray alloc] init];
            fireInfos = [[NSMutableArray alloc] init];
            //: dict[info.notificationName] = fireInfos;
            dict[info.notificationName] = fireInfos;
        }
        //: if (info.fireObject) {
        if (info.tingBackground) {
            //: [fireInfos addObject:info.fireObject];
            [fireInfos addObject:info.tingBackground];
        }
    }

    //: for (NSString *notificationName in dict) {
    for (NSString *notificationName in dict) {
        //: NSDictionary *userInfo = dict[notificationName]? @{ ZZZKitInfoKey:dict[notificationName] } : nil;
        NSDictionary *userInfo = dict[notificationName]? @{ kConst_controlData:dict[notificationName] } : nil;
        //: [[NSNotificationCenter defaultCenter] postNotificationName:notificationName object:nil userInfo:userInfo];
        [[NSNotificationCenter defaultCenter] postNotificationName:notificationName object:nil userInfo:userInfo];
    }

    //: [self.cachedInfo removeAllObjects];
    [self.cachedInfo removeAllObjects];
}


//: @end
@end


//: @implementation NIMKitFirerInfo
@implementation HypothesisInfo

//: - (NSObject *)fireObject
- (NSObject *)tingBackground
{
    //: if (self.session) {
    if (self.session) {
        //: return self.session.sessionId;
        return self.session.sessionId;
    }
    //: return [NSNull null];
    return [NSNull null];
}

//: - (NSString *)saveIdentity
- (NSString *)table
{
    //: if (self.session) {
    if (self.session) {
        //: return [NSString stringWithFormat:@"%@-%zd",self.session.sessionId,self.session.sessionType];;
        return [NSString stringWithFormat:@"%@-%zd",self.session.sessionId,self.session.sessionType];;
    }
    //: return self.notificationName;
    return self.notificationName;
}

//: @end
@end

Byte * VoterAddDataToCache(Byte *data) {
    int communication = data[0];
    int behave = data[1];
    int inventWith = data[2];
    if (!communication) return data + inventWith;
    for (int i = 0; i < behave / 2; i++) {
        int begin = inventWith + i;
        int end = inventWith + behave - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[inventWith + behave] = 0;
    return data + inventWith;
}

NSString *StringFromVoterAddData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)VoterAddDataToCache(data)];
}  
