// __DEBUG__
// __CLOSE_PRINT__
//
//  StreetwiseView.h
//  NIM
//
//  Created by chris on 15/12/16.
//  Copyright © 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @class NTESPageView;
@class StreetwiseView;

//: @protocol NTESPageViewDataSource <NSObject>
@protocol FileDistance <NSObject>
//: - (NSInteger)numberOfPages: (NTESPageView *)pageView;
- (NSInteger)replied: (StreetwiseView *)pageView;
//: - (UIView *)pageView: (NTESPageView *)pageView viewInPage: (NSInteger)index;
- (UIView *)provider: (StreetwiseView *)pageView technicality: (NSInteger)index;
//: @end
@end

//: @protocol NTESPageViewDelegate <NSObject>
@protocol MarginColor <NSObject>
//: @optional
@optional
//: - (void)pageViewScrollEnd: (NTESPageView *)pageView
- (void)example: (StreetwiseView *)pageView
             //: currentIndex: (NSInteger)index
             data: (NSInteger)index
               //: totolPages: (NSInteger)pages;
               graduatedTableFor: (NSInteger)pages;

//: - (void)pageViewDidScroll: (NTESPageView *)pageView;
- (void)importantsed: (StreetwiseView *)pageView;
//: - (BOOL)needScrollAnimation;
- (BOOL)sessionAnimation;
//: @end
@end


//: @interface NTESPageView : UIView<UIScrollViewDelegate>
@interface StreetwiseView : UIView<UIScrollViewDelegate>
//: @property (nonatomic,strong) UIScrollView *scrollView;
@property (nonatomic,strong) UIScrollView *scrollView;
//: @property (nonatomic,weak) id<NTESPageViewDataSource> dataSource;
@property (nonatomic,weak) id<FileDistance> dataSource;
//: @property (nonatomic,weak) id<NTESPageViewDelegate> pageViewDelegate;
@property (nonatomic,weak) id<MarginColor> pageViewDelegate;
//: - (void)scrollToPage: (NSInteger)pages;
- (void)objectColor: (NSInteger)pages;
//: - (void)reloadData;
- (void)temp;
//: - (UIView *)viewAtIndex: (NSInteger)index;
- (UIView *)with: (NSInteger)index;
//: - (NSInteger)currentPage;
- (NSInteger)image;


//旋转相关方法,这两个方法必须配对调用,否则会有问题
//: - (void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
- (void)managerTable:(UIInterfaceOrientation)toInterfaceOrientation
                                //: duration:(NSTimeInterval)duration;
                                messageOf:(NSTimeInterval)duration;

//: - (void)willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
- (void)disable:(UIInterfaceOrientation)toInterfaceOrientation
                                         //: duration:(NSTimeInterval)duration;
                                         teamAnimateShow:(NSTimeInterval)duration;
//: @end
@end