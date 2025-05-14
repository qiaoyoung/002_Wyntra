
#import <Foundation/Foundation.h>

NSString *StringFromCruiseData(Byte *data);


//: mine_btn_right
Byte kStr_textPitCoverValue[] = {41, 14, 6, 163, 108, 181, 116, 104, 103, 105, 114, 95, 110, 116, 98, 95, 101, 110, 105, 109, 75};


//: user_icon_1
Byte kStr_wheneverLatterData[] = {79, 11, 7, 165, 146, 94, 221, 49, 95, 110, 111, 99, 105, 95, 114, 101, 115, 117, 9};


//: #3F3F3F
Byte kStr_latterPitTitle[] = {36, 7, 8, 206, 106, 30, 13, 93, 70, 51, 70, 51, 70, 51, 35, 174};


//: ic_ma
Byte kStr_extensiveCruiseText[] = {47, 5, 3, 97, 109, 95, 99, 105, 131};


//: ic_edit
Byte kStr_viewTrulyData[] = {93, 7, 13, 141, 80, 232, 213, 48, 7, 144, 13, 158, 251, 116, 105, 100, 101, 95, 99, 105, 142};


//: comment_setting_activity_title
Byte kStr_hopefulData[] = {37, 30, 10, 212, 8, 149, 251, 97, 174, 93, 101, 108, 116, 105, 116, 95, 121, 116, 105, 118, 105, 116, 99, 97, 95, 103, 110, 105, 116, 116, 101, 115, 95, 116, 110, 101, 109, 109, 111, 99, 119};


//: #203152
Byte kStr_scanStainSpeciesValue[] = {23, 7, 4, 224, 50, 53, 49, 51, 48, 50, 35, 200};


//: CFBundleShortVersionString
Byte kStr_fibText[] = {70, 26, 13, 147, 157, 96, 26, 122, 108, 198, 97, 173, 110, 103, 110, 105, 114, 116, 83, 110, 111, 105, 115, 114, 101, 86, 116, 114, 111, 104, 83, 101, 108, 100, 110, 117, 66, 70, 67, 197};


//: share_title
Byte kStr_neverthelessValue[] = {80, 11, 12, 63, 59, 83, 178, 11, 77, 234, 170, 223, 101, 108, 116, 105, 116, 95, 101, 114, 97, 104, 115, 134};


//: ic_Report
Byte kStr_platText[] = {11, 9, 4, 142, 116, 114, 111, 112, 101, 82, 95, 99, 105, 132};


//: report_activity_title
Byte kStr_botData[] = {58, 21, 11, 60, 35, 137, 151, 54, 104, 83, 147, 101, 108, 116, 105, 116, 95, 121, 116, 105, 118, 105, 116, 99, 97, 95, 116, 114, 111, 112, 101, 114, 242};


//: btn_right
Byte kStr_lysisIndexValue[] = {80, 9, 8, 169, 121, 148, 107, 2, 116, 104, 103, 105, 114, 95, 110, 116, 98, 69};


//: ic_Security_Settings
Byte kStr_fieldGlanceData[] = {71, 20, 4, 35, 115, 103, 110, 105, 116, 116, 101, 83, 95, 121, 116, 105, 114, 117, 99, 101, 83, 95, 99, 105, 22};


//: ic_version
Byte kStr_practicallyData[] = {5, 10, 8, 54, 171, 97, 126, 201, 110, 111, 105, 115, 114, 101, 118, 95, 99, 105, 42};


//: fragment_my_version
Byte kStr_currentWheneverName[] = {87, 19, 6, 187, 222, 50, 110, 111, 105, 115, 114, 101, 118, 95, 121, 109, 95, 116, 110, 101, 109, 103, 97, 114, 102, 122};


//: ic_General_settings
Byte kStr_galData[] = {29, 19, 10, 231, 141, 245, 101, 81, 1, 206, 115, 103, 110, 105, 116, 116, 101, 115, 95, 108, 97, 114, 101, 110, 101, 71, 95, 99, 105, 250};


//: ic_Share
Byte kStr_furnitureText[] = {8, 8, 5, 228, 49, 101, 114, 97, 104, 83, 95, 99, 105, 73};


//: safe_setting_activity_title
Byte kStr_userName[] = {99, 27, 13, 255, 178, 93, 77, 28, 64, 102, 104, 157, 211, 101, 108, 116, 105, 116, 95, 121, 116, 105, 118, 105, 116, 99, 97, 95, 103, 110, 105, 116, 116, 101, 115, 95, 101, 102, 97, 115, 29};


//: #A148FF
Byte kStr_hopefulName[] = {96, 7, 4, 64, 70, 70, 56, 52, 49, 65, 35, 97};


//: wallet_activity_title
Byte kStr_glanceData[] = {69, 21, 4, 55, 101, 108, 116, 105, 116, 95, 121, 116, 105, 118, 105, 116, 99, 97, 95, 116, 101, 108, 108, 97, 119, 224};

// __DEBUG__
// __CLOSE_PRINT__
//
//  ValueViewCell.m
//  NIM
//
//  Created by 彭爽 on 2021/9/10.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESMainCenterCell.h"
#import "ValueViewCell.h"
//: #import "ZZZUserQRCodeViewController.h"
#import "MortalSuggestViewController.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"

//: @implementation NTESMainCenterCell
@implementation ValueViewCell

//: - (void)initSubviews{
- (void)initContainer{

    //: self.backgroundColor = [UIColor clearColor];
    self.backgroundColor = [UIColor clearColor];

    //: UIButton *backGroundView = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *backGroundView = [UIButton buttonWithType:UIButtonTypeCustom];
    //: backGroundView.backgroundColor = [UIColor whiteColor];
    backGroundView.backgroundColor = [UIColor whiteColor];
    //: backGroundView.layer.masksToBounds = YES;
    backGroundView.layer.masksToBounds = YES;
    //: backGroundView.layer.cornerRadius = 10;
    backGroundView.layer.cornerRadius = 10;
    //: [backGroundView addTarget:self action:@selector(buttonClick) forControlEvents:UIControlEventTouchUpInside];
    [backGroundView addTarget:self action:@selector(fullItem) forControlEvents:UIControlEventTouchUpInside];
    //: [self addSubview:backGroundView];
    [self addSubview:backGroundView];
    //: [backGroundView mas_makeConstraints:^(MASConstraintMaker *make) {
    [backGroundView mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.top.mas_offset(0);
        make.top.mas_offset(0);
        //: make.left.mas_offset(10);
        make.left.mas_offset(10);
        //: make.right.mas_offset(-10);
        make.right.mas_offset(-10);
        //: make.height.mas_equalTo(60);
        make.height.mas_equalTo(60);
        //: make.bottom.mas_offset(0);
        make.bottom.mas_offset(0);
    //: }];
    }];

    //: UIImageView *imageIcon = [[UIImageView alloc] init];
    UIImageView *imageIcon = [[UIImageView alloc] init];
    //: imageIcon.image = [UIImage imageNamed:@"user_icon_1"];
    imageIcon.image = [UIImage imageNamed:StringFromCruiseData(kStr_wheneverLatterData)];
    //: imageIcon.layer.masksToBounds = YES;
    imageIcon.layer.masksToBounds = YES;
    //: imageIcon.layer.cornerRadius = 15;
    imageIcon.layer.cornerRadius = 15;
    //: [backGroundView addSubview:imageIcon];
    [backGroundView addSubview:imageIcon];
    //: [imageIcon mas_makeConstraints:^(MASConstraintMaker *make) {
    [imageIcon mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.left.mas_offset(10);
        make.left.mas_offset(10);
        //: make.centerY.mas_offset(0);
        make.centerY.mas_offset(0);
        //: make.width.mas_equalTo(30);
        make.width.mas_equalTo(30);
        //: make.height.mas_equalTo(30);
        make.height.mas_equalTo(30);
    //: }];
    }];

    //: UILabel *titleLabel = [[UILabel alloc] init];
    UILabel *titleLabel = [[UILabel alloc] init];
    //: titleLabel.text = [NTESLanguageManager getTextWithKey:@"wallet_activity_title"];
    titleLabel.text = [LabelCell tinkleKey:StringFromCruiseData(kStr_glanceData)];//@"我的钱包";
    //: titleLabel.font = [UIFont systemFontOfSize:16];
    titleLabel.font = [UIFont systemFontOfSize:16];
    //: titleLabel.textColor = [UIColor colorWithHexString:@"#3F3F3F"];
    titleLabel.textColor = [UIColor box:StringFromCruiseData(kStr_latterPitTitle)];
    //: [backGroundView addSubview:titleLabel];
    [backGroundView addSubview:titleLabel];
    //: [titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
    [titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.left.mas_equalTo(imageIcon.mas_right).mas_offset(10);
        make.left.mas_equalTo(imageIcon.mas_right).mas_offset(10);
        //: make.centerY.mas_offset(0);
        make.centerY.mas_offset(0);
        //: make.width.mas_equalTo(100);
        make.width.mas_equalTo(100);
        //: make.height.mas_equalTo(30);
        make.height.mas_equalTo(30);
    //: }];
    }];

    //: UIImageView *arrowImage = [[UIImageView alloc] init];
    UIImageView *arrowImage = [[UIImageView alloc] init];
    //: arrowImage.image = [UIImage imageNamed:@"btn_right"];
    arrowImage.image = [UIImage imageNamed:StringFromCruiseData(kStr_lysisIndexValue)];
    //: [backGroundView addSubview:arrowImage];
    [backGroundView addSubview:arrowImage];
    //: [arrowImage mas_makeConstraints:^(MASConstraintMaker *make) {
    [arrowImage mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.right.mas_offset(-20);
        make.right.mas_offset(-20);
        //: make.centerY.mas_offset(0);
        make.centerY.mas_offset(0);
        //: make.height.mas_equalTo(12);
        make.height.mas_equalTo(12);
        //: make.width.mas_equalTo(12);
        make.width.mas_equalTo(12);

    //: }];
    }];


}

//: -(void)buttonClick{
-(void)fullItem{
    //: if (self.delegate && [self.delegate respondsToSelector:@selector(myWallet)]) {
    if (self.delegate && [self.delegate respondsToSelector:@selector(beginTing)]) {
        //: [self.delegate myWallet];
        [self.delegate beginTing];
    }
}

//: @end
@end


//: @interface NTESMainCenterCell_1 ()
@interface ChiefView ()
//: @property (nonatomic ,strong) NSMutableArray *titleArray;
@property (nonatomic ,strong) NSMutableArray *titleArray;
//: @property (nonatomic ,strong) NSMutableArray *imgaeArray;
@property (nonatomic ,strong) NSMutableArray *imgaeArray;
//: @property (nonatomic ,strong) NSMutableArray *selectArray;
@property (nonatomic ,strong) NSMutableArray *selectArray;


//: @end
@end
//: @implementation NTESMainCenterCell_1
@implementation ChiefView

//: - (void)initSubviews{
- (void)initContainer{

    //: self.backgroundColor = [UIColor clearColor];
    self.backgroundColor = [UIColor clearColor];


    //: _titleArray = @[].mutableCopy;
    _titleArray = @[].mutableCopy;
    //: _imgaeArray = @[].mutableCopy;
    _imgaeArray = @[].mutableCopy;

    //: NSString *share = [NTESLanguageManager getTextWithKey:@"share_title"];
    NSString *share = [LabelCell tinkleKey:StringFromCruiseData(kStr_neverthelessValue)];//分享
    //: NSString *report_activity_title = [NTESLanguageManager getTextWithKey:@"report_activity_title"];
    NSString *report_activity_title = [LabelCell tinkleKey:StringFromCruiseData(kStr_botData)];

    //: for (int i = 0; i < 2; i++) {
    for (int i = 0; i < 2; i++) {

        //: [_titleArray addObject:report_activity_title];
        [_titleArray addObject:report_activity_title];
        //: [_imgaeArray addObject:@"ic_Report"];
        [_imgaeArray addObject:StringFromCruiseData(kStr_platText)];

        //: [_titleArray addObject:share];
        [_titleArray addObject:share];
        //: [_imgaeArray addObject:@"ic_Share"];
        [_imgaeArray addObject:StringFromCruiseData(kStr_furnitureText)];

    }


    //: UIView *backGroundView = [[UIView alloc] init];
    UIView *backGroundView = [[UIView alloc] init];
    //: backGroundView.backgroundColor = [UIColor clearColor];
    backGroundView.backgroundColor = [UIColor clearColor];
    //: [self addSubview:backGroundView];
    [self addSubview:backGroundView];
    //: [backGroundView mas_makeConstraints:^(MASConstraintMaker *make) {
    [backGroundView mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.top.mas_offset(0);
        make.top.mas_offset(0);
        //: make.left.mas_offset(0);
        make.left.mas_offset(0);
        //: make.right.mas_offset(0);
        make.right.mas_offset(0);
        //: make.height.mas_equalTo(100);
        make.height.mas_equalTo(100);
        //: make.bottom.mas_offset(0);
        make.bottom.mas_offset(0);
    //: }];
    }];


    //: for (int i = 0; i < 2; i++) {
    for (int i = 0; i < 2; i++) {
        //: UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
        //: backButton.tag = 100+i;
        backButton.tag = 100+i;
        //: backButton.layer.cornerRadius = 8;
        backButton.layer.cornerRadius = 8;
        //: backButton.layer.masksToBounds = YES;
        backButton.layer.masksToBounds = YES;
        //: backButton.backgroundColor = [UIColor whiteColor];
        backButton.backgroundColor = [UIColor whiteColor];
        //: [backGroundView addSubview:backButton];
        [backGroundView addSubview:backButton];
        //: [backButton mas_makeConstraints:^(MASConstraintMaker *make) {
        [backButton mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.top.mas_offset(0);
            make.top.mas_offset(0);
            //: make.left.mas_equalTo(([[UIScreen mainScreen] bounds].size.width/2.f)*i + 10);
            make.left.mas_equalTo(([[UIScreen mainScreen] bounds].size.width/2.f)*i + 10);
            //: make.right.mas_offset(-([[UIScreen mainScreen] bounds].size.width/2.f*(1-i))-10);
            make.right.mas_offset(-([[UIScreen mainScreen] bounds].size.width/2.f*(1-i))-10);
            //: make.height.mas_equalTo(100);
            make.height.mas_equalTo(100);
        //: }];
        }];

        //: UIImageView *imageIcon = [[UIImageView alloc] init];
        UIImageView *imageIcon = [[UIImageView alloc] init];
        //: imageIcon.layer.masksToBounds = YES;
        imageIcon.layer.masksToBounds = YES;
        //: imageIcon.layer.cornerRadius = 15;
        imageIcon.layer.cornerRadius = 15;
        //: [backButton addSubview:imageIcon];
        [backButton addSubview:imageIcon];
        //: [imageIcon mas_makeConstraints:^(MASConstraintMaker *make) {
        [imageIcon mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.left.mas_offset(15);
            make.left.mas_offset(15);
            //: make.top.mas_offset(15);
            make.top.mas_offset(15);
            //: make.width.mas_equalTo(36);
            make.width.mas_equalTo(36);
            //: make.height.mas_equalTo(36);
            make.height.mas_equalTo(36);
        //: }];
        }];

        //: UILabel *titleLabel = [[UILabel alloc] init];
        UILabel *titleLabel = [[UILabel alloc] init];
        //: titleLabel.font = [UIFont boldSystemFontOfSize:14];
        titleLabel.font = [UIFont boldSystemFontOfSize:14];
        //: titleLabel.textColor = [UIColor colorWithHexString:@"#203152"];
        titleLabel.textColor = [UIColor box:StringFromCruiseData(kStr_scanStainSpeciesValue)];
        //: [backButton addSubview:titleLabel];
        [backButton addSubview:titleLabel];
        //: [titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        [titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.left.mas_offset(15);
            make.left.mas_offset(15);
            //: make.top.mas_equalTo(imageIcon.mas_bottom).mas_offset(15);
            make.top.mas_equalTo(imageIcon.mas_bottom).mas_offset(15);
            //: make.width.mas_equalTo(backButton.mas_width).mas_offset(-20);
            make.width.mas_equalTo(backButton.mas_width).mas_offset(-20);
            //: make.height.mas_equalTo(20);
            make.height.mas_equalTo(20);
        //: }];
        }];

        //: UIImageView *arrowImage = [[UIImageView alloc] init];
        UIImageView *arrowImage = [[UIImageView alloc] init];
        //: arrowImage.image = [UIImage imageNamed:@"mine_btn_right"];
        arrowImage.image = [UIImage imageNamed:StringFromCruiseData(kStr_textPitCoverValue)];
        //: [backButton addSubview:arrowImage];
        [backButton addSubview:arrowImage];
        //: [arrowImage mas_makeConstraints:^(MASConstraintMaker *make) {
        [arrowImage mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.right.mas_offset(-15);
            make.right.mas_offset(-15);
            //: make.centerY.mas_equalTo(imageIcon.mas_centerY);
            make.centerY.mas_equalTo(imageIcon.mas_centerY);
            //: make.height.mas_equalTo(12);
            make.height.mas_equalTo(12);
            //: make.width.mas_equalTo(12);
            make.width.mas_equalTo(12);

        //: }];
        }];

        //: imageIcon.image = [UIImage imageNamed:_imgaeArray[i]];
        imageIcon.image = [UIImage imageNamed:_imgaeArray[i]];
        //: titleLabel.text = _titleArray[i];
        titleLabel.text = _titleArray[i];
        //: if ([titleLabel.text isEqualToString:report_activity_title]) {
        if ([titleLabel.text isEqualToString:report_activity_title]) {
            //: [backButton addTarget:self action:@selector(opinionBack) forControlEvents:UIControlEventTouchUpInside];
            [backButton addTarget:self action:@selector(theoremSearchion) forControlEvents:UIControlEventTouchUpInside];

        //: }else if ([titleLabel.text isEqualToString:share]){
        }else if ([titleLabel.text isEqualToString:share]){
            //: [backButton addTarget:self action:@selector(shareClick) forControlEvents:UIControlEventTouchUpInside];
            [backButton addTarget:self action:@selector(withExist) forControlEvents:UIControlEventTouchUpInside];

        }

    }
}

//: -(void)opinionBack{
-(void)theoremSearchion{
    //: if (self.delegate && [self.delegate respondsToSelector:@selector(opinionBack)]) {
    if (self.delegate && [self.delegate respondsToSelector:@selector(theoremSearchion)]) {
        //: [self.delegate opinionBack];
        [self.delegate theoremSearchion];
    }
}
//: -(void)signClick{
-(void)towardSession{
    //: if (self.delegate && [self.delegate respondsToSelector:@selector(signClick)]) {
    if (self.delegate && [self.delegate respondsToSelector:@selector(towardSession)]) {
        //: [self.delegate signClick];
        [self.delegate towardSession];
    }
}
//: -(void)shareClick{
-(void)withExist{
    //: if (self.delegate && [self.delegate respondsToSelector:@selector(shareUserInfo)]) {
    if (self.delegate && [self.delegate respondsToSelector:@selector(optionUser)]) {
        //: [self.delegate shareUserInfo];
        [self.delegate optionUser];
    }
}


//: @end
@end





//: @implementation NTESMainCenterCell_2
@implementation MediaViewCell

//: - (void)initSubviews{
- (void)initContainer{
    //: self.backgroundColor = [UIColor clearColor];
    self.backgroundColor = [UIColor clearColor];

    //: UIView *backGroundView = [[UIView alloc] init];
    UIView *backGroundView = [[UIView alloc] init];
    //: backGroundView.backgroundColor = [UIColor clearColor];
    backGroundView.backgroundColor = [UIColor clearColor];
    //: [self addSubview:backGroundView];
    [self addSubview:backGroundView];
    //: [backGroundView mas_makeConstraints:^(MASConstraintMaker *make) {
    [backGroundView mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.top.mas_offset(0);
        make.top.mas_offset(0);
        //: make.left.mas_offset(0);
        make.left.mas_offset(0);
        //: make.right.mas_offset(0);
        make.right.mas_offset(0);
        //: make.height.mas_equalTo(100);
        make.height.mas_equalTo(100);
        //: make.bottom.mas_offset(0);
        make.bottom.mas_offset(0);
    //: }];
    }];


    //: NSString *safe_setting_activity_title = [NTESLanguageManager getTextWithKey:@"safe_setting_activity_title"];
    NSString *safe_setting_activity_title = [LabelCell tinkleKey:StringFromCruiseData(kStr_userName)];
    //: NSString *comment_setting_activity_title = [NTESLanguageManager getTextWithKey:@"comment_setting_activity_title"];
    NSString *comment_setting_activity_title = [LabelCell tinkleKey:StringFromCruiseData(kStr_hopefulData)];

    //: for (int i = 0; i < 2; i++) {
    for (int i = 0; i < 2; i++) {
        //: UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
        //: backButton.layer.cornerRadius = 8;
        backButton.layer.cornerRadius = 8;
        //: backButton.layer.masksToBounds = YES;
        backButton.layer.masksToBounds = YES;
        //: backButton.backgroundColor = [UIColor whiteColor];
        backButton.backgroundColor = [UIColor whiteColor];
        //: backButton.tag = 100+i;
        backButton.tag = 100+i;
        //: [backButton addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
        [backButton addTarget:self action:@selector(showsing:) forControlEvents:UIControlEventTouchUpInside];
        //: [backGroundView addSubview:backButton];
        [backGroundView addSubview:backButton];
        //: [backButton mas_makeConstraints:^(MASConstraintMaker *make) {
        [backButton mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.top.mas_offset(0);
            make.top.mas_offset(0);
            //: make.left.mas_equalTo(([[UIScreen mainScreen] bounds].size.width/2.f)*i + 10);
            make.left.mas_equalTo(([[UIScreen mainScreen] bounds].size.width/2.f)*i + 10);
            //: make.right.mas_offset(-([[UIScreen mainScreen] bounds].size.width/2.f*(1-i))-10);
            make.right.mas_offset(-([[UIScreen mainScreen] bounds].size.width/2.f*(1-i))-10);
            //: make.height.mas_equalTo(100);
            make.height.mas_equalTo(100);
        //: }];
        }];

        //: UIImageView *imageIcon = [[UIImageView alloc] init];
        UIImageView *imageIcon = [[UIImageView alloc] init];
        //: [backButton addSubview:imageIcon];
        [backButton addSubview:imageIcon];
        //: [imageIcon mas_makeConstraints:^(MASConstraintMaker *make) {
        [imageIcon mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.left.mas_offset(15);
            make.left.mas_offset(15);
            //: make.top.mas_offset(15);
            make.top.mas_offset(15);
            //: make.width.mas_equalTo(36);
            make.width.mas_equalTo(36);
            //: make.height.mas_equalTo(36);
            make.height.mas_equalTo(36);
        //: }];
        }];

        //: UILabel *titleLabel = [[UILabel alloc] init];
        UILabel *titleLabel = [[UILabel alloc] init];
        //: titleLabel.text = @"";
        titleLabel.text = @"";
        //: titleLabel.font = [UIFont boldSystemFontOfSize:14];
        titleLabel.font = [UIFont boldSystemFontOfSize:14];
        //: titleLabel.textColor = [UIColor colorWithHexString:@"#203152"];
        titleLabel.textColor = [UIColor box:StringFromCruiseData(kStr_scanStainSpeciesValue)];
        //: [backButton addSubview:titleLabel];
        [backButton addSubview:titleLabel];
        //: [titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        [titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.left.mas_offset(15);
            make.left.mas_offset(15);
            //: make.top.mas_equalTo(imageIcon.mas_bottom).mas_offset(15);
            make.top.mas_equalTo(imageIcon.mas_bottom).mas_offset(15);
            //: make.width.mas_equalTo(backButton.mas_width).mas_offset(-20);
            make.width.mas_equalTo(backButton.mas_width).mas_offset(-20);
            //: make.height.mas_equalTo(20);
            make.height.mas_equalTo(20);
        //: }];
        }];

        //: UIImageView *arrowImage = [[UIImageView alloc] init];
        UIImageView *arrowImage = [[UIImageView alloc] init];
        //: arrowImage.image = [UIImage imageNamed:@"mine_btn_right"];
        arrowImage.image = [UIImage imageNamed:StringFromCruiseData(kStr_textPitCoverValue)];
        //: [backButton addSubview:arrowImage];
        [backButton addSubview:arrowImage];
        //: [arrowImage mas_makeConstraints:^(MASConstraintMaker *make) {
        [arrowImage mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.right.mas_offset(-15);
            make.right.mas_offset(-15);
            //: make.centerY.mas_equalTo(imageIcon.mas_centerY);
            make.centerY.mas_equalTo(imageIcon.mas_centerY);
            //: make.height.mas_equalTo(12);
            make.height.mas_equalTo(12);
            //: make.width.mas_equalTo(12);
            make.width.mas_equalTo(12);

        //: }];
        }];

        //: if (i == 0) {
        if (i == 0) {
            //: imageIcon.image = [UIImage imageNamed:@"ic_Security_Settings"];
            imageIcon.image = [UIImage imageNamed:StringFromCruiseData(kStr_fieldGlanceData)];
            //: titleLabel.text = safe_setting_activity_title;
            titleLabel.text = safe_setting_activity_title;
        //: }else if (i == 1){
        }else if (i == 1){
            //: imageIcon.image = [UIImage imageNamed:@"ic_General_settings"];
            imageIcon.image = [UIImage imageNamed:StringFromCruiseData(kStr_galData)];
            //: titleLabel.text = comment_setting_activity_title;
            titleLabel.text = comment_setting_activity_title;

        }
    }
}

//: -(void)buttonClick:(UIButton *)sender{
-(void)showsing:(UIButton *)sender{

    //: NSInteger tag = sender.tag -100;
    NSInteger tag = sender.tag -100;

    //: switch (tag) {
    switch (tag) {
        //: case 0:
        case 0:
        {
            //: if (self.delegate && [self.delegate respondsToSelector:@selector(safetySeting)]) {
            if (self.delegate && [self.delegate respondsToSelector:@selector(spaceNormal)]) {
                //: [self.delegate safetySeting];
                [self.delegate spaceNormal];
            }
        }
            //: break;
            break;
        //: case 1:
        case 1:
        {
            //: if (self.delegate && [self.delegate respondsToSelector:@selector(generalSeting)]) {
            if (self.delegate && [self.delegate respondsToSelector:@selector(pandemicInfo)]) {
                //: [self.delegate generalSeting];
                [self.delegate pandemicInfo];
            }
        }
            //: break;
            break;

        //: default:
        default:
            //: break;
            break;
    }

}

//: @end
@end






//: @implementation NTESMainCenterCell_3
@implementation EdgeViewCell

//: - (void)initSubviews{
- (void)initContainer{

    //: self.backgroundColor = [UIColor clearColor];
    self.backgroundColor = [UIColor clearColor];

    //: UIButton *backGroundView = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *backGroundView = [UIButton buttonWithType:UIButtonTypeCustom];
    //: backGroundView.backgroundColor = [UIColor whiteColor];
    backGroundView.backgroundColor = [UIColor whiteColor];
    //: backGroundView.layer.masksToBounds = YES;
    backGroundView.layer.masksToBounds = YES;
    //: backGroundView.layer.cornerRadius = 10;
    backGroundView.layer.cornerRadius = 10;
    //: [backGroundView addTarget:self action:@selector(buttonClick) forControlEvents:UIControlEventTouchUpInside];
    [backGroundView addTarget:self action:@selector(fullItem) forControlEvents:UIControlEventTouchUpInside];
    //: [self addSubview:backGroundView];
    [self addSubview:backGroundView];
    //: [backGroundView mas_makeConstraints:^(MASConstraintMaker *make) {
    [backGroundView mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.top.mas_offset(0);
        make.top.mas_offset(0);
        //: make.left.mas_offset(10);
        make.left.mas_offset(10);
        //: make.right.mas_offset(-10);
        make.right.mas_offset(-10);
        //: make.height.mas_equalTo(60);
        make.height.mas_equalTo(60);
        //: make.bottom.mas_offset(0);
        make.bottom.mas_offset(0);
    //: }];
    }];

    //: UIImageView *imageIcon = [[UIImageView alloc] init];
    UIImageView *imageIcon = [[UIImageView alloc] init];
    //: imageIcon.image = [UIImage imageNamed:@"ic_version"];
    imageIcon.image = [UIImage imageNamed:StringFromCruiseData(kStr_practicallyData)];
    //: imageIcon.layer.masksToBounds = YES;
    imageIcon.layer.masksToBounds = YES;
    //: imageIcon.layer.cornerRadius = 15;
    imageIcon.layer.cornerRadius = 15;
    //: [backGroundView addSubview:imageIcon];
    [backGroundView addSubview:imageIcon];
    //: [imageIcon mas_makeConstraints:^(MASConstraintMaker *make) {
    [imageIcon mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.left.mas_offset(10);
        make.left.mas_offset(10);
        //: make.centerY.mas_offset(0);
        make.centerY.mas_offset(0);
        //: make.width.mas_equalTo(30);
        make.width.mas_equalTo(30);
        //: make.height.mas_equalTo(30);
        make.height.mas_equalTo(30);
    //: }];
    }];



    //: NSString *fragment_my_version = [NTESLanguageManager getTextWithKey:@"fragment_my_version"];
    NSString *fragment_my_version = [LabelCell tinkleKey:StringFromCruiseData(kStr_currentWheneverName)];
    //: NSDictionary *infoDic = [[NSBundle mainBundle] infoDictionary];
    NSDictionary *infoDic = [[NSBundle mainBundle] infoDictionary];
    //: NSString *appVersion = [infoDic objectForKey:@"CFBundleShortVersionString"];
    NSString *appVersion = [infoDic objectForKey:StringFromCruiseData(kStr_fibText)];// 获取App的版本号
    //: UILabel *titleLabel = [[UILabel alloc] init];
    UILabel *titleLabel = [[UILabel alloc] init];
    //: titleLabel.text = [NSString stringWithFormat: @"%@：%@",fragment_my_version,appVersion];
    titleLabel.text = [NSString stringWithFormat: @"%@：%@",fragment_my_version,appVersion];
    //: titleLabel.font = [UIFont systemFontOfSize:16];
    titleLabel.font = [UIFont systemFontOfSize:16];
    //: titleLabel.textColor = [UIColor colorWithHexString:@"#3F3F3F"];
    titleLabel.textColor = [UIColor box:StringFromCruiseData(kStr_latterPitTitle)];
    //: [backGroundView addSubview:titleLabel];
    [backGroundView addSubview:titleLabel];
    //: [titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
    [titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.left.mas_equalTo(imageIcon.mas_right).mas_offset(10);
        make.left.mas_equalTo(imageIcon.mas_right).mas_offset(10);
        //: make.centerY.mas_offset(0);
        make.centerY.mas_offset(0);
        //: make.right.mas_equalTo(-10);
        make.right.mas_equalTo(-10);
        //: make.height.mas_equalTo(30);
        make.height.mas_equalTo(30);
    //: }];
    }];

}

//: -(void)buttonClick{
-(void)fullItem{
    //: NSLog(@"------");
}

//: @end
@end





//: @implementation NTESMainCenterCell_4
@implementation StateView

//: - (void)initSubviews{
- (void)initContainer{

}

//: @end
@end




//: @implementation NTESMainCenterHeader
@implementation MainView

//: -(instancetype)init{
-(instancetype)init{
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {

        //: self.backgroundColor = [UIColor clearColor];
        self.backgroundColor = [UIColor clearColor];
        //: [self initSubviews];
        [self initImage];
    }
    //: return self;
    return self;
}

//: -(void)initSubviews{
-(void)initImage{


    //: UIImageView *qcImage = [[UIImageView alloc] init];
    UIImageView *qcImage = [[UIImageView alloc] init];
    //: qcImage.image = [UIImage imageNamed:@"ic_ma"];
    qcImage.image = [UIImage imageNamed:StringFromCruiseData(kStr_extensiveCruiseText)];
    //: [self addSubview:qcImage];
    [self addSubview:qcImage];
    //: qcImage.userInteractionEnabled = YES;
    qcImage.userInteractionEnabled = YES;
    //: [qcImage mas_makeConstraints:^(MASConstraintMaker *make) {
    [qcImage mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.right.mas_offset(-20);
        make.right.mas_offset(-20);
        //: make.top.mas_offset([UIDevice vg_statusBarHeight]);
        make.top.mas_offset([UIDevice encounter]);
        //: make.height.mas_equalTo(28);
        make.height.mas_equalTo(28);
        //: make.width.mas_equalTo(28);
        make.width.mas_equalTo(28);
    //: }];
    }];
    //: UITapGestureRecognizer *tapIconSinger = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(myQRCodeButtnClick)];
    UITapGestureRecognizer *tapIconSinger = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(habitBar)];
    //: [qcImage addGestureRecognizer:tapIconSinger];
    [qcImage addGestureRecognizer:tapIconSinger];

    //: _headerImage = [[UIImageView alloc] init];
    _headerImage = [[UIImageView alloc] init];
    //: [self addSubview:_headerImage];
    [self addSubview:_headerImage];
    //: _headerImage.layer.cornerRadius = 55;
    _headerImage.layer.cornerRadius = 55;
    //: _headerImage.layer.shadowColor = [UIColor colorWithHexString:@"#A148FF"].CGColor;
    _headerImage.layer.shadowColor = [UIColor box:StringFromCruiseData(kStr_hopefulName)].CGColor;
    //: _headerImage.layer.shadowOffset = CGSizeMake(5, 5);
    _headerImage.layer.shadowOffset = CGSizeMake(5, 5);
    //: _headerImage.layer.masksToBounds = YES;
    _headerImage.layer.masksToBounds = YES;
    //: [_headerImage mas_makeConstraints:^(MASConstraintMaker *make) {
    [_headerImage mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.centerX.mas_offset(0);
        make.centerX.mas_offset(0);
        //: make.top.mas_offset([UIDevice vg_statusBarHeight]+18);
        make.top.mas_offset([UIDevice encounter]+18);
        //: make.width.mas_equalTo(110);
        make.width.mas_equalTo(110);
        //: make.height.mas_equalTo(110);
        make.height.mas_equalTo(110);
    //: }];
    }];



    //: _nickNameLabel = [[UILabel alloc] init];
    _nickNameLabel = [[UILabel alloc] init];
    //: _nickNameLabel.font = [UIFont boldSystemFontOfSize:20];
    _nickNameLabel.font = [UIFont boldSystemFontOfSize:20];
    //: _nickNameLabel.text = @"";
    _nickNameLabel.text = @"";
    //: _nickNameLabel.textColor = [UIColor blackColor];
    _nickNameLabel.textColor = [UIColor blackColor];
    //: [self addSubview:_nickNameLabel];
    [self addSubview:_nickNameLabel];
    //: _nickNameLabel.textAlignment = NSTextAlignmentCenter;
    _nickNameLabel.textAlignment = NSTextAlignmentCenter;
    //: [_nickNameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
    [_nickNameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.top.mas_equalTo(_headerImage.mas_bottom).mas_offset(12);
        make.top.mas_equalTo(_headerImage.mas_bottom).mas_offset(12);
        //: make.centerX.mas_offset(0);
        make.centerX.mas_offset(0);
        //: make.height.mas_equalTo(30);
        make.height.mas_equalTo(30);
    //: }];
    }];

    //: self.arrowImage = [[UIImageView alloc] init];
    self.arrowImage = [[UIImageView alloc] init];
    //: _arrowImage.image = [UIImage imageNamed:@"ic_edit"];
    _arrowImage.image = [UIImage imageNamed:StringFromCruiseData(kStr_viewTrulyData)];
    //: [self addSubview:_arrowImage];
    [self addSubview:_arrowImage];
    //: [_arrowImage mas_makeConstraints:^(MASConstraintMaker *make) {
    [_arrowImage mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.left.mas_equalTo(_nickNameLabel.mas_right).mas_offset(4);
        make.left.mas_equalTo(_nickNameLabel.mas_right).mas_offset(4);
        //: make.centerY.mas_equalTo(_nickNameLabel.mas_centerY);
        make.centerY.mas_equalTo(_nickNameLabel.mas_centerY);
        //: make.height.mas_equalTo(20);
        make.height.mas_equalTo(20);
        //: make.width.mas_equalTo(20);
        make.width.mas_equalTo(20);
    //: }];
    }];

    //: _accountLabel = [[UILabel alloc] init];
    _accountLabel = [[UILabel alloc] init];
    //: _accountLabel.font = [UIFont systemFontOfSize:12];
    _accountLabel.font = [UIFont systemFontOfSize:12];
    //: _accountLabel.text = @"";
    _accountLabel.text = @"";
    //: _accountLabel.textColor = [UIColor blackColor];
    _accountLabel.textColor = [UIColor blackColor];
    //: _accountLabel.textAlignment = NSTextAlignmentCenter;
    _accountLabel.textAlignment = NSTextAlignmentCenter;
    //: [self addSubview:_accountLabel];
    [self addSubview:_accountLabel];
    //: [_accountLabel mas_makeConstraints:^(MASConstraintMaker *make) {
    [_accountLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.top.mas_equalTo(_nickNameLabel.mas_bottom).mas_offset(4);
        make.top.mas_equalTo(_nickNameLabel.mas_bottom).mas_offset(4);
        //: make.centerX.mas_offset(0);
        make.centerX.mas_offset(0);
        //: make.width.mas_equalTo(180);
        make.width.mas_equalTo(180);
        //: make.height.mas_equalTo(20);
        make.height.mas_equalTo(20);
    //: }];
    }];



    //: UITapGestureRecognizer *tapSinger = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(userInfoClick)];
    UITapGestureRecognizer *tapSinger = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(toTitle)];
    //: [self addGestureRecognizer:tapSinger];
    [self addGestureRecognizer:tapSinger];

}

//: -(void)myQRCodeButtnClick{
-(void)habitBar{
    //: ZZZUserQRCodeViewController *vc = [[ZZZUserQRCodeViewController alloc] init];
    MortalSuggestViewController *vc = [[MortalSuggestViewController alloc] init];
    //: [self.topViewController.navigationController pushViewController:vc animated:YES];
    [self.replyKit.navigationController pushViewController:vc animated:YES];
}

//: - (UIViewController *)topViewController {
- (UIViewController *)replyKit {
    //: UIViewController *resultVC;
    UIViewController *resultVC;
    //: resultVC = [self _topViewController:[[UIApplication sharedApplication].windows.firstObject rootViewController]];
    resultVC = [self view:[[UIApplication sharedApplication].windows.firstObject rootViewController]];
    //: while (resultVC.presentedViewController) {
    while (resultVC.presentedViewController) {
        //: resultVC = [self _topViewController:resultVC.presentedViewController];
        resultVC = [self view:resultVC.presentedViewController];
    }
    //: return resultVC;
    return resultVC;
}

//: - (UIViewController *)_topViewController:(UIViewController *)vc {
- (UIViewController *)view:(UIViewController *)vc {
    //: if ([vc isKindOfClass:[UINavigationController class]]) {
    if ([vc isKindOfClass:[UINavigationController class]]) {
        //: return [self _topViewController:[(UINavigationController *)vc topViewController]];
        return [self view:[(UINavigationController *)vc topViewController]];
    //: } else if ([vc isKindOfClass:[UITabBarController class]]) {
    } else if ([vc isKindOfClass:[UITabBarController class]]) {
        //: return [self _topViewController:[(UITabBarController *)vc selectedViewController]];
        return [self view:[(UITabBarController *)vc selectedViewController]];
    //: } else {
    } else {
        //: return vc;
        return vc;
    }
    //: return nil;
    return nil;
}

//: -(void)reloadWithDictionary:(NSDictionary *)dictionary{
-(void)bluishPressed:(NSDictionary *)dictionary{
    //: NSString *userID = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSString *userID = [[NIMSDK sharedSDK].loginManager currentAccount];
    //: NIMUser *me = [[NIMSDK sharedSDK].userManager userInfo:userID];
    NIMUser *me = [[NIMSDK sharedSDK].userManager userInfo:userID];
    //: ZZZKitInfo *info = [[AppleProjectKit sharedKit] infoByUser:userID option:nil];
    MagnitudeCommentInfo *info = [[On along] toKey:userID image:nil];

    //: [_headerImage sd_setImageWithURL:[NSURL URLWithString:me.userInfo.avatarUrl] placeholderImage:info.avatarImage];
    [_headerImage sd_setImageWithURL:[NSURL URLWithString:me.userInfo.avatarUrl] placeholderImage:info.avatarImage];
    //: _nickNameLabel.text = me.userInfo.nickName;
    _nickNameLabel.text = me.userInfo.nickName;
    //: _accountLabel.text = emptyString([NIMUserDefaults standardUserDefaults].accountName);
    _accountLabel.text = emptyString([AlongDefaults off].accountName);

    //: [_nickNameLabel sizeToFit];
    [_nickNameLabel sizeToFit];
    //: [_accountLabel sizeToFit];
    [_accountLabel sizeToFit];

    //: _arrowImage.nim_left = _nickNameLabel.nim_right+10;
    _arrowImage.nim_left = _nickNameLabel.nim_right+10;
}

//: -(void)userInfoClick{
-(void)toTitle{

    //: if (self.delegate && [self.delegate respondsToSelector:@selector(userInfoCenter)]) {
    if (self.delegate && [self.delegate respondsToSelector:@selector(targetBlue)]) {
        //: [self.delegate userInfoCenter];
        [self.delegate targetBlue];
    }

}


//: @end
@end

Byte * CruiseDataToCache(Byte *data) {
    int barComplete = data[0];
    int galSix = data[1];
    int stop = data[2];
    if (!barComplete) return data + stop;
    for (int i = 0; i < galSix / 2; i++) {
        int begin = stop + i;
        int end = stop + galSix - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[stop + galSix] = 0;
    return data + stop;
}

NSString *StringFromCruiseData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)CruiseDataToCache(data)];
}  
