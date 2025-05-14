//
//  ZZZPageView.h
// AppleProjectKit
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ZZZPageView;

@protocol ZZZPageViewDataSource <NSObject>
- (NSInteger)numberOfPages: (ZZZPageView *)pageView;
- (UIView *)pageView: (ZZZPageView *)pageView viewInPage: (NSInteger)index;
@end

@protocol ZZZPageViewDelegate <NSObject>
@optional
- (void)pageViewScrollEnd: (ZZZPageView *)pageView
             currentIndex: (NSInteger)index
               totolPages: (NSInteger)pages;

- (void)pageViewDidScroll: (ZZZPageView *)pageView;
- (BOOL)needScrollAnimation;
@end


@interface ZZZPageView : UIView<UIScrollViewDelegate>
@property (nonatomic,strong)    UIScrollView   *scrollView;
@property (nonatomic,weak)    id<ZZZPageViewDataSource>  dataSource;
@property (nonatomic,weak)    id<ZZZPageViewDelegate>    pageViewDelegate;
- (void)scrollToPage: (NSInteger)pages;
- (void)reloadData;
- (UIView *)viewAtIndex: (NSInteger)index;
- (NSInteger)currentPage;


//旋转相关方法,这两个方法必须配对调用,否则会有问题
- (void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
                                duration:(NSTimeInterval)duration;

- (void)willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
                                         duration:(NSTimeInterval)duration;
@end
