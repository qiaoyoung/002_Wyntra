
#import <Foundation/Foundation.h>

NSString *StringFromAlongsideData(Byte *data);


//: icon_session_time_bg
Byte kStr_rangeValue[] = {20, 20, 65, 5, 17, 170, 164, 176, 175, 160, 180, 166, 180, 180, 170, 176, 175, 160, 181, 170, 174, 166, 160, 163, 168, 49};

// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESSessionTipCell.m
//  NIMDemo
//
//  Created by ght on 15-1-28.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZZZSessionTimestampCell.h"
#import "InputView.h"
//: #import "ZZZCellConfig.h"
#import "ZZZCellConfig.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "ZZZTimestampModel.h"
#import "GreenTingLanguage.h"
//: #import "ZZZKitUtil.h"
#import "TingText.h"
//: #import "UIImage+AppleProjectKit.h"
#import "UIImage+On.h"
//: #import "AppleProjectKit.h"
#import "On.h"

//: @interface ZZZSessionTimestampCell()
@interface InputView()

//: @property (nonatomic,strong) ZZZTimestampModel *model;
@property (nonatomic,strong) GreenTingLanguage *model;

//: @end
@end

//: @implementation ZZZSessionTimestampCell
@implementation InputView

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {
//        self.backgroundColor = [On sharedKit].config.cellBackgroundColor;
        //: self.backgroundColor = [UIColor clearColor];
        self.backgroundColor = [UIColor clearColor];
        //: self.selectionStyle = UITableViewCellSelectionStyleNone;
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        //: _timeBGView = [[UIImageView alloc] initWithFrame:CGRectZero];
        _timeBGView = [[UIImageView alloc] initWithFrame:CGRectZero];
        //: [self.contentView addSubview:_timeBGView];
        [self.contentView addSubview:_timeBGView];
        //: _timeLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _timeLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _timeLabel.font = [UIFont boldSystemFontOfSize:10.f];
        _timeLabel.font = [UIFont boldSystemFontOfSize:10.f];
        //: _timeLabel.textColor = [UIColor whiteColor];
        _timeLabel.textColor = [UIColor whiteColor];
        //: [self.contentView addSubview:_timeLabel];
        [self.contentView addSubview:_timeLabel];
        //: [_timeBGView setImage:[[UIImage imageNamed:@"icon_session_time_bg"] resizableImageWithCapInsets:UIEdgeInsetsMake(8,20,8,20) resizingMode:UIImageResizingModeStretch]];
        [_timeBGView setImage:[[UIImage imageNamed:StringFromAlongsideData(kStr_rangeValue)] resizableImageWithCapInsets:UIEdgeInsetsMake(8,20,8,20) resizingMode:UIImageResizingModeStretch]];

    }
    //: return self;
    return self;
}

//: - (void)layoutSubviews
- (void)layoutSubviews
{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: [_timeLabel sizeToFit];
    [_timeLabel sizeToFit];
    //: _timeLabel.center = CGPointMake(self.nim_centerX, 20);
    _timeLabel.center = CGPointMake(self.nim_centerX, 20);
    //: _timeBGView.frame = CGRectMake(_timeLabel.nim_left - 7, _timeLabel.nim_top - 2, _timeLabel.nim_width + 14, _timeLabel.nim_height + 4);
    _timeBGView.frame = CGRectMake(_timeLabel.nim_left - 7, _timeLabel.nim_top - 2, _timeLabel.nim_width + 14, _timeLabel.nim_height + 4);
}


//: - (void)refreshData:(ZZZTimestampModel *)data{
- (void)beginValueData:(GreenTingLanguage *)data{
    //: if (self.model == data) {
    if (self.model == data) {
        //: return;
        return;
    }
    //: self.model = data;
    self.model = data;
    //: if([self checkData]){
    if([self date]){
        //: ZZZTimestampModel *model = (ZZZTimestampModel *)data;
        GreenTingLanguage *model = (GreenTingLanguage *)data;
        //: [_timeLabel setText:[ZZZKitUtil showTime:model.messageTime showDetail:YES]];
        [_timeLabel setText:[TingText input:model.messageTime ting:YES]];
    }
}

//: - (BOOL)checkData{
- (BOOL)date{
    //: return [self.model isKindOfClass:[ZZZTimestampModel class]];
    return [self.model isKindOfClass:[GreenTingLanguage class]];
}

//: @end
@end

Byte * AlongsideDataToCache(Byte *data) {
    int publish = data[0];
    int larva = data[1];
    Byte nag = data[2];
    int neverthelessText = data[3];
    if (!publish) return data + neverthelessText;
    for (int i = neverthelessText; i < neverthelessText + larva; i++) {
        int value = data[i] - nag;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[neverthelessText + larva] = 0;
    return data + neverthelessText;
}

NSString *StringFromAlongsideData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)AlongsideDataToCache(data)];
}
