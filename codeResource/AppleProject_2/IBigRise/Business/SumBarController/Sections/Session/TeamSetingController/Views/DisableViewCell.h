// __DEBUG__
// __CLOSE_PRINT__
//
//  DisableViewCell.h
//  NIM
//
//  Created by Yan Wang on 2024/7/29.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "AppleProjectKit.h"
#import "On.h"
//: #import "DataCardDataSourceProtocol.h"
#import "DataCardDataSourceProtocol.h"

//: @class ZZZAvatarImageView;
@class ShankView;


//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @protocol NIMMemberCardCellDelegate <NSObject>
@protocol ShouldBeCenter <NSObject>

//: - (void)cellShouldBeMute:(NSString *)uid mute:(BOOL)mute;
- (void)show:(NSString *)uid magnitudeTitle:(BOOL)mute;
//: - (void)cellShouldBeRemoved:(NSString *)uid;
- (void)bes:(NSString *)uid;

//: @end
@end


//: @interface ZMONGroupMemberTableViewCell : UITableViewCell
@interface DisableViewCell : UITableViewCell


//: @property (nonatomic,strong) UIImageView *roleImageView;
@property (nonatomic,strong) UIImageView *roleImageView;

//: @property (nonatomic,strong) UILabel *titleLabel;
@property (nonatomic,strong) UILabel *titleLabel;

//: @property (nonatomic,strong) UILabel *subtitleLabel;
@property (nonatomic,strong) UILabel *subtitleLabel;

//: @property (nonatomic,strong) UIButton *removeBtn;
@property (nonatomic,strong) UIButton *removeBtn;
//: @property (nonatomic,strong) UIButton *muteBtn;
@property (nonatomic,strong) UIButton *muteBtn;


//: @property (nonatomic,strong) NSString *userId;
@property (nonatomic,strong) NSString *userId;

//: - (void)reloadWithUserId:(NSString *)UserId;
- (void)label:(NSString *)UserId;

//: + (instancetype)cellWithTableView:(UITableView *)tableView;
+ (instancetype)streetSmart:(UITableView *)tableView;

//: @property (nonatomic,weak) id<NIMMemberCardCellDelegate>delegate;
@property (nonatomic,weak) id<ShouldBeCenter>delegate;

//: @end
@end





//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END
