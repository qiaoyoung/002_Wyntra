
#import <Foundation/Foundation.h>
typedef struct {
    Byte markCover;
    Byte *sheer;
    unsigned int enable;
    bool operation;
	int streetwise;
	int objectText;
} AtSessionData;

NSString *StringFromAtSessionData(AtSessionData *data);


//: #333333
AtSessionData kStr_tingTitleValue = (AtSessionData){211, (Byte []){240, 224, 224, 224, 224, 224, 224, 68}, 7, false, 238, 135};


//: report_next_select_delete
AtSessionData kStr_addName = (AtSessionData){144, (Byte []){226, 245, 224, 255, 226, 228, 207, 254, 245, 232, 228, 207, 227, 245, 252, 245, 243, 228, 207, 244, 245, 252, 245, 228, 245, 52}, 25, false, 41, 102};


//: 666666
AtSessionData kStr_tingAccountName = (AtSessionData){110, (Byte []){88, 88, 88, 88, 88, 88, 14}, 6, false, 89, 254};


//: #FF483D
AtSessionData kStr_redName = (AtSessionData){236, (Byte []){207, 170, 170, 216, 212, 223, 168, 94}, 7, false, 162, 49};


//: user_profile_avtivity_remove_friend
AtSessionData kStr_labelText = (AtSessionData){110, (Byte []){27, 29, 11, 28, 49, 30, 28, 1, 8, 7, 2, 11, 49, 15, 24, 26, 7, 24, 7, 26, 23, 49, 28, 11, 3, 1, 24, 11, 49, 8, 28, 7, 11, 0, 10, 24}, 35, false, 142, 229};


//: YES
AtSessionData kStr_markRedTitle = (AtSessionData){109, (Byte []){52, 40, 62, 143}, 3, false, 209, 193};


//: delete
AtSessionData kStr_textScaleData = (AtSessionData){26, (Byte []){126, 127, 118, 127, 110, 127, 124}, 6, false, 165, 213};


//: contact_tag_fragment_cancel
AtSessionData kStr_adjustmentTitle = (AtSessionData){83, (Byte []){48, 60, 61, 39, 50, 48, 39, 12, 39, 50, 52, 12, 53, 33, 50, 52, 62, 54, 61, 39, 12, 48, 50, 61, 48, 54, 63, 39}, 27, false, 226, 171};

// __DEBUG__
// __CLOSE_PRINT__
//
//  DismissView.m
//  Lemon
//
//  Created by Yan Wang on 2025/2/17.
//  Copyright © 2025 Lemon. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZMONReportDeleteView.h"
#import "DismissView.h"
//: #import "NTESBundleSetting.h"
#import "BackgroundTingIncidentGreen.h"

//: @interface ZMONReportDeleteView ()
@interface DismissView ()

//: @property (nonatomic,strong) UIButton *sureBtn;
@property (nonatomic,strong) UIButton *sureBtn;
//: @property (nonatomic,strong) UIButton *closeBtn;
@property (nonatomic,strong) UIButton *closeBtn;
//: @property (nonatomic,strong) UILabel *titleLabel;
@property (nonatomic,strong) UILabel *titleLabel;
//: @property (nonatomic,strong) UIView *box;
@property (nonatomic,strong) UIView *box;

//: @end
@end

//: @implementation ZMONReportDeleteView
@implementation DismissView

//: - (instancetype)initWithFrame:(CGRect)frame
- (instancetype)initWithFrame:(CGRect)frame
{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: self.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.5];
        self.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.5];

        //: [self initUI];
        [self initShow];

    }
    //: return self;
    return self;
}


//: - (void)initUI{
- (void)initShow{
    //: _box = [[UIView alloc]initWithFrame:CGRectMake(20, ([[UIScreen mainScreen] bounds].size.height-196)/2, [[UIScreen mainScreen] bounds].size.width-40, 196)];
    _box = [[UIView alloc]initWithFrame:CGRectMake(20, ([[UIScreen mainScreen] bounds].size.height-196)/2, [[UIScreen mainScreen] bounds].size.width-40, 196)];
    //: _box.backgroundColor = [UIColor whiteColor];
    _box.backgroundColor = [UIColor whiteColor];
    //: _box.layer.cornerRadius = 12;
    _box.layer.cornerRadius = 12;
    //: [self addSubview:_box];
    [self addSubview:_box];

    //: [_box addSubview:self.titleLabel];
    [_box addSubview:self.titleLabel];
    //: self.titleLabel.frame = CGRectMake(0, 20, [[UIScreen mainScreen] bounds].size.width-40, 20);
    self.titleLabel.frame = CGRectMake(0, 20, [[UIScreen mainScreen] bounds].size.width-40, 20);

    //: UILabel *labsubLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, self.titleLabel.bottom, [[UIScreen mainScreen] bounds].size.width-80, 50)];
    UILabel *labsubLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, self.titleLabel.bottom, [[UIScreen mainScreen] bounds].size.width-80, 50)];
    //: labsubLabel.font = [UIFont systemFontOfSize:12.f];
    labsubLabel.font = [UIFont systemFontOfSize:12.f];
    //: labsubLabel.textColor = [UIColor colorWithHexString:@"#333333"];
    labsubLabel.textColor = [UIColor box:StringFromAtSessionData(&kStr_tingTitleValue)];
    //: labsubLabel.numberOfLines = 0;
    labsubLabel.numberOfLines = 0;
    //: labsubLabel.text = [NTESLanguageManager getTextWithKey:@"report_next_select_delete"];
    labsubLabel.text = [LabelCell tinkleKey:StringFromAtSessionData(&kStr_addName)];
    //: [_box addSubview:labsubLabel];
    [_box addSubview:labsubLabel];

    //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-100)/2;
    CGFloat width = ([[UIScreen mainScreen] bounds].size.width-100)/2;
    //: CGFloat height = 40;
    CGFloat height = 40;

    //: [_box addSubview:self.sureBtn];
    [_box addSubview:self.sureBtn];
    //: [_box addSubview:self.closeBtn];
    [_box addSubview:self.closeBtn];
    //: self.closeBtn.frame = CGRectMake(20, 196-height-20, width, height);
    self.closeBtn.frame = CGRectMake(20, 196-height-20, width, height);
    //: self.sureBtn.frame = CGRectMake(width+40, 196-height-20, width, height);
    self.sureBtn.frame = CGRectMake(width+40, 196-height-20, width, height);


}

//: - (void)showAnimation
- (void)disableDate
{
    //: [self animationClose];
    [self keyImage];

    //: self.speiceBackBlock(@"YES");
    self.speiceBackBlock(StringFromAtSessionData(&kStr_markRedTitle));
}


//: #pragma mark -- Setter && Getter
#pragma mark -- Setter && Getter
//: - (UILabel *)titleLabel {
- (UILabel *)titleLabel {
    //: if (!_titleLabel) {
    if (!_titleLabel) {
        //: _titleLabel = [[UILabel alloc] init];
        _titleLabel = [[UILabel alloc] init];
        //: _titleLabel.font = [UIFont systemFontOfSize:16.f];
        _titleLabel.font = [UIFont systemFontOfSize:16.f];
        //: _titleLabel.textColor = [UIColor blackColor];
        _titleLabel.textColor = [UIColor blackColor];
        //: _titleLabel.textAlignment = NSTextAlignmentCenter;
        _titleLabel.textAlignment = NSTextAlignmentCenter;
        //: _titleLabel.text = [NTESLanguageManager getTextWithKey:@"user_profile_avtivity_remove_friend"];
        _titleLabel.text = [LabelCell tinkleKey:StringFromAtSessionData(&kStr_labelText)];
    }
    //: return _titleLabel;
    return _titleLabel;
}

//: - (UIButton *)closeBtn {
- (UIButton *)closeBtn {
    //: if (!_closeBtn) {
    if (!_closeBtn) {
        //: _closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_closeBtn addTarget:self action:@selector(animationClose) forControlEvents:UIControlEventTouchUpInside];
        [_closeBtn addTarget:self action:@selector(keyImage) forControlEvents:UIControlEventTouchUpInside];
        //: _closeBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        _closeBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [_closeBtn setTitle:[NTESLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] forState:UIControlStateNormal];
        [_closeBtn setTitle:[LabelCell tinkleKey:StringFromAtSessionData(&kStr_adjustmentTitle)] forState:UIControlStateNormal];
        //: [_closeBtn setTitleColor:[UIColor colorWithHexString:@"666666"] forState:UIControlStateNormal];
        [_closeBtn setTitleColor:[UIColor box:StringFromAtSessionData(&kStr_tingAccountName)] forState:UIControlStateNormal];
        //: _closeBtn.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
        _closeBtn.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
        //: _closeBtn.layer.borderWidth = 0.5;
        _closeBtn.layer.borderWidth = 0.5;
        //: _closeBtn.layer.borderColor = [UIColor colorWithRed:236/255.0 green:236/255.0 blue:236/255.0 alpha:1].CGColor;
        _closeBtn.layer.borderColor = [UIColor colorWithRed:236/255.0 green:236/255.0 blue:236/255.0 alpha:1].CGColor;
        //: _closeBtn.layer.cornerRadius = 10;
        _closeBtn.layer.cornerRadius = 10;
        //: _closeBtn.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
        _closeBtn.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
        //: _closeBtn.layer.shadowOffset = CGSizeMake(0,3);
        _closeBtn.layer.shadowOffset = CGSizeMake(0,3);
        //: _closeBtn.layer.shadowOpacity = 1;
        _closeBtn.layer.shadowOpacity = 1;
        //: _closeBtn.layer.shadowRadius = 0;
        _closeBtn.layer.shadowRadius = 0;
    }
    //: return _closeBtn;
    return _closeBtn;
}

//: - (UIButton *)sureBtn {
- (UIButton *)sureBtn {
    //: if (!_sureBtn) {
    if (!_sureBtn) {
        //: _sureBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _sureBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_sureBtn addTarget:self action:@selector(showAnimation) forControlEvents:UIControlEventTouchUpInside];
        [_sureBtn addTarget:self action:@selector(disableDate) forControlEvents:UIControlEventTouchUpInside];
        //: _sureBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        _sureBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [_sureBtn setTitleColor:[UIColor colorWithHexString:@"#FF483D"] forState:UIControlStateNormal];
        [_sureBtn setTitleColor:[UIColor box:StringFromAtSessionData(&kStr_redName)] forState:UIControlStateNormal];
        //: [_sureBtn setTitle:[NTESLanguageManager getTextWithKey:@"delete"] forState:UIControlStateNormal];
        [_sureBtn setTitle:[LabelCell tinkleKey:StringFromAtSessionData(&kStr_textScaleData)] forState:UIControlStateNormal];
        //: _sureBtn.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
        _sureBtn.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
        //: _sureBtn.layer.borderWidth = 0.5;
        _sureBtn.layer.borderWidth = 0.5;
        //: _sureBtn.layer.borderColor = [UIColor colorWithRed:255/255.0 green:72/255.0 blue:61/255.0 alpha:1].CGColor;
        _sureBtn.layer.borderColor = [UIColor colorWithRed:255/255.0 green:72/255.0 blue:61/255.0 alpha:1].CGColor;
        //: _sureBtn.layer.cornerRadius = 10;
        _sureBtn.layer.cornerRadius = 10;
        //: _sureBtn.layer.shadowColor = [UIColor colorWithRed:255/255.0 green:72/255.0 blue:61/255.0 alpha:1].CGColor;
        _sureBtn.layer.shadowColor = [UIColor colorWithRed:255/255.0 green:72/255.0 blue:61/255.0 alpha:1].CGColor;
        //: _sureBtn.layer.shadowOffset = CGSizeMake(0,3);
        _sureBtn.layer.shadowOffset = CGSizeMake(0,3);
        //: _sureBtn.layer.shadowOpacity = 1;
        _sureBtn.layer.shadowOpacity = 1;
        //: _sureBtn.layer.shadowRadius = 0;
        _sureBtn.layer.shadowRadius = 0;

    }
    //: return _sureBtn;
    return _sureBtn;
}



//: - (void)animationClose
- (void)keyImage
{
    //: self.hidden = YES;
    self.hidden = YES;
}

//: - (void)animationShow
- (void)begin
{
    //: self.hidden = NO;
    self.hidden = NO;

}

//: @end
@end

Byte *AtSessionDataToByte(AtSessionData *data) {
    if (data->operation) return data->sheer;
    for (int i = 0; i < data->enable; i++) {
        data->sheer[i] ^= data->markCover;
    }
    data->sheer[data->enable] = 0;
    data->operation = true;
	if (data->enable >= 2) {
		data->streetwise = data->sheer[0];
		data->objectText = data->sheer[1];
	}
    return data->sheer;
}

NSString *StringFromAtSessionData(AtSessionData *data) {
    return [NSString stringWithUTF8String:(char *)AtSessionDataToByte(data)];
}
