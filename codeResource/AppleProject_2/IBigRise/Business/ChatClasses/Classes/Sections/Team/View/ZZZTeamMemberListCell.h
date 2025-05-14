//
//  ZZZTeamMemberListCell.h
//  NIM
//
//  Created by chris on 15/3/26.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <NIMSDK/NIMSDK.h>
#import "AppleProjectKit.h"

extern NSString *const kTeamMember;
extern NSString *const kTeamMemberInfo;

@protocol ZZZTeamMemberListCellActionDelegate <NSObject>

- (void)didSelectAddOpeartor;

@end


@interface ZZZTeamMemberListCell : UITableViewCell


@property(nonatomic, assign) BOOL disableInvite;

@property(nonatomic, assign) NSInteger maxShowMemberCount;

@property(nonatomic, strong) NSMutableArray <NSDictionary *> *infos;

@property(nonatomic, weak) id<ZZZTeamMemberListCellActionDelegate>delegate;

@end
