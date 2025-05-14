
#import <Foundation/Foundation.h>

NSString *StringFromTapData(Byte *data);        


//: common_bg
Byte kStr_hopefulTitle[] = {34, 9, 40, 10, 84, 92, 130, 88, 109, 46, 59, 71, 69, 69, 71, 70, 55, 58, 63, 215};


//: renewpass
Byte kStr_accurateMerelyMagnitudeentionTitle[] = {34, 9, 2, 8, 193, 102, 227, 227, 112, 99, 108, 99, 117, 110, 95, 113, 113, 113};


//: type
Byte kStr_lysisMethodValue[] = {98, 4, 46, 4, 70, 75, 66, 55, 22};


//: /user/modifyPass
Byte kStr_combineNameData[] = {21, 16, 4, 8, 236, 155, 141, 136, 43, 113, 111, 97, 110, 43, 105, 107, 96, 101, 98, 117, 76, 93, 111, 111, 14};


//: newpass
Byte kStr_additionData[] = {80, 7, 9, 8, 33, 83, 147, 18, 101, 92, 110, 103, 88, 106, 106, 46};


//: activity_safe_setting_modify
Byte kStr_inventCommentValue[] = {80, 28, 81, 13, 250, 95, 182, 13, 81, 255, 83, 155, 108, 16, 18, 35, 24, 37, 24, 35, 40, 14, 34, 16, 21, 20, 14, 34, 20, 35, 35, 24, 29, 22, 14, 28, 30, 19, 24, 21, 40, 122};


//: account
Byte kStr_intentionData[] = {96, 7, 12, 6, 233, 33, 85, 87, 87, 99, 105, 98, 104, 104};


//: safe_bind_phone_icon
Byte kStr_abaseTitle[] = {54, 20, 8, 4, 107, 89, 94, 93, 87, 90, 97, 102, 92, 87, 104, 96, 103, 102, 93, 87, 97, 91, 103, 102, 135};


//: psw_old
Byte kStr_adventureTitle[] = {52, 7, 72, 5, 128, 40, 43, 47, 23, 39, 36, 28, 141};


//: msg
Byte kStr_driverMerelyTitle[] = {16, 3, 96, 11, 239, 153, 9, 17, 102, 58, 166, 13, 19, 7, 96};


//: oldpass
Byte kStr_coverOperationValue[] = {33, 7, 83, 11, 11, 66, 33, 209, 161, 89, 122, 28, 25, 17, 29, 14, 32, 32, 81};


//: psw_new
Byte kStr_southeastContent[] = {96, 7, 47, 11, 153, 245, 254, 221, 238, 203, 178, 65, 68, 72, 48, 63, 54, 72, 254};


//: #34AECA
Byte kStr_operationValue[] = {46, 7, 81, 10, 186, 50, 12, 102, 93, 208, 210, 226, 227, 240, 244, 242, 240, 154};


//: psw_again
Byte kStr_legislativeTitle[] = {30, 9, 20, 6, 126, 28, 92, 95, 99, 75, 77, 83, 77, 85, 90, 117};


//: activity_modify_new
Byte kStr_fibCoverContent[] = {78, 19, 9, 12, 114, 65, 215, 208, 6, 85, 64, 22, 88, 90, 107, 96, 109, 96, 107, 112, 86, 100, 102, 91, 96, 93, 112, 86, 101, 92, 110, 237};


//: #3996D6
Byte kStr_byEasterTitle[] = {26, 7, 26, 11, 67, 125, 119, 56, 40, 87, 108, 9, 25, 31, 31, 28, 42, 28, 24};


//: activity_modify_old
Byte kStr_commentFingerContent[] = {35, 19, 16, 13, 225, 158, 235, 159, 152, 234, 54, 155, 72, 81, 83, 100, 89, 102, 89, 100, 105, 79, 93, 95, 84, 89, 86, 105, 79, 95, 92, 84, 40};


//: sure_edit
Byte kStr_sharpValue[] = {91, 9, 46, 4, 69, 71, 68, 55, 49, 55, 54, 59, 70, 137};


//: back_arrow_bl
Byte kStr_thereData[] = {61, 13, 58, 13, 40, 59, 157, 4, 88, 67, 173, 55, 8, 40, 39, 41, 49, 37, 39, 56, 56, 53, 61, 37, 40, 50, 157};


//: #333333
Byte kStr_vehicleValue[] = {17, 7, 63, 5, 83, 228, 244, 244, 244, 244, 244, 244, 34};

// __DEBUG__
// __CLOSE_PRINT__
//
//  EdgeViewController.m
//  NIM
//
//  Created by 彭爽 on 2021/9/29.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZZZChangePasswordController.h"
#import "EdgeViewController.h"
//: #import "NTESChangePasswordCell.h"
#import "ColorViewCell.h"

//: @interface ZZZChangePasswordController ()<UITableViewDataSource,UITableViewDelegate,UITextFieldDelegate>
@interface EdgeViewController ()<UITableViewDataSource,UITableViewDelegate,UITextFieldDelegate>
//: @property (nonatomic ,strong) UITableView *tableView;
@property (nonatomic ,strong) UITableView *tableView;
//: @property (nonatomic ,strong) UITextField *textfile_1;
@property (nonatomic ,strong) UITextField *textfile_1;
//: @property (nonatomic ,strong) UITextField *textfile_2;
@property (nonatomic ,strong) UITextField *textfile_2;
//: @property (nonatomic ,strong) UITextField *textfile_3;
@property (nonatomic ,strong) UITextField *textfile_3;
//: @end
@end

//: @implementation ZZZChangePasswordController
@implementation EdgeViewController

//: - (void)viewWillAppear:(BOOL)animated{
- (void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: [self.navigationController.navigationBar setHidden:YES];
    [self.navigationController.navigationBar setHidden:YES];
}

//: -(void)viewWillDisappear:(BOOL)animated{
-(void)viewWillDisappear:(BOOL)animated{
    //: [super viewWillDisappear:animated];
    [super viewWillDisappear:animated];
    //: [self.navigationController.navigationBar setHidden:NO];
    [self.navigationController.navigationBar setHidden:NO];

}
//: - (void)backAction{
- (void)belowTeamAdd{
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
}

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
//    self.title = LangKey(@"activity_safe_setting_modify");//@"修改登录密码";

//    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"common_bg"]];
    //: UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
    UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
    //: bg.image = [UIImage imageNamed:@"common_bg"];
    bg.image = [UIImage imageNamed:StringFromTapData(kStr_hopefulTitle)];
    //: [self.view addSubview:bg];
    [self.view addSubview:bg];

    //: UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice vg_statusBarHeight]))];
    UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice encounter]))];
    //: [self.view addSubview:bgView];
    [self.view addSubview:bgView];

    //: UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: backButton.frame = CGRectMake(5, [UIDevice vg_statusBarHeight]+4, 40, 40);
    backButton.frame = CGRectMake(5, [UIDevice encounter]+4, 40, 40);
    //: [backButton setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
    [backButton setImage:[UIImage imageNamed:StringFromTapData(kStr_thereData)] forState:(UIControlStateNormal)];
    //: [backButton addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [backButton addTarget:self action:@selector(belowTeamAdd) forControlEvents:UIControlEventTouchUpInside];
    //: [bgView addSubview:backButton];
    [bgView addSubview:backButton];

    //: UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-200)/2, [UIDevice vg_statusBarHeight]+4, 200, 40)];
    UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-200)/2, [UIDevice encounter]+4, 200, 40)];
    //: labtitle.font = [UIFont systemFontOfSize:16.f];
    labtitle.font = [UIFont systemFontOfSize:16.f];
    //: labtitle.textColor = [UIColor blackColor];
    labtitle.textColor = [UIColor blackColor];
    //: labtitle.textAlignment = NSTextAlignmentCenter;
    labtitle.textAlignment = NSTextAlignmentCenter;
    //: labtitle.text = [NTESLanguageManager getTextWithKey:@"activity_safe_setting_modify"];
    labtitle.text = [LabelCell tinkleKey:StringFromTapData(kStr_inventCommentValue)];
    //: [bgView addSubview:labtitle];
    [bgView addSubview:labtitle];

//    UIButton *submitButton = [UIButton buttonWithType:UIButtonTypeCustom];
//    submitButton.frame = CGRectMake(SCREEN_WIDTH-15-40, SCREEN_STATUS_HEIGHT+4, 40, 40);
//    [submitButton setImage:[UIImage imageNamed:@"icon_checkbox_selected"] forState:(UIControlStateNormal)];
//    [submitButton addTarget:self action:@selector(commitButtonClick) forControlEvents:UIControlEventTouchUpInside];
//    [bgView addSubview:submitButton];

//    [self setNavRightItem:@selector(commitButtonClick) title:LangKey(@"contact_list_activity_complete") color:[UIColor blackColor]];
//    [self initTableView];
//    [self.view registEndEditing];

    //: UILabel *labphone = [[UILabel alloc] initWithFrame:CGRectMake(30, (44.0f + [UIDevice vg_statusBarHeight])+15, [[UIScreen mainScreen] bounds].size.width-60, 20)];
    UILabel *labphone = [[UILabel alloc] initWithFrame:CGRectMake(30, (44.0f + [UIDevice encounter])+15, [[UIScreen mainScreen] bounds].size.width-60, 20)];
    //: labphone.font = [UIFont boldSystemFontOfSize:14.f];
    labphone.font = [UIFont boldSystemFontOfSize:14.f];
    //: labphone.textColor = [UIColor colorWithHexString:@"#333333"];
    labphone.textColor = [UIColor box:StringFromTapData(kStr_vehicleValue)];
    //: labphone.textAlignment = NSTextAlignmentLeft;
    labphone.textAlignment = NSTextAlignmentLeft;
    //: labphone.text = [NTESLanguageManager getTextWithKey:@"psw_old"];
    labphone.text = [LabelCell tinkleKey:StringFromTapData(kStr_adventureTitle)];
    //: [self.view addSubview:labphone];
    [self.view addSubview:labphone];

    //: UIView *view1 = [[UIView alloc]initWithFrame:CGRectMake(30, labphone.bottom+15, [[UIScreen mainScreen] bounds].size.width-60, 50)];
    UIView *view1 = [[UIView alloc]initWithFrame:CGRectMake(30, labphone.bottom+15, [[UIScreen mainScreen] bounds].size.width-60, 50)];
    //: view1.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
    view1.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
    //: view1.layer.borderWidth = 0.5;
    view1.layer.borderWidth = 0.5;
    //: view1.layer.borderColor = [UIColor colorWithRed:238/255.0 green:238/255.0 blue:238/255.0 alpha:1].CGColor;
    view1.layer.borderColor = [UIColor colorWithRed:238/255.0 green:238/255.0 blue:238/255.0 alpha:1].CGColor;
    //: view1.layer.cornerRadius = 10;
    view1.layer.cornerRadius = 10;
    //: view1.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
    view1.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
    //: view1.layer.shadowOffset = CGSizeMake(0,3);
    view1.layer.shadowOffset = CGSizeMake(0,3);
    //: view1.layer.shadowOpacity = 1;
    view1.layer.shadowOpacity = 1;
    //: view1.layer.shadowRadius = 0;
    view1.layer.shadowRadius = 0;
    //: [self.view addSubview:view1];
    [self.view addSubview:view1];


    //: UIImageView *imgname = [[UIImageView alloc]initWithFrame:CGRectMake(15, 15, 20, 20)];
    UIImageView *imgname = [[UIImageView alloc]initWithFrame:CGRectMake(15, 15, 20, 20)];
    //: imgname.image = [UIImage imageNamed:@"safe_bind_phone_icon"];
    imgname.image = [UIImage imageNamed:StringFromTapData(kStr_abaseTitle)];
    //: [view1 addSubview:imgname];
    [view1 addSubview:imgname];

    //: self.textfile_1 = [[UITextField alloc] initWithFrame:CGRectMake(35+10, 15, [[UIScreen mainScreen] bounds].size.width-60-30-30, 20)];
    self.textfile_1 = [[UITextField alloc] initWithFrame:CGRectMake(35+10, 15, [[UIScreen mainScreen] bounds].size.width-60-30-30, 20)];
    //: self.textfile_1.font = [UIFont systemFontOfSize:16];
    self.textfile_1.font = [UIFont systemFontOfSize:16];
    //: self.textfile_1.textColor = [UIColor colorWithHexString:@"#333333"];
    self.textfile_1.textColor = [UIColor box:StringFromTapData(kStr_vehicleValue)];
    //: self.textfile_1.placeholder = [NTESLanguageManager getTextWithKey:@"activity_modify_old"];
    self.textfile_1.placeholder = [LabelCell tinkleKey:StringFromTapData(kStr_commentFingerContent)];
    //: self.textfile_1.delegate = self;
    self.textfile_1.delegate = self;
    //: self.textfile_1.secureTextEntry = YES;
    self.textfile_1.secureTextEntry = YES;
    //: [view1 addSubview:self.textfile_1];
    [view1 addSubview:self.textfile_1];

    //: UILabel *labphone2 = [[UILabel alloc] initWithFrame:CGRectMake(30, view1.bottom+15, [[UIScreen mainScreen] bounds].size.width-60, 20)];
    UILabel *labphone2 = [[UILabel alloc] initWithFrame:CGRectMake(30, view1.bottom+15, [[UIScreen mainScreen] bounds].size.width-60, 20)];
    //: labphone2.font = [UIFont boldSystemFontOfSize:14.f];
    labphone2.font = [UIFont boldSystemFontOfSize:14.f];
    //: labphone2.textColor = [UIColor colorWithHexString:@"#333333"];
    labphone2.textColor = [UIColor box:StringFromTapData(kStr_vehicleValue)];
    //: labphone2.textAlignment = NSTextAlignmentLeft;
    labphone2.textAlignment = NSTextAlignmentLeft;
    //: labphone2.text = [NTESLanguageManager getTextWithKey:@"psw_new"];
    labphone2.text = [LabelCell tinkleKey:StringFromTapData(kStr_southeastContent)];
    //: [self.view addSubview:labphone2];
    [self.view addSubview:labphone2];

    //: UIView *view2 = [[UIView alloc]initWithFrame:CGRectMake(30, labphone2.bottom+15, [[UIScreen mainScreen] bounds].size.width-60, 50)];
    UIView *view2 = [[UIView alloc]initWithFrame:CGRectMake(30, labphone2.bottom+15, [[UIScreen mainScreen] bounds].size.width-60, 50)];
    //: view2.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
    view2.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
    //: view2.layer.borderWidth = 0.5;
    view2.layer.borderWidth = 0.5;
    //: view2.layer.borderColor = [UIColor colorWithRed:238/255.0 green:238/255.0 blue:238/255.0 alpha:1].CGColor;
    view2.layer.borderColor = [UIColor colorWithRed:238/255.0 green:238/255.0 blue:238/255.0 alpha:1].CGColor;
    //: view2.layer.cornerRadius = 10;
    view2.layer.cornerRadius = 10;
    //: view2.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
    view2.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
    //: view2.layer.shadowOffset = CGSizeMake(0,3);
    view2.layer.shadowOffset = CGSizeMake(0,3);
    //: view2.layer.shadowOpacity = 1;
    view2.layer.shadowOpacity = 1;
    //: view2.layer.shadowRadius = 0;
    view2.layer.shadowRadius = 0;
    //: [self.view addSubview:view2];
    [self.view addSubview:view2];

    //: UIImageView *imgname2 = [[UIImageView alloc]initWithFrame:CGRectMake(15, 15, 20, 20)];
    UIImageView *imgname2 = [[UIImageView alloc]initWithFrame:CGRectMake(15, 15, 20, 20)];
    //: imgname2.image = [UIImage imageNamed:@"safe_bind_phone_icon"];
    imgname2.image = [UIImage imageNamed:StringFromTapData(kStr_abaseTitle)];
    //: [view2 addSubview:imgname2];
    [view2 addSubview:imgname2];

    //: self.textfile_2 = [[UITextField alloc] initWithFrame:CGRectMake(35+10, 15, [[UIScreen mainScreen] bounds].size.width-60-30-30, 20)];
    self.textfile_2 = [[UITextField alloc] initWithFrame:CGRectMake(35+10, 15, [[UIScreen mainScreen] bounds].size.width-60-30-30, 20)];
    //: self.textfile_2.font = [UIFont systemFontOfSize:16];
    self.textfile_2.font = [UIFont systemFontOfSize:16];
    //: self.textfile_2.textColor = [UIColor colorWithHexString:@"#333333"];
    self.textfile_2.textColor = [UIColor box:StringFromTapData(kStr_vehicleValue)];
    //: self.textfile_2.placeholder = [NTESLanguageManager getTextWithKey:@"activity_modify_new"];
    self.textfile_2.placeholder = [LabelCell tinkleKey:StringFromTapData(kStr_fibCoverContent)];
    //: self.textfile_2.delegate = self;
    self.textfile_2.delegate = self;
    //: self.textfile_2.secureTextEntry = YES;
    self.textfile_2.secureTextEntry = YES;
    //: [view2 addSubview:self.textfile_2];
    [view2 addSubview:self.textfile_2];

    //: UILabel *labphone3 = [[UILabel alloc] initWithFrame:CGRectMake(30, view2.bottom+15, [[UIScreen mainScreen] bounds].size.width-60, 20)];
    UILabel *labphone3 = [[UILabel alloc] initWithFrame:CGRectMake(30, view2.bottom+15, [[UIScreen mainScreen] bounds].size.width-60, 20)];
    //: labphone3.font = [UIFont boldSystemFontOfSize:14.f];
    labphone3.font = [UIFont boldSystemFontOfSize:14.f];
    //: labphone3.textColor = [UIColor colorWithHexString:@"#333333"];
    labphone3.textColor = [UIColor box:StringFromTapData(kStr_vehicleValue)];
    //: labphone3.textAlignment = NSTextAlignmentLeft;
    labphone3.textAlignment = NSTextAlignmentLeft;
    //: labphone3.text = [NTESLanguageManager getTextWithKey:@"psw_again"];
    labphone3.text = [LabelCell tinkleKey:StringFromTapData(kStr_legislativeTitle)];
    //: [self.view addSubview:labphone3];
    [self.view addSubview:labphone3];

    //: UIView *view3 = [[UIView alloc]initWithFrame:CGRectMake(30, labphone3.bottom+15, [[UIScreen mainScreen] bounds].size.width-60, 50)];
    UIView *view3 = [[UIView alloc]initWithFrame:CGRectMake(30, labphone3.bottom+15, [[UIScreen mainScreen] bounds].size.width-60, 50)];
    //: view3.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
    view3.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
    //: view3.layer.borderWidth = 0.5;
    view3.layer.borderWidth = 0.5;
    //: view3.layer.borderColor = [UIColor colorWithRed:238/255.0 green:238/255.0 blue:238/255.0 alpha:1].CGColor;
    view3.layer.borderColor = [UIColor colorWithRed:238/255.0 green:238/255.0 blue:238/255.0 alpha:1].CGColor;
    //: view3.layer.cornerRadius = 10;
    view3.layer.cornerRadius = 10;
    //: view3.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
    view3.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
    //: view3.layer.shadowOffset = CGSizeMake(0,3);
    view3.layer.shadowOffset = CGSizeMake(0,3);
    //: view3.layer.shadowOpacity = 1;
    view3.layer.shadowOpacity = 1;
    //: view3.layer.shadowRadius = 0;
    view3.layer.shadowRadius = 0;
    //: [self.view addSubview:view3];
    [self.view addSubview:view3];

    //: UIImageView *imgname3 = [[UIImageView alloc]initWithFrame:CGRectMake(15, 15, 20, 20)];
    UIImageView *imgname3 = [[UIImageView alloc]initWithFrame:CGRectMake(15, 15, 20, 20)];
    //: imgname3.image = [UIImage imageNamed:@"safe_bind_phone_icon"];
    imgname3.image = [UIImage imageNamed:StringFromTapData(kStr_abaseTitle)];
    //: [view3 addSubview:imgname3];
    [view3 addSubview:imgname3];

    //: self.textfile_3 = [[UITextField alloc] initWithFrame:CGRectMake(35+10, 15, [[UIScreen mainScreen] bounds].size.width-60-30-30, 20)];
    self.textfile_3 = [[UITextField alloc] initWithFrame:CGRectMake(35+10, 15, [[UIScreen mainScreen] bounds].size.width-60-30-30, 20)];
    //: self.textfile_3.font = [UIFont systemFontOfSize:16];
    self.textfile_3.font = [UIFont systemFontOfSize:16];
    //: self.textfile_3.textColor = [UIColor colorWithHexString:@"#333333"];
    self.textfile_3.textColor = [UIColor box:StringFromTapData(kStr_vehicleValue)];
    //: self.textfile_3.placeholder = [NTESLanguageManager getTextWithKey:@"activity_modify_new"];
    self.textfile_3.placeholder = [LabelCell tinkleKey:StringFromTapData(kStr_fibCoverContent)];
    //: self.textfile_3.delegate = self;
    self.textfile_3.delegate = self;
    //: self.textfile_3.secureTextEntry = YES;
    self.textfile_3.secureTextEntry = YES;
    //: [view3 addSubview:self.textfile_3];
    [view3 addSubview:self.textfile_3];

    //: UIButton *emptyButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *emptyButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: emptyButton.frame = CGRectMake(30, view3.bottom+30, [[UIScreen mainScreen] bounds].size.width-60, 44);
    emptyButton.frame = CGRectMake(30, view3.bottom+30, [[UIScreen mainScreen] bounds].size.width-60, 44);
    //: emptyButton.titleLabel.font = [UIFont systemFontOfSize:15];
    emptyButton.titleLabel.font = [UIFont systemFontOfSize:15];
    //: [emptyButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [emptyButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    //: [emptyButton setTitle:[NTESLanguageManager getTextWithKey:@"sure_edit"] forState:UIControlStateNormal];
    [emptyButton setTitle:[LabelCell tinkleKey:StringFromTapData(kStr_sharpValue)] forState:UIControlStateNormal];
    //: [emptyButton addTarget:self action:@selector(commitButtonClick) forControlEvents:UIControlEventTouchUpInside];
    [emptyButton addTarget:self action:@selector(findCropClick) forControlEvents:UIControlEventTouchUpInside];
    //: emptyButton.backgroundColor = [UIColor colorWithHexString:@"#34AECA"];
    emptyButton.backgroundColor = [UIColor box:StringFromTapData(kStr_operationValue)];
    //: emptyButton.layer.cornerRadius = 10;
    emptyButton.layer.cornerRadius = 10;
    //: emptyButton.layer.shadowColor = [UIColor colorWithHexString:@"#3996D6"].CGColor;
    emptyButton.layer.shadowColor = [UIColor box:StringFromTapData(kStr_byEasterTitle)].CGColor;
    //: emptyButton.layer.shadowOffset = CGSizeMake(0,3);
    emptyButton.layer.shadowOffset = CGSizeMake(0,3);
    //: emptyButton.layer.shadowOpacity = 1;
    emptyButton.layer.shadowOpacity = 1;
    //: emptyButton.layer.shadowRadius = 0;
    emptyButton.layer.shadowRadius = 0;
    //: [self.view addSubview:emptyButton];
    [self.view addSubview:emptyButton];


}


//: -(void)initTableView{
-(void)initElite{
    //: self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight]), [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice vg_statusBarHeight])) style:UITableViewStyleGrouped];
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, (44.0f + [UIDevice encounter]), [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice encounter])) style:UITableViewStyleGrouped];
    //: [self.view addSubview:self.tableView];
    [self.view addSubview:self.tableView];
    //: self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    //: self.tableView.backgroundColor = [UIColor colorWithRed:243/255.0 green:242/255.0 blue:252/255.0 alpha:1.0];
    self.tableView.backgroundColor = [UIColor colorWithRed:243/255.0 green:242/255.0 blue:252/255.0 alpha:1.0];
    //: _tableView.estimatedSectionHeaderHeight=15.1;
    _tableView.estimatedSectionHeaderHeight=15.1;
    //: _tableView.estimatedSectionFooterHeight=.1;
    _tableView.estimatedSectionFooterHeight=.1;
    //: self.tableView.estimatedRowHeight = UITableViewAutomaticDimension;
    self.tableView.estimatedRowHeight = UITableViewAutomaticDimension;
    //: self.tableView.delegate = self;
    self.tableView.delegate = self;
    //: self.tableView.dataSource = self;
    self.tableView.dataSource = self;

}



//: #pragma mark - UITableViewDelegate
#pragma mark - UITableViewDelegate

//Setup your cell margins:
//: -(void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {
-(void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {
// Remove seperator inset
//: if ([cell respondsToSelector:@selector(setSeparatorInset:)]) {
if ([cell respondsToSelector:@selector(setSeparatorInset:)]) {
    //: [cell setSeparatorInset:UIEdgeInsetsZero];
    [cell setSeparatorInset:UIEdgeInsetsZero];
}
// Prevent the cell from inheriting the Table View's margin settings
//: if ([cell respondsToSelector:@selector(setPreservesSuperviewLayoutMargins:)]) {
if ([cell respondsToSelector:@selector(setPreservesSuperviewLayoutMargins:)]) {
    //: [cell setPreservesSuperviewLayoutMargins:NO];
    [cell setPreservesSuperviewLayoutMargins:NO];
}
// Explictly set your cell's layout margins
//: if ([cell respondsToSelector:@selector(setLayoutMargins:)]) {
if ([cell respondsToSelector:@selector(setLayoutMargins:)]) {
    //: [cell setLayoutMargins:UIEdgeInsetsZero];
    [cell setLayoutMargins:UIEdgeInsetsZero];
}
}

//: - (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
//: return 1;
return 1;
}

//: - (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//: return 1;
return 1;
}


//: - (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
//: return 15.f;
return 15.f;
}

//: - (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
//: UIView *backView = [UIView new];
UIView *backView = [UIView new];
//: backView.backgroundColor = [UIColor clearColor];
backView.backgroundColor = [UIColor clearColor];
//: return backView;
return backView;
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
//: return 0.1f;
return 0.1f;
}

//: - (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
    //: UIView *backView = [UIView new];
    UIView *backView = [UIView new];
    //: backView.backgroundColor = [UIColor clearColor];
    backView.backgroundColor = [UIColor clearColor];
    //: return backView;
    return backView;
}

//: - (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    //: static NSString *identifier = @"HMTopCellIdentifier_0";
    static NSString *identifier = @"HMTopCellIdentifier_0";
    //: NTESChangePasswordCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    ColorViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    //: if (!cell) {
    if (!cell) {
        //: cell = [[NTESChangePasswordCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
        cell = [[ColorViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
        //: cell.selectionStyle = UITableViewCellSelectionStyleNone;
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        //cell.delegate = self;
    }
    //: _textfile_1 = cell.textfile_1;
    _textfile_1 = cell.textfile_1;
    //: _textfile_2 = cell.textfile_2;
    _textfile_2 = cell.textfile_2;
    //: _textfile_3 = cell.textfile_3;
    _textfile_3 = cell.textfile_3;
    //: return cell;
    return cell;
}

//: - (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{

}

//: -(void)commitButtonClick{
-(void)findCropClick{
    //: NSString *account = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSString *account = [[NIMSDK sharedSDK].loginManager currentAccount];


    //: NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithCapacity:0];
    NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithCapacity:0];
    //: [dict setObject:account forKey:@"account"];
    [dict setObject:account forKey:StringFromTapData(kStr_intentionData)];
    //: [dict setObject:@"" forKey:@"type"];
    [dict setObject:@"" forKey:StringFromTapData(kStr_lysisMethodValue)];
    //: [dict setObject:_textfile_1.text forKey:@"oldpass"];
    [dict setObject:_textfile_1.text forKey:StringFromTapData(kStr_coverOperationValue)];
    //: [dict setObject:_textfile_2.text forKey:@"newpass"];
    [dict setObject:_textfile_2.text forKey:StringFromTapData(kStr_additionData)];
    //: [dict setObject:_textfile_3.text forKey:@"renewpass"];
    [dict setObject:_textfile_3.text forKey:StringFromTapData(kStr_accurateMerelyMagnitudeentionTitle)];

    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/user/modifyPass"] params:dict isShow:YES success:^(id responseObject) {
    [ViewManager viewFailed:[NSString stringWithFormat:StringFromTapData(kStr_combineNameData)] disable:dict params:YES status:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *msg = [resultDict newStringValueForKey:@"msg"];
        NSString *msg = [resultDict length:StringFromTapData(kStr_driverMerelyTitle)];
        //: [SVProgressHUD showMessage:msg];
        [SVProgressHUD text:msg];
        //: [self.navigationController popViewControllerAnimated:NO];
        [self.navigationController popViewControllerAnimated:NO];
    //: } failed:^(id responseObject, NSError *error) {
    } allow:^(id responseObject, NSError *error) {

    //: }];
    }];

}

//: @end
@end

Byte * TapDataToCache(Byte *data) {
    int folkImmigration = data[0];
    int colorHey = data[1];
    Byte enjoy = data[2];
    int sculpt = data[3];
    if (!folkImmigration) return data + sculpt;
    for (int i = sculpt; i < sculpt + colorHey; i++) {
        int value = data[i] + enjoy;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[sculpt + colorHey] = 0;
    return data + sculpt;
}

NSString *StringFromTapData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)TapDataToCache(data)];
}
