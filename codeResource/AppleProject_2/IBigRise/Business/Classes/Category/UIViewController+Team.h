// __DEBUG__
// __CLOSE_PRINT__
//
//  UIViewController+KIViewController.h
//  Kitalker
//
//  Created by chen on 12-7-28.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//
//#import "NSObject+KIAdditions.h"
//#import "UIView+Team.h"

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @interface UIViewController (KIAdditions)
@interface UIViewController (Team)

//: - (void)showCustomBackButton;
- (void)max;

//: - (void)showCustomBackButton:(SEL)selector;
- (void)bulgeOut:(SEL)selector;

//: - (void)setNavLeftItem:(SEL)selector image:(UIImage *)image imageH:(UIImage *)imageH;
- (void)item:(SEL)selector onView:(UIImage *)image picture:(UIImage *)imageH;
//: -(void)setNavLeftItem:(SEL)selector title:(NSString *)title color:(UIColor *)color;
-(void)info:(SEL)selector date:(NSString *)title alongOption:(UIColor *)color;

//: - (void)setNavRightItem:(SEL)selector image:(UIImage *)image imageH:(UIImage *)imageH;
- (void)window:(SEL)selector size:(UIImage *)image hide:(UIImage *)imageH;
//: - (void)setNavRightItem:(SEL)selector title:(NSString *)title color:(UIColor *)color;
- (void)value:(SEL)selector willRange_strong:(NSString *)title size:(UIColor *)color;
//: - (void)setTitle:(NSString *)title;
- (void)setTitle:(NSString *)title;

//: - (void)setTitleColor:(UIColor *)color;
- (void)setNameMessage:(UIColor *)color;

//: - (void)setTitle:(NSString *)title titleColor:(UIColor *)color;
- (void)marshal:(NSString *)title belowTip:(UIColor *)color;

//- (void)pushController:(UIViewController *)viewController;

//- (void)pushController:(UIViewController *)viewController animated:(BOOL)animated;

//- (void)popController;

//: - (void)dismissModalController;
- (void)showImage;

//: - (void)close;
- (void)dedicationFloat;


//: - (BOOL)findNavbarBottomLineUnder:(UIView *)view hide:(BOOL)hide;
- (BOOL)style:(UIView *)view versionRecord:(BOOL)hide;



//: - (void)setNavBarBackGroundColor:(UIColor *)color;
- (void)setName:(UIColor *)color;
//: - (void)setNavBarClearColor;
- (void)stormCenterTime;
//: - (void)setNavBarWithAlpha:(CGFloat)alpha;
- (void)setLayerAccountAlpha:(CGFloat)alpha;
//: - (UIImage *)imageWithColor:(UIColor *)color;
- (UIImage *)tinkle:(UIColor *)color;

//: - (void)setShadowClearColor;
- (void)change;



//: @end
@end