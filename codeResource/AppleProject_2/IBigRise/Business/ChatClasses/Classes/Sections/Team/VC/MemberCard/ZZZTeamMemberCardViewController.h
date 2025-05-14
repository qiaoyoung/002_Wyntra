//
//  TeamMemberCardViewController.h
//  NIM
//
//  Created by Xuhui on 15/3/19.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ZZZTeamCardMemberItem.h"
#import "ZZZTeamMemberListDataSource.h"

@protocol NIMTeamMemberCardActionDelegate <NSObject>
@optional

- (void)onTeamMemberMuted:(ZZZTeamCardMemberItem *)member mute:(BOOL)mute;
- (void)onTeamMemberKicked:(ZZZTeamCardMemberItem *)member;

@end

@interface ZZZTeamMemberCardViewController : UIViewController

@property (nonatomic, strong) id<NIMTeamMemberCardActionDelegate> delegate;

- (instancetype)initWithMember:(NSString *)userId
                    dataSource:(id <ZZZTeamMemberListDataSource>) dataSource;

@end
