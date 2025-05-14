
#import <Foundation/Foundation.h>

NSString *StringFromSoutheastData(Byte *data);


//: amount
Byte kStr_carveShrinkFibValue[] = {10, 6, 91, 7, 144, 22, 137, 188, 200, 202, 208, 201, 207, 108};


//: nickname
Byte kStr_tapName[] = {61, 8, 1, 11, 192, 101, 247, 3, 13, 202, 132, 111, 106, 100, 108, 111, 98, 110, 102, 228};


//: user_redpackage_prise
Byte kStr_shrinkByName[] = {92, 21, 26, 9, 128, 234, 170, 221, 47, 143, 141, 127, 140, 121, 140, 127, 126, 138, 123, 125, 133, 123, 129, 127, 121, 138, 140, 131, 141, 127, 80};


//: #F1F1F1
Byte kStr_messageItemAwayValue[] = {12, 7, 39, 6, 146, 90, 74, 109, 88, 109, 88, 109, 88, 113};


//: user_avatar
Byte kStr_userWithData[] = {25, 11, 52, 7, 252, 240, 53, 169, 167, 153, 166, 147, 149, 170, 149, 168, 149, 166, 154};


//: icon_redpackage_top
Byte kStr_narrowValue[] = {87, 19, 34, 7, 83, 103, 173, 139, 133, 145, 144, 129, 148, 135, 134, 146, 131, 133, 141, 131, 137, 135, 129, 150, 145, 146, 117};


//: avatar
Byte kStr_thereVaryPercentageData[] = {38, 6, 21, 14, 109, 13, 59, 207, 69, 130, 33, 32, 174, 188, 118, 139, 118, 137, 118, 135, 22};


//: user_nickname
Byte kStr_expoValue[] = {79, 13, 63, 14, 231, 204, 73, 115, 102, 166, 90, 168, 212, 118, 180, 178, 164, 177, 158, 173, 168, 162, 170, 173, 160, 172, 164, 217};


//: words
Byte kStr_chronicMarkName[] = {43, 5, 96, 13, 244, 235, 52, 12, 190, 184, 165, 185, 99, 215, 207, 210, 196, 211, 76};


//: count
Byte kStr_progressValue[] = {82, 5, 63, 13, 208, 16, 114, 165, 50, 55, 64, 235, 247, 162, 174, 180, 173, 179, 68};


//: createtime
Byte kStr_teenData[] = {73, 10, 49, 13, 107, 79, 52, 48, 228, 228, 234, 251, 128, 148, 163, 150, 146, 165, 150, 165, 154, 158, 150, 221};


//: %@个红包，共%@元
Byte kStr_easterTitleData[] = {33, 22, 20, 10, 113, 94, 10, 223, 146, 175, 57, 84, 248, 204, 190, 251, 206, 182, 249, 160, 153, 3, 208, 160, 249, 153, 197, 57, 84, 249, 153, 151, 171};


//: back_white
Byte kStr_cheekTitle[] = {49, 10, 15, 4, 113, 112, 114, 122, 110, 134, 119, 120, 131, 116, 52};


//: #DF7055
Byte kStr_keyLengthTitle[] = {73, 7, 86, 10, 255, 191, 66, 16, 19, 101, 121, 154, 156, 141, 134, 139, 139, 155};

// __DEBUG__
// __CLOSE_PRINT__
//
//  LaughOffViewCell.m
//  NIM
//
//  Created by 彭爽 on 2021/10/21.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESRedpackageDetailCell.h"
#import "LaughOffViewCell.h"

//: @implementation NTESRedpackageDetailCell
@implementation LaughOffViewCell

//: - (void)initSubviews{
- (void)initContainer{

    //: UIView *topview = [[UIView alloc] init];
    UIView *topview = [[UIView alloc] init];
    //: topview.backgroundColor = [UIColor colorWithHexString:@"#DF7055"];
    topview.backgroundColor = [UIColor box:StringFromSoutheastData(kStr_keyLengthTitle)];
    //: [self addSubview:topview];
    [self addSubview:topview];
    //: [topview mas_makeConstraints:^(MASConstraintMaker *make) {
    [topview mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.top.mas_offset(0);
        make.top.mas_offset(0);
        //: make.height.mas_equalTo([UIDevice vg_statusBarHeight] + 10);
        make.height.mas_equalTo([UIDevice encounter] + 10);
        //: make.left.mas_offset(0);
        make.left.mas_offset(0);
        //: make.right.mas_offset(0);
        make.right.mas_offset(0);
    //: }];
    }];

    //: UIImageView *imageBack = [[UIImageView alloc] init];
    UIImageView *imageBack = [[UIImageView alloc] init];
    //: imageBack.userInteractionEnabled = YES;
    imageBack.userInteractionEnabled = YES;
    //: imageBack.image = [UIImage imageNamed:@"icon_redpackage_top"];
    imageBack.image = [UIImage imageNamed:StringFromSoutheastData(kStr_narrowValue)];
    //: [self addSubview:imageBack];
    [self addSubview:imageBack];
    //: [imageBack mas_makeConstraints:^(MASConstraintMaker *make) {
    [imageBack mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.top.mas_offset([UIDevice vg_statusBarHeight]);
        make.top.mas_offset([UIDevice encounter]);
        //: make.bottom.mas_offset(0);
        make.bottom.mas_offset(0);
        //: make.left.mas_offset(0);
        make.left.mas_offset(0);
        //: make.right.mas_offset(0);
        make.right.mas_offset(0);
        //: make.width.mas_equalTo([[UIScreen mainScreen] bounds].size.width);
        make.width.mas_equalTo([[UIScreen mainScreen] bounds].size.width);
        //: make.height.mas_equalTo([[UIScreen mainScreen] bounds].size.width/1162*720);
        make.height.mas_equalTo([[UIScreen mainScreen] bounds].size.width/1162*720);
    //: }];
    }];

    //: _backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    _backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: [_backButton setImage:[UIImage imageNamed:@"back_white"] forState:UIControlStateNormal];
    [_backButton setImage:[UIImage imageNamed:StringFromSoutheastData(kStr_cheekTitle)] forState:UIControlStateNormal];
    //: [self addSubview:_backButton];
    [self addSubview:_backButton];
    //: [_backButton mas_makeConstraints:^(MASConstraintMaker *make) {
    [_backButton mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.top.mas_offset([UIDevice vg_statusBarHeight]);
        make.top.mas_offset([UIDevice encounter]);
        //: make.left.mas_offset(10);
        make.left.mas_offset(10);
        //: make.width.height.mas_equalTo(35);
        make.width.height.mas_equalTo(35);
    //: }];
    }];


    //: _nickNameLabel = [[UILabel alloc] init];
    _nickNameLabel = [[UILabel alloc] init];
    //: _nickNameLabel.textAlignment = NSTextAlignmentCenter;
    _nickNameLabel.textAlignment = NSTextAlignmentCenter;
    //: _nickNameLabel.font = [UIFont systemFontOfSize:18];
    _nickNameLabel.font = [UIFont systemFontOfSize:18];
    //: _nickNameLabel.textColor = [UIColor blackColor];
    _nickNameLabel.textColor = [UIColor blackColor];
    //: [_nickNameLabel sizeToFit];
    [_nickNameLabel sizeToFit];
    //: [imageBack addSubview:_nickNameLabel];
    [imageBack addSubview:_nickNameLabel];
    //: [_nickNameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
    [_nickNameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.centerX.mas_equalTo(imageBack).mas_offset(13);
        make.centerX.mas_equalTo(imageBack).mas_offset(13);
        //: make.centerY.mas_offset(10);
        make.centerY.mas_offset(10);
        //: make.height.mas_equalTo(20);
        make.height.mas_equalTo(20);
    //: }];
    }];

    //: _headerImage = [[UIImageView alloc] init];
    _headerImage = [[UIImageView alloc] init];
    //: [imageBack addSubview:_headerImage];
    [imageBack addSubview:_headerImage];
    //: _headerImage.layer.masksToBounds = YES;
    _headerImage.layer.masksToBounds = YES;
    //: _headerImage.layer.cornerRadius = 4.2;
    _headerImage.layer.cornerRadius = 4.2;
    //: [_headerImage mas_makeConstraints:^(MASConstraintMaker *make) {
    [_headerImage mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.right.mas_equalTo(_nickNameLabel.mas_left).mas_offset(-5);
        make.right.mas_equalTo(_nickNameLabel.mas_left).mas_offset(-5);
        //: make.centerY.mas_equalTo(_nickNameLabel);
        make.centerY.mas_equalTo(_nickNameLabel);
        //: make.width.height.mas_equalTo(25);
        make.width.height.mas_equalTo(25);
    //: }];
    }];


    //: _wordLabel = [[UILabel alloc] init];
    _wordLabel = [[UILabel alloc] init];
    //: _wordLabel.textAlignment = NSTextAlignmentCenter;
    _wordLabel.textAlignment = NSTextAlignmentCenter;
    //: _wordLabel.font = [UIFont systemFontOfSize:13];
    _wordLabel.font = [UIFont systemFontOfSize:13];
    //: _wordLabel.textColor = [UIColor lightGrayColor];
    _wordLabel.textColor = [UIColor lightGrayColor];
    //: [_wordLabel sizeToFit];
    [_wordLabel sizeToFit];
    //: [imageBack addSubview:_wordLabel];
    [imageBack addSubview:_wordLabel];
    //: [_wordLabel mas_makeConstraints:^(MASConstraintMaker *make) {
    [_wordLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.centerX.mas_equalTo(imageBack);
        make.centerX.mas_equalTo(imageBack);
        //: make.top.mas_equalTo(_nickNameLabel.mas_bottom).mas_offset(7);
        make.top.mas_equalTo(_nickNameLabel.mas_bottom).mas_offset(7);
        //: make.height.mas_equalTo(20);
        make.height.mas_equalTo(20);
    //: }];
    }];


    //: _contentLabel = [[UILabel alloc] init];
    _contentLabel = [[UILabel alloc] init];
    //: _contentLabel.textAlignment = NSTextAlignmentLeft;
    _contentLabel.textAlignment = NSTextAlignmentLeft;
    //: _contentLabel.font = [UIFont systemFontOfSize:13];
    _contentLabel.font = [UIFont systemFontOfSize:13];
    //: _contentLabel.textColor = [UIColor lightGrayColor];
    _contentLabel.textColor = [UIColor lightGrayColor];
    //: [imageBack addSubview:_contentLabel];
    [imageBack addSubview:_contentLabel];
    //: [_contentLabel mas_makeConstraints:^(MASConstraintMaker *make) {
    [_contentLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.left.mas_offset(5);
        make.left.mas_offset(5);
        //: make.bottom.mas_offset(-5);
        make.bottom.mas_offset(-5);
        //: make.height.mas_equalTo(20);
        make.height.mas_equalTo(20);
        //: make.right.mas_offset(-5);
        make.right.mas_offset(-5);
    //: }];
    }];

}

//: -(void)reloadWithInformation:(NSDictionary *)information{
-(void)smartMax:(NSDictionary *)information{
    //: _nickNameLabel.text = [information newStringValueForKey:@"user_nickname"];
    _nickNameLabel.text = [information length:StringFromSoutheastData(kStr_expoValue)];
    //: _wordLabel.text = [information newStringValueForKey:@"words"];
    _wordLabel.text = [information length:StringFromSoutheastData(kStr_chronicMarkName)];
    //: [_headerImage sd_setImageWithURL:[NSURL URLWithString:[information newStringValueForKey:@"user_avatar"]]];
    [_headerImage sd_setImageWithURL:[NSURL URLWithString:[information length:StringFromSoutheastData(kStr_userWithData)]]];

    //: NSString *count = [information newStringValueForKey:@"count"];
    NSString *count = [information length:StringFromSoutheastData(kStr_progressValue)];
    //: NSString *amount = [information newStringValueForKey:@"amount"];
    NSString *amount = [information length:StringFromSoutheastData(kStr_carveShrinkFibValue)];
    //: _contentLabel.text = [NSString stringWithFormat:@"%@个红包，共%@元",count,amount];
    _contentLabel.text = [NSString stringWithFormat:StringFromSoutheastData(kStr_easterTitleData),count,amount];

}

//: -(void)backButtonClick{
-(void)electComment{

}

//: @end
@end







//: @implementation NTESRedpackageDetailListCell
@implementation InputFrameViewCell

//: -(void)initSubviews{
-(void)initContainer{

    //: UIView *line = [[UIView alloc] init];
    UIView *line = [[UIView alloc] init];
    //: line.backgroundColor = [UIColor colorWithHexString:@"#F1F1F1"];
    line.backgroundColor = [UIColor box:StringFromSoutheastData(kStr_messageItemAwayValue)];
    //: [self addSubview:line];
    [self addSubview:line];
    //: [line mas_makeConstraints:^(MASConstraintMaker *make) {
    [line mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.left.mas_offset(15);
        make.left.mas_offset(15);
        //: make.right.mas_offset(-15);
        make.right.mas_offset(-15);
        //: make.height.mas_equalTo(0.8);
        make.height.mas_equalTo(0.8);
        //: make.top.mas_offset(0);
        make.top.mas_offset(0);
    //: }];
    }];

    //: _headerImage = [[UIImageView alloc] init];
    _headerImage = [[UIImageView alloc] init];
    //: [self addSubview:_headerImage];
    [self addSubview:_headerImage];
    //: _headerImage.layer.masksToBounds = YES;
    _headerImage.layer.masksToBounds = YES;
    //: _headerImage.layer.cornerRadius = 5.3;
    _headerImage.layer.cornerRadius = 5.3;
    //: [_headerImage mas_makeConstraints:^(MASConstraintMaker *make) {
    [_headerImage mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.left.mas_offset(10);
        make.left.mas_offset(10);
        //: make.top.mas_offset(10);
        make.top.mas_offset(10);
        //: make.bottom.mas_offset(-10);
        make.bottom.mas_offset(-10);
        //: make.width.height.mas_equalTo(45);
        make.width.height.mas_equalTo(45);
    //: }];
    }];

    //: _nickNameLabel = [[UILabel alloc] init];
    _nickNameLabel = [[UILabel alloc] init];
    //: _nickNameLabel.textAlignment = NSTextAlignmentLeft;
    _nickNameLabel.textAlignment = NSTextAlignmentLeft;
    //: _nickNameLabel.font = [UIFont systemFontOfSize:15];
    _nickNameLabel.font = [UIFont systemFontOfSize:15];
    //: _nickNameLabel.textColor = [UIColor blackColor];
    _nickNameLabel.textColor = [UIColor blackColor];
    //: [_nickNameLabel sizeToFit];
    [_nickNameLabel sizeToFit];
    //: [self addSubview:_nickNameLabel];
    [self addSubview:_nickNameLabel];
    //: [_nickNameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
    [_nickNameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.left.mas_equalTo(_headerImage.mas_right).mas_equalTo(5);
        make.left.mas_equalTo(_headerImage.mas_right).mas_equalTo(5);
        //: make.centerY.mas_equalTo(_headerImage).mas_offset(-10);
        make.centerY.mas_equalTo(_headerImage).mas_offset(-10);
        //: make.height.mas_equalTo(20);
        make.height.mas_equalTo(20);
    //: }];
    }];

    //: _praiseImage = [[UIImageView alloc] init];
    _praiseImage = [[UIImageView alloc] init];
    //: _praiseImage.image = [UIImage imageNamed:@"user_redpackage_prise"];
    _praiseImage.image = [UIImage imageNamed:StringFromSoutheastData(kStr_shrinkByName)];
    //: [self addSubview:_praiseImage];
    [self addSubview:_praiseImage];
    //: [_praiseImage mas_makeConstraints:^(MASConstraintMaker *make) {
    [_praiseImage mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.left.mas_equalTo(_nickNameLabel.mas_right).mas_offset(3);
        make.left.mas_equalTo(_nickNameLabel.mas_right).mas_offset(3);
        //: make.centerY.mas_equalTo(_nickNameLabel).mas_offset(0);
        make.centerY.mas_equalTo(_nickNameLabel).mas_offset(0);
        //: make.width.height.mas_equalTo(20);
        make.width.height.mas_equalTo(20);
    //: }];
    }];


    //: _timeLabel = [[UILabel alloc] init];
    _timeLabel = [[UILabel alloc] init];
    //: _timeLabel.textAlignment = NSTextAlignmentLeft;
    _timeLabel.textAlignment = NSTextAlignmentLeft;
    //: _timeLabel.font = [UIFont systemFontOfSize:13];
    _timeLabel.font = [UIFont systemFontOfSize:13];
    //: _timeLabel.textColor = [UIColor lightGrayColor];
    _timeLabel.textColor = [UIColor lightGrayColor];
    //: [_timeLabel sizeToFit];
    [_timeLabel sizeToFit];
    //: [self addSubview:_timeLabel];
    [self addSubview:_timeLabel];
    //: [_timeLabel mas_makeConstraints:^(MASConstraintMaker *make) {
    [_timeLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.left.mas_equalTo(_headerImage.mas_right).mas_equalTo(5);
        make.left.mas_equalTo(_headerImage.mas_right).mas_equalTo(5);
        //: make.centerY.mas_equalTo(_headerImage).mas_offset(10);
        make.centerY.mas_equalTo(_headerImage).mas_offset(10);
        //: make.height.mas_equalTo(20);
        make.height.mas_equalTo(20);
        //: make.width.mas_equalTo(200);
        make.width.mas_equalTo(200);
    //: }];
    }];


    //: _redAmountLabel = [[UILabel alloc] init];
    _redAmountLabel = [[UILabel alloc] init];
    //: _redAmountLabel.textAlignment = NSTextAlignmentRight;
    _redAmountLabel.textAlignment = NSTextAlignmentRight;
    //: _redAmountLabel.font = [UIFont systemFontOfSize:18];
    _redAmountLabel.font = [UIFont systemFontOfSize:18];
    //: _redAmountLabel.textColor = [UIColor blackColor];
    _redAmountLabel.textColor = [UIColor blackColor];
    //: [_redAmountLabel sizeToFit];
    [_redAmountLabel sizeToFit];
    //: [self addSubview:_redAmountLabel];
    [self addSubview:_redAmountLabel];
    //: [_redAmountLabel mas_makeConstraints:^(MASConstraintMaker *make) {
    [_redAmountLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.right.mas_equalTo(-8);
        make.right.mas_equalTo(-8);
        //: make.centerY.mas_equalTo(_headerImage).mas_offset(0);
        make.centerY.mas_equalTo(_headerImage).mas_offset(0);
        //: make.height.mas_equalTo(20);
        make.height.mas_equalTo(20);
        //: make.width.mas_equalTo(200);
        make.width.mas_equalTo(200);
    //: }];
    }];



}
//: -(void)reloadWithInformation:(NSDictionary *)information{
-(void)smartMax:(NSDictionary *)information{
    //: [_headerImage sd_setImageWithURL:[NSURL URLWithString:[information newStringValueForKey:@"avatar"]]];
    [_headerImage sd_setImageWithURL:[NSURL URLWithString:[information length:StringFromSoutheastData(kStr_thereVaryPercentageData)]]];
    //: _nickNameLabel.text = [information newStringValueForKey:@"nickname"];
    _nickNameLabel.text = [information length:StringFromSoutheastData(kStr_tapName)];
    //: _timeLabel.text = [information newStringValueForKey:@"createtime"];
    _timeLabel.text = [information length:StringFromSoutheastData(kStr_teenData)];
    //: _redAmountLabel.text = [NSString stringWithFormat:@"%@元",[information newStringValueForKey:@"amount"]];
    _redAmountLabel.text = [NSString stringWithFormat:@"%@元",[information length:StringFromSoutheastData(kStr_carveShrinkFibValue)]];
    //: [_nickNameLabel sizeToFit];
    [_nickNameLabel sizeToFit];
    //: [_praiseImage mas_updateConstraints:^(MASConstraintMaker *make) {
    [_praiseImage mas_updateConstraints:^(MASConstraintMaker *make) {
        //: make.left.mas_equalTo(_nickNameLabel.mas_right).mas_offset(3);
        make.left.mas_equalTo(_nickNameLabel.mas_right).mas_offset(3);
    //: }];
    }];

}

//: @end
@end

Byte * SoutheastDataToCache(Byte *data) {
    int pitCrease = data[0];
    int trulyMedia = data[1];
    Byte doingSix = data[2];
    int boxShrink = data[3];
    if (!pitCrease) return data + boxShrink;
    for (int i = boxShrink; i < boxShrink + trulyMedia; i++) {
        int value = data[i] - doingSix;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[boxShrink + trulyMedia] = 0;
    return data + boxShrink;
}

NSString *StringFromSoutheastData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)SoutheastDataToCache(data)];
}
