// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESContactDefines.h
//  NIM
//
//  Created by chris on 15/2/26.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__

//: @protocol NTESContactItemCollection <NSObject>
@protocol StraddleCollection <NSObject>
//: @required
@required
//显示的title名
//: - (NSString*)title;
- (NSString*)theColor;

//返回集合里的成员
//: - (NSArray*)members;
- (NSArray*)of;

//重用id
//: - (NSString*)reuseId;
- (NSString*)appTitle;

//需要构造的cell类名
//: - (NSString*)cellName;
- (NSString*)max;

//: @end
@end

//: @protocol NTESContactItem<NSObject>
@protocol MediaItem<NSObject>
//: @required
@required
//userId和Vcname必有一个有值，根据有值的状态push进不同的页面
//: - (NSString*)vcName;
- (NSString*)infoName;

//userId和Vcname必有一个有值，根据有值的状态push进不同的页面
//: - (NSString*)userId;
- (NSString*)saveTo;

//返回行高
//: - (CGFloat)uiHeight;
- (CGFloat)image;

//重用id
//: - (NSString*)reuseId;
- (NSString*)show;

//需要构造的cell类名
//: - (NSString*)cellName;
- (NSString*)array;

//badge
//: - (NSString *)badge;
- (NSString *)pull;

//显示名
//: - (NSString *)nick;
- (NSString *)container;

//占位图
//: - (UIImage *)icon;
- (UIImage *)block;

//头像url
//: - (NSString *)avatarUrl;
- (NSString *)sane;

//accessoryView
//: - (BOOL)showAccessoryView;
- (BOOL)straddle;

//: @optional
@optional
//: - (NSString *)selName;
- (NSString *)textMessage;


//: @end
@end

//: @protocol NTESContactCell <NSObject>
@protocol ImmobiliseCell <NSObject>

//: - (void)refreshWithContactItem:(id<NTESContactItem>)item;
- (void)show:(id<MediaItem>)item;

//: - (void)addDelegate:(id)delegate;
- (void)read:(id)delegate;

//: @end
@end







//: static const CGFloat NTESContactUtilRowHeight = 57;
static const CGFloat kConst_eventContent = 57;//util类Cell行高
//: static const CGFloat NTESContactDataRowHeight = 50;
static const CGFloat kConst_colorTitle = 50;//data类Cell行高
//: static const NSInteger NTESContactAvatarLeft = 10;
static const NSInteger kConst_stateData = 10;//没有选择框的时候，头像到左边的距离
//: static const NSInteger NTESContactAvatarAndAccessorySpacing = 10;
static const NSInteger kConst_cellValue = 10;//头像和选择框之间的距离