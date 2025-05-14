// __DEBUG__
// __CLOSE_PRINT__
//
//  QueueItemView.h
//  NIM
//
//  Created by Yan Wang on 2024/6/29.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "NTESContactDataMember.h"
#import "QueryItemHide.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN


//: @protocol NTESUserListCellDelegate <NSObject>
@protocol MaxDelegate <NSObject>

//: - (void)didTouchCancleButton:(NTESContactDataMember *)dataMemeber;
- (void)soundName:(QueryItemHide *)dataMemeber;
//: - (void)didTouchUserListAvatar:(NSString *)userId;
- (void)containerText:(NSString *)userId;

//: @end
@end

//: @interface NTESBlackListTableViewCell : UITableViewCell
@interface QueueItemView : UITableViewCell

//: + (instancetype)cellWithTableView:(UITableView *)tableView;
+ (instancetype)compartmentToSightShare:(UITableView *)tableView;

//: @property(nonatomic, strong) UILabel *labName;
@property(nonatomic, strong) UILabel *labName;
//: @property (nonatomic,strong) UIImageView * avatarImageView;
@property (nonatomic,strong) UIImageView * avatarImageView;
//: @property (nonatomic,strong) UIButton *cancleBtn;
@property (nonatomic,strong) UIButton *cancleBtn;

//: @property (nonatomic,strong) NTESContactDataMember *member;
@property (nonatomic,strong) QueryItemHide *member;

//: @property (nonatomic,weak) id<NTESUserListCellDelegate> delegate;
@property (nonatomic,weak) id<MaxDelegate> delegate;


//: - (void)refreshWithMember:(NTESContactDataMember *)member;
- (void)honkyTonk:(QueryItemHide *)member;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END