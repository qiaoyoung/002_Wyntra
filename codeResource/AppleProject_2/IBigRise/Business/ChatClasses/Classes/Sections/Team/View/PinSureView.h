// __DEBUG__
// __CLOSE_PRINT__
//
//  PinSureView.h
//  NIM
//
//  Created by chris on 15/3/26.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>
//: #import "AppleProjectKit.h"
#import "On.h"

//: extern NSString *const kTeamMember;
extern NSString *const kConst_remainData;
//: extern NSString *const kTeamMemberInfo;
extern NSString *const kConst_requestTitle;

//: @protocol ZZZTeamMemberListCellActionDelegate <NSObject>
@protocol VersionDelegate <NSObject>

//: - (void)didSelectAddOpeartor;
- (void)fullMoonUser;

//: @end
@end


//: @interface ZZZTeamMemberListCell : UITableViewCell
@interface PinSureView : UITableViewCell


//: @property(nonatomic, assign) BOOL disableInvite;
@property(nonatomic, assign) BOOL disableInvite;

//: @property(nonatomic, assign) NSInteger maxShowMemberCount;
@property(nonatomic, assign) NSInteger maxShowMemberCount;

//: @property(nonatomic, strong) NSMutableArray <NSDictionary *> *infos;
@property(nonatomic, strong) NSMutableArray <NSDictionary *> *infos;

//: @property(nonatomic, weak) id<ZZZTeamMemberListCellActionDelegate>delegate;
@property(nonatomic, weak) id<VersionDelegate>delegate;

//: @end
@end