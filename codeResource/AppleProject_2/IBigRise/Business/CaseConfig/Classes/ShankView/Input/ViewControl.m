
#import <Foundation/Foundation.h>
typedef struct {
    Byte loath;
    Byte *hum;
    unsigned int denial;
    bool teenaged;
	int fair;
	int minder;
} CombineData;

NSString *StringFromCombineData(CombineData *data);


//: #34AECA
CombineData kStr_tingCurrentData = (CombineData){42, (Byte []){9, 25, 30, 107, 111, 105, 107, 70}, 7, false, 77, 81};


//: emoji_delete
CombineData kStr_stairsIndexContent = (CombineData){157, (Byte []){248, 240, 242, 247, 244, 194, 249, 248, 241, 248, 233, 248, 188}, 12, false, 146, 31};


//: emoji_bar_bg
CombineData kStr_stretchContent = (CombineData){211, (Byte []){182, 190, 188, 185, 186, 140, 177, 178, 161, 140, 177, 180, 35}, 12, false, 154, 125};

// __DEBUG__
// __CLOSE_PRINT__
//
//  ViewControl.m
// On
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZZZInputEmoticonTabView.h"
#import "ViewControl.h"
//: #import "ZZZInputEmoticonManager.h"
#import "SumManager.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "UIImage+AppleProjectKit.h"
#import "UIImage+On.h"
 

//: const NSInteger ZZZInputEmoticonTabViewHeight = 40;
const NSInteger kConst_backData = 40;
//: const NSInteger NIMInputEmoticonSendButtonWidth = 48;
const NSInteger kConst_marginSnapValue = 48;

//: const CGFloat NIMInputLineBoarder = .5f;
const CGFloat kConst_itemTitle = .5f;

//: @interface ZZZInputEmoticonTabView()
@interface ViewControl()

//: @property (nonatomic,strong) NSMutableArray * tabs;
@property (nonatomic,strong) NSMutableArray * tabs;

//: @property (nonatomic,strong) NSMutableArray * seps;
@property (nonatomic,strong) NSMutableArray * seps;

//: @end
@end



//: @implementation ZZZInputEmoticonTabView
@implementation ViewControl

//: - (instancetype)initWithFrame:(CGRect)frame{
- (instancetype)initWithFrame:(CGRect)frame{
    //: self = [super initWithFrame:CGRectMake(0, 0, frame.size.width, ZZZInputEmoticonTabViewHeight)];
    self = [super initWithFrame:CGRectMake(0, 0, frame.size.width, kConst_backData)];
    //: if (self) {
    if (self) {

        //: self.backgroundColor = [UIColor clearColor];
        self.backgroundColor = [UIColor clearColor];
//        self.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"emoji_bar_bg"]];
        //: UIImageView *bg = [[UIImageView alloc]initWithFrame: self.bounds];
        UIImageView *bg = [[UIImageView alloc]initWithFrame: self.bounds];
        //: bg.image = [UIImage imageNamed:@"emoji_bar_bg"];
        bg.image = [UIImage imageNamed:StringFromCombineData(&kStr_stretchContent)];
        //: [self addSubview:bg];
        [self addSubview:bg];


        //: _tabs = [[NSMutableArray alloc] init];
        _tabs = [[NSMutableArray alloc] init];
        //: _seps = [[NSMutableArray alloc] init];
        _seps = [[NSMutableArray alloc] init];

        //: _sendButton = [UIButton buttonWithType:UIButtonTypeCustom];
        _sendButton = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_sendButton setImage:[UIImage imageNamed:@"emoji_delete"] forState:UIControlStateNormal];
        [_sendButton setImage:[UIImage imageNamed:StringFromCombineData(&kStr_stairsIndexContent)] forState:UIControlStateNormal];
//        [_sendButton setTitle:@"发送".nim_localized forState:UIControlStateNormal];
//        _sendButton.titleLabel.font = [UIFont systemFontOfSize:13.f];
//        [_sendButton setBackgroundColor:NEEKIT_UIColorFromRGB(0x0079FF)];

        //: _sendButton.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
        _sendButton.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
        //: _sendButton.layer.cornerRadius = 10;
        _sendButton.layer.cornerRadius = 10;
        //: _sendButton.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
        _sendButton.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
        //: _sendButton.layer.shadowOffset = CGSizeMake(0,1);
        _sendButton.layer.shadowOffset = CGSizeMake(0,1);
        //: _sendButton.layer.shadowOpacity = 1;
        _sendButton.layer.shadowOpacity = 1;
        //: _sendButton.layer.shadowRadius = 8;
        _sendButton.layer.shadowRadius = 8;

        //: _sendButton.nim_height = ZZZInputEmoticonTabViewHeight;
        _sendButton.nim_height = kConst_backData;
        //: _sendButton.nim_width = NIMInputEmoticonSendButtonWidth;
        _sendButton.nim_width = kConst_marginSnapValue;
        //: [self addSubview:_sendButton];
        [self addSubview:_sendButton];

//        self.layer.borderColor = sepColor.CGColor;
//        self.layer.borderWidth = NIMInputLineBoarder;

    }
    //: return self;
    return self;
}


//: - (void)loadCatalogs:(NSArray*)emoticonCatalogs
- (void)window:(NSArray*)emoticonCatalogs
{
    //: for (UIView *subView in [_tabs arrayByAddingObjectsFromArray:_seps]) {
    for (UIView *subView in [_tabs arrayByAddingObjectsFromArray:_seps]) {
        //: [subView removeFromSuperview];
        [subView removeFromSuperview];
    }
    //: [_tabs removeAllObjects];
    [_tabs removeAllObjects];
    //: [_seps removeAllObjects];
    [_seps removeAllObjects];
    //: for (NIMInputEmoticonCatalog * catelog in emoticonCatalogs) {
    for (WithInput * catelog in emoticonCatalogs) {
        //: UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        //: button.frame = CGRectMake(0, 0, 48, 40);
        button.frame = CGRectMake(0, 0, 48, 40);
        //: [button setImage:[UIImage nim_emoticonInKit:catelog.icon] forState:UIControlStateNormal];
        [button setImage:[UIImage chromatic:catelog.icon] forState:UIControlStateNormal];
        //: [button setImage:[UIImage nim_emoticonInKit:catelog.iconPressed] forState:UIControlStateHighlighted];
        [button setImage:[UIImage chromatic:catelog.iconPressed] forState:UIControlStateHighlighted];
        //: [button setImage:[UIImage nim_emoticonInKit:catelog.iconPressed] forState:UIControlStateSelected];
        [button setImage:[UIImage chromatic:catelog.iconPressed] forState:UIControlStateSelected];
        //: [button addTarget:self action:@selector(onTouchTab:) forControlEvents:UIControlEventTouchUpInside];
        [button addTarget:self action:@selector(contented:) forControlEvents:UIControlEventTouchUpInside];
        //: [button sizeToFit];
        [button sizeToFit];
        //: [self addSubview:button];
        [self addSubview:button];
        //: button.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
        button.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
        //: button.layer.cornerRadius = 10;
        button.layer.cornerRadius = 10;
        //: button.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
        button.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
        //: button.layer.shadowOffset = CGSizeMake(0,1);
        button.layer.shadowOffset = CGSizeMake(0,1);
        //: button.layer.shadowOpacity = 1;
        button.layer.shadowOpacity = 1;
        //: button.layer.shadowRadius = 8;
        button.layer.shadowRadius = 8;


        //: [_tabs addObject:button];
        [_tabs addObject:button];

//        UIView *sep = [[UIView alloc] initWithFrame:CGRectMake(0, 0, NIMInputLineBoarder, ZZZInputEmoticonTabViewHeight)];
////        sep.backgroundColor = sepColor;
//        sep.backgroundColor = [UIColor whiteColor];
//        [_seps addObject:sep];
//        [self addSubview:sep];
    }
    //: [self selectTabIndex:0];
    [self popTitle:0];
}

//: - (void)onTouchTab:(id)sender{
- (void)contented:(id)sender{
    //: NSInteger index = [self.tabs indexOfObject:sender];
    NSInteger index = [self.tabs indexOfObject:sender];
    //: [self selectTabIndex:index];
    [self popTitle:index];
    //: if ([self.delegate respondsToSelector:@selector(tabView:didSelectTabIndex:)]) {
    if ([self.delegate respondsToSelector:@selector(add:impending:)]) {
        //: [self.delegate tabView:self didSelectTabIndex:index];
        [self.delegate add:self impending:index];
    }
}


//: - (void)selectTabIndex:(NSInteger)index{
- (void)popTitle:(NSInteger)index{
    //: for (NSInteger i = 0; i < self.tabs.count ; i++) {
    for (NSInteger i = 0; i < self.tabs.count ; i++) {
        //: UIButton *btn = self.tabs[i];
        UIButton *btn = self.tabs[i];
        //: btn.layer.borderWidth = 0;
        btn.layer.borderWidth = 0;
        //: btn.selected = i == index;
        btn.selected = i == index;
        //: if(btn.selected){
        if(btn.selected){
            //: btn.layer.borderWidth = 1.5;
            btn.layer.borderWidth = 1.5;
            //: btn.layer.borderColor = [UIColor colorWithHexString:@"#34AECA"].CGColor;
            btn.layer.borderColor = [UIColor box:StringFromCombineData(&kStr_tingCurrentData)].CGColor;
        }
    }
}

//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: CGFloat spacing = 10;
    CGFloat spacing = 10;
    //: CGFloat left = spacing;
    CGFloat left = spacing;
    //: for (NSInteger index = 0; index < self.tabs.count ; index++) {
    for (NSInteger index = 0; index < self.tabs.count ; index++) {
        //: UIButton *button = self.tabs[index];
        UIButton *button = self.tabs[index];
        //: button.nim_width = NIMInputEmoticonSendButtonWidth;
        button.nim_width = kConst_marginSnapValue;
        //: button.nim_height = ZZZInputEmoticonTabViewHeight;
        button.nim_height = kConst_backData;
        //: button.nim_left = left;
        button.nim_left = left;
        //: button.nim_centerY = self.nim_height * .5f;
        button.nim_centerY = self.nim_height * .5f;

        //: left = (int)(button.nim_right + spacing);
        left = (int)(button.nim_right + spacing);

//        UIView *sep = self.seps[index];
//        sep.nim_left = (int)(button.nim_right + spacing);
//        left = (int)(sep.nim_right + spacing);
    }
    //: _sendButton.nim_right = (int)self.nim_width;
    _sendButton.nim_right = (int)self.nim_width;
}


//: @end
@end

Byte *CombineDataToByte(CombineData *data) {
    if (data->teenaged) return data->hum;
    for (int i = 0; i < data->denial; i++) {
        data->hum[i] ^= data->loath;
    }
    data->hum[data->denial] = 0;
    data->teenaged = true;
	if (data->denial >= 2) {
		data->fair = data->hum[0];
		data->minder = data->hum[1];
	}
    return data->hum;
}

NSString *StringFromCombineData(CombineData *data) {
    return [NSString stringWithUTF8String:(char *)CombineDataToByte(data)];
}
