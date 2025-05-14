//
//  ZZZInputEmoticonTabView.h
// AppleProjectKit
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ZZZInputEmoticonTabView;

@protocol NIMInputEmoticonTabDelegate <NSObject>

- (void)tabView:(ZZZInputEmoticonTabView *)tabView didSelectTabIndex:(NSInteger) index;

@end

@interface ZZZInputEmoticonTabView : UIControl

@property (nonatomic,strong) UIButton * sendButton;

@property (nonatomic,weak)   id<NIMInputEmoticonTabDelegate>  delegate;

- (void)selectTabIndex:(NSInteger)index;

- (void)loadCatalogs:(NSArray*)emoticonCatalogs;

@end






