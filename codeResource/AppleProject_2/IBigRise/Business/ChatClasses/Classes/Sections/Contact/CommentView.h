// __DEBUG__
// __CLOSE_PRINT__
//
//  ContactPickedView.h
//  NIM
//
//  Created by ios on 10/23/13.
//  Copyright (c) 2013 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @class ZZZKitInfo;
@class MagnitudeCommentInfo;

//: @protocol ZZZContactPickedViewDelegate <NSObject>
@protocol ViewDelegate <NSObject>

//: - (void)removeUser:(NSString *)userId;
- (void)at:(NSString *)userId;

//: @end
@end

//: @interface ZZZContactPickedView : UIView <UIScrollViewDelegate>
@interface CommentView : UIView <UIScrollViewDelegate>

//: @property (nonatomic, weak) id<ZZZContactPickedViewDelegate> delegate;
@property (nonatomic, weak) id<ViewDelegate> delegate;

//: - (void)removeMemberInfo:(ZZZKitInfo *)info;
- (void)happening:(MagnitudeCommentInfo *)info;

//: - (void)addMemberInfo:(ZZZKitInfo *)info;
- (void)aboveName:(MagnitudeCommentInfo *)info;

//: @end
@end