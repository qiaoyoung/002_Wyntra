
#import <Foundation/Foundation.h>

NSString *StringFromBeachData(Byte *data);        


//: 选择联系人
Byte kStr_swimmingText[] = {78, 15, 53, 8, 127, 12, 184, 243, 180, 75, 84, 177, 86, 116, 179, 76, 95, 178, 126, 134, 175, 133, 133, 211};


//: 选择超限
Byte kStr_throughoutName[] = {57, 12, 10, 11, 145, 178, 251, 134, 97, 149, 245, 223, 118, 127, 220, 129, 159, 222, 172, 123, 223, 143, 134, 194};


//: 选择群组
Byte kStr_idealValue[] = {81, 12, 80, 13, 24, 252, 186, 167, 166, 89, 198, 147, 238, 153, 48, 57, 150, 59, 89, 151, 110, 84, 151, 107, 52, 208};

// __DEBUG__
// __CLOSE_PRINT__
//
//  EdgeConfig.m
// On
//
//  Created by chris on 15/9/14.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZZZContactSelectConfig.h"
#import "EdgeConfig.h"
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>
 
//: #import "ZZZLemonGroupedData.h"
#import "EmptyStatus.h"
//: #import "AppleProjectKit.h"
#import "On.h"
//: #import "ZZZKitInfoFetchOption.h"
#import "CertainOption.h"
//: #import "ZZZKitInfo.h"
#import "MagnitudeCommentInfo.h"

//: @implementation NIMContactFriendSelectConfig : NSObject
@implementation TextCell : NSObject

//: - (BOOL)isMutiSelected{
- (BOOL)name{
    //: return self.needMutiSelected;
    return self.needMutiSelected;
}

//: - (NSString *)title{
- (NSString *)inputByMagnitude{
    //: return @"选择联系人".nim_localized;
    return StringFromBeachData(kStr_swimmingText).start;
}

//: - (NSInteger)maxSelectedNum{
- (NSInteger)showMargin{
    //: if (self.needMutiSelected) {
    if (self.needMutiSelected) {
        //: return self.maxSelectMemberCount? self.maxSelectMemberCount : 9223372036854775807L;
        return self.maxSelectMemberCount? self.maxSelectMemberCount : 9223372036854775807L;
    //: }else{
    }else{
        //: return 1;
        return 1;
    }
}

//: - (NSString *)selectedOverFlowTip{
- (NSString *)flipRecording{
    //: return @"选择超限".nim_localized;
    return StringFromBeachData(kStr_throughoutName).start;
}

//: - (void)getContactData:(NIMContactDataProviderHandler)handler {
- (void)size:(NIMContactDataProviderHandler)handler {
    //: ZZZLemonGroupedData *groupedData = [[ZZZLemonGroupedData alloc] init];
    EmptyStatus *groupedData = [[EmptyStatus alloc] init];
    //: NSMutableArray *myFriendArray = @[].mutableCopy;
    NSMutableArray *myFriendArray = @[].mutableCopy;
    //: NSMutableArray *data = [NIMSDK sharedSDK].userManager.myFriends.mutableCopy;
    NSMutableArray *data = [NIMSDK sharedSDK].userManager.myFriends.mutableCopy;
    //: NSMutableArray *members = @[].mutableCopy;
    NSMutableArray *members = @[].mutableCopy;

    //: for (NIMUser *user in data) {
    for (NIMUser *user in data) {
        //: [myFriendArray addObject:user.userId];
        [myFriendArray addObject:user.userId];
    }
    //: NSArray *friend_uids = [self filterData:myFriendArray];
    NSArray *friend_uids = [self with:myFriendArray];
    //: for (NSString *uid in friend_uids) {
    for (NSString *uid in friend_uids) {
        //: NIMGroupUser *user = [[NIMGroupUser alloc] initWithUserId:uid];
        CenterIndividualBackground *user = [[CenterIndividualBackground alloc] initWithMargin:uid];
        //: [members addObject:user];
        [members addObject:user];
    }
    //: groupedData.members = members;
    groupedData.members = members;
    //: if (members) {
    if (members) {
        //: [members removeAllObjects];
        [members removeAllObjects];
    }
    //: if (handler) {
    if (handler) {
        //: handler(groupedData.contentDic, groupedData.sectionTitles);
        handler(groupedData.contentDic, groupedData.sectionTitles);
    }
}

//: - (NSArray *)filterData:(NSMutableArray *)data{
- (NSArray *)with:(NSMutableArray *)data{
    //: if (data) {
    if (data) {
        //: if ([self respondsToSelector:@selector(filterIds)]) {
        if ([self respondsToSelector:@selector(listDisable)]) {
            //: NSArray *ids = [self filterIds];
            NSArray *ids = [self filterIds];
            //: [data removeObjectsInArray:ids];
            [data removeObjectsInArray:ids];
        }
        //: return data;
        return data;
    }
    //: return nil;
    return nil;
}

//: - (ZZZKitInfo *)getInfoById:(NSString *)selectedId {
- (MagnitudeCommentInfo *)top:(NSString *)selectedId {
    //: ZZZKitInfo *info = nil;
    MagnitudeCommentInfo *info = nil;
    //: info = [[AppleProjectKit sharedKit] infoByUser:selectedId option:nil];
    info = [[On along] toKey:selectedId image:nil];
    //: return info;
    return info;
}

//: @end
@end

//: @implementation NIMContactTeamMemberSelectConfig : NSObject
@implementation BeConfig : NSObject

//: - (NSInteger)maxSelectedNum{
- (NSInteger)showMargin{
    //: if (self.needMutiSelected) {
    if (self.needMutiSelected) {
        //: return self.maxSelectMemberCount? self.maxSelectMemberCount : 9223372036854775807L;
        return self.maxSelectMemberCount? self.maxSelectMemberCount : 9223372036854775807L;
    //: }else{
    }else{
        //: return 1;
        return 1;
    }
}

//: - (NSString *)title{
- (NSString *)inputByMagnitude{
    //: return @"选择联系人".nim_localized;
    return StringFromBeachData(kStr_swimmingText).start;
}

//: - (NSString *)selectedOverFlowTip{
- (NSString *)flipRecording{
    //: return @"选择超限".nim_localized;
    return StringFromBeachData(kStr_throughoutName).start;
}

//: - (void)getTeamContactDataWithTeamId:(NSString *)teamID
- (void)full:(NSString *)teamID
                            //: teamType:(NIMKitTeamType)teamType
                            speedy:(NIMKitTeamType)teamType
                            //: handler:(NIMContactDataProviderHandler)handler {
                            rangeCenterInput:(NIMContactDataProviderHandler)handler {
    //: __weak __typeof(&*self) weakSelf = self;;
    __weak __typeof(&*self) weakSelf = self;;
    //: NSMutableArray <NSString *>*uids = [NSMutableArray array];
    NSMutableArray <NSString *>*uids = [NSMutableArray array];
    //: if (teamType == NIMKitTeamTypeNomal) { 
    if (teamType == NIMKitTeamTypeNomal) { //普通群组
        //: [[NIMSDK sharedSDK].teamManager fetchTeamMembers:teamID
        [[NIMSDK sharedSDK].teamManager fetchTeamMembers:teamID
                                              //: completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
                                              completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
            //: if (!error) {
            if (!error) {
                //: for (NIMTeamMember *member in members) {
                for (NIMTeamMember *member in members) {
                    //: if (member.userId) {
                    if (member.userId) {
                        //: [uids addObject:member.userId];
                        [uids addObject:member.userId];
                    }
                }
                //: [weakSelf didProcessTeamId:teamID
                [weakSelf tag:teamID
                                      //: uids:uids
                                      account:uids
                                   //: handler:handler];
                                   scale:handler];
            }
        //: }];
        }];
    //: } else if (teamType == NIMKitTeamTypeSuper) { 
    } else if (teamType == NIMKitTeamTypeSuper) { //超大群组
        //: NIMTeamFetchMemberOption *option = [[NIMTeamFetchMemberOption alloc] init];
        NIMTeamFetchMemberOption *option = [[NIMTeamFetchMemberOption alloc] init];
        //: [[NIMSDK sharedSDK].superTeamManager fetchTeamMembers:teamID option:option completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
        [[NIMSDK sharedSDK].superTeamManager fetchTeamMembers:teamID option:option completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
            //: if (!error) {
            if (!error) {
                //: for (NIMTeamMember *member in members) {
                for (NIMTeamMember *member in members) {
                    //: if (member.userId) {
                    if (member.userId) {
                        //: [uids addObject:member.userId];
                        [uids addObject:member.userId];
                    }
                }
                //: [weakSelf didProcessTeamId:teamID
                [weakSelf tag:teamID
                                      //: uids:uids
                                      account:uids
                                   //: handler:handler];
                                   scale:handler];
            }
        //: }];
        }];
    //: } else {
    } else {
        //: if (handler) {
        if (handler) {
            //: handler(nil, nil);
            handler(nil, nil);
        }
    }
}

//: - (void)didProcessTeamId:(NSString *)teamId
- (void)tag:(NSString *)teamId
                    //: uids:(NSMutableArray *)uids
                    account:(NSMutableArray *)uids
                 //: handler:(NIMContactDataProviderHandler)handler {
                 scale:(NIMContactDataProviderHandler)handler {
    //: ZZZLemonGroupedData *groupedData = [[ZZZLemonGroupedData alloc] init];
    EmptyStatus *groupedData = [[EmptyStatus alloc] init];
    //: NSMutableArray *membersArr = @[].mutableCopy;
    NSMutableArray *membersArr = @[].mutableCopy;
    //: NSArray *member_uids = [self filterData:uids];
    NSArray *member_uids = [self light:uids];
    //: for (NSString *uid in member_uids) {
    for (NSString *uid in member_uids) {
        //: NIMGroupTeamMember *user = [[NIMGroupTeamMember alloc] initWithUserId:uid
        InputMember *user = [[InputMember alloc] initWithTip:uid
                                                                       //: session:_session];
                                                                       name:_session];
        //: [membersArr addObject:user];
        [membersArr addObject:user];
    }
    //: groupedData.members = membersArr;
    groupedData.members = membersArr;
    //: if (membersArr) {
    if (membersArr) {
        //: [membersArr removeAllObjects];
        [membersArr removeAllObjects];
    }
    //: if (handler) {
    if (handler) {
        //: handler(groupedData.contentDic, groupedData.sectionTitles);
        handler(groupedData.contentDic, groupedData.sectionTitles);
    }
}

//: - (void)getContactData:(NIMContactDataProviderHandler)handler {
- (void)size:(NIMContactDataProviderHandler)handler {
    //: [self getTeamContactDataWithTeamId:_teamId
    [self full:_teamId
                              //: teamType:_teamType
                              speedy:_teamType
                               //: handler:handler];
                               rangeCenterInput:handler];
}

//: - (NSArray *)filterData:(NSMutableArray *)data{
- (NSArray *)light:(NSMutableArray *)data{
    //: if (data) {
    if (data) {
        //: if ([self respondsToSelector:@selector(filterIds)]) {
        if ([self respondsToSelector:@selector(listDisable)]) {
            //: NSArray *ids = [self filterIds];
            NSArray *ids = [self filterIds];
            //: [data removeObjectsInArray:ids];
            [data removeObjectsInArray:ids];
        }
        //: return data;
        return data;
    }
    //: return nil;
    return nil;
}

//: - (ZZZKitInfo *)getInfoById:(NSString *)selectedId {
- (MagnitudeCommentInfo *)top:(NSString *)selectedId {
    //: ZZZKitInfo *info = nil;
    MagnitudeCommentInfo *info = nil;
    //: ZZZKitInfoFetchOption *option = [[ZZZKitInfoFetchOption alloc] init];
    CertainOption *option = [[CertainOption alloc] init];
    //: option.session = _session;
    option.session = _session;
    //: info = [[AppleProjectKit sharedKit] infoByUser:selectedId option:option];
    info = [[On along] toKey:selectedId image:option];
    //: return info;
    return info;
}

//: @end
@end

//: @implementation NIMContactTeamSelectConfig : NSObject
@implementation EnterBy : NSObject

//: - (NSString *)title{
- (NSString *)inputByMagnitude{
    //: return @"选择群组".nim_localized;
    return StringFromBeachData(kStr_idealValue).start;
}

//: - (NSInteger)maxSelectedNum{
- (NSInteger)showMargin{
    //: if (self.needMutiSelected) {
    if (self.needMutiSelected) {
        //: return self.maxSelectMemberCount? self.maxSelectMemberCount : 9223372036854775807L;
        return self.maxSelectMemberCount? self.maxSelectMemberCount : 9223372036854775807L;
    //: }else{
    }else{
        //: return 1;
        return 1;
    }
}

//: - (NSString *)selectedOverFlowTip{
- (NSString *)flipRecording{
    //: return @"选择超限".nim_localized;
    return StringFromBeachData(kStr_throughoutName).start;
}

//: - (NSArray *)getTeamIdsWithTeamType:(NIMKitTeamType)teamType {
- (NSArray *)name:(NIMKitTeamType)teamType {
    //: NSMutableArray *uids = [NSMutableArray array];
    NSMutableArray *uids = [NSMutableArray array];
    //: NSMutableArray *team_data = nil;
    NSMutableArray *team_data = nil;
    //: if (teamType == NIMKitTeamTypeNomal) {
    if (teamType == NIMKitTeamTypeNomal) {
        //: team_data = [[NIMSDK sharedSDK].teamManager.allMyTeams mutableCopy];
        team_data = [[NIMSDK sharedSDK].teamManager.allMyTeams mutableCopy];
    //: } else if (teamType == NIMKitTeamTypeSuper) {
    } else if (teamType == NIMKitTeamTypeSuper) {
        //: team_data = [[NIMSDK sharedSDK].superTeamManager.allMyTeams mutableCopy];
        team_data = [[NIMSDK sharedSDK].superTeamManager.allMyTeams mutableCopy];
    }

    //: for (NIMTeam *team in team_data) {
    for (NIMTeam *team in team_data) {
        //: if (team.teamId) {
        if (team.teamId) {
            //: [uids addObject:team.teamId];
            [uids addObject:team.teamId];
        }
    }
    //: return [self filterData:uids];
    return [self min:uids];
}

//: - (void)getContactData:(NIMContactDataProviderHandler)handler {
- (void)size:(NIMContactDataProviderHandler)handler {
    //: NSArray *tids = [self getTeamIdsWithTeamType:_teamType];
    NSArray *tids = [self name:_teamType];
    //: if (tids.count == 0) {
    if (tids.count == 0) {
        //: return;
        return;
    }

    //: ZZZLemonGroupedData *groupedData = [[ZZZLemonGroupedData alloc] init];
    EmptyStatus *groupedData = [[EmptyStatus alloc] init];
    //: NSMutableArray <id <NIMGroupMemberProtocol>>*members = @[].mutableCopy;
    NSMutableArray <id <ModelValue>>*members = @[].mutableCopy;
    //: for (NSString *tid in tids) {
    for (NSString *tid in tids) {
        //: NIMGroupTeam *team = [[NIMGroupTeam alloc] initWithTeamId:tid teamType:_teamType];
        GroupMessage *team = [[GroupMessage alloc] initWithInfo:tid text:_teamType];
        //: [members addObject:team];
        [members addObject:team];
    }
    //: groupedData.members = members;
    groupedData.members = members;
    //: if (members) {
    if (members) {
        //: [members removeAllObjects];
        [members removeAllObjects];
    }
    //: if (handler) {
    if (handler) {
        //: handler(groupedData.contentDic, groupedData.sectionTitles);
        handler(groupedData.contentDic, groupedData.sectionTitles);
    }
}

//: - (NSArray *)filterData:(NSMutableArray *)data{
- (NSArray *)min:(NSMutableArray *)data{
    //: if (data) {
    if (data) {
        //: if ([self respondsToSelector:@selector(filterIds)]) {
        if ([self respondsToSelector:@selector(listDisable)]) {
            //: NSArray *ids = [self filterIds];
            NSArray *ids = [self filterIds];
            //: [data removeObjectsInArray:ids];
            [data removeObjectsInArray:ids];
        }
        //: return data;
        return data;
    }
    //: return nil;
    return nil;
}

//: - (ZZZKitInfo *)getInfoById:(NSString *)selectedId {
- (MagnitudeCommentInfo *)top:(NSString *)selectedId {
    //: ZZZKitInfo *info = nil;
    MagnitudeCommentInfo *info = nil;
    //: if (_teamType == NIMKitTeamTypeNomal) {
    if (_teamType == NIMKitTeamTypeNomal) {
        //: info = [[AppleProjectKit sharedKit] infoByTeam:selectedId option:nil];
        info = [[On along] center:selectedId touch:nil];
    //: } else if (_teamType == NIMKitTeamTypeSuper) {
    } else if (_teamType == NIMKitTeamTypeSuper) {
        //: info = [[AppleProjectKit sharedKit] infoBySuperTeam:selectedId option:nil];
        info = [[On along] image:selectedId status:nil];
    }
    //: return info;
    return info;
}

//: @end
@end

Byte * BeachDataToCache(Byte *data) {
    int pub = data[0];
    int staircase = data[1];
    Byte strange = data[2];
    int thanPractically = data[3];
    if (!pub) return data + thanPractically;
    for (int i = thanPractically; i < thanPractically + staircase; i++) {
        int value = data[i] + strange;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[thanPractically + staircase] = 0;
    return data + thanPractically;
}

NSString *StringFromBeachData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)BeachDataToCache(data)];
}
