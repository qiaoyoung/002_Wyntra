// __DEBUG__
// __CLOSE_PRINT__
//
//  MainTabController.h
//  NIMDemo
//
//  Created by chris on 15/2/2.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "AppleProjectKit.h"
#import "On.h"
//: #import "CustomTabBarController.h"
#import "ImageViewController.h"

//: @interface NTESMainTabController : CustomTabBarController
@interface SumBarController : ImageViewController

//: + (instancetype)instance;
+ (instancetype)displayName;

/**
 * 显示自定义 TabBar
 */
//: - (void)showTabBar;
- (void)geneticMutationBar;

/**
 * 隐藏自定义 TabBar
 */
//: - (void)hideTabBar;
- (void)label;

//: @end
@end