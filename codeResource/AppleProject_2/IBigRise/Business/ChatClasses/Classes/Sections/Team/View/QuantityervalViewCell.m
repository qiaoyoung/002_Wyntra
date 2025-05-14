
#import <Foundation/Foundation.h>

NSString *StringFromSaltData(Byte *data);        


//: #ECECEC
Byte kStr_universeValue[] = {87, 7, 28, 7, 94, 101, 80, 7, 41, 39, 41, 39, 41, 39, 205};


//: #34AECA
Byte kStr_sportPercentageData[] = {74, 7, 39, 13, 237, 153, 52, 217, 35, 239, 18, 6, 2, 252, 12, 13, 26, 30, 28, 26, 251};


//: icon_me_arrow
Byte kStr_viseInventTitle[] = {53, 13, 58, 6, 210, 198, 47, 41, 53, 52, 37, 51, 43, 37, 39, 56, 56, 53, 61, 150};

// __DEBUG__
// __CLOSE_PRINT__
//
//  QuantityervalViewCell.m
//  NIM
//
//  Created by Yan Wang on 2024/7/30.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZMONGroupEditTableViewCell.h"
#import "QuantityervalViewCell.h"

//: @implementation ZMONGroupEditTableViewCell
@implementation QuantityervalViewCell

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {
        //: self.backgroundColor = [UIColor clearColor];
        self.backgroundColor = [UIColor clearColor];

        //: [self initSubviews];
        [self initButton];
    }
    //: return self;
    return self;
}

//: - (void)initSubviews {
- (void)initButton {
    //: [self.contentView addSubview:self.iconImageView];
    [self.contentView addSubview:self.iconImageView];
    //: [self.contentView addSubview:self.titleLabel];
    [self.contentView addSubview:self.titleLabel];
    //: [self.contentView addSubview:self.arrowsImageView];
    [self.contentView addSubview:self.arrowsImageView];
    //: [self.contentView addSubview:self.contentLabel];
    [self.contentView addSubview:self.contentLabel];
    //: [self.contentView addSubview:self.lineView];
    [self.contentView addSubview:self.lineView];

    //: self.iconImageView.frame = CGRectMake(15, 12, 24, 24);
    self.iconImageView.frame = CGRectMake(15, 12, 24, 24);
    //: self.arrowsImageView.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width - 30 - 15 - 12, 29, 12, 12);
    self.arrowsImageView.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width - 30 - 15 - 12, 29, 12, 12);
    //: self.titleLabel.frame = CGRectMake(self.iconImageView.right+16, 12, 250, 21);
    self.titleLabel.frame = CGRectMake(self.iconImageView.right+16, 12, 250, 21);
    //: self.contentLabel.frame = CGRectMake(self.titleLabel.left+5, self.titleLabel.bottom+5, [[UIScreen mainScreen] bounds].size.width-80, 15);
    self.contentLabel.frame = CGRectMake(self.titleLabel.left+5, self.titleLabel.bottom+5, [[UIScreen mainScreen] bounds].size.width-80, 15);
    //: self.lineView.frame = CGRectMake(self.contentLabel.left, 64.5, [[UIScreen mainScreen] bounds].size.width-80, 0.5);
    self.lineView.frame = CGRectMake(self.contentLabel.left, 64.5, [[UIScreen mainScreen] bounds].size.width-80, 0.5);


}

//: - (UIView *)lineView
- (UIView *)lineView
{
    //: if(!_lineView){
    if(!_lineView){
        //: _lineView = [[UIView alloc]init];
        _lineView = [[UIView alloc]init];
        //: _lineView.backgroundColor = [UIColor colorWithHexString:@"#ECECEC"];
        _lineView.backgroundColor = [UIColor box:StringFromSaltData(kStr_universeValue)];
    }
    //: return _lineView;
    return _lineView;
}

//: - (UIImageView *)iconImageView {
- (UIImageView *)iconImageView {
    //: if (!_iconImageView) {
    if (!_iconImageView) {
        //: _iconImageView = [[UIImageView alloc] init];
        _iconImageView = [[UIImageView alloc] init];
        //: _iconImageView.contentMode = UIViewContentModeScaleToFill;
        _iconImageView.contentMode = UIViewContentModeScaleToFill;
    }
    //: return _iconImageView;
    return _iconImageView;
}

//: - (UIImageView *)arrowsImageView {
- (UIImageView *)arrowsImageView {
    //: if (!_arrowsImageView) {
    if (!_arrowsImageView) {
        //: _arrowsImageView = [[UIImageView alloc] init];
        _arrowsImageView = [[UIImageView alloc] init];
        //: _arrowsImageView.contentMode = UIViewContentModeScaleToFill;
        _arrowsImageView.contentMode = UIViewContentModeScaleToFill;
        //: _arrowsImageView.image = [UIImage imageNamed:@"icon_me_arrow"];
        _arrowsImageView.image = [UIImage imageNamed:StringFromSaltData(kStr_viseInventTitle)];
    }
    //: return _arrowsImageView;
    return _arrowsImageView;
}

//: - (UILabel *)titleLabel {
- (UILabel *)titleLabel {
    //: if (!_titleLabel) {
    if (!_titleLabel) {
        //: _titleLabel = [[UILabel alloc] init];
        _titleLabel = [[UILabel alloc] init];
        //: _titleLabel.font = [UIFont boldSystemFontOfSize:14.f];
        _titleLabel.font = [UIFont boldSystemFontOfSize:14.f];
        //: _titleLabel.textColor = [UIColor blackColor];
        _titleLabel.textColor = [UIColor blackColor];
        //: _titleLabel.textAlignment = NSTextAlignmentLeft;
        _titleLabel.textAlignment = NSTextAlignmentLeft;
    }
    //: return _titleLabel;
    return _titleLabel;
}

//: - (UILabel *)contentLabel {
- (UILabel *)contentLabel {
    //: if (!_contentLabel) {
    if (!_contentLabel) {
        //: _contentLabel = [[UILabel alloc] init];
        _contentLabel = [[UILabel alloc] init];
        //: _contentLabel.font = [UIFont systemFontOfSize:12.f];
        _contentLabel.font = [UIFont systemFontOfSize:12.f];
        //: _contentLabel.textColor = [UIColor colorWithHexString:@"#34AECA"];
        _contentLabel.textColor = [UIColor box:StringFromSaltData(kStr_sportPercentageData)];
        //: _contentLabel.textAlignment = NSTextAlignmentLeft;
        _contentLabel.textAlignment = NSTextAlignmentLeft;
        //: _contentLabel.numberOfLines = 1;
        _contentLabel.numberOfLines = 1;
        //: _contentLabel.lineBreakMode = NSLineBreakByTruncatingTail;
        _contentLabel.lineBreakMode = NSLineBreakByTruncatingTail;
    }
    //: return _contentLabel;
    return _contentLabel;
}



//: @end
@end

Byte * SaltDataToCache(Byte *data) {
    int golfPantPercentage = data[0];
    int architectureReach = data[1];
    Byte bottleBill = data[2];
    int rape = data[3];
    if (!golfPantPercentage) return data + rape;
    for (int i = rape; i < rape + architectureReach; i++) {
        int value = data[i] + bottleBill;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[rape + architectureReach] = 0;
    return data + rape;
}

NSString *StringFromSaltData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)SaltDataToCache(data)];
}
