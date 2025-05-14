// __DEBUG__
// __CLOSE_PRINT__
//
//  ValueViewCell.h
//  NIM
//
//  Created by 彭爽 on 2021/9/10.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "BaseTableViewCell.h"
#import "ItemView.h"
//: #import "ZZZAvatarImageView.h"
#import "ShankView.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface NTESMainCenterCell : BaseTableViewCell
@interface ValueViewCell : ItemView
//: @property (nonatomic ,weak) id delegate;
@property (nonatomic ,weak) id delegate;
//: @end
@end

//: @interface NTESMainCenterCell_1 : BaseTableViewCell
@interface ChiefView : ItemView
//: @property (nonatomic ,weak) id delegate;
@property (nonatomic ,weak) id delegate;
//: @end
@end

//: @interface NTESMainCenterCell_2 : BaseTableViewCell
@interface MediaViewCell : ItemView
//: @property (nonatomic ,weak) id delegate;
@property (nonatomic ,weak) id delegate;
//: @end
@end

//: @interface NTESMainCenterCell_3 : BaseTableViewCell
@interface EdgeViewCell : ItemView
//: @property (nonatomic ,weak) id delegate;
@property (nonatomic ,weak) id delegate;
//: @end
@end

//: @interface NTESMainCenterCell_4 : BaseTableViewCell
@interface StateView : ItemView

//: @end
@end

//: @interface NTESMainCenterHeader : UIView
@interface MainView : UIView
//: @property (nonatomic ,strong) UILabel *nickNameLabel;
@property (nonatomic ,strong) UILabel *nickNameLabel;
//: @property (nonatomic ,strong) UILabel *accountLabel;
@property (nonatomic ,strong) UILabel *accountLabel;
//: @property (nonatomic ,weak) id delegate;
@property (nonatomic ,weak) id delegate;
//: @property (nonatomic,strong) UIImageView *headerImage;
@property (nonatomic,strong) UIImageView *headerImage;
//: @property (nonatomic,strong) UIImageView *arrowImage;
@property (nonatomic,strong) UIImageView *arrowImage;

//: -(void)reloadWithDictionary:(NSDictionary * _Nullable)dictionary;
-(void)bluishPressed:(NSDictionary * _Nullable)dictionary;

//: @end
@end

//: @protocol NTESMainCenterDelegate <NSObject>
@protocol ShouldEmpty <NSObject>

//: -(void)userInfoCenter;
-(void)targetBlue;

//: -(void)myWallet;
-(void)beginTing;

//: -(void)signClick;
-(void)towardSession;

//: -(void)shareUserInfo;
-(void)optionUser;

//: -(void)safetySeting;
-(void)spaceNormal;

//: -(void)generalSeting;
-(void)pandemicInfo;

//: -(void)sendMore;
-(void)by;

//: -(void)opinionBack;
-(void)theoremSearchion;

//: @end
@end



//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END