// __DEBUG__
// __CLOSE_PRINT__
//
//  CenterView.h
//  NIM
//
//  Created by 彭爽 on 2021/9/28.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "BaseTableViewCell.h"
#import "ItemView.h"
//: #import "ZZZAvatarImageView.h"
#import "ShankView.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface NTESContactGroupCell : BaseTableViewCell
@interface CenterView : ItemView
//: @property (nonatomic ,strong) UIImageView *iconImageView;
@property (nonatomic ,strong) UIImageView *iconImageView;
//: @property (nonatomic ,strong) UILabel *titleLabel;
@property (nonatomic ,strong) UILabel *titleLabel;
//: @property (nonatomic,strong) ZZZAvatarImageView *avatar;
@property (nonatomic,strong) ShankView *avatar;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END