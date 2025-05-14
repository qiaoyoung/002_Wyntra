//
//  ZZZGroupedUsrInfo.h
//  NIM
//
//  Created by Xuhui on 15/3/24.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

#import "ZZZContactDefines.h"
#import "AppleProjectKit.h"

@interface NIMGroupUser:NSObject<NIMGroupMemberProtocol>

@property (nonatomic,readonly) ZZZKitInfo *info;

- (instancetype)initWithUserId:(NSString *)userId;

@end

@interface NIMGroupTeamMember:NSObject<NIMGroupMemberProtocol>

@property (nonatomic,readonly) ZZZKitInfo *info;

- (instancetype)initWithUserId:(NSString *)userId
                       session:(NIMSession *)session;

@end


@interface NIMGroupTeam:NSObject<NIMGroupMemberProtocol>

@property (nonatomic,readonly) ZZZKitInfo *info;

- (instancetype)initWithTeamId:(NSString *)teamId
                      teamType:(NIMKitTeamType)teamType;

@end


