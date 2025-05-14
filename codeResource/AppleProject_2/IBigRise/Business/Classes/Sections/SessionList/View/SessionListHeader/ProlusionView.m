
#import <Foundation/Foundation.h>

NSString *StringFromShootMediaData(Byte *data);


//: #FF483D
Byte kStr_successMessageValue[] = {64, 7, 50, 9, 6, 70, 59, 222, 225, 85, 120, 120, 102, 106, 101, 118, 26};


//: ic-waring
Byte kStr_byCircleValue[] = {40, 9, 74, 12, 115, 203, 153, 70, 30, 45, 143, 219, 179, 173, 119, 193, 171, 188, 179, 184, 177, 120};

// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESNetStatusHeaderView.m
//  NIM
//
//  Created by chris on 15/7/22.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESTextHeaderView.h"
#import "ProlusionView.h"
//: #import "UIView+NTES.h"
#import "UIView+Item.h"

//: @implementation NTESTextHeaderView
@implementation ProlusionView

//: - (instancetype) initWithFrame:(CGRect)frame{
- (instancetype) initWithFrame:(CGRect)frame{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: self.autoresizingMask = UIViewAutoresizingFlexibleWidth;
        self.autoresizingMask = UIViewAutoresizingFlexibleWidth;
        //: _label = [[UILabel alloc] initWithFrame:CGRectZero];
        _label = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _label.textColor = [UIColor colorWithHexString:@"#FF483D"];
        _label.textColor = [UIColor box:StringFromShootMediaData(kStr_successMessageValue)];
        //: _label.font = [UIFont systemFontOfSize:12.f];
        _label.font = [UIFont systemFontOfSize:12.f];
        //: [self addSubview:_label];
        [self addSubview:_label];

        //: _img = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"ic-waring"]];
        _img = [[UIImageView alloc]initWithImage:[UIImage imageNamed:StringFromShootMediaData(kStr_byCircleValue)]];
        //: [self addSubview:_img];
        [self addSubview:_img];
    }
    //: return self;
    return self;
}

//: - (void)setContentText:(NSString *)content{
- (void)setSize:(NSString *)content{
    //: self.label.text = content;
    self.label.text = content;
}


//: - (CGSize)sizeThatFits:(CGSize)size{
- (CGSize)sizeThatFits:(CGSize)size{
    //: [self.label sizeToFit];
    [self.label sizeToFit];
    //: CGSize contentSize = self.label.frame.size;
    CGSize contentSize = self.label.frame.size;
    //: return CGSizeMake(self.width, contentSize.height + 10 * 2);
    return CGSizeMake(self.width, contentSize.height + 10 * 2);
}

//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: self.label.centerX = self.width * .5f;
    self.label.centerX = self.width * .5f;
    //: self.label.centerY = self.height * .5f;
    self.label.centerY = self.height * .5f;
    //: self.img.centerY = self.height * .5f;
    self.img.centerY = self.height * .5f;
    //: self.img.right = self.label.left -10;
    self.img.right = self.label.left -10;
}

//: @end
@end

Byte * ShootMediaDataToCache(Byte *data) {
    int soundAdjustment = data[0];
    int tapView = data[1];
    Byte heather = data[2];
    int shootCurrentMessage = data[3];
    if (!soundAdjustment) return data + shootCurrentMessage;
    for (int i = shootCurrentMessage; i < shootCurrentMessage + tapView; i++) {
        int value = data[i] - heather;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[shootCurrentMessage + tapView] = 0;
    return data + shootCurrentMessage;
}

NSString *StringFromShootMediaData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)ShootMediaDataToCache(data)];
}
