// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESContactInfoCell.h
//  NIM
//
//  Created by chris on 15/2/26.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "ZZZContactDefines.h"
#import "ZZZContactDefines.h"
//: #import "ZZZKitInfo.h"
#import "MagnitudeCommentInfo.h"

//: @protocol ZZZContactDataCellDelegate <NSObject>
@protocol BySizeDelegate <NSObject>

//: - (void)onPressAvatar:(NSString *)memberId;
- (void)anDisable:(NSString *)memberId;

//: @end
@end

//: @class ZZZAvatarImageView;
@class ShankView;

//: @interface ZZZContactDataCell : UITableViewCell
@interface ContactEdgeViewCell : UITableViewCell

//: @property (nonatomic,copy) NSString *memberId;
@property (nonatomic,copy) NSString *memberId;

//: @property (nonatomic,strong) ZZZAvatarImageView * avatarImageView;
@property (nonatomic,strong) ShankView * avatarImageView;

//: @property (nonatomic,strong) UIButton *accessoryBtn;
@property (nonatomic,strong) UIButton *accessoryBtn;

//: @property (nonatomic,strong) UIButton *messageBtn;
@property (nonatomic,strong) UIButton *messageBtn;
//: @property (nonatomic,strong) UIButton *videoBtn;
@property (nonatomic,strong) UIButton *videoBtn;

//: @property (nonatomic,weak) id<ZZZContactDataCellDelegate> delegate;
@property (nonatomic,weak) id<BySizeDelegate> delegate;

//: - (void)refreshUser:(id<NIMGroupMemberProtocol>)member;
- (void)name:(id<ModelValue>)member;

//: - (void)refreshTeam:(NIMTeam *)team;
- (void)periodicTable:(NIMTeam *)team;

//: - (void)refreshItem:(id<NIMGroupMemberProtocol>)member;
- (void)menu:(id<ModelValue>)member;

//: @end
@end