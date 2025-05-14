
#import <Foundation/Foundation.h>

NSString *StringFromImpulseData(Byte *data);


//: icon_input_record_indicator
Byte kStr_crowdedValue[] = {7, 27, 9, 192, 174, 54, 228, 127, 13, 114, 111, 116, 97, 99, 105, 100, 110, 105, 95, 100, 114, 111, 99, 101, 114, 95, 116, 117, 112, 110, 105, 95, 110, 111, 99, 105, 48};


//: 00:00
Byte kStr_withDentedData[] = {82, 5, 10, 74, 87, 124, 159, 222, 36, 228, 48, 48, 58, 48, 48, 183};


//: icon_input_record_indicator_cancel
Byte kStr_retchCommentName[] = {45, 34, 9, 10, 45, 115, 22, 127, 75, 108, 101, 99, 110, 97, 99, 95, 114, 111, 116, 97, 99, 105, 100, 110, 105, 95, 100, 114, 111, 99, 101, 114, 95, 116, 117, 112, 110, 105, 95, 110, 111, 99, 105, 143};


//: 手指上滑，取消发送
Byte kStr_circumstanceTitle[] = {85, 27, 10, 13, 172, 37, 243, 125, 179, 155, 129, 128, 233, 145, 143, 229, 136, 182, 230, 150, 143, 229, 140, 188, 239, 145, 187, 230, 138, 184, 228, 135, 140, 230, 139, 137, 230, 65};


//: 松开手指，取消发送
Byte kStr_directContent[] = {69, 27, 11, 139, 221, 4, 208, 101, 215, 37, 250, 129, 128, 233, 145, 143, 229, 136, 182, 230, 150, 143, 229, 140, 188, 239, 135, 140, 230, 139, 137, 230, 128, 188, 229, 190, 157, 230, 99};

// __DEBUG__
// __CLOSE_PRINT__
//
//  StatusView.m
// On
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZZZInputAudioRecordIndicatorView.h"
#import "StatusView.h"
//: #import "UIImage+AppleProjectKit.h"
#import "UIImage+On.h"
//: #import "ZZZGlobalMacro.h"
#import "ZZZGlobalMacro.h"

//: @interface ZZZInputAudioRecordIndicatorView(){
@interface StatusView(){
    //: UIImageView *_backgrounView;
    UIImageView *_backgrounView;
    //: UIImageView *_tipBackgroundView;
    UIImageView *_tipBackgroundView;
}

//: @property (nonatomic, strong) UILabel *timeLabel;
@property (nonatomic, strong) UILabel *timeLabel;

//: @property (nonatomic, strong) UILabel *tipLabel;
@property (nonatomic, strong) UILabel *tipLabel;

//: @end
@end

//: @implementation ZZZInputAudioRecordIndicatorView
@implementation StatusView
//: - (instancetype)init {
- (instancetype)init {
    //: self = [super init];
    self = [super init];
    //: if(self) {
    if(self) {
        //: self.frame = CGRectMake(0, 0, 160, 110);
        self.frame = CGRectMake(0, 0, 160, 110);
        //: _backgrounView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"icon_input_record_indicator"]];
        _backgrounView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:StringFromImpulseData(kStr_crowdedValue)]];
        //: [self addSubview:_backgrounView];
        [self addSubview:_backgrounView];

        //: _tipBackgroundView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"icon_input_record_indicator_cancel"]];
        _tipBackgroundView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:StringFromImpulseData(kStr_retchCommentName)]];
        //: _tipBackgroundView.hidden = YES;
        _tipBackgroundView.hidden = YES;
        //: _tipBackgroundView.frame = CGRectMake(0, 110 - CGRectGetHeight(_tipBackgroundView.bounds), 160, CGRectGetHeight(_tipBackgroundView.bounds));
        _tipBackgroundView.frame = CGRectMake(0, 110 - CGRectGetHeight(_tipBackgroundView.bounds), 160, CGRectGetHeight(_tipBackgroundView.bounds));
        //: [self addSubview:_tipBackgroundView];
        [self addSubview:_tipBackgroundView];

        //: _timeLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _timeLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _timeLabel.font = [UIFont boldSystemFontOfSize:30];
        _timeLabel.font = [UIFont boldSystemFontOfSize:30];
        //: _timeLabel.textColor = [UIColor whiteColor];
        _timeLabel.textColor = [UIColor whiteColor];
        //: _timeLabel.textAlignment = NSTextAlignmentCenter;
        _timeLabel.textAlignment = NSTextAlignmentCenter;
        //: _timeLabel.text = @"00:00";
        _timeLabel.text = StringFromImpulseData(kStr_withDentedData);
        //: [self addSubview:_timeLabel];
        [self addSubview:_timeLabel];

        //: _tipLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _tipLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _tipLabel.font = [UIFont systemFontOfSize:15];
        _tipLabel.font = [UIFont systemFontOfSize:15];
        //: _tipLabel.textColor = [UIColor whiteColor];
        _tipLabel.textColor = [UIColor whiteColor];
        //: _tipLabel.textAlignment = NSTextAlignmentCenter;
        _tipLabel.textAlignment = NSTextAlignmentCenter;
        //: _tipLabel.text = @"手指上滑，取消发送".nim_localized;
        _tipLabel.text = StringFromImpulseData(kStr_circumstanceTitle).start;
        //: [self addSubview:_tipLabel];
        [self addSubview:_tipLabel];

        //: self.phase = AudioRecordPhaseEnd;
        self.phase = AudioRecordPhaseEnd;
    }
    //: return self;
    return self;
}

//: - (void)setRecordTime:(NSTimeInterval)recordTime {
- (void)setRecordTime:(NSTimeInterval)recordTime {
    //: NSInteger minutes = (NSInteger)recordTime / 60;
    NSInteger minutes = (NSInteger)recordTime / 60;
    //: NSInteger seconds = (NSInteger)recordTime % 60;
    NSInteger seconds = (NSInteger)recordTime % 60;
    //: _timeLabel.text = [NSString stringWithFormat:@"%02zd:%02zd", minutes, seconds];
    _timeLabel.text = [NSString stringWithFormat:@"%02zd:%02zd", minutes, seconds];
}

//: - (void)setPhase:(NIMAudioRecordPhase)phase {
- (void)setPhase:(NIMAudioRecordPhase)phase {
    //: if(phase == AudioRecordPhaseStart) {
    if(phase == AudioRecordPhaseStart) {
        //: [self setRecordTime:0];
        [self setRecordTime:0];
    //: } else if(phase == AudioRecordPhaseCancelling) {
    } else if(phase == AudioRecordPhaseCancelling) {
        //: _tipLabel.text = @"松开手指，取消发送".nim_localized;
        _tipLabel.text = StringFromImpulseData(kStr_directContent).start;
        //: _tipBackgroundView.hidden = NO;
        _tipBackgroundView.hidden = NO;
    //: } else {
    } else {
        //: _tipLabel.text = @"手指上滑，取消发送".nim_localized;
        _tipLabel.text = StringFromImpulseData(kStr_circumstanceTitle).start;
        //: _tipBackgroundView.hidden = YES;
        _tipBackgroundView.hidden = YES;
    }
}

//: - (void)layoutSubviews {
- (void)layoutSubviews {
    //: CGSize size = [_timeLabel sizeThatFits:CGSizeMake(160, 0x1.fffffep+127f)];
    CGSize size = [_timeLabel sizeThatFits:CGSizeMake(160, 0x1.fffffep+127f)];
    //: _timeLabel.frame = CGRectMake(0, 36, 160, size.height);
    _timeLabel.frame = CGRectMake(0, 36, 160, size.height);
    //: size = [_tipLabel sizeThatFits:CGSizeMake(160, 0x1.fffffep+127f)];
    size = [_tipLabel sizeThatFits:CGSizeMake(160, 0x1.fffffep+127f)];
    //: _tipLabel.frame = CGRectMake(0, 110 - 10 - size.height, 160, size.height);
    _tipLabel.frame = CGRectMake(0, 110 - 10 - size.height, 160, size.height);
}


//: @end
@end

Byte * ImpulseDataToCache(Byte *data) {
    int tongue = data[0];
    int wrath = data[1];
    int reputation = data[2];
    if (!tongue) return data + reputation;
    for (int i = 0; i < wrath / 2; i++) {
        int begin = reputation + i;
        int end = reputation + wrath - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[reputation + wrath] = 0;
    return data + reputation;
}

NSString *StringFromImpulseData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)ImpulseDataToCache(data)];
}  
