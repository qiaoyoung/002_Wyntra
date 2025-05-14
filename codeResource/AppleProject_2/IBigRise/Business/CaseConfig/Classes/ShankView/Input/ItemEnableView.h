// __DEBUG__
// __CLOSE_PRINT__
//
//  ItemEnableView.h
// On
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZZZPageView.h"
#import "ColorExamineView.h"
//: #import "ZZZSessionConfig.h"
#import "PastConfig.h"

//: @class NIMInputEmoticonCatalog;
@class WithInput;
//: @class ZZZInputEmoticonTabView;
@class ViewControl;

//: @protocol NIMInputEmoticonProtocol <NSObject>
@protocol CookieProtocol <NSObject>

//: - (void)didPressSend:(id)sender;
- (void)keyContent:(id)sender;

//: - (void)didPressDelete:(id)sender;
- (void)isContainerRemove:(id)sender;

//: - (void)selectedEmoticon:(NSString*)emoticonID catalog:(NSString*)emotCatalogID description:(NSString *)description;
- (void)valueTool:(NSString*)emoticonID post:(NSString*)emotCatalogID bubble:(NSString *)description;

//: - (void)selectedGifEmoticon:(NSString*)gif;
- (void)restore:(NSString*)gif;

//: @end
@end


//: @interface ZZZInputEmoticonContainerView : UIView<ZZZPageViewDataSource,ZZZPageViewDelegate>
@interface ItemEnableView : UIView<TotalSource,CreateDelegate>

//: @property (nonatomic, strong) ZZZPageView *emoticonPageView;
@property (nonatomic, strong) ColorExamineView *emoticonPageView;
//: @property (nonatomic, strong) UIPageControl *emotPageController;
@property (nonatomic, strong) UIPageControl *emotPageController;
//: @property (nonatomic, strong) NSArray *totalCatalogData;
@property (nonatomic, strong) NSArray *totalCatalogData;
//: @property (nonatomic, strong) NIMInputEmoticonCatalog *currentCatalogData;
@property (nonatomic, strong) WithInput *currentCatalogData;
//: @property (nonatomic, readonly)NSArray *allEmoticons;
@property (nonatomic, readonly)NSArray *allEmoticons;
//: @property (nonatomic, strong) ZZZInputEmoticonTabView *tabView;
@property (nonatomic, strong) ViewControl *tabView;
//: @property (nonatomic, weak) id<NIMInputEmoticonProtocol> delegate;
@property (nonatomic, weak) id<CookieProtocol> delegate;
//: @property (nonatomic, weak) id<ZZZSessionConfig> config;
@property (nonatomic, weak) id<PastConfig> config;

//: @property (nonatomic,strong) UIScrollView *scrollView;
@property (nonatomic,strong) UIScrollView *scrollView;

//: @end
@end