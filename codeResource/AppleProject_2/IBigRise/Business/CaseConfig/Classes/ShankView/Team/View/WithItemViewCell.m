
#import <Foundation/Foundation.h>

NSString *StringFromPitData(Byte *data);


//: #34AECA
Byte kStr_actuallyAllowData[] = {6, 7, 47, 5, 64, 82, 98, 99, 112, 116, 114, 112, 182};

// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESTeamSwitchTableViewCell.m
//  NIM
//
//  Created by amao on 5/29/15.
//  Copyright (c) 2015 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZZZTeamSwitchTableViewCell.h"
#import "WithItemViewCell.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"

//: @implementation ZZZTeamSwitchTableViewCell
@implementation WithItemViewCell

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {
        //: _switcher = [[UISwitch alloc] initWithFrame:CGRectZero];
        _switcher = [[UISwitch alloc] initWithFrame:CGRectZero];
        //: _switcher.onTintColor = [UIColor colorWithHexString:@"#34AECA"];
        _switcher.onTintColor = [UIColor box:StringFromPitData(kStr_actuallyAllowData)];
        //: [_switcher addTarget:self action:@selector(valueChanged:) forControlEvents:UIControlEventValueChanged];
        [_switcher addTarget:self action:@selector(quicks:) forControlEvents:UIControlEventValueChanged];
        //: [self.contentView addSubview:_switcher];
        [self.contentView addSubview:_switcher];
    }
    //: return self;
    return self;
}

//: - (void)valueChanged:(id)sender {
- (void)quicks:(id)sender {
    //: if (_switchDelegate && [_switchDelegate respondsToSelector:@selector(cell:onStateChanged:)])
    if (_switchDelegate && [_switchDelegate respondsToSelector:@selector(input:imageChanged:)])
    {
        //: [_switchDelegate cell:self onStateChanged:_switcher.isOn];
        [_switchDelegate input:self imageChanged:_switcher.isOn];
    }
}


//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: CGFloat right = 20.f;
    CGFloat right = 20.f;
    //: self.switcher.nim_right = self.nim_width - right;
    self.switcher.nim_right = self.nim_width - right;
    //: self.switcher.nim_centerY = self.nim_height * .5;
    self.switcher.nim_centerY = self.nim_height * .5;
}


//: @end
@end

Byte * PitDataToCache(Byte *data) {
    int irradiation = data[0];
    int grotesque = data[1];
    Byte telephoneReceiverThan = data[2];
    int behaveChronic = data[3];
    if (!irradiation) return data + behaveChronic;
    for (int i = behaveChronic; i < behaveChronic + grotesque; i++) {
        int value = data[i] - telephoneReceiverThan;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[behaveChronic + grotesque] = 0;
    return data + behaveChronic;
}

NSString *StringFromPitData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)PitDataToCache(data)];
}
