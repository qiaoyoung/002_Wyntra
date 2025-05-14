//
//  ZZZUsrInfoData.h
//  NIM
//
//  Created by Xuhui on 15/3/19.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

#import "ZZZContactDefines.h"
@class ZZZKitInfo;

@interface LemonUsrInfo : NSObject <NIMGroupMemberProtocol>

@property (nonatomic,strong) ZZZKitInfo *info;

- (BOOL)isFriend;

@end
