// __DEBUG__
// __CLOSE_PRINT__
//
//  ViewControl.h
// On
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @class ZZZInputEmoticonTabView;
@class ViewControl;

//: @protocol NIMInputEmoticonTabDelegate <NSObject>
@protocol ModelTotal <NSObject>

//: - (void)tabView:(ZZZInputEmoticonTabView *)tabView didSelectTabIndex:(NSInteger) index;
- (void)add:(ViewControl *)tabView impending:(NSInteger) index;

//: @end
@end

//: @interface ZZZInputEmoticonTabView : UIControl
@interface ViewControl : UIControl

//: @property (nonatomic,strong) UIButton * sendButton;
@property (nonatomic,strong) UIButton * sendButton;

//: @property (nonatomic,weak) id<NIMInputEmoticonTabDelegate> delegate;
@property (nonatomic,weak) id<ModelTotal> delegate;

//: - (void)selectTabIndex:(NSInteger)index;
- (void)popTitle:(NSInteger)index;

//: - (void)loadCatalogs:(NSArray*)emoticonCatalogs;
- (void)window:(NSArray*)emoticonCatalogs;

//: @end
@end