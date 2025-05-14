
#import <Foundation/Foundation.h>

NSString *StringFromSouthEastData(Byte *data);


//: register_good_nick
Byte kStr_gageTitle[] = {56, 18, 8, 34, 5, 125, 218, 23, 107, 99, 105, 110, 95, 100, 111, 111, 103, 95, 114, 101, 116, 115, 105, 103, 101, 114, 194};


//: register_avtivity3_nick
Byte kStr_gagTitle[] = {1, 23, 12, 243, 164, 11, 105, 132, 8, 236, 75, 59, 107, 99, 105, 110, 95, 51, 121, 116, 105, 118, 105, 116, 118, 97, 95, 114, 101, 116, 115, 105, 103, 101, 114, 192};


//: #333333
Byte kStr_grandparentTitle[] = {92, 7, 7, 119, 136, 241, 197, 51, 51, 51, 51, 51, 51, 35, 45};


//: #34AECA
Byte kStr_stainTitle[] = {98, 7, 9, 5, 142, 181, 139, 223, 54, 65, 67, 69, 65, 52, 51, 35, 12};


//: login_bg
Byte kStr_viaName[] = {45, 8, 10, 19, 35, 11, 183, 162, 224, 17, 103, 98, 95, 110, 105, 103, 111, 108, 78};


//: 666666
Byte kStr_looValue[] = {81, 6, 11, 45, 197, 2, 236, 30, 108, 139, 103, 54, 54, 54, 54, 54, 54, 243};


//: back_arrow_bl
Byte kStr_eventOofWhereValue[] = {6, 13, 13, 134, 103, 181, 195, 93, 8, 205, 134, 178, 120, 108, 98, 95, 119, 111, 114, 114, 97, 95, 107, 99, 97, 98, 191};


//: #3996D6
Byte kStr_playoffName[] = {56, 7, 5, 232, 168, 54, 68, 54, 57, 57, 51, 35, 53};


//: activity_my_user_info_nick
Byte kStr_economicalName[] = {51, 26, 7, 199, 139, 216, 224, 107, 99, 105, 110, 95, 111, 102, 110, 105, 95, 114, 101, 115, 117, 95, 121, 109, 95, 121, 116, 105, 118, 105, 116, 99, 97, 53};


//: activity_register_next
Byte kStr_shouldMessageData[] = {42, 22, 4, 153, 116, 120, 101, 110, 95, 114, 101, 116, 115, 105, 103, 101, 114, 95, 121, 116, 105, 118, 105, 116, 99, 97, 217};


//: nickname_same_account
Byte kStr_strategyText[] = {30, 21, 9, 4, 62, 21, 237, 20, 154, 116, 110, 117, 111, 99, 99, 97, 95, 101, 109, 97, 115, 95, 101, 109, 97, 110, 107, 99, 105, 110, 230};

// __DEBUG__
// __CLOSE_PRINT__
//
//  BoundaryViewController.m
//  NIM
//
//  Created by Yan Wang on 2024/7/26.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZMONRegisterNickNameViewController.h"
#import "BoundaryViewController.h"
//: #import "ZMONRegisterAvatarViewController.h"
#import "SpectralColourViewController.h"

//: @interface ZMONRegisterNickNameViewController ()<UITextFieldDelegate>
@interface BoundaryViewController ()<UITextFieldDelegate>

//: @property (nonatomic, strong) UIButton *closeBtn;
@property (nonatomic, strong) UIButton *closeBtn;

//: @property (nonatomic, strong) UIImageView *backGroundImgView;
@property (nonatomic, strong) UIImageView *backGroundImgView;
//: @property (nonatomic, strong) UILabel *appNameLabel;
@property (nonatomic, strong) UILabel *appNameLabel;
//: @property (nonatomic, strong) UILabel *subLabel;
@property (nonatomic, strong) UILabel *subLabel;

//: @property (nonatomic, strong) UIView *usernameView;
@property (nonatomic, strong) UIView *usernameView;

//: @property (nonatomic, strong) UILabel *accountLabel;
@property (nonatomic, strong) UILabel *accountLabel;
//: @property (nonatomic, strong) UITextField *accountTextfield;
@property (nonatomic, strong) UITextField *accountTextfield;

//: @property (nonatomic, strong) UILabel *tipsLabel;
@property (nonatomic, strong) UILabel *tipsLabel;
//: @property (nonatomic, strong) UILabel *tipsLabel1;
@property (nonatomic, strong) UILabel *tipsLabel1;

//: @property (nonatomic, strong) UIButton *registButton;
@property (nonatomic, strong) UIButton *registButton;

//: @property (strong, nonatomic) NSString *loginbgCode;
@property (strong, nonatomic) NSString *loginbgCode;
//: @property (strong, nonatomic) UIColor *defColor;
@property (strong, nonatomic) UIColor *defColor;

//: @end
@end

//: @implementation ZMONRegisterNickNameViewController
@implementation BoundaryViewController

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
    UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
    //: bg.image = [UIImage imageNamed:@"login_bg"];
    bg.image = [UIImage imageNamed:StringFromSouthEastData(kStr_viaName)];
    //: [self.view addSubview:bg];
    [self.view addSubview:bg];

    //: [self initUI];
    [self initBar];

}

//: - (void)backAction{
- (void)belowTeamAdd{
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
}

//: - (void)initUI
- (void)initBar
{
    //: self.closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    self.closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    //: self.closeBtn.frame = CGRectMake(15, [UIDevice vg_statusBarHeight]+2, 40, 40);
    self.closeBtn.frame = CGRectMake(15, [UIDevice encounter]+2, 40, 40);
    //    self.closeBtn.backgroundColor = [UIColor clearColor];
    //: [self.closeBtn setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
    [self.closeBtn setImage:[UIImage imageNamed:StringFromSouthEastData(kStr_eventOofWhereValue)] forState:(UIControlStateNormal)];
    //: [self.closeBtn addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [self.closeBtn addTarget:self action:@selector(belowTeamAdd) forControlEvents:UIControlEventTouchUpInside];
    //: [self.view addSubview:self.closeBtn];
    [self.view addSubview:self.closeBtn];


    //: UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(60, 45+[UIDevice vg_statusBarHeight], [[UIScreen mainScreen] bounds].size.width-120, 40)];
    UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(60, 45+[UIDevice encounter], [[UIScreen mainScreen] bounds].size.width-120, 40)];
    //: titleLabel.textColor = [UIColor blackColor];
    titleLabel.textColor = [UIColor blackColor];
    //: titleLabel.font = [UIFont boldSystemFontOfSize:24];
    titleLabel.font = [UIFont boldSystemFontOfSize:24];
    //: titleLabel.text = [NTESLanguageManager getTextWithKey:@"activity_my_user_info_nick"];
    titleLabel.text = [LabelCell tinkleKey:StringFromSouthEastData(kStr_economicalName)];
    //: titleLabel.textAlignment = NSTextAlignmentCenter;
    titleLabel.textAlignment = NSTextAlignmentCenter;
    //: [self.view addSubview:titleLabel];
    [self.view addSubview:titleLabel];


    //: self.accountLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, titleLabel.bottom+20, [[UIScreen mainScreen] bounds].size.width-40, 20)];
    self.accountLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, titleLabel.bottom+20, [[UIScreen mainScreen] bounds].size.width-40, 20)];
    //: self.accountLabel.font = [UIFont systemFontOfSize:14];
    self.accountLabel.font = [UIFont systemFontOfSize:14];
    //: self.accountLabel.textColor = [UIColor colorWithHexString:@"666666"];
    self.accountLabel.textColor = [UIColor box:StringFromSouthEastData(kStr_looValue)];
    //: self.accountLabel.text = [NTESLanguageManager getTextWithKey:@"register_good_nick"];
    self.accountLabel.text = [LabelCell tinkleKey:StringFromSouthEastData(kStr_gageTitle)];
    //: self.accountLabel.textAlignment = NSTextAlignmentCenter;
    self.accountLabel.textAlignment = NSTextAlignmentCenter;
    //: [self.view addSubview:self.accountLabel];
    [self.view addSubview:self.accountLabel];

//    UILabel *tip = [[UILabel alloc] initWithFrame:CGRectMake(20, self.accountLabel.bottom+30, SCREEN_WIDTH-40, 40)];
//    tip.font = [UIFont systemFontOfSize:14];
//    tip.textColor = TextColor_2;
//    tip.text = LangKey(@"nickname_same_account");
//    tip.numberOfLines = 2;
//    [self.view addSubview:tip];

    //: _usernameView = [[UIView alloc]initWithFrame:CGRectMake(20, self.accountLabel.bottom+50, [[UIScreen mainScreen] bounds].size.width-40, 50)];
    _usernameView = [[UIView alloc]initWithFrame:CGRectMake(20, self.accountLabel.bottom+50, [[UIScreen mainScreen] bounds].size.width-40, 50)];
    //: _usernameView.layer.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1].CGColor;
    _usernameView.layer.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1].CGColor;
    //: _usernameView.layer.cornerRadius = 8;
    _usernameView.layer.cornerRadius = 8;
    //: _usernameView.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
    _usernameView.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
    //: _usernameView.layer.shadowOffset = CGSizeMake(0,3);
    _usernameView.layer.shadowOffset = CGSizeMake(0,3);
    //: _usernameView.layer.shadowOpacity = 1;
    _usernameView.layer.shadowOpacity = 1;
    //: _usernameView.layer.shadowRadius = 0;
    _usernameView.layer.shadowRadius = 0;
    //: [self.view addSubview:_usernameView];
    [self.view addSubview:_usernameView];


    //: self.accountTextfield = [[UITextField alloc] initWithFrame:CGRectMake(15, 15, [[UIScreen mainScreen] bounds].size.width-60-30, 20)];
    self.accountTextfield = [[UITextField alloc] initWithFrame:CGRectMake(15, 15, [[UIScreen mainScreen] bounds].size.width-60-30, 20)];
    //: self.accountTextfield.font = [UIFont systemFontOfSize:16];
    self.accountTextfield.font = [UIFont systemFontOfSize:16];
    //: self.accountTextfield.textColor = [UIColor colorWithHexString:@"#333333"];
    self.accountTextfield.textColor = [UIColor box:StringFromSouthEastData(kStr_grandparentTitle)];
    //: self.accountTextfield.placeholder = [NTESLanguageManager getTextWithKey:@"register_avtivity3_nick"];
    self.accountTextfield.placeholder = [LabelCell tinkleKey:StringFromSouthEastData(kStr_gagTitle)];
    //: self.accountTextfield.delegate = self;
    self.accountTextfield.delegate = self;
    //: [_usernameView addSubview:self.accountTextfield];
    [_usernameView addSubview:self.accountTextfield];


    //: self.registButton = [UIButton buttonWithType:UIButtonTypeCustom];
    self.registButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: self.registButton.frame = CGRectMake(20, _usernameView.bottom+20, [[UIScreen mainScreen] bounds].size.width-40, 44);
    self.registButton.frame = CGRectMake(20, _usernameView.bottom+20, [[UIScreen mainScreen] bounds].size.width-40, 44);
    //: self.registButton.backgroundColor = [UIColor colorWithHexString:@"#34AECA"];
    self.registButton.backgroundColor = [UIColor box:StringFromSouthEastData(kStr_stainTitle)];
    //    self.registButton.layer.masksToBounds = YES;
    //: self.registButton.layer.cornerRadius = 10;
    self.registButton.layer.cornerRadius = 10;
    //: self.registButton.layer.shadowColor = [UIColor colorWithHexString:@"#3996D6"].CGColor;
    self.registButton.layer.shadowColor = [UIColor box:StringFromSouthEastData(kStr_playoffName)].CGColor;
    //: self.registButton.layer.shadowOffset = CGSizeMake(0,3);
    self.registButton.layer.shadowOffset = CGSizeMake(0,3);
    //: self.registButton.layer.shadowOpacity = 1;
    self.registButton.layer.shadowOpacity = 1;
    //: self.registButton.layer.shadowRadius = 0;
    self.registButton.layer.shadowRadius = 0;
    //: self.registButton.titleLabel.font = [UIFont systemFontOfSize:16];
    self.registButton.titleLabel.font = [UIFont systemFontOfSize:16];
    //: [self.registButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.registButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    //: [self.registButton setTitle:[NTESLanguageManager getTextWithKey:@"activity_register_next"] forState:UIControlStateNormal];
    [self.registButton setTitle:[LabelCell tinkleKey:StringFromSouthEastData(kStr_shouldMessageData)] forState:UIControlStateNormal];
    //: [self.view addSubview:self.registButton];
    [self.view addSubview:self.registButton];
    //: [self.registButton addTarget:self action:@selector(nextButtonClick) forControlEvents:UIControlEventTouchUpInside];
    [self.registButton addTarget:self action:@selector(chorusLine) forControlEvents:UIControlEventTouchUpInside];

}

//: - (void)nextButtonClick
- (void)chorusLine
{
    //: if (_accountTextfield.text.length == 0) {
    if (_accountTextfield.text.length == 0) {
        //: [self.view makeToast:[NTESLanguageManager getTextWithKey:@"register_avtivity3_nick"]
        [self.view makeToast:[LabelCell tinkleKey:StringFromSouthEastData(kStr_gagTitle)]
                    //: duration:2.0
                    duration:2.0
                    //: position:CSToastPositionCenter];
                    position:CSToastPositionCenter];
        //: return;
        return;
    }
    //: if ([_accountTextfield.text isEqualToString:self.accountName]) {
    if ([_accountTextfield.text isEqualToString:self.accountName]) {
        //: [self.view makeToast:[NTESLanguageManager getTextWithKey:@"nickname_same_account"]
        [self.view makeToast:[LabelCell tinkleKey:StringFromSouthEastData(kStr_strategyText)]
                    //: duration:2.0
                    duration:2.0
                    //: position:CSToastPositionCenter];
                    position:CSToastPositionCenter];
        //: return;
        return;
    }


    //: ZMONRegisterAvatarViewController *vc = [[ZMONRegisterAvatarViewController alloc]init];
    SpectralColourViewController *vc = [[SpectralColourViewController alloc]init];
    //: vc.nickName = self.accountTextfield.text;
    vc.nickName = self.accountTextfield.text;
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    //: [super touchesBegan:touches withEvent:event];
    [super touchesBegan:touches withEvent:event];
    //: [_accountTextfield resignFirstResponder];
    [_accountTextfield resignFirstResponder];
}

//: @end
@end

Byte * SouthEastDataToCache(Byte *data) {
    int elderlyClassic = data[0];
    int illVehicle = data[1];
    int indexTechnology = data[2];
    if (!elderlyClassic) return data + indexTechnology;
    for (int i = 0; i < illVehicle / 2; i++) {
        int begin = indexTechnology + i;
        int end = indexTechnology + illVehicle - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[indexTechnology + illVehicle] = 0;
    return data + indexTechnology;
}

NSString *StringFromSouthEastData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)SouthEastDataToCache(data)];
}  
