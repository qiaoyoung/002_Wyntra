
#import <Foundation/Foundation.h>

NSString *StringFromSubstantiationData(Byte *data);


//: #D4F2FF
Byte kStr_courseText[] = {69, 7, 99, 5, 65, 134, 167, 151, 169, 149, 169, 169, 31};


//: icon_cell_blue_normal
Byte kStr_untilTitle[] = {4, 21, 79, 12, 42, 33, 192, 247, 57, 196, 96, 177, 184, 178, 190, 189, 174, 178, 180, 187, 187, 174, 177, 187, 196, 180, 174, 189, 190, 193, 188, 176, 187, 217};


//: contact_tag_fragment_sure
Byte kStr_shortageTitle[] = {42, 25, 68, 9, 165, 207, 191, 90, 138, 167, 179, 178, 184, 165, 167, 184, 163, 184, 165, 171, 163, 170, 182, 165, 171, 177, 169, 178, 184, 163, 183, 185, 182, 169, 1};


//: #A148FF
Byte kStr_rabbiName[] = {94, 7, 66, 11, 203, 152, 64, 235, 84, 49, 207, 101, 131, 115, 118, 122, 136, 136, 246};

// __DEBUG__
// __CLOSE_PRINT__
//
//  TearDoingView.m
// On
//
//  Created by chris on 15/9/15.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZZZContactSelectTabView.h"
#import "TearDoingView.h"
//: #import "ZZZContactPickedView.h"
#import "CommentView.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "UIImage+AppleProjectKit.h"
#import "UIImage+On.h"
//: #import "ZZZGlobalMacro.h"
#import "ZZZGlobalMacro.h"
//: #import "AppleProjectKit.h"
#import "On.h"

//: @implementation ZZZContactSelectTabView
@implementation TearDoingView

//: - (instancetype)initWithFrame:(CGRect)frame{
- (instancetype)initWithFrame:(CGRect)frame{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: _pickedView = [[ZZZContactPickedView alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
        _pickedView = [[CommentView alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
        //: [self addSubview:_pickedView];
        [self addSubview:_pickedView];

        //: _doneButton = [UIButton buttonWithType:UIButtonTypeCustom];
        _doneButton = [UIButton buttonWithType:UIButtonTypeCustom];
        //: UIImage *doneButtonNormal = [UIImage grayImageWithName:@"icon_cell_blue_normal" color:[UIColor colorWithHexString:@"#A148FF"]];
        UIImage *doneButtonNormal = [UIImage colouring:StringFromSubstantiationData(kStr_untilTitle) accumulation:[UIColor box:StringFromSubstantiationData(kStr_rabbiName)]];
        //: UIImage *doneButtonHighlighted = [UIImage grayImageWithName:@"icon_cell_blue_normal" color:[UIColor colorWithHexString:@"#A148FF"]];
        UIImage *doneButtonHighlighted = [UIImage colouring:StringFromSubstantiationData(kStr_untilTitle) accumulation:[UIColor box:StringFromSubstantiationData(kStr_rabbiName)]];
        //: [_doneButton setBackgroundImage:doneButtonNormal forState:UIControlStateNormal];
        [_doneButton setBackgroundImage:doneButtonNormal forState:UIControlStateNormal];
        //: [_doneButton setBackgroundImage:doneButtonHighlighted forState:UIControlStateHighlighted];
        [_doneButton setBackgroundImage:doneButtonHighlighted forState:UIControlStateHighlighted];
        //: [_doneButton setTitle:[NTESLanguageManager getTextWithKey:@"contact_tag_fragment_sure"] forState:UIControlStateNormal];
        [_doneButton setTitle:[LabelCell tinkleKey:StringFromSubstantiationData(kStr_shortageTitle)] forState:UIControlStateNormal];
        //: [_doneButton sizeToFit];
        [_doneButton sizeToFit];
        //: _doneButton.nim_size = CGSizeMake(((doneButtonNormal.size.width) > (_doneButton.nim_width + 12.0) ? (doneButtonNormal.size.width) : (_doneButton.nim_width + 12.0)),
        _doneButton.nim_size = CGSizeMake(((doneButtonNormal.size.width) > (_doneButton.nim_width + 12.0) ? (doneButtonNormal.size.width) : (_doneButton.nim_width + 12.0)),
                                          //: doneButtonNormal.size.height);
                                          doneButtonNormal.size.height);
        //: [self addSubview:_doneButton];
        [self addSubview:_doneButton];
//        self.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"contact_bg"]];
        //: self.backgroundColor = [UIColor colorWithHexString:@"#D4F2FF"];
        self.backgroundColor = [UIColor box:StringFromSubstantiationData(kStr_courseText)];
    }
    //: return self;
    return self;
}

//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: CGFloat spacing = 15.f;
    CGFloat spacing = 15.f;
    //: _pickedView.nim_height = self.nim_height;
    _pickedView.nim_height = self.nim_height;
    //: _pickedView.nim_width = self.nim_width - _doneButton.nim_width - spacing;
    _pickedView.nim_width = self.nim_width - _doneButton.nim_width - spacing;
    //: CGFloat doneButtonRight = 15.f;
    CGFloat doneButtonRight = 15.f;
    //: _doneButton.nim_right = self.nim_width - doneButtonRight;
    _doneButton.nim_right = self.nim_width - doneButtonRight;
    //: _doneButton.nim_centerY = self.nim_height * .5f;
    _doneButton.nim_centerY = self.nim_height * .5f;
}

//: @end
@end

Byte * SubstantiationDataToCache(Byte *data) {
    int wateredStock = data[0];
    int cosNarrow = data[1];
    Byte panoramicView = data[2];
    int widelyAdjustment = data[3];
    if (!wateredStock) return data + widelyAdjustment;
    for (int i = widelyAdjustment; i < widelyAdjustment + cosNarrow; i++) {
        int value = data[i] - panoramicView;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[widelyAdjustment + cosNarrow] = 0;
    return data + widelyAdjustment;
}

NSString *StringFromSubstantiationData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)SubstantiationDataToCache(data)];
}
