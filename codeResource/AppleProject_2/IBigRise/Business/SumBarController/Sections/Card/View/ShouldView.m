
#import <Foundation/Foundation.h>

NSString *StringFromScaleData(Byte *data);


//: icon_cell_red_normal
Byte kStr_successTitle[] = {22, 20, 48, 4, 153, 147, 159, 158, 143, 147, 149, 156, 156, 143, 162, 149, 148, 143, 158, 159, 162, 157, 145, 156, 214};


//: #A148FF
Byte kStr_messageShouldMarkData[] = {99, 7, 38, 10, 239, 119, 165, 227, 216, 164, 73, 103, 87, 90, 94, 108, 108, 193};


//: icon_cell_blue_normal
Byte kStr_lengthValue[] = {22, 21, 11, 13, 166, 146, 183, 238, 229, 198, 5, 223, 232, 116, 110, 122, 121, 106, 110, 112, 119, 119, 106, 109, 119, 128, 112, 106, 121, 122, 125, 120, 108, 119, 78};

// __DEBUG__
// __CLOSE_PRINT__
//
//  ShouldView.m
//  NIM
//
//  Created by chris on 15/3/11.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESColorButtonCell.h"
#import "ShouldView.h"
//: #import "UIView+NTES.h"
#import "UIView+Item.h"
//: #import "DataCommonTableData.h"
#import "DataCommonTableData.h"

//: @interface NTESColorButtonCell()
@interface ShouldView()

//: @property (nonatomic,strong) NIMCommonTableRow *rowData;
@property (nonatomic,strong) TextTap *rowData;

//: @end
@end

//: @implementation NTESColorButtonCell
@implementation ShouldView

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {
        //: self.backgroundColor = [UIColor clearColor];
        self.backgroundColor = [UIColor clearColor];
        //: _button = [[NTESColorButton alloc] initWithFrame:CGRectZero];
        _button = [[PositionButton alloc] initWithFrame:CGRectZero];
        //: _button.size = [_button sizeThatFits:CGSizeMake(self.width, 1.7976931348623157e+308)];
        _button.size = [_button sizeThatFits:CGSizeMake(self.width, 1.7976931348623157e+308)];
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
    //: ColorButtonCellStyle style = [rowData.extraInfo integerValue];
    ColorButtonCellStyle style = [rowData.extraInfo integerValue];
    //: self.button.style = style;
    self.button.style = style;
    //: [self.button removeTarget:tableView.viewController action:NULL forControlEvents:UIControlEventTouchUpInside];
    [self.button removeTarget:tableView.showInfo action:NULL forControlEvents:UIControlEventTouchUpInside];
    //: if (rowData.cellActionName.length) {
    if (rowData.cellActionName.length) {
        //: SEL action = NSSelectorFromString(rowData.cellActionName);
        SEL action = NSSelectorFromString(rowData.cellActionName);
        //: [_button addTarget:tableView.viewController action:action forControlEvents:UIControlEventTouchUpInside];
        [_button addTarget:tableView.showInfo action:action forControlEvents:UIControlEventTouchUpInside];
    }
}

//: - (UIView*)hitTest:(CGPoint)point withEvent:(UIEvent *)event{
- (UIView*)hitTest:(CGPoint)point withEvent:(UIEvent *)event{
    //: if (self.rowData.cellActionName.length) {
    if (self.rowData.cellActionName.length) {
        //: return [super hitTest:point withEvent:event];
        return [super hitTest:point withEvent:event];
    }
    //: return self;
    return self;
}

//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: _button.centerX = self.width * .5f;
    _button.centerX = self.width * .5f;
    //: _button.centerY = self.height * .5f;
    _button.centerY = self.height * .5f;
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


//: @implementation NTESColorButton : UIButton
@implementation PositionButton : UIButton

//: - (instancetype)initWithFrame:(CGRect)frame{
- (instancetype)initWithFrame:(CGRect)frame{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: [self reset];
        [self content];
    }
    //: return self;
    return self;
}

//: - (void)setStyle:(ColorButtonCellStyle)style{
- (void)setStyle:(ColorButtonCellStyle)style{
    //: _style = style;
    _style = style;
    //: [self reset];
    [self content];
}

//: - (void)reset{
- (void)content{
    //: NSString *imageNormalName = @"";
    NSString *imageNormalName = @"";
    //: switch (self.style) {
    switch (self.style) {
        //: case ColorButtonCellStyleRed:{
        case ColorButtonCellStyleRed:{
            //: imageNormalName = @"icon_cell_red_normal";
            imageNormalName = StringFromScaleData(kStr_successTitle);
            //: UIImage *imageNormal = [[UIImage imageNamed:imageNormalName] resizableImageWithCapInsets:UIEdgeInsetsMake(10, 10, 10, 10) resizingMode:UIImageResizingModeStretch];
            UIImage *imageNormal = [[UIImage imageNamed:imageNormalName] resizableImageWithCapInsets:UIEdgeInsetsMake(10, 10, 10, 10) resizingMode:UIImageResizingModeStretch];
            //: [self setBackgroundImage:imageNormal forState:UIControlStateNormal];
            [self setBackgroundImage:imageNormal forState:UIControlStateNormal];
        //: } break;
        } break;
        //: case ColorButtonCellStyleBlue:{
        case ColorButtonCellStyleBlue:{
            //: imageNormalName = @"icon_cell_blue_normal";
            imageNormalName = StringFromScaleData(kStr_lengthValue);
            //: UIImage *imageNormal = [[UIImage grayImageWithName:imageNormalName color:[UIColor colorWithHexString:@"#A148FF"]] resizableImageWithCapInsets:UIEdgeInsetsMake(10, 10, 10, 10) resizingMode:UIImageResizingModeStretch];
            UIImage *imageNormal = [[UIImage colouring:imageNormalName accumulation:[UIColor box:StringFromScaleData(kStr_messageShouldMarkData)]] resizableImageWithCapInsets:UIEdgeInsetsMake(10, 10, 10, 10) resizingMode:UIImageResizingModeStretch];
            //: [self setBackgroundImage:imageNormal forState:UIControlStateNormal];
            [self setBackgroundImage:imageNormal forState:UIControlStateNormal];
        //: } break;
        } break;
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

Byte * ScaleDataToCache(Byte *data) {
    int see = data[0];
    int printMedia = data[1];
    Byte eventSuccess = data[2];
    int lengthMedia = data[3];
    if (!see) return data + lengthMedia;
    for (int i = lengthMedia; i < lengthMedia + printMedia; i++) {
        int value = data[i] - eventSuccess;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[lengthMedia + printMedia] = 0;
    return data + lengthMedia;
}

NSString *StringFromScaleData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)ScaleDataToCache(data)];
}
