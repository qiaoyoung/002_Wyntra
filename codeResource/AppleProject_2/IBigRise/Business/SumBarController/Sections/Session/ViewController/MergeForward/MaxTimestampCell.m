
#import <Foundation/Foundation.h>
typedef struct {
    Byte pollex;
    Byte *totalOof;
    unsigned int elderlyCruise;
    bool legallyLit;
	int magnituderoduce;
	int currentKeyText;
} PiracyData;

NSString *StringFromPiracyData(PiracyData *data);


//: yyyy-MM-dd
PiracyData kStr_piracyUseData = (PiracyData){241, (Byte []){136, 136, 136, 136, 220, 188, 188, 220, 149, 149, 95}, 10, false, 140, 129};

// __DEBUG__
// __CLOSE_PRINT__
//
//  MaxTimestampCell.m
//  NIM
//
//  Created by zhanggenning on 2019/10/18.
//  Copyright © 2019 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESTimestampCell.h"
#import "MaxTimestampCell.h"
//: #import "UIView+NTES.h"
#import "UIView+Item.h"
//: #import "ZZZTimestampModel.h"
#import "GreenTingLanguage.h"

//: @interface NTESTimestampCell ()
@interface MaxTimestampCell ()

//: @property (nonatomic, strong) UIView *lineLeft;
@property (nonatomic, strong) UIView *lineLeft;
//: @property (nonatomic, strong) UIView *lineRight;
@property (nonatomic, strong) UIView *lineRight;

//: @end
@end

//: @implementation NTESTimestampCell
@implementation MaxTimestampCell

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    //: if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        //: [self.timeBGView removeFromSuperview];
        [self.timeBGView removeFromSuperview];
        //: self.timeLabel.textColor = [AppleProjectKit sharedKit].config.nickColor;
        self.timeLabel.textColor = [On along].config.nickColor;
        //: self.backgroundColor = [UIColor colorWithRed:((float)((0xfefefe & 0xFF0000) >> 16))/255.0 green:((float)((0xfefefe & 0x00FF00) >> 8))/255.0 blue:((float)(0xfefefe & 0x0000FF))/255.0 alpha:1.0];
        self.backgroundColor = [UIColor colorWithRed:((float)((0xfefefe & 0xFF0000) >> 16))/255.0 green:((float)((0xfefefe & 0x00FF00) >> 8))/255.0 blue:((float)(0xfefefe & 0x0000FF))/255.0 alpha:1.0];
        //: [self.contentView addSubview:self.lineLeft];
        [self.contentView addSubview:self.lineLeft];
        //: [self.contentView addSubview:self.lineRight];
        [self.contentView addSubview:self.lineRight];
    }
    //: return self;
    return self;
}

//: - (void)layoutSubviews {
- (void)layoutSubviews {
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: CGFloat padding = 8.0;
    CGFloat padding = 8.0;
    //: self.timeLabel.centerY = self.height/2;
    self.timeLabel.centerY = self.height/2;
    //: _lineLeft.frame = CGRectMake(padding, 0.0, self.timeLabel.left - padding*2, 1.0);
    _lineLeft.frame = CGRectMake(padding, 0.0, self.timeLabel.left - padding*2, 1.0);
    //: _lineLeft.centerY = self.timeLabel.centerY;
    _lineLeft.centerY = self.timeLabel.centerY;
    //: _lineRight.frame = CGRectMake(self.timeLabel.right + padding, 0, self.width - self.timeLabel.right - 2*padding, 1.0);
    _lineRight.frame = CGRectMake(self.timeLabel.right + padding, 0, self.width - self.timeLabel.right - 2*padding, 1.0);
    //: _lineRight.centerY = self.timeLabel.centerY;
    _lineRight.centerY = self.timeLabel.centerY;
}

//: - (void)refreshData:(ZZZTimestampModel *)data {
- (void)beginValueData:(GreenTingLanguage *)data {
    //: if ([data isKindOfClass:[ZZZTimestampModel class]]) {
    if ([data isKindOfClass:[GreenTingLanguage class]]) {
        //: self.timeLabel.text = [self timeFormatString:data.messageTime];
        self.timeLabel.text = [self can:data.messageTime];
    }
}

//: - (NSString *)timeFormatString:(NSTimeInterval)timestamp {
- (NSString *)can:(NSTimeInterval)timestamp {
    //: NSDate *date = [NSDate dateWithTimeIntervalSince1970:timestamp];
    NSDate *date = [NSDate dateWithTimeIntervalSince1970:timestamp];
    //: NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    //: [formatter setDateFormat:@"yyyy-MM-dd"];
    [formatter setDateFormat:StringFromPiracyData(&kStr_piracyUseData)];
    //: return [formatter stringFromDate: date];
    return [formatter stringFromDate: date];
}

//: #pragma mark - Getter
#pragma mark - Getter
//: - (UIView *)lineLeft {
- (UIView *)lineLeft {
    //: if (!_lineLeft) {
    if (!_lineLeft) {
        //: _lineLeft = [self setupLine];
        _lineLeft = [self domain];
    }
    //: return _lineLeft;
    return _lineLeft;
}

//: - (UIView *)lineRight {
- (UIView *)lineRight {
    //: if (!_lineRight) {
    if (!_lineRight) {
        //: _lineRight = [self setupLine];
        _lineRight = [self domain];
    }
    //: return _lineRight;
    return _lineRight;
}

//: - (UIView *)setupLine {
- (UIView *)domain {
    //: UIView *ret = [[UIView alloc] init];
    UIView *ret = [[UIView alloc] init];
    //: ret.backgroundColor = [UIColor systemGroupedBackgroundColor];
    ret.backgroundColor = [UIColor systemGroupedBackgroundColor];
    //: return ret;
    return ret;
}

//: @end
@end

Byte *PiracyDataToByte(PiracyData *data) {
    if (data->legallyLit) return data->totalOof;
    for (int i = 0; i < data->elderlyCruise; i++) {
        data->totalOof[i] ^= data->pollex;
    }
    data->totalOof[data->elderlyCruise] = 0;
    data->legallyLit = true;
	if (data->elderlyCruise >= 2) {
		data->magnituderoduce = data->totalOof[0];
		data->currentKeyText = data->totalOof[1];
	}
    return data->totalOof;
}

NSString *StringFromPiracyData(PiracyData *data) {
    return [NSString stringWithUTF8String:(char *)PiracyDataToByte(data)];
}
