// __DEBUG__
// __CLOSE_PRINT__
//
//  NIMListCollectionCell.m
// On
//
//  Created by He on 2020/4/13.
//  Copyright © 2020 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZZZQuickCommentCell.h"
#import "ObserveViewCell.h"
//: #import "ZZZKitQuickCommentUtil.h"
#import "SizeUtil.h"
//: #import "M80AttributedLabel+AppleProjectKit.h"
#import "GreenNameView+On.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "AppleProjectKit.h"
#import "On.h"
//: #import "UIColor+AppleProjectKit.h"
#import "UIColor+On.h"

//: @interface ZZZQuickCommentCell ()
@interface ObserveViewCell ()

//: @property (nonatomic, strong) M80AttributedLabel *textLabel;
@property (nonatomic, strong) GreenNameView *textLabel;
//: @property (nonatomic, strong) UIView *divider;
@property (nonatomic, strong) UIView *divider;

//: @end
@end

//: @implementation ZZZQuickCommentCell
@implementation ObserveViewCell


//: - (instancetype)initWithFrame:(CGRect)frame
- (instancetype)initWithFrame:(CGRect)frame
{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self)
    if (self)
    {
        //: _textLabel = [ZZZKitQuickCommentUtil newCommentLabel];
        _textLabel = [SizeUtil valueDenominate];
        //: [self.contentView addSubview:_textLabel];
        [self.contentView addSubview:_textLabel];
        //: self.layer.cornerRadius = 12.0;
        self.layer.cornerRadius = 12.0;
        //: self.backgroundColor = [UIColor colorWithWhite:0.7 alpha:0.3];
        self.backgroundColor = [UIColor colorWithWhite:0.7 alpha:0.3];

        //: _divider = [[UIView alloc] initWithFrame:CGRectZero];
        _divider = [[UIView alloc] initWithFrame:CGRectZero];
        //: _divider.backgroundColor = UIColor.lightGrayColor;
        _divider.backgroundColor = UIColor.lightGrayColor;
        //: [self.contentView addSubview:_divider];
        [self.contentView addSubview:_divider];

    }
    //: return self;
    return self;
}

//: - (void)refreshWithData:(NSArray *)comments model:(ZZZMessageModel *)data
- (void)up:(NSArray *)comments big:(CollectionModel *)data
{
    //: self.textLabel.textColor = data.shouldShowLeft ? [UIColor colorWithHex:0x000000 alpha:1] : [UIColor colorWithHex:0xFFFFFF alpha:1];
    self.textLabel.textColor = data.shouldShowLeft ? [UIColor ditheredColour:0x000000 colorMessageAlpha:1] : [UIColor ditheredColour:0xFFFFFF colorMessageAlpha:1];
    //: [self.textLabel nim_setText:[ZZZKitQuickCommentUtil commentsContent:comments]];
    [self.textLabel sourceSet:[SizeUtil outsideComments:comments]];
}

//: - (void)layoutSubviews
- (void)layoutSubviews
{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: self.textLabel.nim_width = self.nim_width - NIMKitCommentUtilCellContentPadding * 2;
    self.textLabel.nim_width = self.nim_width - kConst_handleData * 2;
    //: self.textLabel.nim_height = self.textLabel.intrinsicContentSize.height;
    self.textLabel.nim_height = self.textLabel.intrinsicContentSize.height;
    //: self.textLabel.nim_centerY = self.nim_height * .5f;
    self.textLabel.nim_centerY = self.nim_height * .5f;
    //: self.textLabel.nim_left = NIMKitCommentUtilCellPadding;
    self.textLabel.nim_left = kConst_authorityText;

    //: self.divider.nim_width = 0.5;
    self.divider.nim_width = 0.5;
    //: self.divider.nim_height = self.contentView.nim_height - 8;
    self.divider.nim_height = self.contentView.nim_height - 8;
    //: self.divider.nim_centerY = self.contentView.nim_height * 0.5;
    self.divider.nim_centerY = self.contentView.nim_height * 0.5;
    //: self.divider.nim_left = 22;
    self.divider.nim_left = 22;
}

//: @end
@end