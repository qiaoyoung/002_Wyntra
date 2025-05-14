//
//  ZZZInputEmoticonContainerView.h
// AppleProjectKit
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

#import "ZZZPageView.h"
#import "ZZZSessionConfig.h"

@class NIMInputEmoticonCatalog;
@class ZZZInputEmoticonTabView;

@protocol NIMInputEmoticonProtocol <NSObject>

- (void)didPressSend:(id)sender;

- (void)didPressDelete:(id)sender;

- (void)selectedEmoticon:(NSString*)emoticonID catalog:(NSString*)emotCatalogID description:(NSString *)description;

- (void)selectedGifEmoticon:(NSString*)gif;

@end


@interface ZZZInputEmoticonContainerView : UIView<ZZZPageViewDataSource,ZZZPageViewDelegate>

@property (nonatomic, strong)  ZZZPageView *emoticonPageView;
@property (nonatomic, strong)  UIPageControl  *emotPageController;
@property (nonatomic, strong)  NSArray                    *totalCatalogData;
@property (nonatomic, strong)  NIMInputEmoticonCatalog    *currentCatalogData;
@property (nonatomic, readonly)NSArray            *allEmoticons;
@property (nonatomic, strong)  ZZZInputEmoticonTabView   *tabView;
@property (nonatomic, weak)    id<NIMInputEmoticonProtocol>  delegate;
@property (nonatomic, weak)    id<ZZZSessionConfig> config;

@property (nonatomic,strong)    UIScrollView   *scrollView;

@end

