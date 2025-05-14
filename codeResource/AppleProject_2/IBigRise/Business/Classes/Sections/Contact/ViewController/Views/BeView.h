// __DEBUG__
// __CLOSE_PRINT__
//
//  BeView.h
//  NIM
//
//  Created by 彭爽 on 2021/9/8.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface NTESContactHeaderView : UIView
@interface BeView : UIView
//: @property (nonatomic ,weak) id delegate;
@property (nonatomic ,weak) id delegate;
//: -(void)reloadCountNumber:(NSInteger)systemCount;
-(void)canMedia:(NSInteger)systemCount;
//: @end
@end

//: @protocol NTESContactHeaderDelegate <NSObject>
@protocol LanguageDelegate <NSObject>


//: -(void)searchClick;
-(void)clickTable;
//: -(void)addFriend;
-(void)contentShow;
//: -(void)newGroup;
-(void)userAccount;
//: -(void)scan;
-(void)viewBy;
//: -(void)friendNotification;
-(void)fromView;
//: -(void)groupNotification;
-(void)contentHide;
//: -(void)deviceList;
-(void)member;
//: -(void)blackFriendList;
-(void)valueLight;
//: -(void)signIn;
-(void)signShowIn;
//: -(void)collectList;
-(void)add;
//: -(void)onlineServer;
-(void)team;

//: -(void)sliderWithIndex:(NSInteger)index;
-(void)secretted:(NSInteger)index;

//: @end
@end


//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END