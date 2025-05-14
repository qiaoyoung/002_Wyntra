// __DEBUG__
// __CLOSE_PRINT__
//
//  FileViewController.h
//  NIM
//
//  Created by chris on 15/8/18.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @class ContactDataMember;
@class ContactDataMember;

//: @interface ZZZPersonalCardViewController : UIViewController
@interface FileViewController : UIViewController

//: @property (nonatomic ,strong) NSDictionary *teamSetingConfig;
@property (nonatomic ,strong) NSDictionary *teamSetingConfig;

//: @property (nonatomic,strong) NSDictionary *groupDict;
@property (nonatomic,strong) NSDictionary *groupDict;

//: @property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) UITableView *tableView;

//: - (instancetype)initWithUserId:(NSString *)userId;
- (instancetype)initWithHour:(NSString *)userId;

//: - (void)onActionEditAlias:(id)sender;
- (void)search:(id)sender;

//: -(void)onActionGroup:(id)sender;
-(void)along:(id)sender;

//: - (void)onActionNeedNotifyValueChange:(id)sender;
- (void)taped:(id)sender;
//: - (void)onActionBlackListValueChange:(id)sender;
- (void)withShared:(id)sender;

//: - (void)chat;
- (void)byRed;
//: - (void)deleteFriend;
- (void)progressPath;
//: -(void)addFriend;
-(void)contentShow;
//: @end
@end