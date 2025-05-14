
#import <Foundation/Foundation.h>

NSString *StringFromAtData(Byte *data);


//: wc_scan_album
Byte kStr_activityValue[] = {33, 13, 78, 8, 239, 134, 40, 4, 197, 177, 173, 193, 177, 175, 188, 173, 175, 186, 176, 195, 187, 127};


//: wc_scan_torch
Byte kStr_houseData[] = {53, 13, 69, 9, 73, 220, 82, 61, 170, 188, 168, 164, 184, 168, 166, 179, 164, 185, 180, 183, 168, 173, 109};


//: qrcode_activity_title
Byte kStr_lengthTitle[] = {96, 21, 19, 4, 132, 133, 118, 130, 119, 120, 114, 116, 118, 135, 124, 137, 124, 135, 140, 114, 135, 124, 135, 127, 120, 191};


//: wc_scan_torch_hl
Byte kStr_messageTitle[] = {52, 16, 26, 14, 213, 245, 8, 19, 209, 7, 80, 38, 242, 234, 145, 125, 121, 141, 125, 123, 136, 121, 142, 137, 140, 125, 130, 121, 130, 134, 61};


//: message_send_album
Byte kStr_userData[] = {11, 18, 60, 12, 129, 231, 58, 119, 47, 198, 2, 52, 169, 161, 175, 175, 157, 163, 161, 155, 175, 161, 170, 160, 155, 157, 168, 158, 177, 169, 78};


//: wc_scan_mine_qrcode
Byte kStr_redTitle[] = {8, 19, 42, 13, 89, 146, 140, 63, 235, 144, 224, 225, 228, 161, 141, 137, 157, 141, 139, 152, 137, 151, 147, 152, 143, 137, 155, 156, 141, 153, 142, 143, 130};


//: activity_qrcode_scan_me
Byte kStr_eventPolicyTitle[] = {75, 23, 22, 12, 132, 124, 46, 129, 162, 5, 174, 204, 119, 121, 138, 127, 140, 127, 138, 143, 117, 135, 136, 121, 133, 122, 123, 117, 137, 121, 119, 132, 117, 131, 123, 53};

// __DEBUG__
// __CLOSE_PRINT__
//
//  MessageView.m
//  NIM
//
//  Created by Yan Wang on 2024/7/27.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZMONScanToolBar.h"
#import "MessageView.h"
//: #import "SGQRCode.h"
#import "SGQRCode.h"

//: @interface ZMONScanToolBar ()
@interface MessageView ()
//: @property (nonatomic, strong) UIButton *torchBtn;
@property (nonatomic, strong) UIButton *torchBtn;
//: @property (nonatomic, strong) UILabel *tipsLab;
@property (nonatomic, strong) UILabel *tipsLab;
//: @property (nonatomic, strong) UIImageView *qrcodeImgView;
@property (nonatomic, strong) UIImageView *qrcodeImgView;
//: @property (nonatomic, strong) UILabel *qrcodeLab;
@property (nonatomic, strong) UILabel *qrcodeLab;
//: @property (nonatomic, strong) UIImageView *albumImgView;
@property (nonatomic, strong) UIImageView *albumImgView;
//: @property (nonatomic, strong) UILabel *albumLab;
@property (nonatomic, strong) UILabel *albumLab;
//: @end
@end

//: @implementation ZMONScanToolBar
@implementation MessageView

//: - (instancetype)initWithFrame:(CGRect)frame {
- (instancetype)initWithFrame:(CGRect)frame {
    //: if (self = [super initWithFrame:frame]) {
    if (self = [super initWithFrame:frame]) {

        //: [self addSubview:self.torchBtn];
        [self addSubview:self.torchBtn];

        //: [self addSubview:self.tipsLab];
        [self addSubview:self.tipsLab];

        //: [self addSubview:self.qrcodeImgView];
        [self addSubview:self.qrcodeImgView];

        //: [self addSubview:self.qrcodeLab];
        [self addSubview:self.qrcodeLab];

        //: [self addSubview:self.albumImgView];
        [self addSubview:self.albumImgView];

        //: [self addSubview:self.albumLab];
        [self addSubview:self.albumLab];
    }
    //: return self;
    return self;
}

//: - (void)layoutSubviews {
- (void)layoutSubviews {
    //: [super layoutSubviews];
    [super layoutSubviews];

    //: CGFloat tBtn_w = 50;
    CGFloat tBtn_w = 50;
    //: CGFloat tBtn_h = 70;
    CGFloat tBtn_h = 70;
    //: CGFloat tBtn_x = 0.5 * (self.frame.size.width - tBtn_w);
    CGFloat tBtn_x = 0.5 * (self.frame.size.width - tBtn_w);
    //: CGFloat tBtn_y = 0;
    CGFloat tBtn_y = 0;
    //: self.torchBtn.frame = CGRectMake(tBtn_x, tBtn_y, tBtn_w, tBtn_h);
    self.torchBtn.frame = CGRectMake(tBtn_x, tBtn_y, tBtn_w, tBtn_h);

    //: CGFloat tipsLab_w = self.frame.size.width;
    CGFloat tipsLab_w = self.frame.size.width;
    //: CGFloat tipsLab_h = 15;
    CGFloat tipsLab_h = 15;
    //: CGFloat tipsLab_x = 0;
    CGFloat tipsLab_x = 0;
    //: CGFloat tipsLab_y = CGRectGetMaxY(self.torchBtn.frame) + 10;
    CGFloat tipsLab_y = CGRectGetMaxY(self.torchBtn.frame) + 10;
    //: self.tipsLab.frame = CGRectMake(tipsLab_x, tipsLab_y, tipsLab_w, tipsLab_h);
    self.tipsLab.frame = CGRectMake(tipsLab_x, tipsLab_y, tipsLab_w, tipsLab_h);

    //: CGFloat qrLab_w = 150;
    CGFloat qrLab_w = 150;
    //: CGFloat qrLab_h = 12;
    CGFloat qrLab_h = 12;
    //: CGFloat qrLab_x = 0;
    CGFloat qrLab_x = 0;
    //: CGFloat qrLab_y = self.frame.size.height - qrLab_h - 20;
    CGFloat qrLab_y = self.frame.size.height - qrLab_h - 20;
    //: self.qrcodeLab.frame = CGRectMake(qrLab_x, qrLab_y, qrLab_w, qrLab_h);
    self.qrcodeLab.frame = CGRectMake(qrLab_x, qrLab_y, qrLab_w, qrLab_h);

    //: CGFloat qrImgView_w = 50;
    CGFloat qrImgView_w = 50;
    //: CGFloat qrImgView_h = 50;
    CGFloat qrImgView_h = 50;
    //: CGFloat qrImgView_x = 0.5 * (qrLab_w - qrImgView_w);
    CGFloat qrImgView_x = 0.5 * (qrLab_w - qrImgView_w);
    //: CGFloat qrImgView_y = CGRectGetMinY(self.qrcodeLab.frame) - qrImgView_h - 9;
    CGFloat qrImgView_y = CGRectGetMinY(self.qrcodeLab.frame) - qrImgView_h - 9;
    //: self.qrcodeImgView.frame = CGRectMake(qrImgView_x, qrImgView_y, qrImgView_w, qrImgView_h);
    self.qrcodeImgView.frame = CGRectMake(qrImgView_x, qrImgView_y, qrImgView_w, qrImgView_h);

    //: CGFloat alLab_w = qrLab_w;
    CGFloat alLab_w = qrLab_w;
    //: CGFloat alLab_h = qrLab_h;
    CGFloat alLab_h = qrLab_h;
    //: CGFloat alLab_x = self.frame.size.width - alLab_w;
    CGFloat alLab_x = self.frame.size.width - alLab_w;
    //: CGFloat alLab_y = qrLab_y;
    CGFloat alLab_y = qrLab_y;
    //: self.albumLab.frame = CGRectMake(alLab_x, alLab_y, alLab_w, alLab_h);
    self.albumLab.frame = CGRectMake(alLab_x, alLab_y, alLab_w, alLab_h);

    //: CGFloat alImgView_w = qrImgView_w;
    CGFloat alImgView_w = qrImgView_w;
    //: CGFloat alImgView_h = qrImgView_h;
    CGFloat alImgView_h = qrImgView_h;
    //: CGFloat alImgView_x = self.frame.size.width - alImgView_w - 0.5 * (qrLab_w - alImgView_w);
    CGFloat alImgView_x = self.frame.size.width - alImgView_w - 0.5 * (qrLab_w - alImgView_w);
    //: CGFloat alImgView_y = qrImgView_y;
    CGFloat alImgView_y = qrImgView_y;
    //: self.albumImgView.frame = CGRectMake(alImgView_x, alImgView_y, alImgView_w, alImgView_h);
    self.albumImgView.frame = CGRectMake(alImgView_x, alImgView_y, alImgView_w, alImgView_h);

    //: self.qrcodeImgView.layer.cornerRadius = 0.5 * qrImgView_w;
    self.qrcodeImgView.layer.cornerRadius = 0.5 * qrImgView_w;
    //: self.albumImgView.layer.cornerRadius = 0.5 * qrImgView_w;
    self.albumImgView.layer.cornerRadius = 0.5 * qrImgView_w;
}

//: - (UIButton *)torchBtn {
- (UIButton *)torchBtn {
    //: if (!_torchBtn) {
    if (!_torchBtn) {
        //: _torchBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _torchBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_torchBtn setBackgroundImage:[UIImage imageNamed:@"wc_scan_torch"] forState:(UIControlStateNormal)];
        [_torchBtn setBackgroundImage:[UIImage imageNamed:StringFromAtData(kStr_houseData)] forState:(UIControlStateNormal)];
        //: [_torchBtn addTarget:self action:@selector(torchBtn_action:) forControlEvents:(UIControlEventTouchUpInside)];
        [_torchBtn addTarget:self action:@selector(numbers:) forControlEvents:(UIControlEventTouchUpInside)];
        //: _torchBtn.hidden = YES;
        _torchBtn.hidden = YES;
    }
    //: return _torchBtn;
    return _torchBtn;
}

//: - (void)torchBtn_action:(UIButton *)btn {
- (void)numbers:(UIButton *)btn {
    //: if (btn.selected) {
    if (btn.selected) {
        //: btn.selected = NO;
        btn.selected = NO;
        //: [btn setBackgroundImage:[UIImage imageNamed:@"wc_scan_torch"] forState:(UIControlStateNormal)];
        [btn setBackgroundImage:[UIImage imageNamed:StringFromAtData(kStr_houseData)] forState:(UIControlStateNormal)];
        //: [SGTorch turnOffTorch];
        [RadiogramErase enabledSession];
    //: } else {
    } else {
        //: btn.selected = YES;
        btn.selected = YES;
        //: [btn setBackgroundImage:[UIImage imageNamed:@"wc_scan_torch_hl"] forState:(UIControlStateNormal)];
        [btn setBackgroundImage:[UIImage imageNamed:StringFromAtData(kStr_messageTitle)] forState:(UIControlStateNormal)];
        //: [SGTorch turnOnTorch];
        [RadiogramErase ironed];
    }
}

//: - (UILabel *)tipsLab {
- (UILabel *)tipsLab {
    //: if (!_tipsLab) {
    if (!_tipsLab) {
        //: _tipsLab = [[UILabel alloc] init];
        _tipsLab = [[UILabel alloc] init];
        //: _tipsLab.text = [NTESLanguageManager getTextWithKey:@"activity_qrcode_scan_me"];
        _tipsLab.text = [LabelCell tinkleKey:StringFromAtData(kStr_eventPolicyTitle)];
//        _tipsLab.text = @"将二维码放入扫面框内";
        //: _tipsLab.textAlignment = NSTextAlignmentCenter;
        _tipsLab.textAlignment = NSTextAlignmentCenter;
        //: _tipsLab.textColor = [UIColor whiteColor];
        _tipsLab.textColor = [UIColor whiteColor];
        //: _tipsLab.font = [UIFont systemFontOfSize:17];
        _tipsLab.font = [UIFont systemFontOfSize:17];
    }
    //: return _tipsLab;
    return _tipsLab;
}

//: - (UIImageView *)qrcodeImgView {
- (UIImageView *)qrcodeImgView {
    //: if (!_qrcodeImgView) {
    if (!_qrcodeImgView) {
        //: _qrcodeImgView = [[UIImageView alloc] init];
        _qrcodeImgView = [[UIImageView alloc] init];
        //: _qrcodeImgView.userInteractionEnabled = YES;
        _qrcodeImgView.userInteractionEnabled = YES;
        //: _qrcodeImgView.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.5];
        _qrcodeImgView.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.5];
        //: _qrcodeImgView.image = [UIImage imageNamed:@"wc_scan_mine_qrcode"];
        _qrcodeImgView.image = [UIImage imageNamed:StringFromAtData(kStr_redTitle)];
    }
    //: return _qrcodeImgView;
    return _qrcodeImgView;
}

//: - (UILabel *)qrcodeLab {
- (UILabel *)qrcodeLab {
    //: if (!_qrcodeLab) {
    if (!_qrcodeLab) {
        //: _qrcodeLab = [[UILabel alloc] init];
        _qrcodeLab = [[UILabel alloc] init];
        //: _qrcodeLab.text = [NTESLanguageManager getTextWithKey:@"qrcode_activity_title"];
        _qrcodeLab.text = [LabelCell tinkleKey:StringFromAtData(kStr_lengthTitle)];
        //: _qrcodeLab.textAlignment = NSTextAlignmentCenter;
        _qrcodeLab.textAlignment = NSTextAlignmentCenter;
        //: _qrcodeLab.textColor = [UIColor whiteColor];
        _qrcodeLab.textColor = [UIColor whiteColor];
        //: _qrcodeLab.font = [UIFont systemFontOfSize:13];
        _qrcodeLab.font = [UIFont systemFontOfSize:13];
    }
    //: return _qrcodeLab;
    return _qrcodeLab;
}

//: - (UIImageView *)albumImgView {
- (UIImageView *)albumImgView {
    //: if (!_albumImgView) {
    if (!_albumImgView) {
        //: _albumImgView = [[UIImageView alloc] init];
        _albumImgView = [[UIImageView alloc] init];
        //: _albumImgView.userInteractionEnabled = YES;
        _albumImgView.userInteractionEnabled = YES;
        //: _albumImgView.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.5];
        _albumImgView.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.5];
        //: _albumImgView.image = [UIImage imageNamed:@"wc_scan_album"];
        _albumImgView.image = [UIImage imageNamed:StringFromAtData(kStr_activityValue)];
    }
    //: return _albumImgView;
    return _albumImgView;
}

//: - (UILabel *)albumLab {
- (UILabel *)albumLab {
    //: if (!_albumLab) {
    if (!_albumLab) {
        //: _albumLab = [[UILabel alloc] init];
        _albumLab = [[UILabel alloc] init];
        //: _albumLab.text = [NTESLanguageManager getTextWithKey:@"message_send_album"];
        _albumLab.text = [LabelCell tinkleKey:StringFromAtData(kStr_userData)];
        //: _albumLab.textAlignment = NSTextAlignmentCenter;
        _albumLab.textAlignment = NSTextAlignmentCenter;
        //: _albumLab.textColor = [UIColor whiteColor];
        _albumLab.textColor = [UIColor whiteColor];
        //: _albumLab.font = [UIFont systemFontOfSize:13];
        _albumLab.font = [UIFont systemFontOfSize:13];
    }
    //: return _albumLab;
    return _albumLab;
}

//: - (void)showTorch {
- (void)imageTorch {
    //: self.torchBtn.hidden = NO;
    self.torchBtn.hidden = NO;
    //: self.tipsLab.hidden = YES;
    self.tipsLab.hidden = YES;
}
//: - (void)dismissTorch {
- (void)picture {
    //: if (!self.torchBtn.isSelected) {
    if (!self.torchBtn.isSelected) {
        //: self.torchBtn.hidden = YES;
        self.torchBtn.hidden = YES;
        //: self.tipsLab.hidden = NO;
        self.tipsLab.hidden = NO;
    }
}

//: - (void)addQRCodeTarget:(id)aTarget action:(SEL)aAction {
- (void)icon:(id)aTarget between:(SEL)aAction {
    //: UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:aTarget action:aAction];
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:aTarget action:aAction];
    //: [self.qrcodeImgView addGestureRecognizer:tap];
    [self.qrcodeImgView addGestureRecognizer:tap];
}
//: - (void)addAlbumTarget:(id)aTarget action:(SEL)aAction {
- (void)studLab:(id)aTarget table:(SEL)aAction {
    //: UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:aTarget action:aAction];
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:aTarget action:aAction];
    //: [self.albumImgView addGestureRecognizer:tap];
    [self.albumImgView addGestureRecognizer:tap];
}

//: @end
@end

Byte * AtDataToCache(Byte *data) {
    int keyAdjustment = data[0];
    int label = data[1];
    Byte houseName = data[2];
    int titleScale = data[3];
    if (!keyAdjustment) return data + titleScale;
    for (int i = titleScale; i < titleScale + label; i++) {
        int value = data[i] - houseName;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[titleScale + label] = 0;
    return data + titleScale;
}

NSString *StringFromAtData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)AtDataToCache(data)];
}
