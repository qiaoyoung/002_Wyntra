// __DEBUG__
// __CLOSE_PRINT__
//
//  UIView+KIView.h
//  Kitalker
//
//  Created by chen on 12-7-6.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import <QuartzCore/QuartzCore.h>
#import <QuartzCore/QuartzCore.h>

//: @interface UIView (KIAdditions)
@interface UIView (Team)

//: @property (nonatomic, assign) id userInfo;
@property (nonatomic, assign) id userInfo;

//: - (void)setUserInfo:(id)userInfo ;
- (void)setUserInfo:(id)userInfo ;

//: - (id)userInfo;
- (id)userInfo;


/*size*/
//: - (CGSize)size;
- (CGSize)size;
//: - (void)setSize:(CGSize)size;
- (void)setSize:(CGSize)size;

/*x*/
//: - (CGFloat)x;
- (CGFloat)weltanschauung;
//: - (void)setOriginX:(CGFloat)x;
- (void)setContrive:(CGFloat)x;

/*y*/
//: - (CGFloat)y;
- (CGFloat)add;
//: - (void)setOriginY:(CGFloat)y;
- (void)setAggregation:(CGFloat)y;

//: - (void)setCenterX:(CGFloat)x;
- (void)setCenterX:(CGFloat)x;
//: - (void)setCenterY:(CGFloat)y;
- (void)setCenterY:(CGFloat)y;

/*width*/
//: - (CGFloat)width;
- (CGFloat)width;
//: - (void)setWidth:(CGFloat)width;
- (void)setWidth:(CGFloat)width;

/*height*/
//: - (CGFloat)height;
- (CGFloat)height;
//: - (void)setHeight:(CGFloat)height;
- (void)setHeight:(CGFloat)height;



//水平居中对齐 view：相对view padding：间距
//: - (void)horizontAllignment:(UIView *)view;
- (void)at:(UIView *)view;
//垂直居中对齐 view：相对view padding：间距
//: - (void)verticalAllignment:(UIView *)view;
- (void)back:(UIView *)view;
//位于view右边，间距为padding (y值一样)
//: - (void)rightView:(UIView *)view padding:(CGFloat)padding;
- (void)display:(UIView *)view addOf:(CGFloat)padding;
//位于view下面，间距为padding
//: - (void)underView:(UIView *)view padding:(CGFloat)padding;
- (void)trait:(UIView *)view degraded:(CGFloat)padding;



/*快照*/
//: - (UIImage *)snapshot;
- (UIImage *)name;

//: - (UIImage*)convertViewToImage;
- (UIImage*)viewWithValue;

//: - (void)registEndEditing;
- (void)dataEditing;

//: - (UIActivityIndicatorView *)activityIndicatorView;
- (UIActivityIndicatorView *)along;
//: - (void)removeActivityView;
- (void)noneBlack;

//: - (UIViewController *)viewController;
- (UIViewController *)showInfo;

/*返回view的viewController*/
//: - (UIViewController *)findViewControllerByView:(UIView *)view;
- (UIViewController *)empty:(UIView *)view;
//: - (UIView *)findForSuperViewClass:(Class)superViewClass;
- (UIView *)unwishedShould:(Class)superViewClass;


//: - (void)pushView:(UIView *)view completion:(void (^)(BOOL finished))completion;
- (void)rangeCompletion:(UIView *)view managerLink:(void (^)(BOOL finished))completion;

//: - (void)popCompletion:(void (^)(BOOL finished))completion;
- (void)completion:(void (^)(BOOL finished))completion;


//: @end
@end