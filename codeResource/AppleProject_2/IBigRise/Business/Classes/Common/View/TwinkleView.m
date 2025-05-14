
#import <Foundation/Foundation.h>
typedef struct {
    Byte easterCrease;
    Byte *strategyChronic;
    unsigned int tuberculous;
    bool visualPerceptConnection;
	int timeUntil;
	int trade;
	int operateChronic;
} ElsewhereData;

NSString *StringFromElsewhereData(ElsewhereData *data);


//: %d FPS
ElsewhereData kStr_colorOptimisticData = (ElsewhereData){150, (Byte []){179, 242, 182, 208, 198, 197, 64}, 6, false, 166, 170, 239};


//: Menlo
ElsewhereData kStr_teenHeyName = (ElsewhereData){114, (Byte []){63, 23, 28, 30, 29, 164}, 5, false, 234, 104, 223};

// __DEBUG__
// __CLOSE_PRINT__
//
//  TwinkleView.m
//  NIM
//
//  Created by chris on 15/11/16.
//  Copyright © 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESFPSLabel.h"
#import "TwinkleView.h"

//: @implementation NTESFPSLabel{
@implementation TwinkleView{
    //: CADisplayLink *_link;
    CADisplayLink *_link;
    //: NSUInteger _count;
    NSUInteger _count;
    //: NSTimeInterval _lastTime;
    NSTimeInterval _lastTime;
    //: UIFont *_font;
    UIFont *_font;
}


//: - (instancetype)initWithFrame:(CGRect)frame {
- (instancetype)initWithFrame:(CGRect)frame {
    //: if (frame.size.width == 0 && frame.size.height == 0) {
    if (frame.size.width == 0 && frame.size.height == 0) {
        //: frame.size = CGSizeMake(70, 20);
        frame.size = CGSizeMake(70, 20);
    }
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];

    //: self.textAlignment = NSTextAlignmentCenter;
    self.textAlignment = NSTextAlignmentCenter;
    //: self.userInteractionEnabled = NO;
    self.userInteractionEnabled = NO;
    //: self.backgroundColor = [UIColor clearColor];
    self.backgroundColor = [UIColor clearColor];

    //: _font = [UIFont fontWithName:@"Menlo" size:13];
    _font = [UIFont fontWithName:StringFromElsewhereData(&kStr_teenHeyName) size:13];
    //: _link = [CADisplayLink displayLinkWithTarget:self selector:@selector(tick:)];
    _link = [CADisplayLink displayLinkWithTarget:self selector:@selector(secretted:)];
    //: [_link addToRunLoop:[NSRunLoop mainRunLoop] forMode:NSRunLoopCommonModes];
    [_link addToRunLoop:[NSRunLoop mainRunLoop] forMode:NSRunLoopCommonModes];
    //: return self;
    return self;
}

//: - (void)invalidate
- (void)tap
{
    //: [_link invalidate];
    [_link invalidate];
}

//: - (CGSize)sizeThatFits:(CGSize)size {
- (CGSize)sizeThatFits:(CGSize)size {
    //: return CGSizeMake(70, 20);;
    return CGSizeMake(70, 20);;
}

//: - (void)tick:(CADisplayLink *)link {
- (void)secretted:(CADisplayLink *)link {
    //: if (_lastTime == 0) {
    if (_lastTime == 0) {
        //: _lastTime = link.timestamp;
        _lastTime = link.timestamp;
        //: return;
        return;
    }

    //: _count++;
    _count++;
    //: NSTimeInterval delta = link.timestamp - _lastTime;
    NSTimeInterval delta = link.timestamp - _lastTime;
    //: if (delta < 1) return;
    if (delta < 1) return;
    //: _lastTime = link.timestamp;
    _lastTime = link.timestamp;
    //: float fps = _count / delta;
    float fps = _count / delta;
    //: _count = 0;
    _count = 0;


    //: self.text = [NSString stringWithFormat:@"%d FPS",(int)round(fps)];
    self.text = [NSString stringWithFormat:StringFromElsewhereData(&kStr_colorOptimisticData),(int)round(fps)];
}

//: @end
@end

Byte *ElsewhereDataToByte(ElsewhereData *data) {
    if (data->visualPerceptConnection) return data->strategyChronic;
    for (int i = 0; i < data->tuberculous; i++) {
        data->strategyChronic[i] ^= data->easterCrease;
    }
    data->strategyChronic[data->tuberculous] = 0;
    data->visualPerceptConnection = true;
	if (data->tuberculous >= 3) {
		data->timeUntil = data->strategyChronic[0];
		data->trade = data->strategyChronic[1];
		data->operateChronic = data->strategyChronic[2];
	}
    return data->strategyChronic;
}

NSString *StringFromElsewhereData(ElsewhereData *data) {
    return [NSString stringWithUTF8String:(char *)ElsewhereDataToByte(data)];
}
