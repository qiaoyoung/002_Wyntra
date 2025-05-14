
#import <Foundation/Foundation.h>

NSString *StringFromIntervalentionData(Byte *data);


//: friend_info_activity_xu
Byte kStr_damnSessionOperateData[] = {81, 23, 44, 5, 36, 146, 158, 149, 145, 154, 144, 139, 149, 154, 146, 155, 139, 141, 143, 160, 149, 162, 149, 160, 165, 139, 164, 161, 160};


//: friend_info_activity_nv
Byte kStr_stainName[] = {61, 23, 1, 13, 248, 1, 168, 69, 57, 37, 226, 126, 189, 103, 115, 106, 102, 111, 101, 96, 106, 111, 103, 112, 96, 98, 100, 117, 106, 119, 106, 117, 122, 96, 111, 119, 135};


//: friend_info_activity_nan
Byte kStr_teenItemValue[] = {48, 24, 34, 10, 109, 179, 191, 77, 64, 85, 136, 148, 139, 135, 144, 134, 129, 139, 144, 136, 145, 129, 131, 133, 150, 139, 152, 139, 150, 155, 129, 144, 131, 144, 123};

// __DEBUG__
// __CLOSE_PRINT__
//
//  ColorUtil.m
//  NIM
//
//  Created by chris on 15/9/17.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESUserUtil.h"
#import "ColorUtil.h"
//: #import "ZZZKitUtil.h"
#import "TingText.h"

//: @implementation NTESUserUtil
@implementation ColorUtil

//: + (NSString *)genderString:(NIMUserGender)gender{
+ (NSString *)message:(NIMUserGender)gender{
    //: NSString *genderStr = @"";
    NSString *genderStr = @"";
    //: switch (gender) {
    switch (gender) {
        //: case NIMUserGenderMale:
        case NIMUserGenderMale:
            //: genderStr = [NTESLanguageManager getTextWithKey:@"friend_info_activity_nan"];
            genderStr = [LabelCell tinkleKey:StringFromIntervalentionData(kStr_teenItemValue)];
            //: break;
            break;
        //: case NIMUserGenderFemale:
        case NIMUserGenderFemale:
            //: genderStr = [NTESLanguageManager getTextWithKey:@"friend_info_activity_nv"];
            genderStr = [LabelCell tinkleKey:StringFromIntervalentionData(kStr_stainName)];
            //: break;
            break;
        //: case NIMUserGenderUnknown:
        case NIMUserGenderUnknown:
            //: genderStr = [NTESLanguageManager getTextWithKey:@"friend_info_activity_xu"];
            genderStr = [LabelCell tinkleKey:StringFromIntervalentionData(kStr_damnSessionOperateData)];
        //: default:
        default:
            //: break;
            break;
    }
    //: return genderStr;
    return genderStr;
}

//: @end
@end

Byte * IntervalentionDataToCache(Byte *data) {
    int bilharzia = data[0];
    int titleBand = data[1];
    Byte jewelCasket = data[2];
    int naturalEventCarve = data[3];
    if (!bilharzia) return data + naturalEventCarve;
    for (int i = naturalEventCarve; i < naturalEventCarve + titleBand; i++) {
        int value = data[i] - jewelCasket;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[naturalEventCarve + titleBand] = 0;
    return data + naturalEventCarve;
}

NSString *StringFromIntervalentionData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)IntervalentionDataToCache(data)];
}
