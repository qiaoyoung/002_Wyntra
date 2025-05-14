// __DEBUG__
// __CLOSE_PRINT__
//
//  NearnessViewCell.h
//  NIM
//
//  Created by chris on 15/8/18.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @class ZZZAvatarImageView;
@class ShankView;
//: @class NTESContactDataMember;
@class QueryItemHide;


//: @protocol NTESUserListCellDelegate <NSObject>
@protocol MaxDelegate <NSObject>

//: - (void)didTouchUserListAvatar:(NSString *)userId;
- (void)containerText:(NSString *)userId;

//: @end
@end

//: @interface NTESUserListCell : UITableViewCell
@interface NearnessViewCell : UITableViewCell

//: @property (nonatomic,strong) ZZZAvatarImageView * avatarImageView;
@property (nonatomic,strong) ShankView * avatarImageView;

//: @property (nonatomic,weak) id<NTESUserListCellDelegate> delegate;
@property (nonatomic,weak) id<MaxDelegate> delegate;

//: - (void)refreshWithMember:(NTESContactDataMember *)member;
- (void)preserveMember:(QueryItemHide *)member;

//: @end
@end