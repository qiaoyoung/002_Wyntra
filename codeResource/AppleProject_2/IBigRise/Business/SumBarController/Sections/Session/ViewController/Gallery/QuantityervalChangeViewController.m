
#import <Foundation/Foundation.h>

NSString *StringFromMarkOptimisticData(Byte *data);


//: ic_pic_cut
Byte kStr_fluTitle[] = {91, 10, 68, 9, 199, 169, 122, 19, 164, 173, 167, 163, 180, 173, 167, 163, 167, 185, 184, 229};


//: back_arrow_bw
Byte kStr_somedayEasterValue[] = {36, 13, 62, 8, 97, 38, 45, 209, 160, 159, 161, 169, 157, 159, 176, 176, 173, 181, 157, 160, 181, 181};


//: ic_pic_save
Byte kStr_competitorTitle[] = {64, 11, 58, 10, 211, 52, 36, 140, 157, 140, 163, 157, 153, 170, 163, 157, 153, 173, 155, 176, 159, 100};


//: setting_privacy
Byte kStr_furnitureContent[] = {65, 15, 51, 4, 166, 152, 167, 167, 156, 161, 154, 146, 163, 165, 156, 169, 148, 150, 172, 112};


//: contact_tag_fragment_cancel
Byte kStr_elderlyBureauValue[] = {77, 27, 60, 4, 159, 171, 170, 176, 157, 159, 176, 155, 176, 157, 163, 155, 162, 174, 157, 163, 169, 161, 170, 176, 155, 159, 157, 170, 159, 161, 168, 78};


//: ic_pic_zoomin
Byte kStr_cramRageData[] = {71, 13, 46, 5, 148, 151, 145, 141, 158, 151, 145, 141, 168, 157, 157, 155, 151, 156, 189};


//: tag_activity_set
Byte kStr_infectionName[] = {57, 16, 9, 11, 22, 202, 144, 165, 247, 113, 234, 125, 106, 112, 104, 106, 108, 125, 114, 127, 114, 125, 130, 104, 124, 110, 125, 214};


//: ic_pic_zoomout
Byte kStr_cosyValue[] = {71, 14, 98, 14, 201, 177, 205, 244, 200, 253, 102, 160, 167, 194, 203, 197, 193, 210, 203, 197, 193, 220, 209, 209, 207, 209, 215, 214, 210};


//: 没有开启权限，请开启权限
Byte kStr_moleTextData[] = {36, 36, 66, 7, 169, 87, 136, 40, 244, 227, 40, 222, 203, 39, 254, 194, 39, 210, 241, 40, 223, 197, 43, 219, 210, 49, 254, 206, 42, 241, 249, 39, 254, 194, 39, 210, 241, 40, 223, 197, 43, 219, 210, 223};


//: 保存图片成功
Byte kStr_sightText[] = {72, 18, 47, 6, 254, 237, 19, 238, 204, 20, 220, 199, 20, 202, 237, 22, 184, 182, 21, 183, 191, 20, 185, 206, 36};


//: warm_prompt
Byte kStr_markColorData[] = {57, 11, 92, 10, 124, 91, 201, 148, 142, 126, 211, 189, 206, 201, 187, 204, 206, 203, 201, 204, 208, 217};

// __DEBUG__
// __CLOSE_PRINT__
//
//  QuantityervalChangeViewController.m
//  NIM
//
//  Created by Yan Wang on 2024/8/2.
//  Copyright © 2024 Netease. All rights reserved.
//
//#import "HighProfileView.h"
//#import "NameView.h"

// __M_A_C_R_O__
//: #import "ZMONGalleryImgViewController.h"
#import "QuantityervalChangeViewController.h"
//: #import "UIImageView+WebCache.h"
#import "UIImageView+WebCache.h"
//: #import "UIView+NTES.h"
#import "UIView+Item.h"
//: #import "NTESSnapchatAttachment.h"
#import "BackgroundAttachment.h"
//: #import "NTESSessionUtil.h"
#import "ComponentUtil.h"
//: #import "UIView+Toast.h"
#import "UIView+Toast.h"
//: #import "UIAlertView+NTESBlock.h"
#import "UIAlertView+Count.h"
//: #import "ZZZKitAuthorizationTool.h"
#import "TapTool.h"
//: #import <SDWebImageFLPlugin/SDWebImageFLPlugin.h>
#import <SDWebImageFLPlugin/SDWebImageFLPlugin.h>
//: #import <SDWebImage/SDWebImage.h>
#import <SDWebImage/SDWebImage.h>
//: #import <YYImage/YYImage.h>
#import <YYImage/YYImage.h>
//: #import "YasicClipAreaLayer.h"
#import "SuggestLayer.h"
//: #import "TKImageView.h"
#import "FrameView.h"
//: #import "ZMONCustomLoadingView.h"
#import "ConfidentView.h"

//: @implementation NTESGalleryItem
@implementation SizeText

//: @end
@end

//: @interface ZMONGalleryImgViewController ()
@interface QuantityervalChangeViewController ()

//: @property (nonatomic, strong) UIImageView *cropimage;
@property (nonatomic, strong) UIImageView *cropimage;
//: @property (nonatomic, strong) UIView *cropView;
@property (nonatomic, strong) UIView *cropView;

//: @property (nonatomic,strong) UIScrollView *scrollView;
@property (nonatomic,strong) UIScrollView *scrollView;
//: @property (nonatomic,strong) UIImageView *ImageView;
@property (nonatomic,strong) UIImageView *ImageView;

//: @property (nonatomic,strong) UIButton *btnCut;
@property (nonatomic,strong) UIButton *btnCut;
//: @property (nonatomic,strong) UIButton *btnOut;
@property (nonatomic,strong) UIButton *btnOut;
//: @property (nonatomic,strong) UIButton *btnIn;
@property (nonatomic,strong) UIButton *btnIn;
//: @property (nonatomic,strong) UIButton *btnSave;
@property (nonatomic,strong) UIButton *btnSave;

//: @property (nonatomic,assign) BOOL isCut;
@property (nonatomic,assign) BOOL isCut;

// 裁剪区域属性
//: @property(assign, nonatomic) CGFloat cropAreaX;
@property(assign, nonatomic) CGFloat cropAreaX;
//: @property(assign, nonatomic) CGFloat cropAreaY;
@property(assign, nonatomic) CGFloat cropAreaY;
//: @property(assign, nonatomic) CGFloat cropAreaWidth;
@property(assign, nonatomic) CGFloat cropAreaWidth;
//: @property(assign, nonatomic) CGFloat cropAreaHeight;
@property(assign, nonatomic) CGFloat cropAreaHeight;

//: @property(nonatomic, assign) CGFloat clipHeight;
@property(nonatomic, assign) CGFloat clipHeight;
//: @property(nonatomic, assign) CGFloat clipWidth;
@property(nonatomic, assign) CGFloat clipWidth;

//FrameView
//: @property (nonatomic, strong) TKImageView *tkImageView;
@property (nonatomic, strong) FrameView *tkImageView;
//
//: @property (nonatomic, strong) ZMONCustomLoadingView *loadingView;
@property (nonatomic, strong) ConfidentView *loadingView;
//: @end
@end

//: @implementation ZMONGalleryImgViewController
@implementation QuantityervalChangeViewController


//: - (void)viewWillAppear:(BOOL)animated{
- (void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: [self.navigationController.navigationBar setHidden:YES];
    [self.navigationController.navigationBar setHidden:YES];
//    [self.ImageView sd_setImageWithURL:[NSURL URLWithString:self.imageURL]];
//    [SVProgressHUD show];

//    _hud = [NameView showNoticeTo:self.view animated:YES];
//    _hud.center = CGPointMake(self.view.width*0.5, self.view.height*0.5);

//    NSBundle *bundle = [On sharedKit].emoticonBundle;
//    NSData *imageData = [NSData dataWithContentsOfFile:[bundle pathForResource:@"emoji_1" ofType:@"gif" inDirectory:@"Emoji"]];
////    UIImage *gif = [UIImage sd_imageWithGIFData:imageData];
////
////    [SVProgressHUD showImage:gif status:nil];
//    if (imageData) {
//        [SVProgressHUD showCustomGif:imageData];
//    }
    //: [self.loadingView animationShow];
    [self.loadingView date];
    //: [self loadImage];
    [self team];
}

//: - (void)viewWillDisappear:(BOOL)animated{
- (void)viewWillDisappear:(BOOL)animated{
    //: [super viewWillDisappear:animated];
    [super viewWillDisappear:animated];
    //: [self.navigationController.navigationBar setHidden:NO];
    [self.navigationController.navigationBar setHidden:NO];
}

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: self.view.backgroundColor = [UIColor blackColor];
    self.view.backgroundColor = [UIColor blackColor];

    //: UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: backButton.frame = CGRectMake(5, [UIDevice vg_statusBarHeight]+4, 40, 40);
    backButton.frame = CGRectMake(5, [UIDevice encounter]+4, 40, 40);
    //: [backButton setImage:[UIImage imageNamed:@"back_arrow_bw"] forState:(UIControlStateNormal)];
    [backButton setImage:[UIImage imageNamed:StringFromMarkOptimisticData(kStr_somedayEasterValue)] forState:(UIControlStateNormal)];
    //: [backButton addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [backButton addTarget:self action:@selector(belowTeamAdd) forControlEvents:UIControlEventTouchUpInside];
    //: [self.view addSubview:backButton];
    [self.view addSubview:backButton];

    //: self.scrollView = [[UIScrollView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight]), [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice vg_statusBarHeight])-(({ BOOL isPhoneX = NO; if (@available(iOS 11.0, *)) { isPhoneX = [[UIApplication sharedApplication] delegate].window.safeAreaInsets.bottom > 0.0; } isPhoneX;}) ? 49 + 35 : 49))];
    self.scrollView = [[UIScrollView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice encounter]), [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice encounter])-(({ BOOL isPhoneX = NO; if (@available(iOS 11.0, *)) { isPhoneX = [[UIApplication sharedApplication] delegate].window.safeAreaInsets.bottom > 0.0; } isPhoneX;}) ? 49 + 35 : 49))];
    //: self.scrollView.showsVerticalScrollIndicator = NO;
    self.scrollView.showsVerticalScrollIndicator = NO;
    //: self.scrollView.showsHorizontalScrollIndicator = NO;
    self.scrollView.showsHorizontalScrollIndicator = NO;
    //: [self.view addSubview:self.scrollView];
    [self.view addSubview:self.scrollView];

    //: _ImageView = [[UIImageView alloc]init];
    _ImageView = [[UIImageView alloc]init];
    //: _ImageView.frame = self.scrollView.bounds;
    _ImageView.frame = self.scrollView.bounds;
    //: _ImageView.contentMode = UIViewContentModeScaleAspectFit;
    _ImageView.contentMode = UIViewContentModeScaleAspectFit;
    //: [self.scrollView addSubview:_ImageView];
    [self.scrollView addSubview:_ImageView];

    //: UIView *btnView = [[UIView alloc]initWithFrame:CGRectMake(0, [[UIScreen mainScreen] bounds].size.height-(({ BOOL isPhoneX = NO; if (@available(iOS 11.0, *)) { isPhoneX = [[UIApplication sharedApplication] delegate].window.safeAreaInsets.bottom > 0.0; } isPhoneX;}) ? 49 + 35 : 49), [[UIScreen mainScreen] bounds].size.width, 49)];
    UIView *btnView = [[UIView alloc]initWithFrame:CGRectMake(0, [[UIScreen mainScreen] bounds].size.height-(({ BOOL isPhoneX = NO; if (@available(iOS 11.0, *)) { isPhoneX = [[UIApplication sharedApplication] delegate].window.safeAreaInsets.bottom > 0.0; } isPhoneX;}) ? 49 + 35 : 49), [[UIScreen mainScreen] bounds].size.width, 49)];
    //: [self.view addSubview:btnView];
    [self.view addSubview:btnView];
    //: [self.view bringSubviewToFront:btnView];
    [self.view bringSubviewToFront:btnView];

    //: CGFloat width = [[UIScreen mainScreen] bounds].size.width/4;
    CGFloat width = [[UIScreen mainScreen] bounds].size.width/4;

    //: _btnCut = [UIButton buttonWithType:UIButtonTypeCustom];
    _btnCut = [UIButton buttonWithType:UIButtonTypeCustom];
    //: _btnCut.frame = CGRectMake((width-36)/2, 6, 36, 36);
    _btnCut.frame = CGRectMake((width-36)/2, 6, 36, 36);
    //: [_btnCut setImage:[UIImage imageNamed:@"ic_pic_cut"] forState:UIControlStateNormal];
    [_btnCut setImage:[UIImage imageNamed:StringFromMarkOptimisticData(kStr_fluTitle)] forState:UIControlStateNormal];
    //: [_btnCut addTarget:self action:@selector(onTouchCutBtn) forControlEvents:UIControlEventTouchUpInside];
    [_btnCut addTarget:self action:@selector(inputBubble) forControlEvents:UIControlEventTouchUpInside];
    //: [btnView addSubview:_btnCut];
    [btnView addSubview:_btnCut];

    //: _btnOut = [UIButton buttonWithType:UIButtonTypeCustom];
    _btnOut = [UIButton buttonWithType:UIButtonTypeCustom];
    //: _btnOut.frame = CGRectMake((width-36)/2+width, 6, 36, 36);
    _btnOut.frame = CGRectMake((width-36)/2+width, 6, 36, 36);
    //: [_btnOut setImage:[UIImage imageNamed:@"ic_pic_zoomout"] forState:UIControlStateNormal];
    [_btnOut setImage:[UIImage imageNamed:StringFromMarkOptimisticData(kStr_cosyValue)] forState:UIControlStateNormal];
    //: [_btnOut addTarget:self action:@selector(onTouchOutBtn) forControlEvents:UIControlEventTouchUpInside];
    [_btnOut addTarget:self action:@selector(originBy) forControlEvents:UIControlEventTouchUpInside];
    //: [btnView addSubview:_btnOut];
    [btnView addSubview:_btnOut];


    //: _btnIn = [UIButton buttonWithType:UIButtonTypeCustom];
    _btnIn = [UIButton buttonWithType:UIButtonTypeCustom];
    //: _btnIn.frame = CGRectMake((width-36)/2+width*2, 6, 36, 36);
    _btnIn.frame = CGRectMake((width-36)/2+width*2, 6, 36, 36);
    //: [_btnIn setImage:[UIImage imageNamed:@"ic_pic_zoomin"] forState:UIControlStateNormal];
    [_btnIn setImage:[UIImage imageNamed:StringFromMarkOptimisticData(kStr_cramRageData)] forState:UIControlStateNormal];
    //: [_btnIn addTarget:self action:@selector(onTouchInBtn) forControlEvents:UIControlEventTouchUpInside];
    [_btnIn addTarget:self action:@selector(nameFlag) forControlEvents:UIControlEventTouchUpInside];
    //: [btnView addSubview:_btnIn];
    [btnView addSubview:_btnIn];

    //: _btnSave = [UIButton buttonWithType:UIButtonTypeCustom];
    _btnSave = [UIButton buttonWithType:UIButtonTypeCustom];
    //: _btnSave.frame = CGRectMake((width-36)/2+width*3, 6, 36, 36);
    _btnSave.frame = CGRectMake((width-36)/2+width*3, 6, 36, 36);
    //: [_btnSave setImage:[UIImage imageNamed:@"ic_pic_save"] forState:UIControlStateNormal];
    [_btnSave setImage:[UIImage imageNamed:StringFromMarkOptimisticData(kStr_competitorTitle)] forState:UIControlStateNormal];
    //: [_btnSave addTarget:self action:@selector(onTouchSaveBtn) forControlEvents:UIControlEventTouchUpInside];
    [_btnSave addTarget:self action:@selector(sumervalMember) forControlEvents:UIControlEventTouchUpInside];
    //: [btnView addSubview:_btnSave];
    [btnView addSubview:_btnSave];

    //: [self.view addSubview:self.loadingView];
    [self.view addSubview:self.loadingView];
    //: self.loadingView.hidden = YES;
    self.loadingView.hidden = YES;

}
//: - (void)backAction{
- (void)belowTeamAdd{
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
}

//: - (void)setUpTKImageView:(UIImage *)picImg{
- (void)setDate:(UIImage *)picImg{

    //: _tkImageView.toCropImage = picImg;
    _tkImageView.toCropImage = picImg;//待裁剪的图片。
    //: _tkImageView.showMidLines = YES;
    _tkImageView.showMidLines = YES;//是否需要显示每条边中间的线，这条中间线支持拖动手势。
    //: _tkImageView.needScaleCrop = YES;
    _tkImageView.needScaleCrop = YES;//是否需要缩放裁剪。
    //: _tkImageView.showCrossLines = NO;
    _tkImageView.showCrossLines = NO;//是否显示裁剪框内的交叉线。
    //: _tkImageView.cornerBorderInImage = NO;
    _tkImageView.cornerBorderInImage = NO;//裁剪边框的四个角是否可以超出图片显示。
    //: _tkImageView.cropAreaCornerWidth = 22;
    _tkImageView.cropAreaCornerWidth = 22;//设置裁剪边框四个角的宽度，这里指角的横边的长度。
    //: _tkImageView.cropAreaCornerHeight = 22;
    _tkImageView.cropAreaCornerHeight = 22;//设置裁剪边框四个角的高度，这里指角的竖边的长度。
    //: _tkImageView.minSpace = 30;
    _tkImageView.minSpace = 30;//相邻角之间的最小距离。
    //: _tkImageView.cropAreaCornerLineColor = [UIColor whiteColor];
    _tkImageView.cropAreaCornerLineColor = [UIColor whiteColor];//设置裁剪边框四个角的颜色。
    //: _tkImageView.cropAreaBorderLineColor = [UIColor whiteColor];
    _tkImageView.cropAreaBorderLineColor = [UIColor whiteColor];//设置裁剪边框的颜色。
    //: _tkImageView.cropAreaCornerLineWidth = 3;
    _tkImageView.cropAreaCornerLineWidth = 3;//设置裁剪边框四个角的线宽。
    //: _tkImageView.cropAreaBorderLineWidth = 2;
    _tkImageView.cropAreaBorderLineWidth = 2;//设置裁剪边框的线宽。
    //: _tkImageView.cropAreaMidLineWidth = 20;
    _tkImageView.cropAreaMidLineWidth = 20;//裁剪边框每条边中间线的长度。
    //: _tkImageView.cropAreaMidLineHeight = 6;
    _tkImageView.cropAreaMidLineHeight = 6;//裁剪边框每条边中间线的线宽。
    //: _tkImageView.cropAreaMidLineColor = [UIColor whiteColor];
    _tkImageView.cropAreaMidLineColor = [UIColor whiteColor];//裁剪边框每条边中间线的颜色。
    //: _tkImageView.cropAreaCrossLineColor = [UIColor whiteColor];
    _tkImageView.cropAreaCrossLineColor = [UIColor whiteColor];//裁剪框内交叉线的颜色。
    //: _tkImageView.cropAreaCrossLineWidth = 4;
    _tkImageView.cropAreaCrossLineWidth = 4;//裁剪框内交叉线的宽度。
    //: _tkImageView.initialScaleFactor = 1;
    _tkImageView.initialScaleFactor = 1;//初始化比例因子
    //: _tkImageView.cropAspectRatio = [@(4.0/3.0) floatValue];
    _tkImageView.cropAspectRatio = [@(4.0/3.0) floatValue];//设置裁剪框的宽高比。

}

//: - (void)onTouchCutBtn{
- (void)inputBubble{

    //: UIImage *yyImage = [self imageWithPath:self.imagePath];
    UIImage *yyImage = [self exceptPhone:self.imagePath];
    //: self.isCut = YES;
    self.isCut = YES;

//    [self showCapturedPhoto:yyImage];

    //tkimage
    //: [self.view addSubview:self.tkImageView];
    [self.view addSubview:self.tkImageView];
    //: self.tkImageView.hidden = NO;
    self.tkImageView.hidden = NO;
    //: [self setUpTKImageView:yyImage];
    [self setDate:yyImage];

    //: self.btnCut.hidden = YES;
    self.btnCut.hidden = YES;
    //: self.btnOut.hidden = YES;
    self.btnOut.hidden = YES;
    //: self.btnIn.hidden = YES;
    self.btnIn.hidden = YES;

//    DropViewController *controller = [[DropViewController alloc] initWithImage:yyImage];
//        controller.delegate = self;
//        [[self navigationController] pushViewController:controller animated:YES];

}

// 拍照完成后显示照片并添加圆形裁剪框
//: - (void)showCapturedPhoto:(UIImage *)photo {
- (void)infoPhoto:(UIImage *)photo {
    //: _cropimage = [[UIImageView alloc] initWithFrame:CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight]), [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(({ BOOL isPhoneX = NO; if (@available(iOS 11.0, *)) { isPhoneX = [[UIApplication sharedApplication] delegate].window.safeAreaInsets.bottom > 0.0; } isPhoneX;}) ? 49 + 35 : 49)-(44.0f + [UIDevice vg_statusBarHeight]))];
    _cropimage = [[UIImageView alloc] initWithFrame:CGRectMake(0, (44.0f + [UIDevice encounter]), [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(({ BOOL isPhoneX = NO; if (@available(iOS 11.0, *)) { isPhoneX = [[UIApplication sharedApplication] delegate].window.safeAreaInsets.bottom > 0.0; } isPhoneX;}) ? 49 + 35 : 49)-(44.0f + [UIDevice encounter]))];
    //: _cropimage.contentMode = UIViewContentModeScaleAspectFit;
    _cropimage.contentMode = UIViewContentModeScaleAspectFit;
    //: _cropimage.image = photo;
    _cropimage.image = photo;
    //: [self.view addSubview:_cropimage];
    [self.view addSubview:_cropimage];

    // 添加圆形裁剪框
    //: CGFloat diameter = ((self.view.bounds.size.width) < (self.view.bounds.size.height) ? (self.view.bounds.size.width) : (self.view.bounds.size.height)) * 0.8; 
    CGFloat diameter = ((self.view.bounds.size.width) < (self.view.bounds.size.height) ? (self.view.bounds.size.width) : (self.view.bounds.size.height)) * 0.8; // 圆形裁剪框直径
    //: _cropView = [[UIView alloc] initWithFrame:CGRectMake((self.view.bounds.size.width - diameter) / 2, (self.view.bounds.size.height - diameter) / 2, diameter, diameter)];
    _cropView = [[UIView alloc] initWithFrame:CGRectMake((self.view.bounds.size.width - diameter) / 2, (self.view.bounds.size.height - diameter) / 2, diameter, diameter)];
//    _cropView.layer.cornerRadius = diameter / 2; // 设置为圆形
    //: _cropView.layer.borderWidth = 2.0;
    _cropView.layer.borderWidth = 2.0;
    //: _cropView.layer.borderColor = [UIColor whiteColor].CGColor;
    _cropView.layer.borderColor = [UIColor whiteColor].CGColor;
    //: _cropView.clipsToBounds = YES; 
    _cropView.clipsToBounds = YES; // 裁剪子视图
    //: [self.view addSubview:_cropView];
    [self.view addSubview:_cropView];

    // 添加拖动手势
    //: UIPanGestureRecognizer *panGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(handlePan:)];
    UIPanGestureRecognizer *panGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(digitiserPan:)];
    //: [_cropView addGestureRecognizer:panGesture];
    [_cropView addGestureRecognizer:panGesture];


//    self.cropView.layer.sublayers = nil;
//    SuggestLayer * layer = [[SuggestLayer alloc] init];
//
//    CGRect cropframe = CGRectMake(self.cropAreaX, self.cropAreaY, self.cropAreaWidth, self.cropAreaHeight);
//    UIBezierPath * path = [UIBezierPath bezierPathWithRoundedRect:self.cropView.frame cornerRadius:0];
//    UIBezierPath * cropPath = [UIBezierPath bezierPathWithRect:cropframe];
//    [path appendPath:cropPath];
//    layer.path = path.CGPath;
//
//    layer.fillRule = kCAFillRuleEvenOdd;
//    layer.fillColor = [[UIColor blackColor] CGColor];
//    layer.opacity = 0.5;
//
//    layer.frame = self.cropView.bounds;
//    [layer setCropAreaLeft:self.cropAreaX CropAreaTop:self.cropAreaY CropAreaRight:self.cropAreaX + self.cropAreaWidth CropAreaBottom:self.cropAreaY + self.cropAreaHeight];
//    [self.cropView.layer addSublayer:layer];
//    [self.view bringSubviewToFront:self.cropView];

}

// 处理拖动手势
//: - (void)handlePan:(UIPanGestureRecognizer *)gesture {
- (void)digitiserPan:(UIPanGestureRecognizer *)gesture {
    //: CGPoint translation = [gesture translationInView:self.view];
    CGPoint translation = [gesture translationInView:self.view];
    //: CGPoint newCenter = CGPointMake(gesture.view.center.x + translation.x, gesture.view.center.y + translation.y);
    CGPoint newCenter = CGPointMake(gesture.view.center.x + translation.x, gesture.view.center.y + translation.y);

    // 确保裁剪框不超出屏幕范围
    //: CGFloat halfWidth = gesture.view.frame.size.width / 2.0;
    CGFloat halfWidth = gesture.view.frame.size.width / 2.0;
    //: CGFloat halfHeight = gesture.view.frame.size.height / 2.0;
    CGFloat halfHeight = gesture.view.frame.size.height / 2.0;
    //: newCenter.x = ((halfWidth) > (((self.view.bounds.size.width - halfWidth) < (newCenter.x) ? (self.view.bounds.size.width - halfWidth) : (newCenter.x))) ? (halfWidth) : (((self.view.bounds.size.width - halfWidth) < (newCenter.x) ? (self.view.bounds.size.width - halfWidth) : (newCenter.x))));
    newCenter.x = ((halfWidth) > (((self.view.bounds.size.width - halfWidth) < (newCenter.x) ? (self.view.bounds.size.width - halfWidth) : (newCenter.x))) ? (halfWidth) : (((self.view.bounds.size.width - halfWidth) < (newCenter.x) ? (self.view.bounds.size.width - halfWidth) : (newCenter.x))));
    //: newCenter.y = ((halfHeight) > (((self.view.bounds.size.height - halfHeight) < (newCenter.y) ? (self.view.bounds.size.height - halfHeight) : (newCenter.y))) ? (halfHeight) : (((self.view.bounds.size.height - halfHeight) < (newCenter.y) ? (self.view.bounds.size.height - halfHeight) : (newCenter.y))));
    newCenter.y = ((halfHeight) > (((self.view.bounds.size.height - halfHeight) < (newCenter.y) ? (self.view.bounds.size.height - halfHeight) : (newCenter.y))) ? (halfHeight) : (((self.view.bounds.size.height - halfHeight) < (newCenter.y) ? (self.view.bounds.size.height - halfHeight) : (newCenter.y))));

    //: gesture.view.center = newCenter;
    gesture.view.center = newCenter;
    //: [gesture setTranslation:CGPointZero inView:self.view];
    [gesture setTranslation:CGPointZero inView:self.view];
}

// 确认裁剪并执行裁剪操作
//: - (void)confirmCrop {
- (void)info {
    //: CGRect cropRect = [self.view convertRect:_cropView.frame toView:_cropimage];
    CGRect cropRect = [self.view convertRect:_cropView.frame toView:_cropimage];
    //: UIGraphicsBeginImageContextWithOptions(_cropimage.bounds.size, NO, 0);
    UIGraphicsBeginImageContextWithOptions(_cropimage.bounds.size, NO, 0);
    //: UIBezierPath *path = [UIBezierPath bezierPathWithOvalInRect:cropRect];
    UIBezierPath *path = [UIBezierPath bezierPathWithOvalInRect:cropRect];
    //: [path addClip];
    [path addClip];
    //: [_cropimage.image drawInRect:_cropimage.bounds];
    [_cropimage.image drawInRect:_cropimage.bounds];
    //: UIImage *croppedImage = UIGraphicsGetImageFromCurrentImageContext();
    UIImage *croppedImage = UIGraphicsGetImageFromCurrentImageContext();
    //: UIGraphicsEndImageContext();
    UIGraphicsEndImageContext();

    // 在这里使用裁剪后的照片 croppedImage
    //: UIImageWriteToSavedPhotosAlbum(croppedImage, self, @selector(image:didFinishSavingWithError:contextInfo:), NULL);
    UIImageWriteToSavedPhotosAlbum(croppedImage, self, @selector(read:jewishCalendarMonth:airBubble:), NULL);

}


//- (void)DropViewController:(DropViewController *)controller didFinishCroppingImage:(UIImage *)croppedImage{
//
//   self.ImageView.image = croppedImage;
//   [[self navigationController] popViewControllerAnimated:NO];
//}
//- (void)ImageCropViewControllerDidCancel:(DropViewController *)controller{
//    UIImage *image = [self imageWithPath:self.imagePath];
//    self.ImageView.image = image;
//    [[self navigationController] popViewControllerAnimated:NO];
//}

//: - (void)onTouchOutBtn{
- (void)originBy{
    //: CGRect frame = self.ImageView.frame;
    CGRect frame = self.ImageView.frame;

    //: frame.size.width-=40;
    frame.size.width-=40;
    //: frame.size.height-=40;
    frame.size.height-=40;
//    frame.origin.x-=10;
//    frame.origin.y-=10;
    //: self.ImageView.frame = frame;
    self.ImageView.frame = frame;
    //: self.scrollView.contentSize = frame.size;
    self.scrollView.contentSize = frame.size;

}
//: - (void)onTouchInBtn {
- (void)nameFlag {
    //: CGRect frame = self.ImageView.frame;
    CGRect frame = self.ImageView.frame;


    //: frame.size.width+=40;
    frame.size.width+=40;
    //: frame.size.height+=40;
    frame.size.height+=40;
//    frame.origin.x+=10;
//    frame.origin.y+=10;
    //: self.ImageView.frame = frame;
    self.ImageView.frame = frame;
    //: self.scrollView.contentSize = frame.size;
    self.scrollView.contentSize = frame.size;

}
//: - (void)onTouchSaveBtn {
- (void)sumervalMember {

    //: if(_isCut){
    if(_isCut){
//        [self confirmCrop];

        //tk
        //: UIImage *image = [_tkImageView currentCroppedImage];
        UIImage *image = [_tkImageView scheme];
        // 在这里使用裁剪后的照片 croppedImage
        //: UIImageWriteToSavedPhotosAlbum(image, self, @selector(image:didFinishSavingWithError:contextInfo:), NULL);
        UIImageWriteToSavedPhotosAlbum(image, self, @selector(read:jewishCalendarMonth:airBubble:), NULL);
        //: self.tkImageView.hidden = YES;
        self.tkImageView.hidden = YES;
        //: self.btnCut.hidden = NO;
        self.btnCut.hidden = NO;
        //: self.btnOut.hidden = NO;
        self.btnOut.hidden = NO;
        //: self.btnIn.hidden = NO;
        self.btnIn.hidden = NO;

    //: }else{
    }else{
        //: UIImage *image = [self imageWithPath:self.imagePath];
        UIImage *image = [self exceptPhone:self.imagePath];
        //: [ZZZKitAuthorizationTool requestPhotoLibraryAuthorization:^(NIMKitAuthorizationStatus status) {
        [TapTool change:^(NIMKitAuthorizationStatus status) {
            //: switch (status) {
            switch (status) {
                //: case NIMKitAuthorizationStatusAuthorized:
                case NIMKitAuthorizationStatusAuthorized:
                    //: UIImageWriteToSavedPhotosAlbum(image, self, @selector(image:didFinishSavingWithError:contextInfo:), NULL);
                    UIImageWriteToSavedPhotosAlbum(image, self, @selector(read:jewishCalendarMonth:airBubble:), NULL);
                    //: break;
                    break;
                //: default:
                default:
                    //: [self.view makeToast:@"没有开启权限，请开启权限".ntes_localized duration:2.0 position:CSToastPositionCenter];
                    [self.view makeToast:StringFromMarkOptimisticData(kStr_moleTextData).colorLocalized duration:2.0 position:CSToastPositionCenter];
                    //: UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:[NTESLanguageManager getTextWithKey:@"warm_prompt"] message:[NTESLanguageManager getTextWithKey:@"setting_privacy"] preferredStyle:UIAlertControllerStyleAlert];
                    UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:[LabelCell tinkleKey:StringFromMarkOptimisticData(kStr_markColorData)] message:[LabelCell tinkleKey:StringFromMarkOptimisticData(kStr_furnitureContent)] preferredStyle:UIAlertControllerStyleAlert];
                    //: [alertControl addAction:([UIAlertAction actionWithTitle:[NTESLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
                    [alertControl addAction:([UIAlertAction actionWithTitle:[LabelCell tinkleKey:StringFromMarkOptimisticData(kStr_elderlyBureauValue)] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
                    //: }])];
                    }])];
                    //: [alertControl addAction:([UIAlertAction actionWithTitle:[NTESLanguageManager getTextWithKey:@"tag_activity_set"] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                    [alertControl addAction:([UIAlertAction actionWithTitle:[LabelCell tinkleKey:StringFromMarkOptimisticData(kStr_infectionName)] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                        //: NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
                        NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
                        //: if( [[UIApplication sharedApplication] canOpenURL:url]) {
                        if( [[UIApplication sharedApplication] canOpenURL:url]) {
                            //: [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
                            [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
                        }
                    //: }])];
                    }])];
                    //: [self presentViewController:alertControl animated:YES completion:nil];
                    [self presentViewController:alertControl animated:YES completion:nil];

                    //: break;
                    break;
            }
        //: }];
        }];
    }


}

//: - (void)image:(UIImage *)image didFinishSavingWithError:(NSError *)error contextInfo:(void *)contextInfo
- (void)read:(UIImage *)image jewishCalendarMonth:(NSError *)error airBubble:(void *)contextInfo
{
//    NSString *toast = (!image || error)? [NSString stringWithFormat:@"%@：%@",@"保存图片失败 , 错误".ntes_localized,error] : @"保存图片成功".ntes_localized;
    //: NSString *toast = @"保存图片成功".ntes_localized;
    NSString *toast = StringFromMarkOptimisticData(kStr_sightText).colorLocalized;
    //: [self.view makeToast:toast duration:2.0 position:CSToastPositionCenter];
    [self.view makeToast:toast duration:2.0 position:CSToastPositionCenter];
}



//: - (void)loadImage
- (void)team
{
    //: UIEdgeInsets insets = UIEdgeInsetsZero;
    UIEdgeInsets insets = UIEdgeInsetsZero;
    //: self.scrollView.contentSize = CGSizeMake(self.scrollView.width - insets.left - insets.right,
    self.scrollView.contentSize = CGSizeMake(self.scrollView.width - insets.left - insets.right,
                                             //: self.scrollView.height - insets.top - insets.bottom);
                                             self.scrollView.height - insets.top - insets.bottom);


    //: if ([[NSFileManager defaultManager] fileExistsAtPath:self.imagePath])
    if ([[NSFileManager defaultManager] fileExistsAtPath:self.imagePath])
    {
        //: [self setupImageWithPath:self.imagePath];
        [self wayOfLife:self.imagePath];
    }
    //: else
    else
    {
        //: typeof(self) weakSelf = self;
        typeof(self) weakSelf = self;
        //: [[NIMSDK sharedSDK].resourceManager download:self.imageURL filepath:self.imagePath progress:nil completion:^(NSError * _Nullable error) {
        [[NIMSDK sharedSDK].resourceManager download:self.imageURL filepath:self.imagePath progress:nil completion:^(NSError * _Nullable error) {
            //: if (error || ![[NSFileManager defaultManager] fileExistsAtPath:self.imagePath])
            if (error || ![[NSFileManager defaultManager] fileExistsAtPath:self.imagePath])
            {
                //: return;
                return;
            }

            //: [weakSelf setupImageWithPath:weakSelf.imagePath];
            [weakSelf wayOfLife:weakSelf.imagePath];
        //: }];
        }];
    }


}

//: - (void)setupImageWithPath:(NSString *)path
- (void)wayOfLife:(NSString *)path
{
    //: UIImage *yyImage = [self imageWithPath:path];
    UIImage *yyImage = [self exceptPhone:path];
    //: self.ImageView.image = yyImage;
    self.ImageView.image = yyImage;

//    [SVProgressHUD dismiss];
//    [_hud removeFromSuperview];
    //: [self.loadingView animationClose];
    [self.loadingView keyImage];
}

//: - (UIImage *)imageWithPath:(NSString *)path
- (UIImage *)exceptPhone:(NSString *)path
{
    //: if (path.length == 0 || ![[NSFileManager defaultManager] fileExistsAtPath:path])
    if (path.length == 0 || ![[NSFileManager defaultManager] fileExistsAtPath:path])
    {
        //: return nil;
        return nil;
    }

    //: NSData *imageData = [[NSData alloc] initWithContentsOfFile:path];
    NSData *imageData = [[NSData alloc] initWithContentsOfFile:path];
//    YYImage *yyImage = [YYImage imageWithData:imageData
//                                        scale:UIScreen.mainScreen.scale];
    //: UIImage *yyImage = [UIImage imageWithData: imageData];
    UIImage *yyImage = [UIImage imageWithData: imageData];

    //: return yyImage;
    return yyImage;
}

//: - (TKImageView *)tkImageView
- (FrameView *)tkImageView
{
    //: if(!_tkImageView){
    if(!_tkImageView){
        //: _tkImageView = [[TKImageView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight]), [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice vg_statusBarHeight])-(({ BOOL isPhoneX = NO; if (@available(iOS 11.0, *)) { isPhoneX = [[UIApplication sharedApplication] delegate].window.safeAreaInsets.bottom > 0.0; } isPhoneX;}) ? 49 + 35 : 49))];
        _tkImageView = [[FrameView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice encounter]), [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice encounter])-(({ BOOL isPhoneX = NO; if (@available(iOS 11.0, *)) { isPhoneX = [[UIApplication sharedApplication] delegate].window.safeAreaInsets.bottom > 0.0; } isPhoneX;}) ? 49 + 35 : 49))];
    }
    //: return _tkImageView;
    return _tkImageView;
}

//: - (ZMONCustomLoadingView *)loadingView
- (ConfidentView *)loadingView
{
    //: if(!_loadingView){
    if(!_loadingView){
        //: _loadingView = [[ZMONCustomLoadingView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight]), [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice vg_statusBarHeight])-(49.0f))];
        _loadingView = [[ConfidentView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice encounter]), [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice encounter])-(49.0f))];
    }
    //: return _loadingView;
    return _loadingView;
}


//: @end
@end

Byte * MarkOptimisticDataToCache(Byte *data) {
    int work = data[0];
    int tart = data[1];
    Byte byTun = data[2];
    int installment = data[3];
    if (!work) return data + installment;
    for (int i = installment; i < installment + tart; i++) {
        int value = data[i] - byTun;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[installment + tart] = 0;
    return data + installment;
}

NSString *StringFromMarkOptimisticData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)MarkOptimisticDataToCache(data)];
}
