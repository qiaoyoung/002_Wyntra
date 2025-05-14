
#import <Foundation/Foundation.h>

NSString *StringFromGageMysteryData(Byte *data);        


//: icon_cell_red_normal
Byte kStr_oughtValue[] = {79, 20, 24, 6, 118, 118, 81, 75, 87, 86, 71, 75, 77, 84, 84, 71, 90, 77, 76, 71, 86, 87, 90, 85, 73, 84, 120};


//: #A148FF
Byte kStr_minderPerformValue[] = {75, 7, 80, 10, 157, 26, 9, 83, 17, 132, 211, 241, 225, 228, 232, 246, 246, 90};


//: icon_cell_blue_normal
Byte kStr_teachData[] = {21, 21, 9, 8, 66, 197, 153, 124, 96, 90, 102, 101, 86, 90, 92, 99, 99, 86, 89, 99, 108, 92, 86, 101, 102, 105, 100, 88, 99, 67};

// __DEBUG__
// __CLOSE_PRINT__
//
//  WithViewCell.m
//  NIM
//
//  Created by chris on 15/3/11.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZZZKitColorButtonCell.h"
#import "WithViewCell.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "DataCommonTableData.h"
#import "DataCommonTableData.h"
//: #import "UIImage+AppleProjectKit.h"
#import "UIImage+On.h"

//: @interface ZZZKitColorButtonCell()
@interface WithViewCell()

//: @property (nonatomic,strong) NIMCommonTableRow *rowData;
@property (nonatomic,strong) TextTap *rowData;

//: @end
@end

//: @implementation ZZZKitColorButtonCell
@implementation WithViewCell

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {
        //: self.backgroundColor = [UIColor clearColor];
        self.backgroundColor = [UIColor clearColor];
        //: _button = [[NIMKitColorButton alloc] initWithFrame:CGRectZero];
        _button = [[SuggestButton alloc] initWithFrame:CGRectZero];
        //: _button.nim_size = [_button sizeThatFits:CGSizeMake(self.nim_width, 1.7976931348623157e+308)];
        _button.nim_size = [_button sizeThatFits:CGSizeMake(self.nim_width, 1.7976931348623157e+308)];
        //: _button.autoresizingMask = UIViewAutoresizingFlexibleWidth;
        _button.autoresizingMask = UIViewAutoresizingFlexibleWidth;
        //: [self.contentView addSubview:_button];
        [self.contentView addSubview:_button];
    }
    //: return self;
    return self;
}

//: - (void)refreshData:(NIMCommonTableRow *)rowData tableView:(UITableView *)tableView{
- (void)input:(TextTap *)rowData metadata:(UITableView *)tableView{
    //: self.rowData = rowData;
    self.rowData = rowData;
    //: [self.button setTitle:rowData.title forState:UIControlStateNormal];
    [self.button setTitle:rowData.title forState:UIControlStateNormal];
    //: ZZZKitColorButtonCellStyle style = [rowData.extraInfo integerValue];
    ZZZKitColorButtonCellStyle style = [rowData.extraInfo integerValue];
    //: self.button.style = style;
    self.button.style = style;
    //: [self.button removeTarget:tableView.nim_viewController action:NULL forControlEvents:UIControlEventTouchUpInside];
    [self.button removeTarget:tableView.towardSend action:NULL forControlEvents:UIControlEventTouchUpInside];
    //: if (rowData.cellActionName.length) {
    if (rowData.cellActionName.length) {
        //: SEL action = NSSelectorFromString(rowData.cellActionName);
        SEL action = NSSelectorFromString(rowData.cellActionName);
        //: [_button addTarget:tableView.nim_viewController action:action forControlEvents:UIControlEventTouchUpInside];
        [_button addTarget:tableView.towardSend action:action forControlEvents:UIControlEventTouchUpInside];
    }
}

//: - (UIView*)hitTest:(CGPoint)point withEvent:(UIEvent *)event{
- (UIView*)hitTest:(CGPoint)point withEvent:(UIEvent *)event{
    //: CGRect buttonRect = self.button.frame;
    CGRect buttonRect = self.button.frame;
    //: if(CGRectContainsPoint(buttonRect, point)){
    if(CGRectContainsPoint(buttonRect, point)){
        //: return self;
        return self;
    }
    //: return [super hitTest:point withEvent:event];
    return [super hitTest:point withEvent:event];
}


//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: _button.nim_centerX = self.nim_width * .5f;
    _button.nim_centerX = self.nim_width * .5f;
    //: _button.nim_centerY = self.nim_height * .5f;
    _button.nim_centerY = self.nim_height * .5f;
}


//: - (void)setSelected:(BOOL)selected animated:(BOOL)animated{
- (void)setSelected:(BOOL)selected animated:(BOOL)animated{
    //: [_button setSelected:selected];
    [_button setSelected:selected];
}

//: - (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated{
- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated{
    //: [_button setHighlighted:highlighted];
    [_button setHighlighted:highlighted];
}

//: @end
@end


//: @implementation NIMKitColorButton : UIButton
@implementation SuggestButton : UIButton

//: - (instancetype)initWithFrame:(CGRect)frame{
- (instancetype)initWithFrame:(CGRect)frame{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: [self reset];
        [self lipogram];
    }
    //: return self;
    return self;
}

//: - (void)setStyle:(ZZZKitColorButtonCellStyle)style{
- (void)setStyle:(ZZZKitColorButtonCellStyle)style{
    //: _style = style;
    _style = style;
    //: [self reset];
    [self lipogram];
}

//: - (void)reset{
- (void)lipogram{
    //: NSString *imageNormalName = @"";
    NSString *imageNormalName = @"";
    //: switch (self.style) {
    switch (self.style) {
        //: case ZZZKitColorButtonCellStyleRed:{
        case ZZZKitColorButtonCellStyleRed:{
            //: imageNormalName = @"icon_cell_red_normal";
            imageNormalName = StringFromGageMysteryData(kStr_oughtValue);
            //: UIImage *imageNormal = [[UIImage imageNamed:imageNormalName] resizableImageWithCapInsets:UIEdgeInsetsMake(10, 10, 10, 10) resizingMode:UIImageResizingModeStretch];
            UIImage *imageNormal = [[UIImage imageNamed:imageNormalName] resizableImageWithCapInsets:UIEdgeInsetsMake(10, 10, 10, 10) resizingMode:UIImageResizingModeStretch];
            //: [self setBackgroundImage:imageNormal forState:UIControlStateNormal];
            [self setBackgroundImage:imageNormal forState:UIControlStateNormal];
        }
            //: break;
            break;
        //: case ZZZKitColorButtonCellStyleBlue:
        case ZZZKitColorButtonCellStyleBlue:
        {
            //: imageNormalName = @"icon_cell_blue_normal";
            imageNormalName = StringFromGageMysteryData(kStr_teachData);
            //: UIImage *imageNormal = [[UIImage grayImageWithName:imageNormalName color:[UIColor colorWithHexString:@"#A148FF"]] resizableImageWithCapInsets:UIEdgeInsetsMake(10, 10, 10, 10) resizingMode:UIImageResizingModeStretch];
            UIImage *imageNormal = [[UIImage colouring:imageNormalName accumulation:[UIColor box:StringFromGageMysteryData(kStr_minderPerformValue)]] resizableImageWithCapInsets:UIEdgeInsetsMake(10, 10, 10, 10) resizingMode:UIImageResizingModeStretch];
            //: [self setBackgroundImage:imageNormal forState:UIControlStateNormal];
            [self setBackgroundImage:imageNormal forState:UIControlStateNormal];
        }
            //: break;
            break;
        //: default:
        default:
            //: break;
            break;
    }

}

//: - (CGSize)sizeThatFits:(CGSize)size{
- (CGSize)sizeThatFits:(CGSize)size{
    //: return CGSizeMake(size.width - 20, 45);
    return CGSizeMake(size.width - 20, 45);
}

//: @end
@end

Byte * GageMysteryDataToCache(Byte *data) {
    int countentionDance = data[0];
    int heritage = data[1];
    Byte mementoCourtroom = data[2];
    int equusCaballus = data[3];
    if (!countentionDance) return data + equusCaballus;
    for (int i = equusCaballus; i < equusCaballus + heritage; i++) {
        int value = data[i] + mementoCourtroom;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[equusCaballus + heritage] = 0;
    return data + equusCaballus;
}

NSString *StringFromGageMysteryData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)GageMysteryDataToCache(data)];
}
