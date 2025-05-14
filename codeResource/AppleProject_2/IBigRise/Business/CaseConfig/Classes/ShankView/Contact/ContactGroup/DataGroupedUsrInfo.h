// __DEBUG__
// __CLOSE_PRINT__
//
//  DataGroupedUsrInfo.h
//  NIM
//
//  Created by Xuhui on 15/3/24.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "DataContactDefines.h"
#import "DataContactDefines.h"
//: #import "AppleProjectKit.h"
#import "On.h"

//: @interface NIMGroupUser:NSObject<NIMGroupMemberProtocol>
@interface CenterIndividualBackground:NSObject<ModelValue>

//: @property (nonatomic,readonly) ZZZKitInfo *info;
@property (nonatomic,readonly) MagnitudeCommentInfo *info;

//: - (instancetype)initWithUserId:(NSString *)userId;
- (instancetype)initWithMargin:(NSString *)userId;

//: @end
@end

//: @interface NIMGroupTeamMember:NSObject<NIMGroupMemberProtocol>
@interface InputMember:NSObject<ModelValue>

//: @property (nonatomic,readonly) ZZZKitInfo *info;
@property (nonatomic,readonly) MagnitudeCommentInfo *info;

//: - (instancetype)initWithUserId:(NSString *)userId
- (instancetype)initWithTip:(NSString *)userId
                       //: session:(NIMSession *)session;
                       name:(NIMSession *)session;

//: @end
@end


//: @interface NIMGroupTeam:NSObject<NIMGroupMemberProtocol>
@interface GroupMessage:NSObject<ModelValue>

//: @property (nonatomic,readonly) ZZZKitInfo *info;
@property (nonatomic,readonly) MagnitudeCommentInfo *info;

//: - (instancetype)initWithTeamId:(NSString *)teamId
- (instancetype)initWithInfo:(NSString *)teamId
                      //: teamType:(NIMKitTeamType)teamType;
                      text:(NIMKitTeamType)teamType;

//: @end
@end
