
#import <Foundation/Foundation.h>

NSString *StringFromTechnologyData(Byte *data);


//: custom_msg_jan
Byte kStr_mathData[] = {88, 14, 5, 10, 215, 79, 164, 84, 30, 212, 104, 122, 120, 121, 116, 114, 100, 114, 120, 108, 100, 111, 102, 115, 12};


//: custom_msg_pon
Byte kStr_therapistWallContent[] = {51, 14, 69, 11, 239, 73, 35, 114, 125, 129, 126, 168, 186, 184, 185, 180, 178, 164, 178, 184, 172, 164, 181, 180, 179, 100};


//: data
Byte kStr_cosyName[] = {76, 4, 6, 10, 125, 27, 137, 53, 213, 150, 106, 103, 122, 103, 32};


//: value
Byte kStr_moveText[] = {72, 5, 22, 14, 26, 46, 108, 129, 46, 110, 90, 132, 79, 64, 140, 119, 130, 139, 123, 120};


//: custom_msg_ken
Byte kStr_narrowContent[] = {97, 14, 93, 9, 28, 68, 199, 224, 223, 192, 210, 208, 209, 204, 202, 188, 202, 208, 196, 188, 200, 194, 203, 18};


//: type
Byte kStr_methodByText[] = {20, 4, 16, 10, 118, 101, 140, 102, 57, 65, 132, 137, 128, 117, 201};

// __DEBUG__
// __CLOSE_PRINT__
//
//  TeamAttachment.m
//  NIM
//
//  Created by amao on 7/2/15.
//  Copyright (c) 2015 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESJanKenPonAttachment.h"
#import "TeamAttachment.h"
//: #import "NTESSessionUtil.h"
#import "ComponentUtil.h"

//: @implementation NTESJanKenPonAttachment
@implementation TeamAttachment

//: - (NSString *)encodeAttachment
- (NSString *)encodeAttachment
{
    //: NSDictionary *dict = @{@"type" : @(CustomMessageTypeJanKenPon),
    NSDictionary *dict = @{StringFromTechnologyData(kStr_methodByText) : @(CustomMessageTypeJanKenPon),
                           //: @"data" : @{@"value":@(self.value)}};
                           StringFromTechnologyData(kStr_cosyName) : @{StringFromTechnologyData(kStr_moveText):@(self.value)}};
    //: NSData *data = [NSJSONSerialization dataWithJSONObject:dict
    NSData *data = [NSJSONSerialization dataWithJSONObject:dict
                                                   //: options:0
                                                   options:0
                                                     //: error:nil];
                                                     error:nil];
    //: NSString *content = @"";
    NSString *content = @"";
    //: if (data) {
    if (data) {
        //: content = [[NSString alloc] initWithData:data
        content = [[NSString alloc] initWithData:data
                                        //: encoding:NSUTF8StringEncoding];
                                        encoding:NSUTF8StringEncoding];
    }
    //: return content;
    return content;
}


//: - (NSString *)cellContent:(NIMMessage *)message{
- (NSString *)item:(NIMMessage *)message{
    //: return @"NTESSessionJankenponContentView";
    return @"HearingVersionView";
}

//: - (CGSize)contentSize:(NIMMessage *)message cellWidth:(CGFloat)width{
- (CGSize)cellCheck:(NIMMessage *)message total:(CGFloat)width{

    //: return self.showCoverImage.size;
    return self.showCoverImage.size;
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)up:(NIMMessage *)message
{
    //: if (message.session.sessionType == NIMSessionTypeChatroom)
    if (message.session.sessionType == NIMSessionTypeChatroom)
    {
        //: CGFloat bubbleMarginTopForImage = 15.f;
        CGFloat bubbleMarginTopForImage = 15.f;
        //: CGFloat bubbleMarginLeftForImage = 12.f;
        CGFloat bubbleMarginLeftForImage = 12.f;
        //: return UIEdgeInsetsMake(bubbleMarginTopForImage,bubbleMarginLeftForImage,0,0);
        return UIEdgeInsetsMake(bubbleMarginTopForImage,bubbleMarginLeftForImage,0,0);
    }
    //: else
    else
    {
        //: CGFloat bubbleMarginForImage = 3.f;
        CGFloat bubbleMarginForImage = 3.f;
        //: CGFloat bubbleArrowWidthForImage = 5.f;
        CGFloat bubbleArrowWidthForImage = 5.f;
        //: if (message.isOutgoingMsg) {
        if (message.isOutgoingMsg) {
            //: return UIEdgeInsetsMake(bubbleMarginForImage,bubbleMarginForImage,bubbleMarginForImage,bubbleMarginForImage + bubbleArrowWidthForImage);
            return UIEdgeInsetsMake(bubbleMarginForImage,bubbleMarginForImage,bubbleMarginForImage,bubbleMarginForImage + bubbleArrowWidthForImage);
        //: }else{
        }else{
            //: return UIEdgeInsetsMake(bubbleMarginForImage,bubbleMarginForImage + bubbleArrowWidthForImage, bubbleMarginForImage,bubbleMarginForImage);
            return UIEdgeInsetsMake(bubbleMarginForImage,bubbleMarginForImage + bubbleArrowWidthForImage, bubbleMarginForImage,bubbleMarginForImage);
        }
    }
}

//: - (UIImage *)showCoverImage
- (UIImage *)showCoverImage
{
    //: if (_showCoverImage == nil)
    if (_showCoverImage == nil)
    {
        //: UIImage *image;
        UIImage *image;
        //: switch (self.value) {
        switch (self.value) {
            //: case CustomJanKenPonValueJan:
            case CustomJanKenPonValueJan:
                //: image = [UIImage imageNamed:@"custom_msg_jan"];
                image = [UIImage imageNamed:StringFromTechnologyData(kStr_mathData)];
                //: break;
                break;
            //: case CustomJanKenPonValueKen:
            case CustomJanKenPonValueKen:
                //: image = [UIImage imageNamed:@"custom_msg_ken"];
                image = [UIImage imageNamed:StringFromTechnologyData(kStr_narrowContent)];
                //: break;
                break;
            //: case CustomJanKenPonValuePon:
            case CustomJanKenPonValuePon:
                //: image = [UIImage imageNamed:@"custom_msg_pon"];
                image = [UIImage imageNamed:StringFromTechnologyData(kStr_therapistWallContent)];
                //: break;
                break;
            //: default:
            default:
                //: break;
                break;
        }
        //: _showCoverImage = image;
        _showCoverImage = image;
    }
    //: return _showCoverImage;
    return _showCoverImage;
}

//: - (BOOL)canBeRevoked
- (BOOL)can
{
    //: return YES;
    return YES;
}

//: - (BOOL)canBeForwarded
- (BOOL)tapForwarded
{
    //: return YES;
    return YES;
}

//: - (BOOL)canDisplayBubbleBackground:(NIMMessage *)message
- (BOOL)alled:(NIMMessage *)message
{
    //: NIMSession *session = message.session;
    NIMSession *session = message.session;
    //: if (session.sessionType == NIMSessionTypeChatroom)
    if (session.sessionType == NIMSessionTypeChatroom)
    {
        //: return NO;
        return NO;
    }
    //: return YES;
    return YES;
}

//: @end
@end

Byte * TechnologyDataToCache(Byte *data) {
    int sauce = data[0];
    int optimisticKingdom = data[1];
    Byte somedayRapid = data[2];
    int tingSpecies = data[3];
    if (!sauce) return data + tingSpecies;
    for (int i = tingSpecies; i < tingSpecies + optimisticKingdom; i++) {
        int value = data[i] - somedayRapid;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[tingSpecies + optimisticKingdom] = 0;
    return data + tingSpecies;
}

NSString *StringFromTechnologyData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)TechnologyDataToCache(data)];
}
