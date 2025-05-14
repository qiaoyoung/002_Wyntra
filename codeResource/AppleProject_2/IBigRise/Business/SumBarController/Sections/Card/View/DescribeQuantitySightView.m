
#import <Foundation/Foundation.h>
typedef struct {
    Byte sessionMessage;
    Byte *keyAtUse;
    unsigned int topUse;
    bool activism;
	int signal;
} ButtonData;

NSString *StringFromButtonData(ButtonData *data);


//: report_black
ButtonData kStr_buttonTitle = (ButtonData){196, (Byte []){182, 161, 180, 171, 182, 176, 155, 166, 168, 165, 167, 175, 51}, 12, false, 37};


//: report_next_select_tip
ButtonData kStr_atValue = (ButtonData){136, (Byte []){250, 237, 248, 231, 250, 252, 215, 230, 237, 240, 252, 215, 251, 237, 228, 237, 235, 252, 215, 252, 225, 248, 102}, 22, false, 151};


//: user_profile_avtivity_remove_friend
ButtonData kStr_messageSizeValue = (ButtonData){198, (Byte []){179, 181, 163, 180, 153, 182, 180, 169, 160, 175, 170, 163, 153, 167, 176, 178, 175, 176, 175, 178, 191, 153, 180, 163, 171, 169, 176, 163, 153, 160, 180, 175, 163, 168, 162, 47}, 35, false, 164};


//: report_delete
ButtonData kStr_coverText = (ButtonData){53, (Byte []){71, 80, 69, 90, 71, 65, 106, 81, 80, 89, 80, 65, 80, 188}, 13, false, 130};


//: #333333
ButtonData kStr_scaleSendValue = (ButtonData){131, (Byte []){160, 176, 176, 176, 176, 176, 176, 127}, 7, false, 159};


//: report_next_select
ButtonData kStr_viewTapData = (ButtonData){62, (Byte []){76, 91, 78, 81, 76, 74, 97, 80, 91, 70, 74, 97, 77, 91, 82, 91, 93, 74, 24}, 18, false, 178};


//: More_options
ButtonData kStr_contentData = (ButtonData){157, (Byte []){208, 242, 239, 248, 194, 242, 237, 233, 244, 242, 243, 238, 253}, 12, false, 16};


//: activity_group_chat_avatar_add_black
ButtonData kStr_coverTitle = (ButtonData){65, (Byte []){32, 34, 53, 40, 55, 40, 53, 56, 30, 38, 51, 46, 52, 49, 30, 34, 41, 32, 53, 30, 32, 55, 32, 53, 32, 51, 30, 32, 37, 37, 30, 35, 45, 32, 34, 42, 146}, 36, false, 15};


//: 666666
ButtonData kStr_shootContent = (ButtonData){123, (Byte []){77, 77, 77, 77, 77, 77, 249}, 6, false, 11};


//: report_close
ButtonData kStr_commentText = (ButtonData){53, (Byte []){71, 80, 69, 90, 71, 65, 106, 86, 89, 90, 70, 80, 235}, 12, false, 25};

// __DEBUG__
// __CLOSE_PRINT__
//
//  DescribeQuantitySightView.m
//  Lemon
//
//  Created by Yan Wang on 2025/2/15.
//  Copyright © 2025 Lemon. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZMONReportNextView.h"
#import "DescribeQuantitySightView.h"

//: @interface ZMONReportNextView ()
@interface DescribeQuantitySightView ()

//: @property (nonatomic,strong) UILabel *titleLabel;
@property (nonatomic,strong) UILabel *titleLabel;
//: @property (nonatomic,strong) UIView *box;
@property (nonatomic,strong) UIView *box;
//: @property (nonatomic,strong) UIButton *sureBtn;
@property (nonatomic,strong) UIButton *sureBtn;
//: @property (nonatomic,strong) UIButton *closeBtn;
@property (nonatomic,strong) UIButton *closeBtn;
//: @property (nonatomic,strong) UIView *buttonBox;
@property (nonatomic,strong) UIView *buttonBox;

//: @end
@end

//: @implementation ZMONReportNextView
@implementation DescribeQuantitySightView

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
        [self initNameUi];

    }
    //: return self;
    return self;
}


//: - (void)initUI{
- (void)initNameUi{
    //: _box = [[UIView alloc]initWithFrame:CGRectMake(20, ([[UIScreen mainScreen] bounds].size.height-246)/2, [[UIScreen mainScreen] bounds].size.width-40, 246)];
    _box = [[UIView alloc]initWithFrame:CGRectMake(20, ([[UIScreen mainScreen] bounds].size.height-246)/2, [[UIScreen mainScreen] bounds].size.width-40, 246)];
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

    //: UIButton *cloBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *cloBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    //: cloBtn.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-50-32, 10, 32, 32);
    cloBtn.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-50-32, 10, 32, 32);
    //: [cloBtn addTarget:self action:@selector(animationClose) forControlEvents:UIControlEventTouchUpInside];
    [cloBtn addTarget:self action:@selector(keyImage) forControlEvents:UIControlEventTouchUpInside];
    //: [cloBtn setImage:[UIImage imageNamed:@"report_close"] forState:UIControlStateNormal];
    [cloBtn setImage:[UIImage imageNamed:StringFromButtonData(&kStr_commentText)] forState:UIControlStateNormal];
    //: [_box addSubview:cloBtn];
    [_box addSubview:cloBtn];

    //What other steps do you want to take
    //: UILabel *labLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, self.titleLabel.bottom+10, [[UIScreen mainScreen] bounds].size.width-80, 20)];
    UILabel *labLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, self.titleLabel.bottom+10, [[UIScreen mainScreen] bounds].size.width-80, 20)];
    //: labLabel.font = [UIFont boldSystemFontOfSize:14.f];
    labLabel.font = [UIFont boldSystemFontOfSize:14.f];
    //: labLabel.textColor = [UIColor colorWithHexString:@"#333333"];
    labLabel.textColor = [UIColor box:StringFromButtonData(&kStr_scaleSendValue)];
    //: labLabel.text = [NTESLanguageManager getTextWithKey:@"report_next_select"];
    labLabel.text = [LabelCell tinkleKey:StringFromButtonData(&kStr_viewTapData)];
    //: [_box addSubview:labLabel];
    [_box addSubview:labLabel];

    //: UILabel *labsubLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, labLabel.bottom, [[UIScreen mainScreen] bounds].size.width-80, 50)];
    UILabel *labsubLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, labLabel.bottom, [[UIScreen mainScreen] bounds].size.width-80, 50)];
    //: labsubLabel.font = [UIFont systemFontOfSize:12.f];
    labsubLabel.font = [UIFont systemFontOfSize:12.f];
    //: labsubLabel.textColor = [UIColor colorWithHexString:@"666666"];
    labsubLabel.textColor = [UIColor box:StringFromButtonData(&kStr_shootContent)];
    //: labsubLabel.numberOfLines = 0;
    labsubLabel.numberOfLines = 0;
    //: labsubLabel.text = [NTESLanguageManager getTextWithKey:@"report_next_select_tip"];
    labsubLabel.text = [LabelCell tinkleKey:StringFromButtonData(&kStr_atValue)];
    //: [_box addSubview:labsubLabel];
    [_box addSubview:labsubLabel];


    //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-80);
    CGFloat width = ([[UIScreen mainScreen] bounds].size.width-80);
    //: CGFloat height = 40;
    CGFloat height = 40;

    //: [_box addSubview:self.closeBtn];
    [_box addSubview:self.closeBtn];
    //: self.closeBtn.frame = CGRectMake(20, 246-40-height*2, width, height);
    self.closeBtn.frame = CGRectMake(20, 246-40-height*2, width, height);

    //: [_box addSubview:self.sureBtn];
    [_box addSubview:self.sureBtn];
    //: self.sureBtn.frame = CGRectMake(20, 246-20-height, width, height);
    self.sureBtn.frame = CGRectMake(20, 246-20-height, width, height);
}


//- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
//    [self animationClose];
//}

//: #pragma mark -- Setter && Getter
#pragma mark -- Setter && Getter
//: - (UILabel *)titleLabel {
- (UILabel *)titleLabel {
    //: if (!_titleLabel) {
    if (!_titleLabel) {
        //: _titleLabel = [[UILabel alloc] init];
        _titleLabel = [[UILabel alloc] init];
        //: _titleLabel.font = [UIFont boldSystemFontOfSize:16.f];
        _titleLabel.font = [UIFont boldSystemFontOfSize:16.f];
        //: _titleLabel.textColor = [UIColor blackColor];
        _titleLabel.textColor = [UIColor blackColor];
        //: _titleLabel.textAlignment = NSTextAlignmentCenter;
        _titleLabel.textAlignment = NSTextAlignmentCenter;
//        _titleLabel.numberOfLines = 0;
//        _titleLabel.lineBreakMode = NSLineBreakByTruncatingTail;
//        _titleLabel.text = LangKey(@"report_User");
        //: _titleLabel.text = [NTESLanguageManager getTextWithKey:@"More_options"];
        _titleLabel.text = [LabelCell tinkleKey:StringFromButtonData(&kStr_contentData)];

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
        //: [_closeBtn addTarget:self action:@selector(handleBlack) forControlEvents:UIControlEventTouchUpInside];
        [_closeBtn addTarget:self action:@selector(handleCurrent) forControlEvents:UIControlEventTouchUpInside];
        //: _closeBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        _closeBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [_closeBtn setTitleColor:[UIColor colorWithHexString:@"666666"] forState:UIControlStateNormal];
        [_closeBtn setTitleColor:[UIColor box:StringFromButtonData(&kStr_shootContent)] forState:UIControlStateNormal];
        //: [_closeBtn setTitle:[NTESLanguageManager getTextWithKey:@"activity_group_chat_avatar_add_black"] forState:UIControlStateNormal];
        [_closeBtn setTitle:[LabelCell tinkleKey:StringFromButtonData(&kStr_coverTitle)] forState:UIControlStateNormal];
        //: [_closeBtn setImage:[UIImage imageNamed:@"report_black"] forState:UIControlStateNormal];
        [_closeBtn setImage:[UIImage imageNamed:StringFromButtonData(&kStr_buttonTitle)] forState:UIControlStateNormal];
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
        //: [_closeBtn layoutButtonWithEdgeInsetsStyle:(MKButtonEdgeInsetsStyleLeft) imageTitleSpace:10];
        [_closeBtn holder:(MKButtonEdgeInsetsStyleLeft) number:10];
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
        //: [_sureBtn setTitleColor:[UIColor colorWithHexString:@"666666"] forState:UIControlStateNormal];
        [_sureBtn setTitleColor:[UIColor box:StringFromButtonData(&kStr_shootContent)] forState:UIControlStateNormal];
        //: [_sureBtn setTitle:[NTESLanguageManager getTextWithKey:@"user_profile_avtivity_remove_friend"] forState:UIControlStateNormal];
        [_sureBtn setTitle:[LabelCell tinkleKey:StringFromButtonData(&kStr_messageSizeValue)] forState:UIControlStateNormal];
        //: [_sureBtn setImage:[UIImage imageNamed:@"report_delete"] forState:UIControlStateNormal];
        [_sureBtn setImage:[UIImage imageNamed:StringFromButtonData(&kStr_coverText)] forState:UIControlStateNormal];
        //: _sureBtn.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
        _sureBtn.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
        //: _sureBtn.layer.borderWidth = 0.5;
        _sureBtn.layer.borderWidth = 0.5;
        //: _sureBtn.layer.borderColor = [UIColor colorWithRed:236/255.0 green:236/255.0 blue:236/255.0 alpha:1].CGColor;
        _sureBtn.layer.borderColor = [UIColor colorWithRed:236/255.0 green:236/255.0 blue:236/255.0 alpha:1].CGColor;
        //: _sureBtn.layer.cornerRadius = 10;
        _sureBtn.layer.cornerRadius = 10;
        //: _sureBtn.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
        _sureBtn.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
        //: _sureBtn.layer.shadowOffset = CGSizeMake(0,3);
        _sureBtn.layer.shadowOffset = CGSizeMake(0,3);
        //: _sureBtn.layer.shadowOpacity = 1;
        _sureBtn.layer.shadowOpacity = 1;
        //: _sureBtn.layer.shadowRadius = 0;
        _sureBtn.layer.shadowRadius = 0;
        //: [_sureBtn layoutButtonWithEdgeInsetsStyle:(MKButtonEdgeInsetsStyleLeft) imageTitleSpace:10];
        [_sureBtn holder:(MKButtonEdgeInsetsStyleLeft) number:10];
    }
    //: return _sureBtn;
    return _sureBtn;
}

//: - (void)handleBlack
- (void)handleCurrent
{
    //: [self animationClose];
    [self keyImage];
    //: if ([self.delegate respondsToSelector:@selector(didTouchBlackButton)]) {
    if ([self.delegate respondsToSelector:@selector(textWith)]) {
        //: [self.delegate didTouchBlackButton];
        [self.delegate textWith];
    }
}

//: - (void)showAnimation
- (void)disableDate
{
    //: [self animationClose];
    [self keyImage];
    //: if ([self.delegate respondsToSelector:@selector(didTouchDeleteButton)]) {
    if ([self.delegate respondsToSelector:@selector(clickColor)]) {
        //: [self.delegate didTouchDeleteButton];
        [self.delegate clickColor];
    }

}


//: - (void)animationClose
- (void)keyImage
{
    //: self.hidden = YES;
    self.hidden = YES;
}

//: - (void)animationShow
- (void)placeTag
{
    //: self.hidden = NO;
    self.hidden = NO;
}


//: @end
@end

Byte *ButtonDataToByte(ButtonData *data) {
    if (data->activism) return data->keyAtUse;
    for (int i = 0; i < data->topUse; i++) {
        data->keyAtUse[i] ^= data->sessionMessage;
    }
    data->keyAtUse[data->topUse] = 0;
    data->activism = true;
	if (data->topUse >= 1) {
		data->signal = data->keyAtUse[0];
	}
    return data->keyAtUse;
}

NSString *StringFromButtonData(ButtonData *data) {
    return [NSString stringWithUTF8String:(char *)ButtonDataToByte(data)];
}
