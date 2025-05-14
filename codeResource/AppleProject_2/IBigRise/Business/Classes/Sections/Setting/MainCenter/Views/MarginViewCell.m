
#import <Foundation/Foundation.h>

NSString *StringFromTapAccurateData(Byte *data);        


//: login_bg
Byte kStr_sidewalkData[] = {47, 8, 51, 8, 250, 76, 36, 61, 57, 60, 52, 54, 59, 44, 47, 52, 46};


//: 来一个摇滚表演
Byte kStr_botValue[] = {56, 21, 67, 6, 69, 53, 163, 90, 98, 161, 117, 61, 161, 117, 103, 163, 78, 68, 163, 120, 87, 165, 94, 101, 163, 121, 81, 136};


//: #333333
Byte kStr_lingData[] = {83, 7, 82, 4, 209, 225, 225, 225, 225, 225, 225, 216};


//: 中东小王子
Byte kStr_viaValue[] = {52, 15, 55, 9, 143, 66, 149, 223, 250, 173, 129, 118, 173, 129, 101, 174, 121, 88, 176, 87, 84, 174, 118, 89, 26};


//: login_logo
Byte kStr_barText[] = {33, 10, 98, 10, 12, 213, 182, 196, 220, 95, 10, 13, 5, 7, 12, 253, 10, 13, 5, 13, 102};


//: 666666
Byte kStr_shouldExpoName[] = {72, 6, 30, 5, 82, 24, 24, 24, 24, 24, 24, 48};

// __DEBUG__
// __CLOSE_PRINT__
//
//  MarginViewCell.m
//  NIM
//
//  Created by Yan Wang on 2024/6/26.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESVideolistCollectionViewCell.h"
#import "MarginViewCell.h"
//: #import "UIView+NTES.h"
#import "UIView+Item.h"

//: @implementation NTESVideolistCollectionViewCell
@implementation MarginViewCell


//: - (instancetype)initWithFrame:(CGRect)frame
- (instancetype)initWithFrame:(CGRect)frame
{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: [self setUp];
        [self nameUp];
    }
    //: return self;
    return self;
}

//: - (void)setUp
- (void)nameUp
{
    //: CGFloat spacing = 15;
    CGFloat spacing = 15;//行、列 间距
    //: int totalloc = 2;
    int totalloc = 2;//列数
    //: CGFloat appvieww = ([[UIScreen mainScreen] bounds].size.width - spacing*3)/totalloc;
    CGFloat appvieww = ([[UIScreen mainScreen] bounds].size.width - spacing*3)/totalloc;

    //: _picImg = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, appvieww, appvieww*1.3)];
    _picImg = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, appvieww, appvieww*1.3)];
    //: _picImg.image = [UIImage imageNamed:@"login_bg"];
    _picImg.image = [UIImage imageNamed:StringFromTapAccurateData(kStr_sidewalkData)];
    //: [self.contentView addSubview:_picImg];
    [self.contentView addSubview:_picImg];

    //: _labtitle = [[UILabel alloc]initWithFrame:CGRectMake(0, _picImg.bottom+12, appvieww, 15)];
    _labtitle = [[UILabel alloc]initWithFrame:CGRectMake(0, _picImg.bottom+12, appvieww, 15)];
    //: _labtitle.font = [UIFont systemFontOfSize:12.f];
    _labtitle.font = [UIFont systemFontOfSize:12.f];
    //: _labtitle.textColor = [UIColor colorWithHexString:@"#333333"];
    _labtitle.textColor = [UIColor box:StringFromTapAccurateData(kStr_lingData)];
    //: _labtitle.text = @"来一个摇滚表演";
    _labtitle.text = StringFromTapAccurateData(kStr_botValue);
    //: [self.contentView addSubview:_labtitle];
    [self.contentView addSubview:_labtitle];

    //: _headImg = [[UIImageView alloc]initWithFrame:CGRectMake(0, _labtitle.bottom+5, 16, 16)];
    _headImg = [[UIImageView alloc]initWithFrame:CGRectMake(0, _labtitle.bottom+5, 16, 16)];
    //: _headImg.image = [UIImage imageNamed:@"login_logo"];
    _headImg.image = [UIImage imageNamed:StringFromTapAccurateData(kStr_barText)];
    //: [self.contentView addSubview:_headImg];
    [self.contentView addSubview:_headImg];

    //: _labname = [[UILabel alloc]initWithFrame:CGRectMake(_headImg.right+5, _labtitle.bottom+5, appvieww, 16)];
    _labname = [[UILabel alloc]initWithFrame:CGRectMake(_headImg.right+5, _labtitle.bottom+5, appvieww, 16)];
    //: _labname.font = [UIFont systemFontOfSize:11.f];
    _labname.font = [UIFont systemFontOfSize:11.f];
    //: _labname.textColor = [UIColor colorWithHexString:@"666666"];
    _labname.textColor = [UIColor box:StringFromTapAccurateData(kStr_shouldExpoName)];
    //: _labname.text = @"中东小王子";
    _labname.text = StringFromTapAccurateData(kStr_viaValue);
    //: [self.contentView addSubview:_labname];
    [self.contentView addSubview:_labname];

}

//: @end
@end

Byte * TapAccurateDataToCache(Byte *data) {
    int cruise = data[0];
    int carveTitle = data[1];
    Byte stain = data[2];
    int dominating = data[3];
    if (!cruise) return data + dominating;
    for (int i = dominating; i < dominating + carveTitle; i++) {
        int value = data[i] + stain;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[dominating + carveTitle] = 0;
    return data + dominating;
}

NSString *StringFromTapAccurateData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)TapAccurateDataToCache(data)];
}
