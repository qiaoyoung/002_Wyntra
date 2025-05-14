
#import <Foundation/Foundation.h>

NSString *StringFromFingerData(Byte *data);        


//: lang
Byte kStr_dominantName[] = {18, 4, 1, 6, 164, 15, 107, 96, 109, 102, 31};


//: F9F9F9
Byte kStr_inventTitleContent[] = {16, 6, 59, 8, 93, 24, 194, 45, 11, 254, 11, 254, 11, 254, 110};

// __DEBUG__
// __CLOSE_PRINT__
//
//  MaxViewCell.m
//  NIM
//
//  Created by Yan Wang on 2024/6/29.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESLanguageTableViewCell.h"
#import "MaxViewCell.h"

//: @implementation NTESLanguageTableViewCell
@implementation MaxViewCell

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {

    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if ([self.reuseIdentifier isEqualToString:@"lang"]) {
    if ([self.reuseIdentifier isEqualToString:StringFromFingerData(kStr_dominantName)]) {

        //: [self.contentView addSubview:self.labTitle];
        [self.contentView addSubview:self.labTitle];
        //: self.labTitle.frame = CGRectMake(15, 0, [[UIScreen mainScreen] bounds].size.width-60, 44);
        self.labTitle.frame = CGRectMake(15, 0, [[UIScreen mainScreen] bounds].size.width-60, 44);
        //: [self.contentView addSubview:self.lineView];
        [self.contentView addSubview:self.lineView];
        //: self.lineView.frame = CGRectMake(15, 43.5, [[UIScreen mainScreen] bounds].size.width-60, 0.5);
        self.lineView.frame = CGRectMake(15, 43.5, [[UIScreen mainScreen] bounds].size.width-60, 0.5);
        //: self.layer.cornerRadius = 12;
        self.layer.cornerRadius = 12;
    }
    //: return self;
    return self;
}


//: - (UILabel *)labTitle {
- (UILabel *)labTitle {
    //: if (!_labTitle) {
    if (!_labTitle) {
        //: _labTitle = [[UILabel alloc] init];
        _labTitle = [[UILabel alloc] init];
        //: _labTitle.font = [UIFont systemFontOfSize:16.f];
        _labTitle.font = [UIFont systemFontOfSize:16.f];
        //: _labTitle.textColor = [UIColor blackColor];
        _labTitle.textColor = [UIColor blackColor];
        //: _labTitle.textAlignment = NSTextAlignmentLeft;
        _labTitle.textAlignment = NSTextAlignmentLeft;
    }
    //: return _labTitle;
    return _labTitle;
}

//: - (UIView *)lineView {
- (UIView *)lineView {
    //: if (!_lineView) {
    if (!_lineView) {
        //: _lineView = [[UIView alloc] init];
        _lineView = [[UIView alloc] init];
        //: _lineView.backgroundColor = [UIColor colorWithHexString:@"F9F9F9"];
        _lineView.backgroundColor = [UIColor box:StringFromFingerData(kStr_inventTitleContent)];
    }
    //: return _lineView;
    return _lineView;
}

//: @end
@end

Byte * FingerDataToCache(Byte *data) {
    int inform = data[0];
    int programTapFalse = data[1];
    Byte hopefulImprove = data[2];
    int furniture = data[3];
    if (!inform) return data + furniture;
    for (int i = furniture; i < furniture + programTapFalse; i++) {
        int value = data[i] + hopefulImprove;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[furniture + programTapFalse] = 0;
    return data + furniture;
}

NSString *StringFromFingerData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)FingerDataToCache(data)];
}
