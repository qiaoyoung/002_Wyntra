
#import <Foundation/Foundation.h>

NSString *StringFromVoiceData(Byte *data);


//: loading_%zd
Byte kStr_informSessionValue[] = {63, 11, 29, 9, 183, 10, 2, 80, 177, 137, 140, 126, 129, 134, 139, 132, 124, 66, 151, 129, 83};

// __DEBUG__
// __CLOSE_PRINT__
//
//  ConfidentView.m
//  NIM
//
//  Created by Yan Wang on 2024/8/10.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZMONCustomLoadingView.h"
#import "ConfidentView.h"

//: @interface ZMONCustomLoadingView ()
@interface ConfidentView ()

//: @property (nonatomic, strong) UIView *viewBg;
@property (nonatomic, strong) UIView *viewBg;
//: @property (strong, nonatomic) UIImageView *gifView;
@property (strong, nonatomic) UIImageView *gifView;

//: @end
@end

//: @implementation ZMONCustomLoadingView
@implementation ConfidentView

//: - (instancetype)initWithFrame:(CGRect)frame
- (instancetype)initWithFrame:(CGRect)frame
{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
//        self.backgroundColor = [UIColor clearColor];
        //: self.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.5];
        self.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.5];
//        UITapGestureRecognizer *singleTapclose = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(animationClose)];
//        [self addGestureRecognizer:singleTapclose];

        //: [self initUI];
        [self initBackground];

    }
    //: return self;
    return self;
}


//: - (void)initUI{
- (void)initBackground{

    //: _viewBg = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 120, 120)];
    _viewBg = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 120, 120)];
    //: _viewBg.backgroundColor = [UIColor whiteColor];
    _viewBg.backgroundColor = [UIColor whiteColor];
    //: _viewBg.center = CGPointMake(self.width/2, self.height/2);
    _viewBg.center = CGPointMake(self.width/2, self.height/2);
    //: _viewBg.layer.masksToBounds = YES;
    _viewBg.layer.masksToBounds = YES;
    //: _viewBg.layer.cornerRadius = 8;
    _viewBg.layer.cornerRadius = 8;
    //: [self addSubview:_viewBg];
    [self addSubview:_viewBg];

    //: [self.viewBg addSubview:self.gifView];
    [self.viewBg addSubview:self.gifView];
    //: self.gifView.frame = CGRectMake(10, 10, 100, 100);
    self.gifView.frame = CGRectMake(10, 10, 100, 100);
    //: NSMutableArray *refreshingImages = [NSMutableArray array];
    NSMutableArray *refreshingImages = [NSMutableArray array];
    //: for (NSInteger i = 0; i<30; i++) {
    for (NSInteger i = 0; i<30; i++) {
        //: UIImage *image = [UIImage imageNamed:[NSString stringWithFormat:@"loading_%zd",i]];
        UIImage *image = [UIImage imageNamed:[NSString stringWithFormat:StringFromVoiceData(kStr_informSessionValue),i]];
        //: [refreshingImages addObject:image];
        [refreshingImages addObject:image];
    }
    //: [self.gifView stopAnimating];
    [self.gifView stopAnimating];
    //: self.gifView.animationImages = refreshingImages;
    self.gifView.animationImages = refreshingImages;
    //: self.gifView.animationDuration = refreshingImages.count * 0.1;
    self.gifView.animationDuration = refreshingImages.count * 0.1;
    //: [self.gifView startAnimating];
    [self.gifView startAnimating];

}

//: - (UIImageView *)gifView
- (UIImageView *)gifView
{
    //: if (!_gifView) {
    if (!_gifView) {
       //: _gifView = [[UIImageView alloc] init];
       _gifView = [[UIImageView alloc] init];
    }
    //: return _gifView;
    return _gifView;
}

//: - (void)animationClose
- (void)keyImage
{
    //: self.hidden = YES;
    self.hidden = YES;
}

//: - (void)animationShow
- (void)date
{
    //: self.hidden = NO;
    self.hidden = NO;
}

//: @end
@end

Byte * VoiceDataToCache(Byte *data) {
    int sleeveLayer = data[0];
    int crisp = data[1];
    Byte midstNameure = data[2];
    int alteration = data[3];
    if (!sleeveLayer) return data + alteration;
    for (int i = alteration; i < alteration + crisp; i++) {
        int value = data[i] - midstNameure;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[alteration + crisp] = 0;
    return data + alteration;
}

NSString *StringFromVoiceData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)VoiceDataToCache(data)];
}
