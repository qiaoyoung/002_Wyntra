// __DEBUG__
// __CLOSE_PRINT__
//
//  ZZZContactDefines.h
//  NIM
//
//  Created by chris on 15/2/26.
//  Copyright (c) 2015年 Netease. All rights reserved.
//
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

// __M_A_C_R_O__

//: @protocol NIMGroupMemberProtocol <NSObject>
@protocol ModelValue <NSObject>

//: - (NSString *)groupTitle;
- (NSString *)sound;

//: - (NSString *)memberId;
- (NSString *)modifyOption;

//: - (NSString *)showName;
- (NSString *)max;

//: - (NSString *)avatarUrlString;
- (NSString *)ofTip;

//: - (UIImage *)avatarImage;
- (UIImage *)link;

//: - (id)sortKey;
- (id)mostValuablePlayerKey;

//: @end
@end

//: @protocol NIMContactItemCollection <NSObject>
@protocol TingCollection <NSObject>

//显示的title名
//: - (NSString*)title;
- (NSString*)action;

//返回集合里的成员
//: - (NSArray*)members;
- (NSArray*)language;

//重用id
//: - (NSString*)reuseId;
- (NSString*)add;

//需要构造的cell类名
//: - (NSString*)cellName;
- (NSString*)cypher;

//: @end
@end




//: static const CGFloat NIMContactUtilRowHeight = 57;
static const CGFloat kConst_sizeValue = 57;//util类Cell行高
//: static const CGFloat NIMContactDataRowHeight = 50;
static const CGFloat kConst_errorValue = 50;//data类Cell行高
//: static const NSInteger NIMContactAccessoryLeft = 10;
static const NSInteger kConst_imageData = 10;//选择框到左边的距离
//: static const NSInteger NIMContactAvatarLeft = 15;
static const NSInteger kConst_nameMessageTitle = 15;//没有选择框的时候，头像到左边的距离
//: static const NSInteger NIMContactAvatarAndAccessorySpacing = 10;
static const NSInteger kConst_recentData = 10;//头像和选择框之间的距离
//: static const NSInteger NIMContactAvatarAndTitleSpacing = 20;
static const NSInteger kConst_commentTeamValue = 20;//头像和文字之间的间距