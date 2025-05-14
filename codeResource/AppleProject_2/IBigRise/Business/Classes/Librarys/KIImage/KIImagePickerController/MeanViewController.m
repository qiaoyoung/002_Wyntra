
#import <Foundation/Foundation.h>

NSString *StringFromAllyData(Byte *data);


//: back_white
Byte kStr_stopStairsName[] = {3, 10, 7, 43, 96, 93, 96, 101, 116, 105, 104, 119, 95, 107, 99, 97, 98, 6};

// __DEBUG__
// __CLOSE_PRINT__
//
//  MeanViewController.m
//  ChineseTastes
//
//  Created by 刘 波 on 13-7-8.
//  Copyright (c) 2013年 beartech. All rights reserved.
//

// __M_A_C_R_O__
//: #import "KIImageCropperViewController.h"
#import "MeanViewController.h"

//: @interface KIImageCropperViewController ()
@interface MeanViewController ()

//: @end
@end

//: @implementation KIImageCropperViewController
@implementation MeanViewController

//: - (id)initWithImage:(UIImage *)image cropSize:(CGSize)cropSize {
- (id)initWithInstance:(UIImage *)image memoryImageInputMessage:(CGSize)cropSize {
    //: if (self = [super init]) {
    if (self = [super init]) {
        //: _image = image;
        _image = image;
        //: _cropSize = cropSize;
        _cropSize = cropSize;
    }
    //: return self;
    return self;
}

//: - (void)loadView {
- (void)loadView {
    //: [super loadView];
    [super loadView];
    //: _imageCropperView = [[KIImageCropperView alloc] initWithFrame:CGRectMake(0,
    _imageCropperView = [[ThoughtImageShowView alloc] initWithFrame:CGRectMake(0,
                                                                             //: 0,
                                                                             0,
                                                                             //: CGRectGetWidth(self.view.bounds),
                                                                             CGRectGetWidth(self.view.bounds),
                                                                             //: CGRectGetHeight(self.view.bounds))];
                                                                             CGRectGetHeight(self.view.bounds))];
    //: [_imageCropperView setCropSize:_cropSize];
    [_imageCropperView setCropSize:_cropSize];
    //: [self.view setBackgroundColor:[UIColor colorWithRed:0 green:0 blue:0 alpha:0.6]];
    [self.view setBackgroundColor:[UIColor colorWithRed:0 green:0 blue:0 alpha:0.6]];
    //: [self.view addSubview:_imageCropperView];
    [self.view addSubview:_imageCropperView];
}

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];

    //: [self.navigationController setNavigationBarHidden:NO animated:YES];
    [self.navigationController setNavigationBarHidden:NO animated:YES];

    //: UIBarButtonItem *rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"裁切".nim_localized
    UIBarButtonItem *rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"裁切".start
                                                                           //: style:UIBarButtonItemStylePlain
                                                                           style:UIBarButtonItemStylePlain
                                                                          //: target:self
                                                                          target:self
                                                                          //: action:@selector(croppedImage)];
                                                                          action:@selector(thoughtImageWith)];
    //: self.navigationItem.rightBarButtonItem = rightBarButtonItem;
    self.navigationItem.rightBarButtonItem = rightBarButtonItem;
    //: rightBarButtonItem.tintColor = [UIColor whiteColor];
    rightBarButtonItem.tintColor = [UIColor whiteColor];

    //: [self setNavLeftItem:@selector(left) image:[UIImage imageNamed:@"back_white"] imageH:nil];
    [self item:@selector(queryExtension) onView:[UIImage imageNamed:StringFromAllyData(kStr_stopStairsName)] picture:nil];
}

//: - (void)left {
- (void)queryExtension {
    //: [self.navigationController dismissViewControllerAnimated:YES completion:nil];
    [self.navigationController dismissViewControllerAnimated:YES completion:nil];
}

//: - (void)viewWillAppear:(BOOL)animated{
- (void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];

    //: [_imageCropperView setImage:_image];
    [_imageCropperView setImage:_image];
    //: [_imageCropperView setFrame:CGRectMake(0,
    [_imageCropperView setFrame:CGRectMake(0,
                                           //: 0,
                                           0,
                                           //: CGRectGetWidth(self.view.bounds),
                                           CGRectGetWidth(self.view.bounds),
                                           //: CGRectGetHeight(self.view.bounds))];
                                           CGRectGetHeight(self.view.bounds))];
}

//: - (void)viewDidAppear:(BOOL)animated {
- (void)viewDidAppear:(BOOL)animated {
    //: [super viewDidAppear:animated];
    [super viewDidAppear:animated];




}

//: - (void)setCroppedImage:(void(^)(UIImage *image))block {
- (void)setThoughtImageWith:(void(^)(UIImage *image))block {
    //: if (_croppedImage != block) {
    if (_croppedImage != block) {
        //: _croppedImage = [block copy];
        _croppedImage = [block copy];
    }
}

//: - (void)croppedImage {
- (void)thoughtImageWith {
    //: [self.navigationController dismissViewControllerAnimated:NO completion:nil];
    [self.navigationController dismissViewControllerAnimated:NO completion:nil];
    //: if (_croppedImage != nil) {
    if (_croppedImage != nil) {
        //: _croppedImage(_imageCropperView.croppedImage);
        _croppedImage(_imageCropperView.thoughtImageWith);
    }
}

//: - (void)didReceiveMemoryWarning {
- (void)didReceiveMemoryWarning {
    //: [super didReceiveMemoryWarning];
    [super didReceiveMemoryWarning];
}

//: @end
@end

Byte * AllyDataToCache(Byte *data) {
    int shouldSleeve = data[0];
    int whoever = data[1];
    int tunFlu = data[2];
    if (!shouldSleeve) return data + tunFlu;
    for (int i = 0; i < whoever / 2; i++) {
        int begin = tunFlu + i;
        int end = tunFlu + whoever - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[tunFlu + whoever] = 0;
    return data + tunFlu;
}

NSString *StringFromAllyData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)AllyDataToCache(data)];
}  
