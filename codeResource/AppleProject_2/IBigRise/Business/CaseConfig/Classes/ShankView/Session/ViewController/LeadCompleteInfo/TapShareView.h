// __DEBUG__
// __CLOSE_PRINT__
//
//  TapShareView.h
//  TapShareView
//
//  Created by youyou on 16/12/5.
//  Copyright © 2016年 iceyouyou. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @class UUMarqueeView;
@class TapShareView;

//: typedef NS_ENUM(NSUInteger, UUMarqueeViewDirection) {
typedef NS_ENUM(NSUInteger, UUMarqueeViewDirection) {
    //: UUMarqueeViewDirectionUpward, 
    UUMarqueeViewDirectionUpward, // scroll from bottom to top
    //: UUMarqueeViewDirectionLeftward 
    UUMarqueeViewDirectionLeftward // scroll from right to left
//: };
};

//: #pragma mark - UUMarqueeViewDelegate
#pragma mark - Delegate
//: @protocol UUMarqueeViewDelegate <NSObject>
@protocol Delegate <NSObject>
//: - (NSUInteger)numberOfDataForMarqueeView:(UUMarqueeView*)marqueeView;
- (NSUInteger)untilView:(TapShareView*)marqueeView;
//: - (void)createItemView:(UIView*)itemView forMarqueeView:(UUMarqueeView*)marqueeView;
- (void)at:(UIView*)itemView collectionView:(TapShareView*)marqueeView;
//: - (void)updateItemView:(UIView*)itemView atIndex:(NSUInteger)index forMarqueeView:(UUMarqueeView*)marqueeView;
- (void)color:(UIView*)itemView upgrade:(NSUInteger)index message:(TapShareView*)marqueeView;
//: @optional
@optional
//: - (NSUInteger)numberOfVisibleItemsForMarqueeView:(UUMarqueeView*)marqueeView; 
- (NSUInteger)disables:(TapShareView*)marqueeView; // only for [UUMarqueeViewDirectionUpward]
//: - (CGFloat)itemViewWidthAtIndex:(NSUInteger)index forMarqueeView:(UUMarqueeView*)marqueeView; 
- (CGFloat)marquee:(NSUInteger)index table:(TapShareView*)marqueeView; // only for [UUMarqueeViewDirectionLeftward]
//: - (CGFloat)itemViewHeightAtIndex:(NSUInteger)index forMarqueeView:(UUMarqueeView*)marqueeView; 
- (CGFloat)trademark:(NSUInteger)index recentTingLength:(TapShareView*)marqueeView; // only for [UUMarqueeViewDirectionUpward] and [useDynamicHeight = YES]
//: - (void)didTouchItemViewAtIndex:(NSUInteger)index forMarqueeView:(UUMarqueeView*)marqueeView;
- (void)workFlow:(NSUInteger)index keyInside:(TapShareView*)marqueeView;
//: @end
@end

//: #pragma mark - UUMarqueeView
#pragma mark - TapShareView
//: @interface UUMarqueeView : UIView
@interface TapShareView : UIView
//: @property (nonatomic, weak) id<UUMarqueeViewDelegate> delegate;
@property (nonatomic, weak) id<Delegate> delegate;
//: @property (nonatomic, assign) NSTimeInterval timeIntervalPerScroll;
@property (nonatomic, assign) NSTimeInterval timeIntervalPerScroll;
//: @property (nonatomic, assign) NSTimeInterval timeDurationPerScroll; 
@property (nonatomic, assign) NSTimeInterval timeDurationPerScroll; // only for [UUMarqueeViewDirectionUpward] and [useDynamicHeight = NO]
//: @property (nonatomic, assign) BOOL useDynamicHeight; 
@property (nonatomic, assign) BOOL useDynamicHeight; // only for [UUMarqueeViewDirectionUpward]
//: @property (nonatomic, assign) float scrollSpeed; 
@property (nonatomic, assign) float scrollSpeed; // only for [UUMarqueeViewDirectionLeftward] or [UUMarqueeViewDirectionUpward] with [useDynamicHeight = YES]
//: @property (nonatomic, assign) float itemSpacing; 
@property (nonatomic, assign) float itemSpacing; // only for [UUMarqueeViewDirectionLeftward]
//: @property (nonatomic, assign) BOOL stopWhenLessData; 
@property (nonatomic, assign) BOOL stopWhenLessData; // do not scroll when all data has been shown
//: @property (nonatomic, assign) BOOL clipsToBounds;
@property (nonatomic, assign) BOOL clipsToBounds;
//: @property (nonatomic, assign, getter=isTouchEnabled) BOOL touchEnabled;
@property (nonatomic, assign, getter=isTouchEnabled) BOOL touchEnabled;
//: @property (nonatomic, assign) UUMarqueeViewDirection direction;
@property (nonatomic, assign) UUMarqueeViewDirection direction;
//: - (instancetype)initWithDirection:(UUMarqueeViewDirection)direction;
- (instancetype)initWithMy:(UUMarqueeViewDirection)direction;
//: - (instancetype)initWithFrame:(CGRect)frame direction:(UUMarqueeViewDirection)direction;
- (instancetype)initWithTillEdit:(CGRect)frame paperFeed:(UUMarqueeViewDirection)direction;
//: - (void)reloadData;
- (void)refresh;
//: - (void)start;
- (void)unpack;
//: - (void)pause;
- (void)displayName;
//: @end
@end

//: #pragma mark - UUMarqueeViewTouchResponder(Private)
#pragma mark - NameResponder(Private)
//: @protocol UUMarqueeViewTouchResponder <NSObject>
@protocol NameResponder <NSObject>
//: - (void)touchesBegan;
- (void)duringLabelBegan;
//: - (void)touchesEndedAtPoint:(CGPoint)point;
- (void)to:(CGPoint)point;
//: - (void)touchesCancelled;
- (void)skylightCancelled;
//: @end
@end

//: #pragma mark - UUMarqueeViewTouchReceiver(Private)
#pragma mark - ModelValueView(Private)
//: @interface UUMarqueeViewTouchReceiver : UIView
@interface ModelValueView : UIView
//: @property (nonatomic, weak) id<UUMarqueeViewTouchResponder> touchDelegate;
@property (nonatomic, weak) id<NameResponder> touchDelegate;
//: @end
@end

//: #pragma mark - UUMarqueeItemView(Private)
#pragma mark - ContentView(Private)
//: @interface UUMarqueeItemView : UIView 
@interface ContentView : UIView // ContentView's [tag] is the index of data source. if none data source then [tag] is -1
//: @property (nonatomic, assign) BOOL didFinishCreate;
@property (nonatomic, assign) BOOL didFinishCreate;
//: @property (nonatomic, assign) CGFloat width; 
@property (nonatomic, assign) CGFloat width; // cache the item width, only for [UUMarqueeViewDirectionLeftward]
//: @property (nonatomic, assign) CGFloat height; 
@property (nonatomic, assign) CGFloat height; // cache the item height, only for [UUMarqueeViewDirectionUpward]
//: - (void)clear;
- (void)cameraClear;
//: @end
@end