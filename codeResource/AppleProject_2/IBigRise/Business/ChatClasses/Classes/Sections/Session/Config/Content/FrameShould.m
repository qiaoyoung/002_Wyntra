
#import <Foundation/Foundation.h>

NSString *StringFromViseData(Byte *data);        


//: message should be audio
Byte kStr_blanketData[] = {99, 23, 5, 8, 93, 36, 158, 123, 104, 96, 110, 110, 92, 98, 96, 27, 110, 99, 106, 112, 103, 95, 27, 93, 96, 27, 92, 112, 95, 100, 106, 141};

// __DEBUG__
// __CLOSE_PRINT__
//
//  FrameShould.m
// On
//
//  Created by amao on 9/15/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZZZAudioContentConfig.h"
#import "FrameShould.h"
//: #import "AppleProjectKit.h"
#import "On.h"

//: @implementation ZZZAudioContentConfig
@implementation FrameShould

//: - (CGSize)contentSize:(CGFloat)cellWidth message:(NIMMessage *)message
- (CGSize)myRefer:(CGFloat)cellWidth view:(NIMMessage *)message
{
        //使用公式 长度 = (最长－最小)*(2/pi)*artan(时间/10)+最小，在10秒时变化逐渐变缓，随着时间增加 无限趋向于最大值
    //: NIMAudioObject *audioContent = (NIMAudioObject*)[message messageObject];
    NIMAudioObject *audioContent = (NIMAudioObject*)[message messageObject];
    //: NSAssert([audioContent isKindOfClass:[NIMAudioObject class]], @"message should be audio");
    NSAssert([audioContent isKindOfClass:[NIMAudioObject class]], StringFromViseData(kStr_blanketData));


    //: CGFloat value = 2*atan((audioContent.duration/1000.0-1)/10.0)/3.14159265358979323846264338327950288;
    CGFloat value = 2*atan((audioContent.duration/1000.0-1)/10.0)/3.14159265358979323846264338327950288;
    //: NSInteger audioContentMinWidth = 50;
    NSInteger audioContentMinWidth = 50;
    //: NSInteger audioContentMaxWidth = (cellWidth - 170);
    NSInteger audioContentMaxWidth = (cellWidth - 170);
    //: NSInteger audioContentHeight = 30;
    NSInteger audioContentHeight = 30;
    //: return CGSizeMake((audioContentMaxWidth - audioContentMinWidth)* value + audioContentMinWidth, audioContentHeight);
    return CGSizeMake((audioContentMaxWidth - audioContentMinWidth)* value + audioContentMinWidth, audioContentHeight);
}

//: - (NSString *)cellContent:(NIMMessage *)message
- (NSString *)month:(NIMMessage *)message
{
    //: return @"ZZZSessionAudioContentView";
    return @"WithCommentNameView";
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)sign:(NIMMessage *)message
{
    //: return [[AppleProjectKit sharedKit].config setting:message].contentInsets;
    return [[On along].config style:message].contentInsets;
}

//: @end
@end

Byte * ViseDataToCache(Byte *data) {
    int store = data[0];
    int botGory = data[1];
    Byte politician = data[2];
    int veryOffTitle = data[3];
    if (!store) return data + veryOffTitle;
    for (int i = veryOffTitle; i < veryOffTitle + botGory; i++) {
        int value = data[i] + politician;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[veryOffTitle + botGory] = 0;
    return data + veryOffTitle;
}

NSString *StringFromViseData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)ViseDataToCache(data)];
}
