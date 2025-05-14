
#import <Foundation/Foundation.h>

NSString *StringFromStylePeData(Byte *data);


//: {18,25,17,25}
Byte kStr_maintenanceData[] = {83, 13, 9, 79, 98, 253, 87, 27, 7, 125, 53, 50, 44, 55, 49, 44, 53, 50, 44, 56, 49, 123, 27};


//: icon_receiver_node_normal
Byte kStr_grandparentData[] = {2, 25, 10, 241, 36, 96, 96, 154, 33, 3, 108, 97, 109, 114, 111, 110, 95, 101, 100, 111, 110, 95, 114, 101, 118, 105, 101, 99, 101, 114, 95, 110, 111, 99, 105, 134};


//: icon_receiver_node_pressed
Byte kStr_mutualBrothRedData[] = {77, 26, 7, 236, 206, 101, 49, 100, 101, 115, 115, 101, 114, 112, 95, 101, 100, 111, 110, 95, 114, 101, 118, 105, 101, 99, 101, 114, 95, 110, 111, 99, 105, 246};


//: icon_sender_text_node_pressed
Byte kStr_assValue[] = {99, 29, 12, 3, 214, 51, 203, 164, 162, 29, 16, 115, 100, 101, 115, 115, 101, 114, 112, 95, 101, 100, 111, 110, 95, 116, 120, 101, 116, 95, 114, 101, 100, 110, 101, 115, 95, 110, 111, 99, 105, 74};


//: icon_sender_text_node_normal
Byte kStr_instanceTitle[] = {79, 28, 5, 202, 10, 108, 97, 109, 114, 111, 110, 95, 101, 100, 111, 110, 95, 116, 120, 101, 116, 95, 114, 101, 100, 110, 101, 115, 95, 110, 111, 99, 105, 105};

// __DEBUG__
// __CLOSE_PRINT__
//
//  CaseSetting.m
// On
//
//  Created by chris on 2017/10/30.
//  Copyright © 2017年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZZZKitSetting.h"
#import "CaseSetting.h"
//: #import "UIImage+AppleProjectKit.h"
#import "UIImage+On.h"

//: @implementation ZZZKitSetting
@implementation CaseSetting

//: - (instancetype)init:(BOOL)isRight
- (instancetype)initContainer:(BOOL)isRight
{
    //: self = [super init];
    self = [super init];
    //: if (self)
    if (self)
    {
        //: if (isRight)
        if (isRight)
        {
            //: _normalBackgroundImage = [[UIImage grayImageWithName:@"icon_sender_text_node_normal"] resizableImageWithCapInsets:UIEdgeInsetsFromString(@"{18,25,17,25}") resizingMode:UIImageResizingModeStretch];
            _normalBackgroundImage = [[UIImage table:StringFromStylePeData(kStr_instanceTitle)] resizableImageWithCapInsets:UIEdgeInsetsFromString(StringFromStylePeData(kStr_maintenanceData)) resizingMode:UIImageResizingModeStretch];
            //: _highLightBackgroundImage = [[UIImage grayImageWithName:@"icon_sender_text_node_pressed"] resizableImageWithCapInsets:UIEdgeInsetsFromString(@"{18,25,17,25}") resizingMode:UIImageResizingModeStretch];
            _highLightBackgroundImage = [[UIImage table:StringFromStylePeData(kStr_assValue)] resizableImageWithCapInsets:UIEdgeInsetsFromString(StringFromStylePeData(kStr_maintenanceData)) resizingMode:UIImageResizingModeStretch];

        }
        //: else
        else
        {
            //: _normalBackgroundImage = [[UIImage imageNamed:@"icon_receiver_node_normal"] resizableImageWithCapInsets:UIEdgeInsetsFromString(@"{18,25,17,25}") resizingMode:UIImageResizingModeStretch];
            _normalBackgroundImage = [[UIImage imageNamed:StringFromStylePeData(kStr_grandparentData)] resizableImageWithCapInsets:UIEdgeInsetsFromString(StringFromStylePeData(kStr_maintenanceData)) resizingMode:UIImageResizingModeStretch];
            //: _highLightBackgroundImage = [[UIImage imageNamed:@"icon_receiver_node_pressed"] resizableImageWithCapInsets:UIEdgeInsetsFromString(@"{18,25,17,25}") resizingMode:UIImageResizingModeStretch];
            _highLightBackgroundImage = [[UIImage imageNamed:StringFromStylePeData(kStr_mutualBrothRedData)] resizableImageWithCapInsets:UIEdgeInsetsFromString(StringFromStylePeData(kStr_maintenanceData)) resizingMode:UIImageResizingModeStretch];
        }
    }
    //: return self;
    return self;
}

//: @end
@end

Byte * StylePeDataToCache(Byte *data) {
    int organism = data[0];
    int redAmbit = data[1];
    int piracyMole = data[2];
    if (!organism) return data + piracyMole;
    for (int i = 0; i < redAmbit / 2; i++) {
        int begin = piracyMole + i;
        int end = piracyMole + redAmbit - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[piracyMole + redAmbit] = 0;
    return data + piracyMole;
}

NSString *StringFromStylePeData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)StylePeDataToCache(data)];
}  
