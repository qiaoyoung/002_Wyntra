
#import <Foundation/Foundation.h>

NSString *StringFromHalfwayData(Byte *data);


//: #52ACFC
Byte kStr_sidewalkTitle[] = {51, 7, 86, 4, 121, 139, 136, 151, 153, 156, 153, 222};


//: eeeeee
Byte kStr_elaborateName[] = {92, 6, 94, 6, 90, 134, 195, 195, 195, 195, 195, 195, 39};


//: 输入不能为空
Byte kStr_weepSleeveData[] = {23, 18, 2, 6, 108, 98, 234, 192, 149, 231, 135, 167, 230, 186, 143, 234, 133, 191, 230, 186, 188, 233, 171, 188, 38};


//: activity_register_next
Byte kStr_resideCraftHistorianValue[] = {68, 22, 14, 8, 188, 102, 58, 20, 111, 113, 130, 119, 132, 119, 130, 135, 109, 128, 115, 117, 119, 129, 130, 115, 128, 109, 124, 115, 134, 130, 50};


//: register_avtivity3_nick
Byte kStr_anybodyProgramValue[] = {69, 23, 38, 6, 135, 239, 152, 139, 141, 143, 153, 154, 139, 152, 133, 135, 156, 154, 143, 156, 143, 154, 159, 89, 133, 148, 143, 137, 145, 186};

// __DEBUG__
// __CLOSE_PRINT__
//
//  CountervalDisableView.m
//  NIM
//
//  Created by 彭爽 on 2021/9/7.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESInputNickNameWindowView.h"
#import "CountervalDisableView.h"

//: @interface NTESInputNickNameWindowView ()
@interface CountervalDisableView ()

//: @end
@end

//: @implementation NTESInputNickNameWindowView
@implementation CountervalDisableView

//: -(instancetype)init{
-(instancetype)init{
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: self.backgroundColor = [UIColor colorWithWhite:0 alpha:0.3];
        self.backgroundColor = [UIColor colorWithWhite:0 alpha:0.3];
        //: self.frame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height);
        self.frame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height);

        //: UIButton *disButton = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *disButton = [UIButton buttonWithType:UIButtonTypeCustom];
        //: disButton.frame = self.bounds;
        disButton.frame = self.bounds;
        //: [disButton addTarget:self action:@selector(dismissPicker) forControlEvents:UIControlEventTouchUpInside];
        [disButton addTarget:self action:@selector(rejectInsidePicker) forControlEvents:UIControlEventTouchUpInside];
        //: [self addSubview:disButton];
        [self addSubview:disButton];


        //: UIView *backGroundView = [[UIView alloc] init];
        UIView *backGroundView = [[UIView alloc] init];
        //: backGroundView.backgroundColor = [UIColor whiteColor];
        backGroundView.backgroundColor = [UIColor whiteColor];
        //: [self addSubview:backGroundView];
        [self addSubview:backGroundView];
        //: [backGroundView mas_makeConstraints:^(MASConstraintMaker *make) {
        [backGroundView mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.center.mas_equalTo(self);
            //: make.top.mas_equalTo(100);
            make.top.mas_equalTo(100);
            //: make.centerX.mas_equalTo(self);
            make.centerX.mas_equalTo(self);
            //: make.width.mas_equalTo([[UIScreen mainScreen] bounds].size.width -70);
            make.width.mas_equalTo([[UIScreen mainScreen] bounds].size.width -70);
            //: make.height.mas_equalTo(200);
            make.height.mas_equalTo(200);
        //: }];
        }];


        //: UILabel *titleLabel = [[UILabel alloc] init];
        UILabel *titleLabel = [[UILabel alloc] init];
        //: titleLabel.font = [UIFont systemFontOfSize:16];
        titleLabel.font = [UIFont systemFontOfSize:16];
        //: titleLabel.textColor = [UIColor blackColor];
        titleLabel.textColor = [UIColor blackColor];
        //: titleLabel.textAlignment = NSTextAlignmentCenter;
        titleLabel.textAlignment = NSTextAlignmentCenter;
        //: titleLabel.text = @"";
        titleLabel.text = @"";
        //: [backGroundView addSubview:titleLabel];
        [backGroundView addSubview:titleLabel];
        //: _titleLabel = titleLabel;
        _titleLabel = titleLabel;
        //: [titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        [titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.top.mas_offset(30);
            make.top.mas_offset(30);
            //: make.left.mas_offset(20);
            make.left.mas_offset(20);
            //: make.right.mas_equalTo(-20);
            make.right.mas_equalTo(-20);
            //: make.height.mas_equalTo(30);
            make.height.mas_equalTo(30);
        //: }];
        }];


        //: _textField = [[UITextField alloc] init];
        _textField = [[UITextField alloc] init];
        //: _textField.placeholder = [NTESLanguageManager getTextWithKey:@"register_avtivity3_nick"];
        _textField.placeholder = [LabelCell tinkleKey:StringFromHalfwayData(kStr_anybodyProgramValue)];
        //: [backGroundView addSubview:_textField];
        [backGroundView addSubview:_textField];
        //: [_textField mas_makeConstraints:^(MASConstraintMaker *make) {
        [_textField mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.top.mas_equalTo(titleLabel.mas_bottom).mas_offset(20);
            make.top.mas_equalTo(titleLabel.mas_bottom).mas_offset(20);
            //: make.left.mas_offset(30);
            make.left.mas_offset(30);
            //: make.right.mas_equalTo(-30);
            make.right.mas_equalTo(-30);
            //: make.height.mas_equalTo(30);
            make.height.mas_equalTo(30);
        //: }];
        }];

        //: UIView *lineView = [[UIView alloc] init];
        UIView *lineView = [[UIView alloc] init];
        //: lineView.backgroundColor = [UIColor colorWithHexString:@"eeeeee"];
        lineView.backgroundColor = [UIColor box:StringFromHalfwayData(kStr_elaborateName)];
        //: [backGroundView addSubview:lineView];
        [backGroundView addSubview:lineView];
        //: [lineView mas_makeConstraints:^(MASConstraintMaker *make) {
        [lineView mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.top.mas_equalTo(_textField.mas_bottom).mas_offset(10);
            make.top.mas_equalTo(_textField.mas_bottom).mas_offset(10);
            //: make.left.mas_offset(30);
            make.left.mas_offset(30);
            //: make.right.mas_equalTo(-30);
            make.right.mas_equalTo(-30);
            //: make.height.mas_equalTo(1.2);
            make.height.mas_equalTo(1.2);
        //: }];
        }];


        //: UIButton *knowButton = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *knowButton = [UIButton buttonWithType:UIButtonTypeCustom];
        //: knowButton.titleLabel.font = [UIFont systemFontOfSize:16];
        knowButton.titleLabel.font = [UIFont systemFontOfSize:16];
        //: [knowButton setTitle:[NTESLanguageManager getTextWithKey:@"activity_register_next"] forState:UIControlStateNormal];
        [knowButton setTitle:[LabelCell tinkleKey:StringFromHalfwayData(kStr_resideCraftHistorianValue)] forState:UIControlStateNormal];
        //: [knowButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [knowButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        //: [knowButton addTarget:self action:@selector(knowButtonClick) forControlEvents:UIControlEventTouchUpInside];
        [knowButton addTarget:self action:@selector(tabViewClick) forControlEvents:UIControlEventTouchUpInside];
        //: knowButton.backgroundColor = [UIColor colorWithHexString:@"#52ACFC"];
        knowButton.backgroundColor = [UIColor box:StringFromHalfwayData(kStr_sidewalkTitle)];
        //: [backGroundView addSubview:knowButton];
        [backGroundView addSubview:knowButton];
        //: _dowmButton = knowButton;
        _dowmButton = knowButton;
        //: knowButton.layer.masksToBounds = YES;
        knowButton.layer.masksToBounds = YES;
        //: knowButton.layer.cornerRadius = 4;
        knowButton.layer.cornerRadius = 4;
        //: [knowButton mas_makeConstraints:^(MASConstraintMaker *make) {
        [knowButton mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.top.mas_equalTo(_textField.mas_bottom).mas_offset(25);
            make.top.mas_equalTo(_textField.mas_bottom).mas_offset(25);
            //: make.left.mas_offset(20);
            make.left.mas_offset(20);
            //: make.right.mas_offset(-20);
            make.right.mas_offset(-20);
            //: make.height.mas_equalTo(45);
            make.height.mas_equalTo(45);
        //: }];
        }];



//        UIImageView *bgimage = [[UIImageView alloc] init];
//        bgimage.userInteractionEnabled = YES;
//        bgimage.image = [UIImage imageNamed:@"mine_opinipn_bgimage"];
//        [self addSubview:bgimage];
//        [bgimage mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.width.mas_equalTo(254);
//            make.height.mas_equalTo(278);
//            make.centerY.mas_equalTo(self);
//            make.centerX.mas_equalTo(self);
//        }];
//
//        UIButton *closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
//        [closeBtn setImage:[UIImage imageNamed:@"mine_opinipn_close"] forState:UIControlStateNormal];
//        [closeBtn addTarget:self action:@selector(closeBtnClick) forControlEvents:UIControlEventTouchUpInside];
//        [bgimage addSubview:closeBtn];
//        [closeBtn mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.right.mas_equalTo(bgimage);
//            make.top.mas_equalTo(bgimage);
//            make.width.mas_equalTo(50);
//            make.height.mas_equalTo(50);
//        }];






    }
    //: return self;
    return self;
}

//: -(void)closeBtnClick{
-(void)schemeTotalerval{
    //: [self dismissPicker];
    [self rejectInsidePicker];
}

//: -(void)knowButtonClick{
-(void)tabViewClick{

    //: if (_textField.text.length <= 0) {
    if (_textField.text.length <= 0) {
        //: [SVProgressHUD showMessage:@"输入不能为空".nim_localized];
        [SVProgressHUD text:StringFromHalfwayData(kStr_weepSleeveData).start];
        //: return;
        return;
    }

    //: if (_block) {
    if (_block) {
        //: _block(_textField.text);
        _block(_textField.text);
    }
    //: [self dismissPicker];
    [self rejectInsidePicker];
}

//: - (void)show{
- (void)outspoken{
    //: UIWindow *window = [[[UIApplication sharedApplication]delegate]window];
    UIWindow *window = [[[UIApplication sharedApplication]delegate]window];
    //: [window addSubview:self];
    [window addSubview:self];
}

//: - (void)dismissPicker{
- (void)rejectInsidePicker{

    //: [UIView animateWithDuration:0.3 animations:^{
    [UIView animateWithDuration:0.3 animations:^{

    //: } completion:^(BOOL finished) {
    } completion:^(BOOL finished) {
        //: self.hidden = YES;
        self.hidden = YES;
        //: [self removeFromSuperview];
        [self removeFromSuperview];
    //: }];
    }];

}

//: -(void)clickKnowButton:(KnowBlock)block{
-(void)input:(KnowBlock)block{
    //: _block = block;
    _block = block;
}


//: @end
@end

Byte * HalfwayDataToCache(Byte *data) {
    int race = data[0];
    int billCrowdedFinish = data[1];
    Byte shouldSession = data[2];
    int walkway = data[3];
    if (!race) return data + walkway;
    for (int i = walkway; i < walkway + billCrowdedFinish; i++) {
        int value = data[i] - shouldSession;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[walkway + billCrowdedFinish] = 0;
    return data + walkway;
}

NSString *StringFromHalfwayData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)HalfwayDataToCache(data)];
}
