// __DEBUG__
// __CLOSE_PRINT__
//
//  TeamCardHeaderCell.h
//  NIM
//
//  Created by chris on 15/3/7.
//  Copyright (c) 2015年 Netease. All rights reserved.
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
//: @protocol ZZZCardHeaderCellDelegate;
@protocol MinorityDelegate;



//: @interface ZZZCardHeaderCell : UICollectionViewCell
@interface DisenableView : UICollectionViewCell

//: @property (nonatomic,strong) ZZZAvatarImageView *imageView;
@property (nonatomic,strong) ShankView *imageView;

//: @property (nonatomic,strong) UIImageView *roleImageView;
@property (nonatomic,strong) UIImageView *roleImageView;

//: @property (nonatomic,strong) UILabel *titleLabel;
@property (nonatomic,strong) UILabel *titleLabel;

//: @property (nonatomic,strong) UIButton *removeBtn;
@property (nonatomic,strong) UIButton *removeBtn;

//: @property (nonatomic,weak) id<ZZZCardHeaderCellDelegate>delegate;
@property (nonatomic,weak) id<MinorityDelegate>delegate;

//: @property (nonatomic,readonly) id<NIMKitCardHeaderData> data;
@property (nonatomic,readonly) id<NIMKitCardHeaderData> data;

//: - (void)refreshData:(id<NIMKitCardHeaderData>)data;
- (void)refresh:(id<NIMKitCardHeaderData>)data;

//: @end
@end


//: @protocol ZZZCardHeaderCellDelegate <NSObject>
@protocol MinorityDelegate <NSObject>

//: - (void)cellDidSelected:(ZZZCardHeaderCell*)cell;
- (void)scaleValue:(DisenableView*)cell;


//: @optional
@optional
//: - (void)cellShouldBeRemoved:(ZZZCardHeaderCell*)cell;
- (void)bes:(DisenableView*)cell;

//: @end
@end
