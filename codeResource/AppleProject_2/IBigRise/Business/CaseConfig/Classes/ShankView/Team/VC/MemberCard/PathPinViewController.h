// __DEBUG__
// __CLOSE_PRINT__
//
//  TeamMemberCardViewController.h
//  NIM
//
//  Created by Xuhui on 15/3/19.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "ZZZTeamCardMemberItem.h"
#import "WithQuantityerval.h"
//: #import "ZZZTeamMemberListDataSource.h"
#import "IndependentSource.h"

//: @protocol NIMTeamMemberCardActionDelegate <NSObject>
@protocol ViewSuggest <NSObject>
//: @optional
@optional

//: - (void)onTeamMemberMuted:(ZZZTeamCardMemberItem *)member mute:(BOOL)mute;
- (void)be:(WithQuantityerval *)member addDoing:(BOOL)mute;
//: - (void)onTeamMemberKicked:(ZZZTeamCardMemberItem *)member;
- (void)teamMemberOnMessage:(WithQuantityerval *)member;

//: @end
@end

//: @interface ZZZTeamMemberCardViewController : UIViewController
@interface PathPinViewController : UIViewController

//: @property (nonatomic, strong) id<NIMTeamMemberCardActionDelegate> delegate;
@property (nonatomic, strong) id<ViewSuggest> delegate;

//: - (instancetype)initWithMember:(NSString *)userId
- (instancetype)initWithPast:(NSString *)userId
                    //: dataSource:(id <ZZZTeamMemberListDataSource>) dataSource;
                    quantityUser:(id <IndependentSource>) dataSource;

//: @end
@end