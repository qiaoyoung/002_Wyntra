
#import <Foundation/Foundation.h>
typedef struct {
    Byte output;
    Byte *spending;
    unsigned int worryKey;
    bool economicCondition;
	int elaborate;
	int temple;
	int distinct;
} RelationData;

NSString *StringFromRelationData(RelationData *data);


//: icon_checkbox_selected
RelationData kStr_courtroomValue = (RelationData){210, (Byte []){187, 177, 189, 188, 141, 177, 186, 183, 177, 185, 176, 189, 170, 141, 161, 183, 190, 183, 177, 166, 183, 182, 48}, 22, false, 16, 32, 86};


//: %lu/512
RelationData kStr_convictText = (RelationData){188, (Byte []){153, 208, 201, 147, 137, 141, 142, 175}, 7, false, 170, 24, 139};


//: %lu/400
RelationData kStr_engineColorData = (RelationData){114, (Byte []){87, 30, 7, 93, 70, 66, 66, 1}, 7, false, 154, 44, 170};


//: back_arrow_bl
RelationData kStr_mathContent = (RelationData){109, (Byte []){15, 12, 14, 6, 50, 12, 31, 31, 2, 26, 50, 15, 1, 65}, 13, false, 206, 41, 117};


//: Please_enter_content
RelationData kStr_dentedName = (RelationData){43, (Byte []){123, 71, 78, 74, 88, 78, 116, 78, 69, 95, 78, 89, 116, 72, 68, 69, 95, 78, 69, 95, 45}, 20, false, 230, 228, 188};


//: Group_description
RelationData kStr_engineTitle = (RelationData){200, (Byte []){143, 186, 167, 189, 184, 151, 172, 173, 187, 171, 186, 161, 184, 188, 161, 167, 166, 207}, 17, false, 151, 244, 118};


//: #999999
RelationData kStr_classicTitle = (RelationData){126, (Byte []){93, 71, 71, 71, 71, 71, 71, 22}, 7, false, 58, 155, 84};


//: common_bg
RelationData kStr_imageSizeValue = (RelationData){163, (Byte []){192, 204, 206, 206, 204, 205, 252, 193, 196, 64}, 9, false, 231, 242, 3};

// __DEBUG__
// __CLOSE_PRINT__
//
//  SizeViewController.m
//  NIM
//
//  Created by Yan Wang on 2024/6/27.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZZZTeamIntroduceViewController.h"
#import "SizeViewController.h"
//: #import "UITextView+Util.h"
#import "UITextView+Util.h"

//: @interface ZZZTeamIntroduceViewController ()<UITextFieldDelegate, UITextViewDelegate>
@interface SizeViewController ()<UITextFieldDelegate, UITextViewDelegate>


//: @property (strong, nonatomic) UITextView *contentTextView;
@property (strong, nonatomic) UITextView *contentTextView;

//: @property (nonatomic, strong) UIButton *submitButton;
@property (nonatomic, strong) UIButton *submitButton;

//: @property (nonatomic, strong) CAGradientLayer *gradientLayer;
@property (nonatomic, strong) CAGradientLayer *gradientLayer;
//: @property (nonatomic,strong) UILabel *numLabel;
@property (nonatomic,strong) UILabel *numLabel;

//: @end
@end

//: @implementation ZZZTeamIntroduceViewController
@implementation SizeViewController

//: - (void)viewWillAppear:(BOOL)animated{
- (void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: [self.navigationController.navigationBar setHidden:YES];
    [self.navigationController.navigationBar setHidden:YES];
}

//: - (void)viewWillDisappear:(BOOL)animated{
- (void)viewWillDisappear:(BOOL)animated{
    //: [super viewWillDisappear:animated];
    [super viewWillDisappear:animated];
    //: [self.contentTextView endEditing:YES];
    [self.contentTextView endEditing:YES];
    //: [self.navigationController.navigationBar setHidden:NO];
    [self.navigationController.navigationBar setHidden:NO];
}


//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
//    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"common_bg"]];
    //: UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
    UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
    //: bg.image = [UIImage imageNamed:@"common_bg"];
    bg.image = [UIImage imageNamed:StringFromRelationData(&kStr_imageSizeValue)];
    //: [self.view addSubview:bg];
    [self.view addSubview:bg];

    //: UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice vg_statusBarHeight]))];
    UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice encounter]))];
//    bgView.backgroundColor = [UIColor redColor];
    //: [self.view addSubview:bgView];
    [self.view addSubview:bgView];


    //: UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: backButton.frame = CGRectMake(5, [UIDevice vg_statusBarHeight]+4, 40, 40);
    backButton.frame = CGRectMake(5, [UIDevice encounter]+4, 40, 40);
    //: [backButton setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
    [backButton setImage:[UIImage imageNamed:StringFromRelationData(&kStr_mathContent)] forState:(UIControlStateNormal)];
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
    //: labtitle.text = [NTESLanguageManager getTextWithKey:@"Group_description"];
    labtitle.text = [LabelCell tinkleKey:StringFromRelationData(&kStr_engineTitle)];
    //: [bgView addSubview:labtitle];
    [bgView addSubview:labtitle];

    //: UIButton *submitButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *submitButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: submitButton.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-15-40, [UIDevice vg_statusBarHeight]+4, 40, 40);
    submitButton.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-15-40, [UIDevice encounter]+4, 40, 40);
    //: [submitButton setImage:[UIImage imageNamed:@"icon_checkbox_selected"] forState:(UIControlStateNormal)];
    [submitButton setImage:[UIImage imageNamed:StringFromRelationData(&kStr_courtroomValue)] forState:(UIControlStateNormal)];
    //: [submitButton addTarget:self action:@selector(onSave:) forControlEvents:UIControlEventTouchUpInside];
    [submitButton addTarget:self action:@selector(requesting:) forControlEvents:UIControlEventTouchUpInside];
    //: [bgView addSubview:submitButton];
    [bgView addSubview:submitButton];


    //: UIView *contentView = [[UIView alloc]initWithFrame:CGRectMake(15, (44.0f + [UIDevice vg_statusBarHeight])+10, [[UIScreen mainScreen] bounds].size.width-30, 256)];
    UIView *contentView = [[UIView alloc]initWithFrame:CGRectMake(15, (44.0f + [UIDevice encounter])+10, [[UIScreen mainScreen] bounds].size.width-30, 256)];
//    contentView.backgroundColor = [UIColor whiteColor];
//    contentView.layer.cornerRadius = 8;
    //: [self.view addSubview:contentView];
    [self.view addSubview:contentView];
    //: contentView.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
    contentView.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
    //: contentView.layer.cornerRadius = 8;
    contentView.layer.cornerRadius = 8;
    //: contentView.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
    contentView.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
    //: contentView.layer.shadowOffset = CGSizeMake(0,3);
    contentView.layer.shadowOffset = CGSizeMake(0,3);
    //: contentView.layer.shadowOpacity = 1;
    contentView.layer.shadowOpacity = 1;
    //: contentView.layer.shadowRadius = 0;
    contentView.layer.shadowRadius = 0;

    //: self.contentTextView = [[UITextView alloc] initWithFrame:CGRectMake(15, 15, [[UIScreen mainScreen] bounds].size.width-60, 226)];
    self.contentTextView = [[UITextView alloc] initWithFrame:CGRectMake(15, 15, [[UIScreen mainScreen] bounds].size.width-60, 226)];
    //: self.contentTextView.textColor = [UIColor blackColor];
    self.contentTextView.textColor = [UIColor blackColor];
    //: self.contentTextView.font = [UIFont systemFontOfSize:16.f];
    self.contentTextView.font = [UIFont systemFontOfSize:16.f];
    //: self.contentTextView.delegate = self;
    self.contentTextView.delegate = self;
    //: self.contentTextView.placeholder = [NTESLanguageManager getTextWithKey:@"Please_enter_content"];
    self.contentTextView.placeholder = [LabelCell tinkleKey:StringFromRelationData(&kStr_dentedName)];
    //: self.contentTextView.text = self.defaultContent;
    self.contentTextView.text = self.defaultContent;
    //: [contentView addSubview:self.contentTextView];
    [contentView addSubview:self.contentTextView];

    //: [self.view addSubview:self.numLabel];
    [self.view addSubview:self.numLabel];
    //: self.numLabel.text = [NSString stringWithFormat:@"%lu/512",(unsigned long)self.contentTextView.text.length];
    self.numLabel.text = [NSString stringWithFormat:StringFromRelationData(&kStr_convictText),(unsigned long)self.contentTextView.text.length];
    //: self.numLabel.frame = CGRectMake(15, contentView.bottom+10, [[UIScreen mainScreen] bounds].size.width-30, 20);
    self.numLabel.frame = CGRectMake(15, contentView.bottom+10, [[UIScreen mainScreen] bounds].size.width-30, 20);

}

//: - (void)dealloc{
- (void)dealloc{
    //: [[NSNotificationCenter defaultCenter] removeObserver:self];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

//: - (void)backAction{
- (void)belowTeamAdd{
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
}

//: - (void)textViewDidChange:(UITextView *)textView {
- (void)textViewDidChange:(UITextView *)textView {
    //: self.numLabel.text = [NSString stringWithFormat:@"%lu/400",textView.text.length];
    self.numLabel.text = [NSString stringWithFormat:StringFromRelationData(&kStr_engineColorData),textView.text.length];
}


//: - (void)onSave:(id)sender {
- (void)requesting:(id)sender {
    //: [self.contentTextView endEditing:YES];
    [self.contentTextView endEditing:YES];

    //: NSString *content = [self.contentTextView.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    NSString *content = [self.contentTextView.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];

    //: self.speiceBackBlock(content);
    self.speiceBackBlock(content);

    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
//    if([self.delegate respondsToSelector:@selector(createTeamAnnouncementCompleteWithTitle:content:)]) {
//        [self.delegate createTeamAnnouncementCompleteWithTitle:title content:content];
//    }
}


//: - (UILabel *)numLabel{
- (UILabel *)numLabel{
    //: if (!_numLabel) {
    if (!_numLabel) {
        //: _numLabel = [[UILabel alloc] init];
        _numLabel = [[UILabel alloc] init];
        //: _numLabel.font = [UIFont systemFontOfSize:12.f];
        _numLabel.font = [UIFont systemFontOfSize:12.f];
        //: _numLabel.textAlignment = NSTextAlignmentRight;
        _numLabel.textAlignment = NSTextAlignmentRight;
        //: _numLabel.textColor = [UIColor colorWithHexString:@"#999999"];
        _numLabel.textColor = [UIColor box:StringFromRelationData(&kStr_classicTitle)];
    }
    //: return _numLabel;
    return _numLabel;
}


//: @end
@end

Byte *RelationDataToByte(RelationData *data) {
    if (data->economicCondition) return data->spending;
    for (int i = 0; i < data->worryKey; i++) {
        data->spending[i] ^= data->output;
    }
    data->spending[data->worryKey] = 0;
    data->economicCondition = true;
	if (data->worryKey >= 3) {
		data->elaborate = data->spending[0];
		data->temple = data->spending[1];
		data->distinct = data->spending[2];
	}
    return data->spending;
}

NSString *StringFromRelationData(RelationData *data) {
    return [NSString stringWithUTF8String:(char *)RelationDataToByte(data)];
}
