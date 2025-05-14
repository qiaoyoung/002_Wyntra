// __DEBUG__
// __CLOSE_PRINT__
//
//  ColorViewController.h
//  HuaxiajiaboApp
//
//  Created by HuamoMac on 15/4/20.
//  Copyright (c) 2015年 HuaMo. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @protocol HMViewControllerDelegate;
@protocol ShareBoardDelegate;

//: @interface HMViewController : UIViewController <UIGestureRecognizerDelegate> {
@interface ColorViewController : UIViewController <UIGestureRecognizerDelegate> {
    //: __weak id<HMViewControllerDelegate> _viewControllerDelegate;
    __weak id<ShareBoardDelegate> _viewControllerDelegate;
}
//: @property (nonatomic,weak) id<HMViewControllerDelegate> viewControllerDelegate;
@property (nonatomic,weak) id<ShareBoardDelegate> viewControllerDelegate;


//系统返回手势改装
//: - (void)enableFullScreenPopGesture:(BOOL)enable;
- (void)must:(BOOL)enable;

//: @end
@end




//: @protocol HMViewControllerDelegate <NSObject>
@protocol ShareBoardDelegate <NSObject>

//: @optional
@optional
//: - (void)viewController:(HMViewController *)viewController key:(NSString *)key infomation:(id)infomation;
- (void)load:(ColorViewController *)viewController passePartout:(NSString *)key accumulation:(id)infomation;

//: @end
@end




//: @interface UIViewController (HM)
@interface UIViewController (HM)

//: - (void)showEmptyView;
- (void)victory;
//: - (void)showEmptyViewWithMessage:(NSString *)message;
- (void)radiogram:(NSString *)message;
//: - (void)showEmptyViewWithImageName:(NSString *)imageName inView:(UIView *)inView;
- (void)enable:(NSString *)imageName nim:(UIView *)inView;
//: - (void)showEmptyViewWithMessage:(NSString *)message inView:(UIView *)inView;
- (void)colorFormat:(NSString *)message grapple:(UIView *)inView;
//: - (void)showEmptyViewWithMessage:(NSString *)message inView:(UIView *)inView imageName:(NSString *)imageName;
- (void)should:(NSString *)message viewTableFormat:(UIView *)inView tiptoe:(NSString *)imageName;
//: - (void)hideEmptyViewInView:(UIView *)view;
- (void)titleLength:(UIView *)view;
//: - (void)hideEmptyView;
- (void)lifeless;


/**
 子类重写，无网络的处理
 重写这个方法：无网络时，弹出无网络页面，点击刷新数据
 不重写：不会弹出无网络页面
 */
//: - (BOOL)canShowNotNetView;
- (BOOL)formationView;
//: - (void)refrushWithNotNet;
- (void)speakerphone;



//: @end
@end