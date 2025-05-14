
#import <Foundation/Foundation.h>

NSString *StringFromOperationData(Byte *data);


//: contact_tag_fragment_sure
Byte kStr_successUseText[] = {83, 25, 96, 11, 56, 204, 139, 138, 176, 89, 30, 195, 207, 206, 212, 193, 195, 212, 191, 212, 193, 199, 191, 198, 210, 193, 199, 205, 197, 206, 212, 191, 211, 213, 210, 197, 156};


//: report_next_select_black
Byte kStr_shouldData[] = {89, 24, 37, 10, 39, 121, 163, 20, 13, 120, 151, 138, 149, 148, 151, 153, 132, 147, 138, 157, 153, 132, 152, 138, 145, 138, 136, 153, 132, 135, 145, 134, 136, 144, 235};


//: #3996D6
Byte kStr_selectedContent[] = {20, 7, 25, 13, 45, 24, 215, 145, 131, 237, 90, 4, 10, 60, 76, 82, 82, 79, 93, 79, 83};


//: 666666
Byte kStr_addScaleData[] = {75, 6, 52, 7, 199, 35, 11, 106, 106, 106, 106, 106, 106, 242};


//: #333333
Byte kStr_keyNameData[] = {99, 7, 24, 5, 230, 59, 75, 75, 75, 75, 75, 75, 232};


//: activity_group_chat_avatar_add_black
Byte kStr_accountLengthWithValue[] = {94, 36, 95, 4, 192, 194, 211, 200, 213, 200, 211, 216, 190, 198, 209, 206, 212, 207, 190, 194, 199, 192, 211, 190, 192, 213, 192, 211, 192, 209, 190, 192, 195, 195, 190, 193, 203, 192, 194, 202, 81};


//: contact_tag_fragment_cancel
Byte kStr_markName[] = {74, 27, 35, 4, 134, 146, 145, 151, 132, 134, 151, 130, 151, 132, 138, 130, 137, 149, 132, 138, 144, 136, 145, 151, 130, 134, 132, 145, 134, 136, 143, 182};


//: YES
Byte kStr_tingShootLeftData[] = {32, 3, 51, 7, 251, 26, 149, 140, 120, 134, 173};


//: #34AECA
Byte kStr_topText[] = {61, 7, 26, 6, 202, 91, 61, 77, 78, 91, 95, 93, 91, 180};

// __DEBUG__
// __CLOSE_PRINT__
//
//  BackgroundView.m
//  Lemon
//
//  Created by Yan Wang on 2025/2/15.
//  Copyright © 2025 Lemon. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZMONReportBlackView.h"
#import "BackgroundView.h"

//: @interface ZMONReportBlackView ()
@interface BackgroundView ()

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

//: @implementation ZMONReportBlackView
@implementation BackgroundView

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
        [self initByLanguage];

    }
    //: return self;
    return self;
}


//: - (void)initUI{
- (void)initByLanguage{
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
    labsubLabel.textColor = [UIColor box:StringFromOperationData(kStr_keyNameData)];
    //: labsubLabel.numberOfLines = 0;
    labsubLabel.numberOfLines = 0;
    //: labsubLabel.text = [NTESLanguageManager getTextWithKey:@"report_next_select_black"];
    labsubLabel.text = [LabelCell tinkleKey:StringFromOperationData(kStr_shouldData)];
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

//: - (void)handleBlack{
- (void)handleCurrent{

//    __weak typeof(self) wself = self;
//
//        [[NIMSDK sharedSDK].userManager addToBlackList:wself.userID completion:^(NSError *error) {
//
//            if (!error) {
//                [wself makeToast:LangKey(@"group_chat_avatar_activity_add_black_success") duration:2.0f position:CSToastPositionCenter];
//            }else{
//                [wself makeToast:LangKey(@"black_list_activity_add_black_failed") duration:2.0f position:CSToastPositionCenter];
//
//            }
//        }];
//    [self animationClose];
    //: [self animationClose];
    [self keyImage];

    //: self.speiceBackBlock(@"YES");
    self.speiceBackBlock(StringFromOperationData(kStr_tingShootLeftData));
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
        //: _titleLabel.text = [NTESLanguageManager getTextWithKey:@"activity_group_chat_avatar_add_black"];
        _titleLabel.text = [LabelCell tinkleKey:StringFromOperationData(kStr_accountLengthWithValue)];
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
        //: [_closeBtn setTitleColor:[UIColor colorWithHexString:@"666666"] forState:UIControlStateNormal];
        [_closeBtn setTitleColor:[UIColor box:StringFromOperationData(kStr_addScaleData)] forState:UIControlStateNormal];
        //: [_closeBtn setTitle:[NTESLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] forState:UIControlStateNormal];
        [_closeBtn setTitle:[LabelCell tinkleKey:StringFromOperationData(kStr_markName)] forState:UIControlStateNormal];

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
        //: [_sureBtn addTarget:self action:@selector(handleBlack) forControlEvents:UIControlEventTouchUpInside];
        [_sureBtn addTarget:self action:@selector(handleCurrent) forControlEvents:UIControlEventTouchUpInside];
        //: _sureBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        _sureBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [_sureBtn setTitleColor:[UIColor colorWithHexString:@"#34AECA"] forState:UIControlStateNormal];
        [_sureBtn setTitleColor:[UIColor box:StringFromOperationData(kStr_topText)] forState:UIControlStateNormal];
        //: [_sureBtn setTitle:[NTESLanguageManager getTextWithKey:@"contact_tag_fragment_sure"] forState:UIControlStateNormal];
        [_sureBtn setTitle:[LabelCell tinkleKey:StringFromOperationData(kStr_successUseText)] forState:UIControlStateNormal];
        //: _sureBtn.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
        _sureBtn.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
        //: _sureBtn.layer.borderWidth = 0.5;
        _sureBtn.layer.borderWidth = 0.5;
        //: _sureBtn.layer.borderColor = [UIColor colorWithHexString:@"#34AECA"].CGColor;
        _sureBtn.layer.borderColor = [UIColor box:StringFromOperationData(kStr_topText)].CGColor;
        //: _sureBtn.layer.cornerRadius = 10;
        _sureBtn.layer.cornerRadius = 10;
        //: _sureBtn.layer.shadowColor = [UIColor colorWithHexString:@"#3996D6"].CGColor;
        _sureBtn.layer.shadowColor = [UIColor box:StringFromOperationData(kStr_selectedContent)].CGColor;
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
- (void)counterval
{
    //: self.hidden = NO;
    self.hidden = NO;

}



//: @end
@end

Byte * OperationDataToCache(Byte *data) {
    int elementTap = data[0];
    int sound = data[1];
    Byte buttonTap = data[2];
    int smallness = data[3];
    if (!elementTap) return data + smallness;
    for (int i = smallness; i < smallness + sound; i++) {
        int value = data[i] - buttonTap;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[smallness + sound] = 0;
    return data + smallness;
}

NSString *StringFromOperationData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)OperationDataToCache(data)];
}
