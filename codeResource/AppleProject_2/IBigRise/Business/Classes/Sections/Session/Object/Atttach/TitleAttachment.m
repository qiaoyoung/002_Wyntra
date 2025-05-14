
#import <Foundation/Foundation.h>

NSString *StringFromSendData(Byte *data);


//: data
Byte kStr_goryName[] = {73, 4, 5, 118, 255, 97, 116, 97, 100, 88};


//: type
Byte kStr_sixName[] = {13, 4, 11, 202, 139, 243, 242, 79, 207, 66, 7, 101, 112, 121, 116, 83};


//: isGetDone
Byte kStr_vasContent[] = {27, 9, 9, 104, 47, 110, 93, 100, 32, 101, 110, 111, 68, 116, 101, 71, 115, 105, 41};


//: 领取了你的红包，你的红包已被领完
Byte kStr_infectionTitle[] = {54, 48, 9, 202, 122, 148, 249, 123, 239, 140, 174, 229, 134, 162, 233, 171, 162, 232, 178, 183, 229, 133, 140, 229, 162, 186, 231, 132, 154, 231, 160, 189, 228, 140, 188, 239, 133, 140, 229, 162, 186, 231, 132, 154, 231, 160, 189, 228, 134, 186, 228, 150, 143, 229, 134, 162, 233, 6};


//: sendPacketId
Byte kStr_pointTitle[] = {72, 12, 4, 100, 100, 73, 116, 101, 107, 99, 97, 80, 100, 110, 101, 115, 154};


//: redPacketId
Byte kStr_grossData[] = {26, 11, 5, 59, 192, 100, 73, 116, 101, 107, 99, 97, 80, 100, 101, 114, 7};


//: 你领取了自己的红包
Byte kStr_rueName[] = {61, 27, 5, 246, 105, 133, 140, 229, 162, 186, 231, 132, 154, 231, 177, 183, 229, 170, 135, 232, 134, 186, 228, 150, 143, 229, 134, 162, 233, 160, 189, 228, 105};


//: 领取了你的红包
Byte kStr_folkThanName[] = {44, 21, 6, 56, 10, 187, 133, 140, 229, 162, 186, 231, 132, 154, 231, 160, 189, 228, 134, 186, 228, 150, 143, 229, 134, 162, 233, 177};


//: 你领取了自己的红包，你的红包已被领完
Byte kStr_tapSendEventData[] = {62, 54, 3, 140, 174, 229, 134, 162, 233, 171, 162, 232, 178, 183, 229, 133, 140, 229, 162, 186, 231, 132, 154, 231, 160, 189, 228, 140, 188, 239, 133, 140, 229, 162, 186, 231, 132, 154, 231, 177, 183, 229, 170, 135, 232, 134, 186, 228, 150, 143, 229, 134, 162, 233, 160, 189, 228, 159};


//: openPacketId
Byte kStr_willingCosyGlanceName[] = {74, 12, 8, 213, 3, 180, 223, 133, 100, 73, 116, 101, 107, 99, 97, 80, 110, 101, 112, 111, 43};


//: 你领取了
Byte kStr_sayName[] = {79, 12, 6, 193, 226, 195, 134, 186, 228, 150, 143, 229, 134, 162, 233, 160, 189, 228, 103};

// __DEBUG__
// __CLOSE_PRINT__
//
//  TitleAttachment.m
//  NIM
//
//  Created by chris on 2017/7/17.
//  Copyright © 2017年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESRedPacketTipAttachment.h"
#import "TitleAttachment.h"
//: #import "NTESSessionUtil.h"
#import "ComponentUtil.h"
//: #import "M80AttributedLabel.h"
#import "GreenNameView.h"
//: #import "ZZZKitInfoFetchOption.h"
#import "CertainOption.h"

//: @interface NTESRedPacketTipAttachment()
@interface TitleAttachment()

//: @property (nonatomic,weak) NIMMessage *message;
@property (nonatomic,weak) NIMMessage *message;

//: @end
@end

//: @implementation NTESRedPacketTipAttachment
@implementation TitleAttachment

//: - (NSString *)encodeAttachment {
- (NSString *)encodeAttachment {

    //: NSDictionary *dictContent = @{
    NSDictionary *dictContent = @{
                                  //: @"sendPacketId" : self.sendPacketId,
                                  StringFromSendData(kStr_pointTitle) : self.sendPacketId,
                                  //: @"openPacketId" : self.openPacketId,
                                  StringFromSendData(kStr_willingCosyGlanceName) : self.openPacketId,
                                  //: @"redPacketId" : self.packetId,
                                  StringFromSendData(kStr_grossData) : self.packetId,
                                  //: @"isGetDone" : self.isGetDone,
                                  StringFromSendData(kStr_vasContent) : self.isGetDone,
                                  //: };
                                  };
    //: NSDictionary *dict = @{@"type": @(CustomMessageTypeRedPacketTip), @"data": dictContent};
    NSDictionary *dict = @{StringFromSendData(kStr_sixName): @(CustomMessageTypeRedPacketTip), StringFromSendData(kStr_goryName): dictContent};

    //: NSData *jsonData = [NSJSONSerialization dataWithJSONObject:dict
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:dict
                                                       //: options:0
                                                       options:0
                                                         //: error:nil];
                                                         error:nil];

    //: return [[NSString alloc] initWithData:jsonData
    return [[NSString alloc] initWithData:jsonData
                                 //: encoding:NSUTF8StringEncoding];
                                 encoding:NSUTF8StringEncoding];
}


//: - (CGSize)contentSize:(NIMMessage *)message cellWidth:(CGFloat)width{
- (CGSize)cellCheck:(NIMMessage *)message total:(CGFloat)width{
    //: self.message = message;
    self.message = message;

    //: M80AttributedLabel *label = [[M80AttributedLabel alloc] initWithFrame:CGRectZero];
    GreenNameView *label = [[GreenNameView alloc] initWithFrame:CGRectZero];
    //: label.font = [UIFont systemFontOfSize:10];
    label.font = [UIFont systemFontOfSize:10];

    //: CGFloat messageWidth = width;
    CGFloat messageWidth = width;

    //: [label appendText:self.formatedMessage];
    [label masterKeyTitle:self.withLabel];
    //: label.autoDetectLinks = NO;
    label.autoDetectLinks = NO;
    //: label.numberOfLines = 0;
    label.numberOfLines = 0;

    //: CGFloat padding = [AppleProjectKit sharedKit].config.maxNotificationTipPadding;
    CGFloat padding = [On along].config.color;
    //: CGSize size = [label sizeThatFits:CGSizeMake(width - 2 * padding, 1.7976931348623157e+308)];
    CGSize size = [label sizeThatFits:CGSizeMake(width - 2 * padding, 1.7976931348623157e+308)];
    //: CGFloat cellPadding = 11.f;
    CGFloat cellPadding = 11.f;
    //: CGSize contentSize = CGSizeMake(messageWidth, size.height + 2 * cellPadding);;
    CGSize contentSize = CGSizeMake(messageWidth, size.height + 2 * cellPadding);;
    //: return contentSize;
    return contentSize;
}


//: - (NSString *)formatedMessage{
- (NSString *)withLabel{
    //: NSString * showContent;
    NSString * showContent;
    //: NSString * currentUserId = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSString * currentUserId = [[NIMSDK sharedSDK].loginManager currentAccount];
    // 领取别人的红包
    //: ZZZKitInfoFetchOption *option = [[ZZZKitInfoFetchOption alloc] init];
    CertainOption *option = [[CertainOption alloc] init];
    //: option.message = self.message;
    option.message = self.message;

    //: if ([currentUserId isEqualToString:self.sendPacketId] && [currentUserId isEqualToString:self.openPacketId])
    if ([currentUserId isEqualToString:self.sendPacketId] && [currentUserId isEqualToString:self.openPacketId])
    {
        //: if ([self.isGetDone boolValue])
        if ([self.isGetDone boolValue])
        {
            //: showContent = @"你领取了自己的红包，你的红包已被领完".ntes_localized;
            showContent = StringFromSendData(kStr_tapSendEventData).colorLocalized;
        }
        //: else
        else
        {
            //: showContent = @"你领取了自己的红包".ntes_localized;
            showContent = StringFromSendData(kStr_rueName).colorLocalized;
        }
    }
    //: else if ([currentUserId isEqualToString:self.openPacketId])
    else if ([currentUserId isEqualToString:self.openPacketId])
    {
        //: ZZZKitInfo * sendUserInfo = [[AppleProjectKit sharedKit] infoByUser:self.sendPacketId option:option];
        MagnitudeCommentInfo * sendUserInfo = [[On along] toKey:self.sendPacketId image:option];
        //: NSString * name = sendUserInfo.showName;
        NSString * name = sendUserInfo.showName;
        //: showContent = [NSString stringWithFormat:@"%@%@%@",
        showContent = [NSString stringWithFormat:@"%@%@%@",
                       //: @"你领取了".ntes_localized,
                       StringFromSendData(kStr_sayName).colorLocalized,
                       //: name,
                       name,
                       //: @"红包".ntes_localized];
                       @"红包".colorLocalized];
    }

    // 他人领取你的红包
    //: else if ([currentUserId isEqualToString:self.sendPacketId])
    else if ([currentUserId isEqualToString:self.sendPacketId])
    {
        //: ZZZKitInfo * openUserInfo = [[AppleProjectKit sharedKit] infoByUser:self.openPacketId option:option];
        MagnitudeCommentInfo * openUserInfo = [[On along] toKey:self.openPacketId image:option];
        //: NSString * name = openUserInfo.showName;
        NSString * name = openUserInfo.showName;

        //: if ([self.isGetDone boolValue])
        if ([self.isGetDone boolValue])
        {
            //: showContent = [NSString stringWithFormat:@"%@%@",
            showContent = [NSString stringWithFormat:@"%@%@",
                           //: name,
                           name,
                           //: @"领取了你的红包，你的红包已被领完".ntes_localized];
                           StringFromSendData(kStr_infectionTitle).colorLocalized];
        }
        //: else
        else
        {
            //: showContent = [NSString stringWithFormat:@"%@%@",
            showContent = [NSString stringWithFormat:@"%@%@",
                           //: name,
                           name,
                           //: @"领取了你的红包".ntes_localized];
                           StringFromSendData(kStr_folkThanName).colorLocalized];
        }
    }

    //: return [NSString stringWithFormat:@"  %@",showContent];
    return [NSString stringWithFormat:@"  %@",showContent];
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)up:(NIMMessage *)message
{
    //: return UIEdgeInsetsZero;
    return UIEdgeInsetsZero;
}

//: - (NSString *)cellContent:(NIMMessage *)message
- (NSString *)item:(NIMMessage *)message
{
    //: return @"NTESSessionRedPacketTipContentView";
    return @"GenerateControl";
}

//: - (BOOL)canBeForwarded
- (BOOL)tapForwarded
{
    //: return NO;
    return NO;
}

//: - (BOOL)canBeRevoked
- (BOOL)can
{
    //: return NO;
    return NO;
}


//: @end
@end

Byte * SendDataToCache(Byte *data) {
    int prisonerImage = data[0];
    int lastMentioned = data[1];
    int strategy = data[2];
    if (!prisonerImage) return data + strategy;
    for (int i = 0; i < lastMentioned / 2; i++) {
        int begin = strategy + i;
        int end = strategy + lastMentioned - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[strategy + lastMentioned] = 0;
    return data + strategy;
}

NSString *StringFromSendData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)SendDataToCache(data)];
}  
