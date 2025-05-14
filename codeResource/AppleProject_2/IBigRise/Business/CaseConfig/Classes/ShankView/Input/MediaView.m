
#import <Foundation/Foundation.h>

NSString *StringFromEncounterData(Byte *data);        


//: #FF1C1C
Byte kStr_gagPublishData[] = {85, 7, 7, 13, 65, 214, 104, 225, 169, 18, 76, 93, 138, 28, 63, 63, 42, 60, 42, 60, 100};


//: Releasetocancel
Byte kStr_bankingTitle[] = {43, 15, 95, 14, 181, 143, 243, 154, 163, 76, 92, 181, 40, 98, 243, 6, 13, 6, 2, 20, 6, 21, 16, 4, 2, 15, 4, 6, 13, 74};


//: Releasetosend_swipeuptocancel
Byte kStr_increasedNotionData[] = {62, 29, 42, 11, 1, 151, 33, 89, 247, 166, 80, 40, 59, 66, 59, 55, 73, 59, 74, 69, 73, 59, 68, 58, 53, 73, 77, 63, 70, 59, 75, 70, 74, 69, 57, 55, 68, 57, 59, 66, 8};


//: 666666
Byte kStr_addWheatTitle[] = {5, 6, 3, 13, 120, 157, 12, 7, 195, 230, 187, 150, 42, 51, 51, 51, 51, 51, 51, 112};


//: sound_del
Byte kStr_dependentTitle[] = {31, 9, 5, 6, 5, 179, 110, 106, 112, 105, 95, 90, 95, 96, 103, 129};


//: sound_wave_%d
Byte kStr_topUntilWideData[] = {19, 13, 97, 9, 66, 135, 234, 110, 21, 18, 14, 20, 13, 3, 254, 22, 0, 21, 4, 254, 196, 3, 217};


//: sound_wave
Byte kStr_importanceData[] = {55, 10, 69, 8, 171, 213, 108, 232, 46, 42, 48, 41, 31, 26, 50, 28, 49, 32, 32};


//: recording_bg_circle
Byte kStr_adventureTunRedValue[] = {89, 19, 1, 4, 113, 100, 98, 110, 113, 99, 104, 109, 102, 94, 97, 102, 94, 98, 104, 113, 98, 107, 100, 210};


//: recording_btn
Byte kStr_mediaQuantityegrationName[] = {41, 13, 53, 9, 51, 203, 82, 172, 119, 61, 48, 46, 58, 61, 47, 52, 57, 50, 42, 45, 63, 57, 173};

// __DEBUG__
// __CLOSE_PRINT__
//
//  MediaView.m
//  KEKEChat
//
//  Created by Yan Wang on 2024/4/27.
//  Copyright © 2024 KEKE. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZZZInputAudioView.h"
#import "MediaView.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "UIView+NTES.h"
#import "UIView+Item.h"

//: @interface ZZZInputAudioView()
@interface MediaView()

//: @property (nonatomic,strong) UIView *audioBgview;
@property (nonatomic,strong) UIView *audioBgview;

//: @property (nonatomic, strong) UIImageView *animationImageView;
@property (nonatomic, strong) UIImageView *animationImageView;
//: @property (nonatomic, strong) UIImageView *soundwaveImageView;
@property (nonatomic, strong) UIImageView *soundwaveImageView;

//: @property (nonatomic, strong) UIImageView *delImg;
@property (nonatomic, strong) UIImageView *delImg;
//: @property (nonatomic, strong) UILabel *delLabel;
@property (nonatomic, strong) UILabel *delLabel;
//: @property (nonatomic, strong) UIImageView *audioBtnBg;
@property (nonatomic, strong) UIImageView *audioBtnBg;

//: @property (nonatomic, strong) UILabel *tipLabel;
@property (nonatomic, strong) UILabel *tipLabel;



//: @end
@end

//: @implementation ZZZInputAudioView
@implementation MediaView


//: - (instancetype)initWithFrame:(CGRect)frame
- (instancetype)initWithFrame:(CGRect)frame
{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self)
    if (self)
    {
        //: UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(animationClose)];
        UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(keyImage)];
         //: [self addGestureRecognizer:tapGesture];
         [self addGestureRecognizer:tapGesture];

        //: _audioBgview = [[UIView alloc]initWithFrame:CGRectMake(0, [[UIScreen mainScreen] bounds].size.height, [[UIScreen mainScreen] bounds].size.width, 200)];
        _audioBgview = [[UIView alloc]initWithFrame:CGRectMake(0, [[UIScreen mainScreen] bounds].size.height, [[UIScreen mainScreen] bounds].size.width, 200)];
        //: _audioBgview.backgroundColor = [UIColor whiteColor];
        _audioBgview.backgroundColor = [UIColor whiteColor];
        //: if (@available(iOS 11.0, *)) {
        if (@available(iOS 11.0, *)) {
            //: _audioBgview.layer.cornerRadius = 16;
            _audioBgview.layer.cornerRadius = 16;
            //: _audioBgview.layer.maskedCorners = kCALayerMinXMinYCorner | kCALayerMaxXMinYCorner; 
            _audioBgview.layer.maskedCorners = kCALayerMinXMinYCorner | kCALayerMaxXMinYCorner; // 左上圆角 // 右上圆角
        }
        //: [self addSubview:_audioBgview];
        [self addSubview:_audioBgview];


//        UIImageView *bgImg = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, KEKEKit_ViewHeight)];
//        bgImg.image = [UIImage imageNamed:@"recording_bg"];
//        [_audioBgview addSubview:bgImg];



        //: _delLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 15, [[UIScreen mainScreen] bounds].size.width, 20)];
        _delLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 15, [[UIScreen mainScreen] bounds].size.width, 20)];
        //: _delLabel.font = [UIFont systemFontOfSize:12];
        _delLabel.font = [UIFont systemFontOfSize:12];
        //: _delLabel.textColor = [UIColor colorWithHexString:@"#FF1C1C"];
        _delLabel.textColor = [UIColor box:StringFromEncounterData(kStr_gagPublishData)];
        //: _delLabel.textAlignment = NSTextAlignmentCenter;
        _delLabel.textAlignment = NSTextAlignmentCenter;
        //: _delLabel.hidden = YES;
        _delLabel.hidden = YES;
        //: _delLabel.text = [NTESLanguageManager getTextWithKey:@"Releasetocancel"];
        _delLabel.text = [LabelCell tinkleKey:StringFromEncounterData(kStr_bankingTitle)];
        //: [_audioBgview addSubview:_delLabel];
        [_audioBgview addSubview:_delLabel];

        //: _delImg = [[UIImageView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-17)/2, _delLabel.bottom+5, 17, 19)];
        _delImg = [[UIImageView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-17)/2, _delLabel.bottom+5, 17, 19)];
        //: _delImg.image = [UIImage imageNamed:@"sound_del"];
        _delImg.image = [UIImage imageNamed:StringFromEncounterData(kStr_dependentTitle)];
        //: _delImg.hidden = YES;
        _delImg.hidden = YES;
        //: [_audioBgview addSubview:_delImg];
        [_audioBgview addSubview:_delImg];

        //: _tipLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 25, [[UIScreen mainScreen] bounds].size.width, 20)];
        _tipLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 25, [[UIScreen mainScreen] bounds].size.width, 20)];
        //: _tipLabel.font = [UIFont systemFontOfSize:12];
        _tipLabel.font = [UIFont systemFontOfSize:12];
        //: _tipLabel.textColor = [UIColor colorWithHexString:@"666666"];
        _tipLabel.textColor = [UIColor box:StringFromEncounterData(kStr_addWheatTitle)];
        //: _tipLabel.textAlignment = NSTextAlignmentCenter;
        _tipLabel.textAlignment = NSTextAlignmentCenter;
//        _tipLabel.text = @"手指上滑，取消发送".nim_localized;
        //: _tipLabel.text = [NTESLanguageManager getTextWithKey:@"Releasetosend_swipeuptocancel"];
        _tipLabel.text = [LabelCell tinkleKey:StringFromEncounterData(kStr_increasedNotionData)];
        //: [_audioBgview addSubview:_tipLabel];
        [_audioBgview addSubview:_tipLabel];

        //: _soundwaveImageView = [[UIImageView alloc]initWithFrame:CGRectMake(20, 40, [[UIScreen mainScreen] bounds].size.width-40, 147)];
        _soundwaveImageView = [[UIImageView alloc]initWithFrame:CGRectMake(20, 40, [[UIScreen mainScreen] bounds].size.width-40, 147)];
        //: _soundwaveImageView.image = [UIImage imageNamed:@"sound_wave"];
        _soundwaveImageView.image = [UIImage imageNamed:StringFromEncounterData(kStr_importanceData)];
        //: [_audioBgview addSubview:_soundwaveImageView];
        [_audioBgview addSubview:_soundwaveImageView];


        // 创建UIImageView
            //: self.animationImageView = [[UIImageView alloc] initWithFrame:CGRectMake(20, 40, [[UIScreen mainScreen] bounds].size.width-40, 147)];
            self.animationImageView = [[UIImageView alloc] initWithFrame:CGRectMake(20, 40, [[UIScreen mainScreen] bounds].size.width-40, 147)];
            //: [_audioBgview addSubview:self.animationImageView];
            [_audioBgview addSubview:self.animationImageView];

            // 创建UIImage数组，用于帧动画
            //: NSMutableArray<UIImage *> *animationFrames = [NSMutableArray array];
            NSMutableArray<UIImage *> *animationFrames = [NSMutableArray array];

            // 添加帧到数组中
            //: for (int i = 0; i <= 5; i++) { 
            for (int i = 0; i <= 5; i++) { //
                //: NSString *imageName = [NSString stringWithFormat:@"sound_wave_%d", i];
                NSString *imageName = [NSString stringWithFormat:StringFromEncounterData(kStr_topUntilWideData), i];
                //: UIImage *image = [UIImage imageNamed:imageName];
                UIImage *image = [UIImage imageNamed:imageName];
                //: if (image) {
                if (image) {
                    //: [animationFrames addObject:image];
                    [animationFrames addObject:image];
                }
            }

            // 设置动画帧
            //: self.animationImageView.animationImages = animationFrames;
            self.animationImageView.animationImages = animationFrames;
            //: self.animationImageView.animationDuration = 1.0; 
            self.animationImageView.animationDuration = 1.0; // 设置动画持续时间
            //: self.animationImageView.animationRepeatCount = 0; 
            self.animationImageView.animationRepeatCount = 0; // 无限循环





        //: self.recordPhase = AudioRecordPhaseEnd;
        self.recordPhase = AudioRecordPhaseEnd;



        //: _audioBtnBg = [[UIImageView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-80)/2, 75, 80, 80)];
        _audioBtnBg = [[UIImageView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-80)/2, 75, 80, 80)];
        //: _audioBtnBg.backgroundColor = [UIColor whiteColor];
        _audioBtnBg.backgroundColor = [UIColor whiteColor];
        //: _audioBtnBg.image = [UIImage imageNamed:@"recording_bg_circle"];
        _audioBtnBg.image = [UIImage imageNamed:StringFromEncounterData(kStr_adventureTunRedValue)];
        //: [_audioBgview addSubview:_audioBtnBg];
        [_audioBgview addSubview:_audioBtnBg];

        //: _audioButton = [UIButton buttonWithType:UIButtonTypeCustom];
        _audioButton = [UIButton buttonWithType:UIButtonTypeCustom];
        //: _audioButton.frame = CGRectMake(([[UIScreen mainScreen] bounds].size.width-65)/2, 82.5, 65, 65);
        _audioButton.frame = CGRectMake(([[UIScreen mainScreen] bounds].size.width-65)/2, 82.5, 65, 65);
        //: [_audioButton setImage:[UIImage imageNamed:@"recording_btn"]
        [_audioButton setImage:[UIImage imageNamed:StringFromEncounterData(kStr_mediaQuantityegrationName)]
                      //: forState:UIControlStateNormal];
                      forState:UIControlStateNormal];
        //: [_audioButton setImage:[UIImage imageNamed:@"recording_btn"]
        [_audioButton setImage:[UIImage imageNamed:StringFromEncounterData(kStr_mediaQuantityegrationName)]
                      //: forState:UIControlStateHighlighted];
                      forState:UIControlStateHighlighted];
//        [_audioButton addTarget:self action:@selector(onClicked:) forControlEvents:UIControlEventTouchUpInside];
        //: [_audioButton addTarget:self action:@selector(onTouchRecordBtnDown:) forControlEvents:UIControlEventTouchDown];
        [_audioButton addTarget:self action:@selector(asRange:) forControlEvents:UIControlEventTouchDown];
        //: [_audioButton addTarget:self action:@selector(onTouchRecordBtnDragInside:) forControlEvents:UIControlEventTouchDragInside];
        [_audioButton addTarget:self action:@selector(lists:) forControlEvents:UIControlEventTouchDragInside];
        //: [_audioButton addTarget:self action:@selector(onTouchRecordBtnDragOutside:) forControlEvents:UIControlEventTouchDragOutside];
        [_audioButton addTarget:self action:@selector(pinValue:) forControlEvents:UIControlEventTouchDragOutside];
        //: [_audioButton addTarget:self action:@selector(onTouchRecordBtnUpInside:) forControlEvents:UIControlEventTouchUpInside];
        [_audioButton addTarget:self action:@selector(alongFileInsideUpwardsTouch:) forControlEvents:UIControlEventTouchUpInside];
        //: [_audioButton addTarget:self action:@selector(onTouchRecordBtnUpOutside:) forControlEvents:UIControlEventTouchUpOutside];
        [_audioButton addTarget:self action:@selector(emotionned:) forControlEvents:UIControlEventTouchUpOutside];
        //: [_audioBgview addSubview:_audioButton];
        [_audioBgview addSubview:_audioButton];

    }
    //: return self;
    return self;
}

//: - (void)setInputActionDelegate:(id<NIMInputActionDelegate>)actionDelegate
- (void)setSignal:(id<DelegateDoing>)actionDelegate
{
    //: _actionDelegate = actionDelegate;
    _actionDelegate = actionDelegate;
}


//: -(void)onClicked:(UIButton *)sender{
-(void)stigmatized:(UIButton *)sender{

}
//: - (void)onTouchRecordBtnDown:(id)sender {
- (void)asRange:(id)sender {
    //: self.recordPhase = AudioRecordPhaseStart;
    self.recordPhase = AudioRecordPhaseStart;
    // 启动动画
    //: [self.animationImageView startAnimating];
    [self.animationImageView startAnimating];
    //: _delImg.hidden = NO;
    _delImg.hidden = NO;
    //: _delLabel.hidden = NO;
    _delLabel.hidden = NO;
    //: _tipLabel.hidden = YES;
    _tipLabel.hidden = YES;
    //: _soundwaveImageView.hidden = YES;
    _soundwaveImageView.hidden = YES;
    //: _audioBtnBg.frame = CGRectMake(([[UIScreen mainScreen] bounds].size.width-100)/2, 65, 100, 100);
    _audioBtnBg.frame = CGRectMake(([[UIScreen mainScreen] bounds].size.width-100)/2, 65, 100, 100);
}
//: - (void)onTouchRecordBtnUpInside:(id)sender {
- (void)alongFileInsideUpwardsTouch:(id)sender {
    // finish Recording
    //: self.recordPhase = AudioRecordPhaseEnd;
    self.recordPhase = AudioRecordPhaseEnd;

    // 停止动画
    //: [self.animationImageView stopAnimating];
    [self.animationImageView stopAnimating];
    //: _delImg.hidden = YES;
    _delImg.hidden = YES;
    //: _delLabel.hidden = YES;
    _delLabel.hidden = YES;
    //: _tipLabel.hidden = NO;
    _tipLabel.hidden = NO;
    //: _soundwaveImageView.hidden = NO;
    _soundwaveImageView.hidden = NO;
    //: _audioBtnBg.frame = CGRectMake(([[UIScreen mainScreen] bounds].size.width-80)/2, 75, 80, 80);
    _audioBtnBg.frame = CGRectMake(([[UIScreen mainScreen] bounds].size.width-80)/2, 75, 80, 80);
}
//: - (void)onTouchRecordBtnUpOutside:(id)sender {
- (void)emotionned:(id)sender {
    // cancel Recording
    //: self.recordPhase = AudioRecordPhaseEnd;
    self.recordPhase = AudioRecordPhaseEnd;
    // 停止动画
    //: [self.animationImageView stopAnimating];
    [self.animationImageView stopAnimating];
    //: _delImg.hidden = YES;
    _delImg.hidden = YES;
    //: _delLabel.hidden = YES;
    _delLabel.hidden = YES;
    //: _tipLabel.hidden = NO;
    _tipLabel.hidden = NO;
    //: _soundwaveImageView.hidden = NO;
    _soundwaveImageView.hidden = NO;
    //: _audioBtnBg.frame = CGRectMake(([[UIScreen mainScreen] bounds].size.width-80)/2, 75, 80, 80);
    _audioBtnBg.frame = CGRectMake(([[UIScreen mainScreen] bounds].size.width-80)/2, 75, 80, 80);
}

//: - (void)onTouchRecordBtnDragInside:(id)sender {
- (void)lists:(id)sender {
    // "手指上滑，取消发送"
    //: self.recordPhase = AudioRecordPhaseRecording;
    self.recordPhase = AudioRecordPhaseRecording;

}
//: - (void)onTouchRecordBtnDragOutside:(id)sender {
- (void)pinValue:(id)sender {
    // "松开手指，取消发送"
    //: self.recordPhase = AudioRecordPhaseCancelling;
    self.recordPhase = AudioRecordPhaseCancelling;
    // 停止动画
    //: [self.animationImageView stopAnimating];
    [self.animationImageView stopAnimating];
    //: _delImg.hidden = YES;
    _delImg.hidden = YES;
    //: _delLabel.hidden = YES;
    _delLabel.hidden = YES;
    //: _tipLabel.hidden = NO;
    _tipLabel.hidden = NO;
    //: _soundwaveImageView.hidden = NO;
    _soundwaveImageView.hidden = NO;
    //: _audioBtnBg.frame = CGRectMake(([[UIScreen mainScreen] bounds].size.width-80)/2, 75, 80, 80);
    _audioBtnBg.frame = CGRectMake(([[UIScreen mainScreen] bounds].size.width-80)/2, 75, 80, 80);
}

//: - (void)setRecordPhase:(NIMAudioRecordPhase)recordPhase {
- (void)setRecordPhase:(NIMAudioRecordPhase)recordPhase {
    //: NIMAudioRecordPhase prevPhase = _recordPhase;
    NIMAudioRecordPhase prevPhase = _recordPhase;
    //: _recordPhase = recordPhase;
    _recordPhase = recordPhase;
    //: if(prevPhase == AudioRecordPhaseEnd) {
    if(prevPhase == AudioRecordPhaseEnd) {
        //: if(AudioRecordPhaseStart == _recordPhase) {
        if(AudioRecordPhaseStart == _recordPhase) {
            //: if ([_actionDelegate respondsToSelector:@selector(onStartRecording)]) {
            if ([_actionDelegate respondsToSelector:@selector(boxBy)]) {
                //: [_actionDelegate onStartRecording];
                [_actionDelegate boxBy];
            }
        }
    //: } else if (prevPhase == AudioRecordPhaseStart || prevPhase == AudioRecordPhaseRecording) {
    } else if (prevPhase == AudioRecordPhaseStart || prevPhase == AudioRecordPhaseRecording) {
        //: if (AudioRecordPhaseEnd == _recordPhase) {
        if (AudioRecordPhaseEnd == _recordPhase) {
            //: if ([_actionDelegate respondsToSelector:@selector(onStopRecording)]) {
            if ([_actionDelegate respondsToSelector:@selector(recentIndex)]) {
                //: [_actionDelegate onStopRecording];
                [_actionDelegate recentIndex];
            }
        }
    //: } else if (prevPhase == AudioRecordPhaseCancelling) {
    } else if (prevPhase == AudioRecordPhaseCancelling) {
        //: if(AudioRecordPhaseEnd == _recordPhase) {
        if(AudioRecordPhaseEnd == _recordPhase) {
            //: if ([_actionDelegate respondsToSelector:@selector(onCancelRecording)]) {
            if ([_actionDelegate respondsToSelector:@selector(cancelDay)]) {
                //: [_actionDelegate onCancelRecording];
                [_actionDelegate cancelDay];
            }
        }
    }
}

//: - (void)setConfig:(id<ZZZSessionConfig>)config
- (void)setConfig:(id<PastConfig>)config
{
    //: _config = config;
    _config = config;
}


//: - (void)animationClose
- (void)keyImage
{
//    self.hidden = YES;
    //: self.audioBgview.frame = CGRectMake(0, [[UIScreen mainScreen] bounds].size.height-200, [[UIScreen mainScreen] bounds].size.width, 200);
    self.audioBgview.frame = CGRectMake(0, [[UIScreen mainScreen] bounds].size.height-200, [[UIScreen mainScreen] bounds].size.width, 200);
        //: [UIView animateWithDuration:0.3f
        [UIView animateWithDuration:0.3f
                         //: animations:^{
                         animations:^{

            //: self.alpha = 0.0;
            self.alpha = 0.0;
            //: self.audioBgview.frame = CGRectMake(0, [[UIScreen mainScreen] bounds].size.height, [[UIScreen mainScreen] bounds].size.width, 200);
            self.audioBgview.frame = CGRectMake(0, [[UIScreen mainScreen] bounds].size.height, [[UIScreen mainScreen] bounds].size.width, 200);
                         }
                         //: completion:nil];
                         completion:nil];
}

//: - (void)animationShow
- (void)arrangeShow
{
//    self.hidden = NO;
    //: self.audioBgview.frame = CGRectMake(0, [[UIScreen mainScreen] bounds].size.height, [[UIScreen mainScreen] bounds].size.width, 200);
    self.audioBgview.frame = CGRectMake(0, [[UIScreen mainScreen] bounds].size.height, [[UIScreen mainScreen] bounds].size.width, 200);

        //: [UIView animateWithDuration:0.3 animations:^{
        [UIView animateWithDuration:0.3 animations:^{
             //: self.alpha = 1.0;
             self.alpha = 1.0;
            //: self.audioBgview.frame = CGRectMake(0, [[UIScreen mainScreen] bounds].size.height-200, [[UIScreen mainScreen] bounds].size.width, 200);
            self.audioBgview.frame = CGRectMake(0, [[UIScreen mainScreen] bounds].size.height-200, [[UIScreen mainScreen] bounds].size.width, 200);

        //: } completion:nil];
        } completion:nil];



}

//: @end
@end

Byte * EncounterDataToCache(Byte *data) {
    int roughNag = data[0];
    int license = data[1];
    Byte blanket = data[2];
    int circlePoint = data[3];
    if (!roughNag) return data + circlePoint;
    for (int i = circlePoint; i < circlePoint + license; i++) {
        int value = data[i] + blanket;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[circlePoint + license] = 0;
    return data + circlePoint;
}

NSString *StringFromEncounterData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)EncounterDataToCache(data)];
}
