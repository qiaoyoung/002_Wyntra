
#import <Foundation/Foundation.h>

NSString *StringFromCraftData(Byte *data);


//: icon_photo
Byte kStr_damnData[] = {1, 10, 7, 170, 178, 143, 75, 111, 116, 111, 104, 112, 95, 110, 111, 99, 105, 223};


//: contact_tag_fragment_cancel
Byte kStr_totalText[] = {88, 27, 12, 136, 58, 190, 206, 181, 117, 72, 126, 192, 108, 101, 99, 110, 97, 99, 95, 116, 110, 101, 109, 103, 97, 114, 102, 95, 103, 97, 116, 95, 116, 99, 97, 116, 110, 111, 99, 84};


//: group_head_def
Byte kStr_recordingTitle[] = {12, 14, 6, 10, 51, 185, 102, 101, 100, 95, 100, 97, 101, 104, 95, 112, 117, 111, 114, 103, 250};


//: 666666
Byte kStr_theoreticalValue[] = {76, 6, 12, 46, 60, 215, 3, 188, 113, 3, 151, 42, 54, 54, 54, 54, 54, 54, 61};


//: message_send_camera
Byte kStr_abaseMedicineValue[] = {80, 19, 13, 47, 248, 148, 64, 3, 157, 26, 30, 80, 167, 97, 114, 101, 109, 97, 99, 95, 100, 110, 101, 115, 95, 101, 103, 97, 115, 115, 101, 109, 72};


//: ko-KP
Byte kStr_heyContent[] = {88, 5, 5, 73, 248, 80, 75, 45, 111, 107, 191};


//: #3996D6
Byte kStr_headquartersName[] = {15, 7, 6, 56, 90, 207, 54, 68, 54, 57, 57, 51, 35, 45};


//: zh-Hant
Byte kStr_resideContent[] = {67, 7, 11, 64, 39, 120, 8, 146, 216, 149, 47, 116, 110, 97, 72, 45, 104, 122, 186};


//: set_group_avater
Byte kStr_easterMathName[] = {41, 16, 12, 15, 220, 149, 219, 203, 100, 35, 149, 84, 114, 101, 116, 97, 118, 97, 95, 112, 117, 111, 114, 103, 95, 116, 101, 115, 127};


//: zh-Hans
Byte kStr_infectionContent[] = {79, 7, 8, 33, 5, 215, 56, 241, 115, 110, 97, 72, 45, 104, 122, 85};


//: hant
Byte kStr_contentWorryValue[] = {48, 4, 6, 84, 99, 206, 116, 110, 97, 104, 183};


//: contact_list_activity_complete
Byte kStr_tingIllTitle[] = {6, 30, 6, 184, 206, 36, 101, 116, 101, 108, 112, 109, 111, 99, 95, 121, 116, 105, 118, 105, 116, 99, 97, 95, 116, 115, 105, 108, 95, 116, 99, 97, 116, 110, 111, 99, 31};


//: message_send_album
Byte kStr_payerData[] = {96, 18, 11, 171, 18, 42, 76, 88, 144, 54, 39, 109, 117, 98, 108, 97, 95, 100, 110, 101, 115, 95, 101, 103, 97, 115, 115, 101, 109, 70};


//: login_bg
Byte kStr_elderlyData[] = {87, 8, 9, 25, 145, 16, 213, 193, 182, 103, 98, 95, 110, 105, 103, 111, 108, 244};


//: #34AECA
Byte kStr_gagValue[] = {3, 7, 7, 213, 248, 101, 174, 65, 67, 69, 65, 52, 51, 35, 56};


//: #000000
Byte kStr_creaseUntilValue[] = {80, 7, 4, 147, 48, 48, 48, 48, 48, 48, 35, 151};


//: spa
Byte kStr_playoffText[] = {2, 3, 9, 178, 47, 9, 130, 49, 200, 97, 112, 115, 83};


//: register_good_avater
Byte kStr_physicallyValue[] = {57, 20, 7, 89, 40, 184, 105, 114, 101, 116, 97, 118, 97, 95, 100, 111, 111, 103, 95, 114, 101, 116, 115, 105, 103, 101, 114, 78};


//: back_arrow_bl
Byte kStr_sorryStockTitle[] = {40, 13, 8, 184, 159, 184, 56, 209, 108, 98, 95, 119, 111, 114, 114, 97, 95, 107, 99, 97, 98, 234};

// __DEBUG__
// __CLOSE_PRINT__
//
//  SuggestViewController.m
//  NIM
//
//  Created by Yan Wang on 2024/8/8.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZMONGroupAvatarViewController.h"
#import "SuggestViewController.h"
//: #import "SVProgressHUD.h"
#import "SVProgressHUD.h"
//: #import "UIView+Toast.h"
#import "UIView+Toast.h"
//: #import "UIActionSheet+NTESBlock.h"
#import "UIActionSheet+Count.h"
//: #import "ZZZSetNickNameView.h"
#import "ColorView.h"
//: #import "SDWebImageManager.h"
#import "SDWebImageManager.h"
//: #import "NTESFileLocationHelper.h"
#import "FileWithAddCell.h"
//: #import <Photos/Photos.h>
#import <Photos/Photos.h>
//: #import "TZImageManager.h"
#import "TZImageManager.h"
//: #import "TZVideoPlayerController.h"
#import "TZVideoPlayerController.h"
//: #import "TZPhotoPreviewController.h"
#import "TZPhotoPreviewController.h"
//: #import "TZImagePickerController.h"
#import "TZImagePickerController.h"
//: #import "UIView+TZLayout.h"
#import "UIView+TZLayout.h"
//: #import "UIView+Toast.h"
#import "UIView+Toast.h"
//: #import "NTESRegistConfigManager.h"
#import "DisableManager.h"
//: #import "ZZZKitProgressHUD.h"
#import "DevelopmentColorView.h"
//: #import "DataKitDependency.h"
#import "DataKitDependency.h"
//: #import "UIImage+AppleProjectKit.h"
#import "UIImage+On.h"
//: #import "NSString+AppleProjectKit.h"
#import "NSString+On.h"

//: @interface ZMONGroupAvatarViewController ()
@interface SuggestViewController ()

//: @property (nonatomic, strong) UIButton *closeBtn;
@property (nonatomic, strong) UIButton *closeBtn;
//: @property (nonatomic, strong) UIImage *headerImage;
@property (nonatomic, strong) UIImage *headerImage;
//: @property (nonatomic, strong) UIImageView *aratarImgView;
@property (nonatomic, strong) UIImageView *aratarImgView;
//: @property (nonatomic, strong) UILabel *appNameLabel;
@property (nonatomic, strong) UILabel *appNameLabel;
//: @property (nonatomic, strong) UILabel *subLabel;
@property (nonatomic, strong) UILabel *subLabel;
//: @property (nonatomic, strong) UILabel *accountLabel;
@property (nonatomic, strong) UILabel *accountLabel;
//: @property (nonatomic, strong) UIButton *registButton;
@property (nonatomic, strong) UIButton *registButton;

//: @end
@end

//: @implementation ZMONGroupAvatarViewController
@implementation SuggestViewController

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"login_bg"]];
        //: UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
        UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
        //: bg.image = [UIImage imageNamed:@"login_bg"];
        bg.image = [UIImage imageNamed:StringFromCraftData(kStr_elderlyData)];
        //: [self.view addSubview:bg];
        [self.view addSubview:bg];

    //: [self initUI];
    [self initSessionUseUi];

    //: self.closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    self.closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    //: self.closeBtn.backgroundColor = [UIColor clearColor];
    self.closeBtn.backgroundColor = [UIColor clearColor];
    //: [self.closeBtn setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
    [self.closeBtn setImage:[UIImage imageNamed:StringFromCraftData(kStr_sorryStockTitle)] forState:(UIControlStateNormal)];
    //: [self.closeBtn addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [self.closeBtn addTarget:self action:@selector(belowTeamAdd) forControlEvents:UIControlEventTouchUpInside];
    //: [self.view addSubview:self.closeBtn];
    [self.view addSubview:self.closeBtn];
    //: self.closeBtn.frame = CGRectMake(15, 25+[UIDevice vg_statusBarHeight], 40, 40);
    self.closeBtn.frame = CGRectMake(15, 25+[UIDevice encounter], 40, 40);


}
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

//: - (void)initUI
- (void)initSessionUseUi
{
    //: UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(60, 25+[UIDevice vg_statusBarHeight], [[UIScreen mainScreen] bounds].size.width-120, 40)];
    UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(60, 25+[UIDevice encounter], [[UIScreen mainScreen] bounds].size.width-120, 40)];
    //: titleLabel.textColor = [UIColor blackColor];
    titleLabel.textColor = [UIColor blackColor];
    //: titleLabel.font = [UIFont boldSystemFontOfSize:24];
    titleLabel.font = [UIFont boldSystemFontOfSize:24];
    //: titleLabel.text = [NTESLanguageManager getTextWithKey:@"set_group_avater"];
    titleLabel.text = [LabelCell tinkleKey:StringFromCraftData(kStr_easterMathName)];
    //: titleLabel.textAlignment = NSTextAlignmentCenter;
    titleLabel.textAlignment = NSTextAlignmentCenter;
    //: [self.view addSubview:titleLabel];
    [self.view addSubview:titleLabel];

    //: self.accountLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, titleLabel.bottom+20, [[UIScreen mainScreen] bounds].size.width, 20)];
    self.accountLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, titleLabel.bottom+20, [[UIScreen mainScreen] bounds].size.width, 20)];
    //: self.accountLabel.font = [UIFont boldSystemFontOfSize:14];
    self.accountLabel.font = [UIFont boldSystemFontOfSize:14];
    //: self.accountLabel.textColor = [UIColor colorWithHexString:@"666666"];
    self.accountLabel.textColor = [UIColor box:StringFromCraftData(kStr_theoreticalValue)];
    //: self.accountLabel.text = [NTESLanguageManager getTextWithKey:@"register_good_avater"];
    self.accountLabel.text = [LabelCell tinkleKey:StringFromCraftData(kStr_physicallyValue)];
    //: self.accountLabel.textAlignment = NSTextAlignmentCenter;
    self.accountLabel.textAlignment = NSTextAlignmentCenter;
    //: [self.view addSubview:self.accountLabel];
    [self.view addSubview:self.accountLabel];

    //: UIView *imgView = [[UIView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-150)/2, self.accountLabel.bottom+30, 150, 150)];
    UIView *imgView = [[UIView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-150)/2, self.accountLabel.bottom+30, 150, 150)];
    //: [self.view addSubview:imgView];
    [self.view addSubview:imgView];

    //: _aratarImgView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 150, 150)];
    _aratarImgView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 150, 150)];
    //: _aratarImgView.contentMode = UIViewContentModeScaleAspectFill;
    _aratarImgView.contentMode = UIViewContentModeScaleAspectFill;
    //: _aratarImgView.layer.cornerRadius = 75;
    _aratarImgView.layer.cornerRadius = 75;
    //: _aratarImgView.layer.masksToBounds = YES;
    _aratarImgView.layer.masksToBounds = YES;
    //: _aratarImgView.image = [UIImage imageNamed:@"group_head_def"];
    _aratarImgView.image = [UIImage imageNamed:StringFromCraftData(kStr_recordingTitle)];
    //: [imgView addSubview:_aratarImgView];
    [imgView addSubview:_aratarImgView];

//    UIImageView *usericon = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 38, 33)];
//    usericon.image = [UIImage imageNamed:@"ic_hi"];
//    [imgView addSubview:usericon];

    //: UIButton *cameraicon = [[UIButton alloc] initWithFrame:CGRectMake(150-36, 150-36, 36, 36)];
    UIButton *cameraicon = [[UIButton alloc] initWithFrame:CGRectMake(150-36, 150-36, 36, 36)];
    //: cameraicon.backgroundColor = [UIColor whiteColor];
    cameraicon.backgroundColor = [UIColor whiteColor];
    //: [cameraicon setImage:[UIImage imageNamed:@"icon_photo"] forState:(UIControlStateNormal)];
    [cameraicon setImage:[UIImage imageNamed:StringFromCraftData(kStr_damnData)] forState:(UIControlStateNormal)];
    //: cameraicon.layer.cornerRadius = 18;
    cameraicon.layer.cornerRadius = 18;
    //: cameraicon.layer.masksToBounds = YES;
    cameraicon.layer.masksToBounds = YES;
    //: [imgView addSubview:cameraicon];
    [imgView addSubview:cameraicon];
    //: [cameraicon addTarget:self action:@selector(showPicker) forControlEvents:(UIControlEventTouchUpInside)];
    [cameraicon addTarget:self action:@selector(eliteShow) forControlEvents:(UIControlEventTouchUpInside)];

    //: UILabel *tita = [[UILabel alloc]initWithFrame:CGRectMake(0, imgView.bottom+15, [[UIScreen mainScreen] bounds].size.width, 20)];
    UILabel *tita = [[UILabel alloc]initWithFrame:CGRectMake(0, imgView.bottom+15, [[UIScreen mainScreen] bounds].size.width, 20)];
    //: tita.text = self.groupName;
    tita.text = self.groupName;
    //: tita.textColor = [UIColor colorWithHexString:@"#000000"];
    tita.textColor = [UIColor box:StringFromCraftData(kStr_creaseUntilValue)];
    //: tita.textAlignment = NSTextAlignmentCenter;
    tita.textAlignment = NSTextAlignmentCenter;
    //: tita.font = [UIFont systemFontOfSize:16];
    tita.font = [UIFont systemFontOfSize:16];
    //: [self.view addSubview:tita];
    [self.view addSubview:tita];



    //: self.registButton = [UIButton buttonWithType:UIButtonTypeCustom];
    self.registButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: self.registButton.frame = CGRectMake(30, tita.bottom+20, [[UIScreen mainScreen] bounds].size.width-60, 44);
    self.registButton.frame = CGRectMake(30, tita.bottom+20, [[UIScreen mainScreen] bounds].size.width-60, 44);
    //: self.registButton.backgroundColor = [UIColor colorWithHexString:@"#34AECA"];
    self.registButton.backgroundColor = [UIColor box:StringFromCraftData(kStr_gagValue)];
//    self.registButton.layer.masksToBounds = YES;
    //: self.registButton.layer.cornerRadius = 10;
    self.registButton.layer.cornerRadius = 10;
    //: self.registButton.layer.shadowColor = [UIColor colorWithHexString:@"#3996D6"].CGColor;
    self.registButton.layer.shadowColor = [UIColor box:StringFromCraftData(kStr_headquartersName)].CGColor;
    //: self.registButton.layer.shadowOpacity = 1;
    self.registButton.layer.shadowOpacity = 1;
    //: self.registButton.layer.shadowRadius = 0;
    self.registButton.layer.shadowRadius = 0;
    //: self.registButton.layer.shadowOffset = CGSizeMake(0,3);
    self.registButton.layer.shadowOffset = CGSizeMake(0,3);
    //: self.registButton.titleLabel.font = [UIFont systemFontOfSize:16];
    self.registButton.titleLabel.font = [UIFont systemFontOfSize:16];
    //: [self.registButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.registButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    //: [self.registButton setTitle:[NTESLanguageManager getTextWithKey:@"contact_list_activity_complete"] forState:UIControlStateNormal];
    [self.registButton setTitle:[LabelCell tinkleKey:StringFromCraftData(kStr_tingIllTitle)] forState:UIControlStateNormal];
    //: [self.view addSubview:self.registButton];
    [self.view addSubview:self.registButton];
    //: [self.registButton addTarget:self action:@selector(nextButtonClick) forControlEvents:UIControlEventTouchUpInside];
    [self.registButton addTarget:self action:@selector(chorusLine) forControlEvents:UIControlEventTouchUpInside];


}

//: - (void)showPicker {
- (void)eliteShow {

    //: UIAlertController *alertVc = [UIAlertController alertControllerWithTitle:nil message:nil preferredStyle:UIAlertControllerStyleActionSheet];
    UIAlertController *alertVc = [UIAlertController alertControllerWithTitle:nil message:nil preferredStyle:UIAlertControllerStyleActionSheet];

    //: UIAlertAction *camera = [UIAlertAction actionWithTitle:[NTESLanguageManager getTextWithKey:@"message_send_camera"] style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
    UIAlertAction *camera = [UIAlertAction actionWithTitle:[LabelCell tinkleKey:StringFromCraftData(kStr_abaseMedicineValue)] style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {

        //: [self pushTZImagePickerControllerWithAsset:nil];
        [self virilePointOfTotalersectionAsset:nil];

    //: }];
    }];

    //: UIAlertAction *picture = [UIAlertAction actionWithTitle:[NTESLanguageManager getTextWithKey:@"message_send_album"] style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
    UIAlertAction *picture = [UIAlertAction actionWithTitle:[LabelCell tinkleKey:StringFromCraftData(kStr_payerData)] style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {

        //: [self pushTZImagePickerControllerWithAsset:nil];
        [self virilePointOfTotalersectionAsset:nil];

            //: }];
            }];

    //: UIAlertAction *cancle = [UIAlertAction actionWithTitle:[NTESLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] style:UIAlertActionStyleCancel handler:^(UIAlertAction *_Nonnull action) {
    UIAlertAction *cancle = [UIAlertAction actionWithTitle:[LabelCell tinkleKey:StringFromCraftData(kStr_totalText)] style:UIAlertActionStyleCancel handler:^(UIAlertAction *_Nonnull action) {
   //: }];
   }];


    //: [alertVc addAction:camera];
    [alertVc addAction:camera];
    //: [alertVc addAction:picture];
    [alertVc addAction:picture];
    //: [alertVc addAction:cancle];
    [alertVc addAction:cancle];

    //: [self presentViewController:alertVc animated:YES completion:nil];
    [self presentViewController:alertVc animated:YES completion:nil];
}

//: #pragma mark - TZImagePickerController
#pragma mark - TZImagePickerController
//: - (void)pushTZImagePickerControllerWithAsset:(PHAsset *)asset {
- (void)virilePointOfTotalersectionAsset:(PHAsset *)asset {

    //: TZImagePickerController *imagePickerVc = [[TZImagePickerController alloc] initWithMaxImagesCount:5 columnNumber:4 delegate:nil pushPhotoPickerVc:YES];
    TZImagePickerController *imagePickerVc = [[TZImagePickerController alloc] initWithMaxImagesCount:5 columnNumber:4 delegate:nil pushPhotoPickerVc:YES];

//: #pragma mark - 五类个性化设置，这些参数都可以不传，此时会走默认设置
#pragma mark - 五类个性化设置，这些参数都可以不传，此时会走默认设置
    //: imagePickerVc.isSelectOriginalPhoto = YES;
    imagePickerVc.isSelectOriginalPhoto = YES;
    //: if (asset){
    if (asset){
        //: imagePickerVc.selectedAssets = [NSMutableArray arrayWithObject:asset]; 
        imagePickerVc.selectedAssets = [NSMutableArray arrayWithObject:asset]; // 目前已经选中的图片数组
    }
    //: imagePickerVc.allowTakePicture = YES; 
    imagePickerVc.allowTakePicture = YES; // 在内部显示拍照按钮
    //: imagePickerVc.allowTakeVideo = NO; 
    imagePickerVc.allowTakeVideo = NO; // 在内部显示拍视频按
    //: [imagePickerVc setUiImagePickerControllerSettingBlock:^(UIImagePickerController *imagePickerController) {
    [imagePickerVc setUiImagePickerControllerSettingBlock:^(UIImagePickerController *imagePickerController) {
        //: imagePickerController.videoQuality = UIImagePickerControllerQualityTypeHigh;
        imagePickerController.videoQuality = UIImagePickerControllerQualityTypeHigh;
    //: }];
    }];

    //: imagePickerVc.iconThemeColor = [UIColor colorWithRed:31 / 255.0 green:185 / 255.0 blue:34 / 255.0 alpha:1.0];
    imagePickerVc.iconThemeColor = [UIColor colorWithRed:31 / 255.0 green:185 / 255.0 blue:34 / 255.0 alpha:1.0];
    //: imagePickerVc.showPhotoCannotSelectLayer = YES;
    imagePickerVc.showPhotoCannotSelectLayer = YES;
    //: imagePickerVc.cannotSelectLayerColor = [[UIColor whiteColor] colorWithAlphaComponent:0.8];
    imagePickerVc.cannotSelectLayerColor = [[UIColor whiteColor] colorWithAlphaComponent:0.8];
    //: imagePickerVc.processHintStr = @"...";
    imagePickerVc.processHintStr = @"...";
    // 3. 设置是否可以选择视频/图片/原图
    //: imagePickerVc.allowPickingVideo = NO;
    imagePickerVc.allowPickingVideo = NO;
    //: imagePickerVc.allowPickingImage = YES;
    imagePickerVc.allowPickingImage = YES;
    //: imagePickerVc.allowPickingOriginalPhoto = YES;
    imagePickerVc.allowPickingOriginalPhoto = YES;
    //: imagePickerVc.allowPickingGif = NO;
    imagePickerVc.allowPickingGif = NO;
    //: imagePickerVc.allowPickingMultipleVideo = NO;
    imagePickerVc.allowPickingMultipleVideo = NO;

    // 4. 照片排列按修改时间升序
    //: imagePickerVc.sortAscendingByModificationDate = YES;
    imagePickerVc.sortAscendingByModificationDate = YES;

     //: imagePickerVc.maxImagesCount = 1;
     imagePickerVc.maxImagesCount = 1;

    /// 5. Single selection mode, valid when maxImagesCount = 1
    /// 5. 单选模式,maxImagesCount为1时才生效
    //: imagePickerVc.showSelectBtn = NO;
    imagePickerVc.showSelectBtn = NO;
    //: imagePickerVc.allowCrop = YES;
    imagePickerVc.allowCrop = YES;
    //: imagePickerVc.needCircleCrop = YES;
    imagePickerVc.needCircleCrop = YES;
    // 设置竖屏下的裁剪尺寸
    //: NSInteger left = 30;
    NSInteger left = 30;
    //: NSInteger widthHeight = self.view.tz_width - 2 * left;
    NSInteger widthHeight = self.view.tz_width - 2 * left;
    //: NSInteger top = (self.view.tz_height - widthHeight) / 2;
    NSInteger top = (self.view.tz_height - widthHeight) / 2;
    //: imagePickerVc.cropRect = CGRectMake(left, top, widthHeight, widthHeight);
    imagePickerVc.cropRect = CGRectMake(left, top, widthHeight, widthHeight);
    //: imagePickerVc.scaleAspectFillCrop = YES;
    imagePickerVc.scaleAspectFillCrop = YES;

    //: imagePickerVc.statusBarStyle = UIStatusBarStyleLightContent;
    imagePickerVc.statusBarStyle = UIStatusBarStyleLightContent;

    // 设置是否显示图片序号
    //: imagePickerVc.showSelectedIndex = YES;
    imagePickerVc.showSelectedIndex = YES;

    //: imagePickerVc.navigationBar.barStyle = UIBarStyleDefault;
    imagePickerVc.navigationBar.barStyle = UIBarStyleDefault;
//    imagePickerVc.naviBgColor = [KEKESkinColorManager shareInstance].skinColor;
    //: imagePickerVc.naviTitleColor = [UIColor blackColor];
    imagePickerVc.naviTitleColor = [UIColor blackColor];
    //: imagePickerVc.barItemTextColor = [UIColor blackColor];
    imagePickerVc.barItemTextColor = [UIColor blackColor];

    //: NSString *langType = emptyString([NIMUserDefaults standardUserDefaults].language);
    NSString *langType = emptyString([AlongDefaults off].language);
    //: NSString *preferredlang = @"";
    NSString *preferredlang = @"";
    //: if ([langType containsString:@"vi"]){
    if ([langType containsString:@"vi"]){
        //: preferredlang = @"vi";
        preferredlang = @"vi";
    //: }else if ([langType containsString:@"ja"]){
    }else if ([langType containsString:@"ja"]){
        //: preferredlang = @"ja";
        preferredlang = @"ja";
    //: }else if ([langType containsString:@"ko"]){
    }else if ([langType containsString:@"ko"]){
        //: preferredlang = @"ko-KP";
        preferredlang = StringFromCraftData(kStr_heyContent);
    //: }else if ([langType containsString:@"spa"]){
    }else if ([langType containsString:StringFromCraftData(kStr_playoffText)]){
        //: preferredlang = @"es";
        preferredlang = @"es";
    //: }else if ([langType containsString:@"pt"]){
    }else if ([langType containsString:@"pt"]){
        //: preferredlang = @"pt";
        preferredlang = @"pt";
    //: }else if ([langType containsString:@"zh"]){
    }else if ([langType containsString:@"zh"]){
        //: preferredlang = @"zh-Hans";
        preferredlang = StringFromCraftData(kStr_infectionContent);
    //: }else if ([langType containsString:@"de"]){
    }else if ([langType containsString:@"de"]){
        //: preferredlang = @"de";
        preferredlang = @"de";
    //: }else if ([langType containsString:@"sa"]){
    }else if ([langType containsString:@"sa"]){
        //: preferredlang = @"ar";
        preferredlang = @"ar";
    //: }else if ([langType containsString:@"ru"]){
    }else if ([langType containsString:@"ru"]){
        //: preferredlang = @"ru";
        preferredlang = @"ru";
    //: }else if ([langType containsString:@"fr"]){
    }else if ([langType containsString:@"fr"]){
        //: preferredlang = @"fr";
        preferredlang = @"fr";
    //: }else if ([langType containsString:@"hant"]){
    }else if ([langType containsString:StringFromCraftData(kStr_contentWorryValue)]){
        //: preferredlang = @"zh-Hant";
        preferredlang = StringFromCraftData(kStr_resideContent);
    //: }else{
    }else{
        //: preferredlang = @"en";
        preferredlang = @"en";
    }
    //: imagePickerVc.preferredLanguage = preferredlang;
    imagePickerVc.preferredLanguage = preferredlang;

//: #pragma mark - 到这里为止
#pragma mark - 到这里为止

    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                  ;
    //: [imagePickerVc setDidFinishPickingPhotosHandle:^(NSArray<UIImage *> *photos, NSArray *assets, BOOL isSelectOriginalPhoto) {
    [imagePickerVc setDidFinishPickingPhotosHandle:^(NSArray<UIImage *> *photos, NSArray *assets, BOOL isSelectOriginalPhoto) {
        //: if (photos.count > 0 && assets.count > 0) {
        if (photos.count > 0 && assets.count > 0) {
            @
             //: try{} @finally{} __typeof__(self) self = __weak_self__;
             try{} @finally{} __typeof__(self) self = __weak_self__;
                            ;

            //: [self.aratarImgView setImage:photos.firstObject];
            [self.aratarImgView setImage:photos.firstObject];
            //: self.headerImage = photos.firstObject;
            self.headerImage = photos.firstObject;

        }
    //: }];
    }];
    //: imagePickerVc.modalPresentationStyle = UIModalPresentationFullScreen;
    imagePickerVc.modalPresentationStyle = UIModalPresentationFullScreen;
    //: [self presentViewController:imagePickerVc animated:YES completion:nil];
    [self presentViewController:imagePickerVc animated:YES completion:nil];
}

//: - (void)nextButtonClick{
- (void)chorusLine{

    //: self.speiceBackBlock(self.headerImage);
    self.speiceBackBlock(self.headerImage);

//    UIImage *imageForAvatarUpload = [self.headerImage nim_imageForAvatarUpload];
//    NSString *fileName = [[[[NSUUID UUID] UUIDString] lowercaseString] stringByAppendingPathExtension:@"jpg"];
//    NSString *filePath = [NSTemporaryDirectory() stringByAppendingPathComponent:fileName];
//    NSData *data = UIImageJPEGRepresentation(imageForAvatarUpload, 1.0);
//    BOOL success = data && [data writeToFile:filePath atomically:YES];
//    __weak typeof(self) wself = self;
//    if (success) {
//        [DevelopmentColorView show];
//        __weak typeof(self) weakSelf = self;
//        [self.teamListManager updateTeamAvatar:filePath completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
//            [DevelopmentColorView dismiss];
//            if (!error) {
//                NSString *urlString = weakSelf.teamListManager.team.avatarUrl;
//                SDWebImageManager *sdManager = [SDWebImageManager sharedManager];
//                [sdManager.imageCache storeImage:imageForAvatarUpload
//                                       imageData:data
//                                          forKey:urlString
//                                       cacheType:SDImageCacheTypeAll
//                                      completion:nil];
//                [wself.navigationController popViewControllerAnimated:NO];
//            }
////            [wself showToastMsg:msg];
//        }];
//    }

}



//: @end
@end

Byte * CraftDataToCache(Byte *data) {
    int scaleAwayWith = data[0];
    int indueLength = data[1];
    int accountForbid = data[2];
    if (!scaleAwayWith) return data + accountForbid;
    for (int i = 0; i < indueLength / 2; i++) {
        int begin = accountForbid + i;
        int end = accountForbid + indueLength - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[accountForbid + indueLength] = 0;
    return data + accountForbid;
}

NSString *StringFromCraftData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)CraftDataToCache(data)];
}  
