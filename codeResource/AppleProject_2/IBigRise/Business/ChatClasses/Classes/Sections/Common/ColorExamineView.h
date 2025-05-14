// __DEBUG__
// __CLOSE_PRINT__
//
//  ColorExamineView.h
// On
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @class ZZZPageView;
@class ColorExamineView;

//: @protocol ZZZPageViewDataSource <NSObject>
@protocol TotalSource <NSObject>
//: - (NSInteger)numberOfPages: (ZZZPageView *)pageView;
- (NSInteger)replied: (ColorExamineView *)pageView;
//: - (UIView *)pageView: (ZZZPageView *)pageView viewInPage: (NSInteger)index;
- (UIView *)provider: (ColorExamineView *)pageView technicality: (NSInteger)index;
//: @end
@end

//: @protocol ZZZPageViewDelegate <NSObject>
@protocol CreateDelegate <NSObject>
//: @optional
@optional
//: - (void)pageViewScrollEnd: (ZZZPageView *)pageView
- (void)example: (ColorExamineView *)pageView
             //: currentIndex: (NSInteger)index
             data: (NSInteger)index
               //: totolPages: (NSInteger)pages;
               graduatedTableFor: (NSInteger)pages;

//: - (void)pageViewDidScroll: (ZZZPageView *)pageView;
- (void)importantsed: (ColorExamineView *)pageView;
//: - (BOOL)needScrollAnimation;
- (BOOL)sessionAnimation;
//: @end
@end


//: @interface ZZZPageView : UIView<UIScrollViewDelegate>
@interface ColorExamineView : UIView<UIScrollViewDelegate>
//: @property (nonatomic,strong) UIScrollView *scrollView;
@property (nonatomic,strong) UIScrollView *scrollView;
//: @property (nonatomic,weak) id<ZZZPageViewDataSource> dataSource;
@property (nonatomic,weak) id<TotalSource> dataSource;
//: @property (nonatomic,weak) id<ZZZPageViewDelegate> pageViewDelegate;
@property (nonatomic,weak) id<CreateDelegate> pageViewDelegate;
//: - (void)scrollToPage: (NSInteger)pages;
- (void)doing: (NSInteger)pages;
//: - (void)reloadData;
- (void)past;
//: - (UIView *)viewAtIndex: (NSInteger)index;
- (UIView *)session: (NSInteger)index;
//: - (NSInteger)currentPage;
- (NSInteger)phaseOfTheMoonPage;


//旋转相关方法,这两个方法必须配对调用,否则会有问题
//: - (void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
- (void)cutDuration:(UIInterfaceOrientation)toInterfaceOrientation
                                //: duration:(NSTimeInterval)duration;
                                ting:(NSTimeInterval)duration;

//: - (void)willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
- (void)message:(UIInterfaceOrientation)toInterfaceOrientation
                                         //: duration:(NSTimeInterval)duration;
                                         child:(NSTimeInterval)duration;
//: @end
@end