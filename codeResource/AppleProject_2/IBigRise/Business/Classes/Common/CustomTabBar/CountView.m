
#import <Foundation/Foundation.h>

NSString *StringFromIllGoryData(Byte *data);


//: CustomTabBarItemTapped
Byte kStr_redMethodName[] = {14, 22, 76, 9, 149, 202, 180, 147, 213, 143, 193, 191, 192, 187, 185, 160, 173, 174, 142, 173, 190, 149, 192, 177, 185, 160, 173, 188, 188, 177, 176, 209};


//: #888888
Byte kStr_fashionGagName[] = {18, 7, 61, 9, 133, 19, 130, 94, 158, 96, 117, 117, 117, 117, 117, 117, 158};


//: #000000
Byte kStr_imageChipValue[] = {22, 7, 69, 10, 171, 236, 221, 239, 138, 89, 104, 117, 117, 117, 117, 117, 117, 108};

// __DEBUG__
// __CLOSE_PRINT__
//
//  CountView.m
//  AppleProject
//
//  Created by AI Assistant on 2023-05-12.
//  Copyright © 2023 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "CustomTabBar.h"
#import "CountView.h"

//: @interface CustomTabBarItemView : UIView
@interface TabletInputView : UIView

//: @property (nonatomic, strong) UITabBarItem *item;
@property (nonatomic, strong) UITabBarItem *item;
//: @property (nonatomic, strong) UIImageView *iconImageView;
@property (nonatomic, strong) UIImageView *iconImageView;
//: @property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UILabel *titleLabel;
//: @property (nonatomic, strong) UILabel *badgeLabel;
@property (nonatomic, strong) UILabel *badgeLabel;
//: @property (nonatomic, assign) BOOL selected;
@property (nonatomic, assign) BOOL selected;
//: @property (nonatomic, strong) UIColor *tintColor;
@property (nonatomic, strong) UIColor *tintColor;
//: @property (nonatomic, strong) UIColor *selectedTintColor;
@property (nonatomic, strong) UIColor *selectedTintColor;

//: - (void)updateAppearance;
- (void)contentContainer;

//: @end
@end

//: @implementation CustomTabBarItemView
@implementation TabletInputView

//: - (instancetype)initWithFrame:(CGRect)frame {
- (instancetype)initWithFrame:(CGRect)frame {
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: [self setupUI];
        [self secure];
    }
    //: return self;
    return self;
}

//: - (void)setupUI {
- (void)secure {
    //: self.tintColor = [UIColor colorWithHexString:@"#888888"];
    self.tintColor = [UIColor box:StringFromIllGoryData(kStr_fashionGagName)];
    //: self.selectedTintColor = [UIColor colorWithHexString:@"#000000"];
    self.selectedTintColor = [UIColor box:StringFromIllGoryData(kStr_imageChipValue)];

    // 图标
    //: _iconImageView = [[UIImageView alloc] init];
    _iconImageView = [[UIImageView alloc] init];
    //: _iconImageView.contentMode = UIViewContentModeScaleAspectFit;
    _iconImageView.contentMode = UIViewContentModeScaleAspectFit;
    //: [self addSubview:_iconImageView];
    [self addSubview:_iconImageView];

    // 标题
    //: _titleLabel = [[UILabel alloc] init];
    _titleLabel = [[UILabel alloc] init];
    //: _titleLabel.font = [UIFont systemFontOfSize:10];
    _titleLabel.font = [UIFont systemFontOfSize:10];
    //: _titleLabel.textAlignment = NSTextAlignmentCenter;
    _titleLabel.textAlignment = NSTextAlignmentCenter;
    //: [self addSubview:_titleLabel];
    [self addSubview:_titleLabel];

    // 红点标记
    //: _badgeLabel = [[UILabel alloc] init];
    _badgeLabel = [[UILabel alloc] init];
    //: _badgeLabel.textAlignment = NSTextAlignmentCenter;
    _badgeLabel.textAlignment = NSTextAlignmentCenter;
    //: _badgeLabel.textColor = [UIColor whiteColor];
    _badgeLabel.textColor = [UIColor whiteColor];
    //: _badgeLabel.backgroundColor = [UIColor redColor];
    _badgeLabel.backgroundColor = [UIColor redColor];
    //: _badgeLabel.font = [UIFont systemFontOfSize:11];
    _badgeLabel.font = [UIFont systemFontOfSize:11];
    //: _badgeLabel.layer.cornerRadius = 8;
    _badgeLabel.layer.cornerRadius = 8;
    //: _badgeLabel.layer.masksToBounds = YES;
    _badgeLabel.layer.masksToBounds = YES;
    //: _badgeLabel.hidden = YES;
    _badgeLabel.hidden = YES;
    //: [self addSubview:_badgeLabel];
    [self addSubview:_badgeLabel];

    //: self.userInteractionEnabled = YES;
    self.userInteractionEnabled = YES;
    //: UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTap:)];
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(telegrammed:)];
    //: [self addGestureRecognizer:tap];
    [self addGestureRecognizer:tap];
}

//: - (void)handleTap:(UITapGestureRecognizer *)tap {
- (void)telegrammed:(UITapGestureRecognizer *)tap {
    //: [[NSNotificationCenter defaultCenter] postNotificationName:@"CustomTabBarItemTapped" object:self];
    [[NSNotificationCenter defaultCenter] postNotificationName:StringFromIllGoryData(kStr_redMethodName) object:self];
}

//: - (void)layoutSubviews {
- (void)layoutSubviews {
    //: [super layoutSubviews];
    [super layoutSubviews];

    //: CGFloat itemWidth = self.bounds.size.width;
    CGFloat itemWidth = self.bounds.size.width;
    //: CGFloat itemHeight = self.bounds.size.height;
    CGFloat itemHeight = self.bounds.size.height;

    // 布局图标 - 稍微调整一下位置，使其与系统TabBar一致
    //: CGFloat iconSize = 24.0;
    CGFloat iconSize = 24.0;
    //: CGFloat iconY = ({ BOOL isPhoneX = NO; if (@available(iOS 11.0, *)) { isPhoneX = [[UIApplication sharedApplication] delegate].window.safeAreaInsets.bottom > 0.0; } isPhoneX;}) ? 8 : 6; 
    CGFloat iconY = ({ BOOL isPhoneX = NO; if (@available(iOS 11.0, *)) { isPhoneX = [[UIApplication sharedApplication] delegate].window.safeAreaInsets.bottom > 0.0; } isPhoneX;}) ? 8 : 6; // 针对刘海屏做适配
    //: _iconImageView.frame = CGRectMake((itemWidth - iconSize) / 2, iconY, iconSize, iconSize);
    _iconImageView.frame = CGRectMake((itemWidth - iconSize) / 2, iconY, iconSize, iconSize);

    // 布局标题 - 增加与图标的间距
    //: _titleLabel.frame = CGRectMake(0, CGRectGetMaxY(_iconImageView.frame) + 4, itemWidth, 14); 
    _titleLabel.frame = CGRectMake(0, CGRectGetMaxY(_iconImageView.frame) + 4, itemWidth, 14); // 间距从2增加到4

    // 布局badge
    //: [self layoutBadge];
    [self max];
}

//: - (void)layoutBadge {
- (void)max {
    //: if (_badgeLabel.hidden) {
    if (_badgeLabel.hidden) {
        //: return;
        return;
    }

    //: CGSize badgeSize = [_badgeLabel.text sizeWithAttributes:@{NSFontAttributeName: _badgeLabel.font}];
    CGSize badgeSize = [_badgeLabel.text sizeWithAttributes:@{NSFontAttributeName: _badgeLabel.font}];
    //: CGFloat badgeWidth = ((16) > (badgeSize.width + 8) ? (16) : (badgeSize.width + 8));
    CGFloat badgeWidth = ((16) > (badgeSize.width + 8) ? (16) : (badgeSize.width + 8));

    // 调整badge位置，更像系统TabBar
    //: CGFloat badgeX = CGRectGetMaxX(_iconImageView.frame) - 10;
    CGFloat badgeX = CGRectGetMaxX(_iconImageView.frame) - 10;
    //: CGFloat badgeY = _iconImageView.frame.origin.y - 5;
    CGFloat badgeY = _iconImageView.frame.origin.y - 5;

    //: _badgeLabel.frame = CGRectMake(badgeX, badgeY, badgeWidth, 16);
    _badgeLabel.frame = CGRectMake(badgeX, badgeY, badgeWidth, 16);
}

//: - (void)setItem:(UITabBarItem *)item {
- (void)setItem:(UITabBarItem *)item {
    //: _item = item;
    _item = item;
    //: [self updateAppearance];
    [self contentContainer];
}

//: - (void)setBadgeValue:(NSString *)badgeValue {
- (void)setUp:(NSString *)badgeValue {
    //: _item.badgeValue = badgeValue;
    _item.badgeValue = badgeValue;

    //: if (badgeValue && badgeValue.length > 0) {
    if (badgeValue && badgeValue.length > 0) {
        //: _badgeLabel.text = badgeValue;
        _badgeLabel.text = badgeValue;
        //: _badgeLabel.hidden = NO;
        _badgeLabel.hidden = NO;
    //: } else {
    } else {
        //: _badgeLabel.hidden = YES;
        _badgeLabel.hidden = YES;
    }

    //: [self layoutBadge];
    [self max];
}

//: - (void)setSelected:(BOOL)selected {
- (void)setSelected:(BOOL)selected {
    //: _selected = selected;
    _selected = selected;
    //: [self updateAppearance];
    [self contentContainer];
}

//: - (void)updateAppearance {
- (void)contentContainer {
    //: if (!_item) {
    if (!_item) {
        //: return;
        return;
    }

    //: if (_selected) {
    if (_selected) {
        //: _iconImageView.image = _item.selectedImage;
        _iconImageView.image = _item.selectedImage;
        //: _titleLabel.textColor = self.selectedTintColor;
        _titleLabel.textColor = self.selectedTintColor;
    //: } else {
    } else {
        //: _iconImageView.image = _item.image;
        _iconImageView.image = _item.image;
        //: _titleLabel.textColor = self.tintColor;
        _titleLabel.textColor = self.tintColor;
    }

    //: _titleLabel.text = _item.title;
    _titleLabel.text = _item.title;

    // 更新badge
    //: [self setBadgeValue:_item.badgeValue];
    [self setUp:_item.badgeValue];
}

//: @end
@end

//: @interface CustomTabBar ()
@interface CountView ()

//: @property (nonatomic, strong) NSMutableArray<CustomTabBarItemView *> *itemViews;
@property (nonatomic, strong) NSMutableArray<TabletInputView *> *itemViews;

//: @end
@end

//: @implementation CustomTabBar
@implementation CountView

//: - (instancetype)initWithFrame:(CGRect)frame {
- (instancetype)initWithFrame:(CGRect)frame {
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: [self setupUI];
        [self key];
    }
    //: return self;
    return self;
}

//: - (void)setupUI {
- (void)key {
    //: self.backgroundColor = [UIColor whiteColor];
    self.backgroundColor = [UIColor whiteColor];
    //: self.itemViews = [NSMutableArray array];
    self.itemViews = [NSMutableArray array];

    // 添加通知监听
    //: [[NSNotificationCenter defaultCenter] addObserver:self
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             //: selector:@selector(tabBarItemTapped:)
                                             selector:@selector(texts:)
                                                 //: name:@"CustomTabBarItemTapped"
                                                 name:StringFromIllGoryData(kStr_redMethodName)
                                               //: object:nil];
                                               object:nil];
}

//: - (void)dealloc {
- (void)dealloc {
    //: [[NSNotificationCenter defaultCenter] removeObserver:self];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

//: - (void)layoutSubviews {
- (void)layoutSubviews {
    //: [super layoutSubviews];
    [super layoutSubviews];

    //: if (self.itemViews.count == 0) {
    if (self.itemViews.count == 0) {
        //: return;
        return;
    }

    //: CGFloat itemWidth = self.bounds.size.width / self.itemViews.count;
    CGFloat itemWidth = self.bounds.size.width / self.itemViews.count;
    //: CGFloat itemHeight = self.bounds.size.height;
    CGFloat itemHeight = self.bounds.size.height;

    //: for (NSInteger i = 0; i < self.itemViews.count; i++) {
    for (NSInteger i = 0; i < self.itemViews.count; i++) {
        //: CustomTabBarItemView *itemView = self.itemViews[i];
        TabletInputView *itemView = self.itemViews[i];
        //: itemView.frame = CGRectMake(i * itemWidth, 0, itemWidth, itemHeight);
        itemView.frame = CGRectMake(i * itemWidth, 0, itemWidth, itemHeight);
    }
}

//: - (void)setItems:(NSArray<UITabBarItem *> *)items {
- (void)setItems:(NSArray<UITabBarItem *> *)items {
    //: _items = items;
    _items = items;

    // 清除现有的itemViews
    //: for (UIView *subview in self.itemViews) {
    for (UIView *subview in self.itemViews) {
        //: [subview removeFromSuperview];
        [subview removeFromSuperview];
    }
    //: [self.itemViews removeAllObjects];
    [self.itemViews removeAllObjects];

    // 创建新的itemViews
    //: for (UITabBarItem *item in items) {
    for (UITabBarItem *item in items) {
        //: CustomTabBarItemView *itemView = [[CustomTabBarItemView alloc] init];
        TabletInputView *itemView = [[TabletInputView alloc] init];
        //: itemView.item = item;
        itemView.item = item;
        //: if (_itemTintColor) {
        if (_itemTintColor) {
            //: itemView.tintColor = _itemTintColor;
            itemView.tintColor = _itemTintColor;
        }
        //: if (_selectedItemTintColor) {
        if (_selectedItemTintColor) {
            //: itemView.selectedTintColor = _selectedItemTintColor;
            itemView.selectedTintColor = _selectedItemTintColor;
        }
        //: [self addSubview:itemView];
        [self addSubview:itemView];
        //: [self.itemViews addObject:itemView];
        [self.itemViews addObject:itemView];
    }

    //: [self setNeedsLayout];
    [self setNeedsLayout];

    // 设置默认选中项
    //: if (self.selectedIndex < self.itemViews.count) {
    if (self.selectedIndex < self.itemViews.count) {
        //: self.itemViews[self.selectedIndex].selected = YES;
        self.itemViews[self.selectedIndex].selected = YES;
    }
}

//: - (void)setSelectedIndex:(NSInteger)selectedIndex {
- (void)setSelectedIndex:(NSInteger)selectedIndex {
    //: if (_selectedIndex == selectedIndex || selectedIndex >= self.itemViews.count) {
    if (_selectedIndex == selectedIndex || selectedIndex >= self.itemViews.count) {
        //: return;
        return;
    }

    //: if (_selectedIndex < self.itemViews.count) {
    if (_selectedIndex < self.itemViews.count) {
        //: self.itemViews[_selectedIndex].selected = NO;
        self.itemViews[_selectedIndex].selected = NO;
    }

    //: _selectedIndex = selectedIndex;
    _selectedIndex = selectedIndex;

    //: if (_selectedIndex < self.itemViews.count) {
    if (_selectedIndex < self.itemViews.count) {
        //: self.itemViews[_selectedIndex].selected = YES;
        self.itemViews[_selectedIndex].selected = YES;
    }
}

//: - (void)tabBarItemTapped:(NSNotification *)notification {
- (void)texts:(NSNotification *)notification {
    //: CustomTabBarItemView *tappedItem = notification.object;
    TabletInputView *tappedItem = notification.object;
    //: NSInteger index = [self.itemViews indexOfObject:tappedItem];
    NSInteger index = [self.itemViews indexOfObject:tappedItem];

    //: if (index != NSNotFound && index != self.selectedIndex) {
    if (index != NSNotFound && index != self.selectedIndex) {
        //: self.selectedIndex = index;
        self.selectedIndex = index;
        //: if ([self.delegate respondsToSelector:@selector(tabBar:didSelectItemAtIndex:)]) {
        if ([self.delegate respondsToSelector:@selector(send:tabOff:)]) {
            //: [self.delegate tabBar:self didSelectItemAtIndex:index];
            [self.delegate send:self tabOff:index];
        }
    }
}

//: - (void)setBadgeValue:(NSString *)badgeValue atIndex:(NSInteger)index {
- (void)scaleAcross:(NSString *)badgeValue must:(NSInteger)index {
    //: if (index < self.itemViews.count) {
    if (index < self.itemViews.count) {
        //: [self.itemViews[index] setBadgeValue:badgeValue];
        [self.itemViews[index] setUp:badgeValue];
    }
}

//: - (void)setItemTintColor:(UIColor *)itemTintColor {
- (void)setItemTintColor:(UIColor *)itemTintColor {
    //: _itemTintColor = itemTintColor;
    _itemTintColor = itemTintColor;

    //: for (CustomTabBarItemView *itemView in self.itemViews) {
    for (TabletInputView *itemView in self.itemViews) {
        //: itemView.tintColor = itemTintColor;
        itemView.tintColor = itemTintColor;
        //: [itemView updateAppearance];
        [itemView contentContainer];
    }
}

//: - (void)setSelectedItemTintColor:(UIColor *)selectedItemTintColor {
- (void)setSelectedItemTintColor:(UIColor *)selectedItemTintColor {
    //: _selectedItemTintColor = selectedItemTintColor;
    _selectedItemTintColor = selectedItemTintColor;

    //: for (CustomTabBarItemView *itemView in self.itemViews) {
    for (TabletInputView *itemView in self.itemViews) {
        //: itemView.selectedTintColor = selectedItemTintColor;
        itemView.selectedTintColor = selectedItemTintColor;
        //: [itemView updateAppearance];
        [itemView contentContainer];
    }
}

//: - (void)refreshTabBarItems {
- (void)image {
    //: for (CustomTabBarItemView *itemView in self.itemViews) {
    for (TabletInputView *itemView in self.itemViews) {
        //: [itemView updateAppearance];
        [itemView contentContainer];
    }
}

//: @end
@end

Byte * IllGoryDataToCache(Byte *data) {
    int indexExpose = data[0];
    int vaccina = data[1];
    Byte infectionTechnology = data[2];
    int creaseSay = data[3];
    if (!indexExpose) return data + creaseSay;
    for (int i = creaseSay; i < creaseSay + vaccina; i++) {
        int value = data[i] - infectionTechnology;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[creaseSay + vaccina] = 0;
    return data + creaseSay;
}

NSString *StringFromIllGoryData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)IllGoryDataToCache(data)];
}
