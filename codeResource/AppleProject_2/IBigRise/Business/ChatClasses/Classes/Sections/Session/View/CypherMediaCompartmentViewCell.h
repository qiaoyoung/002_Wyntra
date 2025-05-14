// __DEBUG__
// __CLOSE_PRINT__
//
//  CypherMediaCompartmentViewCell.h
// On
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "ZZZMessageCellProtocol.h"
#import "ZZZMessageCellProtocol.h"
//: #import "ZZZTimestampModel.h"
#import "GreenTingLanguage.h"

//: @class ZZZSessionMessageContentView;
@class ShouldControl;
//: @class ZZZAvatarImageView;
@class ShankView;
//: @class ZZZBadgeView;
@class ChromaticView;

//: @interface ZZZMessageCell : UITableViewCell
@interface CypherMediaCompartmentViewCell : UITableViewCell

//: @property (nonatomic, strong) ZZZAvatarImageView *headImageView;
@property (nonatomic, strong) ShankView *headImageView;
//: @property (nonatomic, strong) UILabel *nameLabel; 
@property (nonatomic, strong) UILabel *nameLabel; //姓名
//: @property (nonatomic, strong) UIImageView *bubblesBackgroundView; 
@property (nonatomic, strong) UIImageView *bubblesBackgroundView; //气泡背景视图
//: @property (nonatomic, strong) ZZZSessionMessageContentView *replyedBubbleView; 
@property (nonatomic, strong) ShouldControl *replyedBubbleView; //被回复内容区域

//: @property (nonatomic, strong) ZZZSessionMessageContentView *bubbleView; 
@property (nonatomic, strong) ShouldControl *bubbleView; //内容区域
//: @property (nonatomic, strong) UIActivityIndicatorView *traningActivityIndicator; 
@property (nonatomic, strong) UIActivityIndicatorView *traningActivityIndicator; //发送loading
//: @property (nonatomic, strong) UIButton *retryButton; 
@property (nonatomic, strong) UIButton *retryButton; //重试
//: @property (nonatomic, strong) ZZZBadgeView *audioPlayedIcon; 
@property (nonatomic, strong) ChromaticView *audioPlayedIcon; //语音未读红点
//: @property (nonatomic, strong) UIButton *readButton; 
@property (nonatomic, strong) UIButton *readButton; //已读
//: @property (nonatomic, strong) UIButton *selectButton; 
@property (nonatomic, strong) UIButton *selectButton; //选择
//: @property (nonatomic, strong) UIButton *selectButtonMask; 
@property (nonatomic, strong) UIButton *selectButtonMask; //选择遮罩

//: @property (nonatomic, readonly) ZZZMessageModel *model;
@property (nonatomic, readonly) CollectionModel *model;

//: @property (nonatomic, weak) id<ZZZMessageCellDelegate> delegate;
@property (nonatomic, weak) id<ImageDelegate> delegate;

//: - (void)refreshData:(ZZZMessageModel *)data;
- (void)upgradeRecord:(CollectionModel *)data;

//: @end
@end