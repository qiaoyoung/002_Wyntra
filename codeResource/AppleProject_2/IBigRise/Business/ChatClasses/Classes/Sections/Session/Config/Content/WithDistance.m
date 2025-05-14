
#import <Foundation/Foundation.h>

NSString *StringFromOutletData(Byte *data);


//: 未知类型消息
Byte kStr_sonName[] = {88, 18, 74, 5, 56, 48, 230, 244, 49, 233, 239, 49, 251, 5, 47, 232, 213, 48, 0, 210, 48, 203, 249, 109};

// __DEBUG__
// __CLOSE_PRINT__
//
//  WithDistance.m
// On
//
//  Created by amao on 9/15/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZZZUnsupportContentConfig.h"
#import "WithDistance.h"
//: #import "AppleProjectKit.h"
#import "On.h"

//: @interface ZZZUnsupportContentConfig ()
@interface WithDistance ()

//: @property (nonatomic,strong) UILabel *label;
@property (nonatomic,strong) UILabel *label;

//: @end
@end

//: @implementation ZZZUnsupportContentConfig
@implementation WithDistance

//: - (instancetype)init
- (instancetype)init
{
    //: self = [super init];
    self = [super init];
    //: if (self)
    if (self)
    {
        //: _label = [[UILabel alloc] initWithFrame:CGRectZero];
        _label = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _label.text = @"未知类型消息".nim_localized;
        _label.text = StringFromOutletData(kStr_sonName).start;
    }
    //: return self;
    return self;
}

//: - (CGSize)contentSize:(CGFloat)cellWidth message:(NIMMessage *)message
- (CGSize)myRefer:(CGFloat)cellWidth view:(NIMMessage *)message
{
    //: CGSize size = [self.label sizeThatFits:CGSizeMake(1.7976931348623157e+308, 40.f)];
    CGSize size = [self.label sizeThatFits:CGSizeMake(1.7976931348623157e+308, 40.f)];
    //: return CGSizeMake(size.width, 40.f);
    return CGSizeMake(size.width, 40.f);
}

//: - (NSString *)cellContent:(NIMMessage *)message
- (NSString *)month:(NIMMessage *)message
{
    //: ZZZKitSetting *setting = [[AppleProjectKit sharedKit].config setting:message];
    CaseSetting *setting = [[On along].config style:message];
    //: self.label.textColor = setting.textColor;
    self.label.textColor = setting.textColor;
    //: self.label.font = setting.font;
    self.label.font = setting.font;

    //: return @"ZZZSessionUnknowContentView";
    return @"CountDisableControl";
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)sign:(NIMMessage *)message
{
    //: ZZZKitSettings *settings = message.isOutgoingMsg? [AppleProjectKit sharedKit].config.rightBubbleSettings : [AppleProjectKit sharedKit].config.leftBubbleSettings;
    StatuteNameTitle *settings = message.isOutgoingMsg? [On along].config.rightBubbleSettings : [On along].config.leftBubbleSettings;
    //: return settings.unsupportSetting.contentInsets;
    return settings.unsupportSetting.contentInsets;
}

//: @end
@end

Byte * OutletDataToCache(Byte *data) {
    int topLit = data[0];
    int houseHostage = data[1];
    Byte mediaCompany = data[2];
    int weepFellLunge = data[3];
    if (!topLit) return data + weepFellLunge;
    for (int i = weepFellLunge; i < weepFellLunge + houseHostage; i++) {
        int value = data[i] - mediaCompany;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[weepFellLunge + houseHostage] = 0;
    return data + weepFellLunge;
}

NSString *StringFromOutletData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)OutletDataToCache(data)];
}
