
#import <Foundation/Foundation.h>
typedef struct {
    Byte packed;
    Byte *lawmaker;
    unsigned int craftMenu;
    bool swimmingEvent;
	int fastHopeful;
} StuffData;

NSString *StringFromStuffData(StuffData *data);


//: content
StuffData kStr_technologyName = (StuffData){22, (Byte []){117, 121, 120, 98, 115, 120, 98, 66}, 7, false, 48};


//: data
StuffData kStr_pooValue = (StuffData){4, (Byte []){96, 101, 112, 101, 194}, 4, false, 123};


//: title
StuffData kStr_fieldUserRedName = (StuffData){66, (Byte []){54, 43, 54, 46, 39, 45}, 5, false, 37};


//: type
StuffData kStr_sorryValue = (StuffData){156, (Byte []){232, 229, 236, 249, 236}, 4, false, 61};


//: redPacketId
StuffData kStr_gagGalData = (StuffData){164, (Byte []){214, 193, 192, 244, 197, 199, 207, 193, 208, 237, 192, 84}, 11, false, 55};


//: redPacketSendID
StuffData kStr_crowdedCraftValue = (StuffData){140, (Byte []){254, 233, 232, 220, 237, 239, 231, 233, 248, 223, 233, 226, 232, 197, 200, 195}, 15, false, 147};

// __DEBUG__
// __CLOSE_PRINT__
//
//  LanguageEnter.m
//  NIM
//
//  Created by chris on 2017/7/14.
//  Copyright © 2017年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESRedPacketAttachment.h"
#import "LanguageEnter.h"

//: @implementation NTESRedPacketAttachment
@implementation LanguageEnter

//: - (NSString *)encodeAttachment {
- (NSString *)encodeAttachment {
    //: NSDictionary *dictContent = @{
    NSDictionary *dictContent = @{
                                  //: @"title" : self.title,
                                  StringFromStuffData(&kStr_fieldUserRedName) : self.title,
                                  //: @"content" : self.content,
                                  StringFromStuffData(&kStr_technologyName) : self.content,
                                  //: @"redPacketId" : self.redPacketId,
                                  StringFromStuffData(&kStr_gagGalData) : self.redPacketId,
                                  //: @"redPacketSendID" : self.sendID
                                  StringFromStuffData(&kStr_crowdedCraftValue) : self.sendID
                                 //: };
                                 };


    //: NSDictionary *dict = @{@"type": @(CustomMessageTypeRedPacket), @"data": dictContent};
    NSDictionary *dict = @{StringFromStuffData(&kStr_sorryValue): @(CustomMessageTypeRedPacket), StringFromStuffData(&kStr_pooValue): dictContent};
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


//: - (CGSize)contentSize:(NIMMessage *)message cellWidth:(CGFloat)width {
- (CGSize)cellCheck:(NIMMessage *)message total:(CGFloat)width {
    //: return CGSizeMake(150, 165);
    return CGSizeMake(150, 165);
}


//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message {
- (UIEdgeInsets)up:(NIMMessage *)message {
    //: CGFloat bubblePaddingForImage = 3.f;
    CGFloat bubblePaddingForImage = 3.f;
    //: CGFloat bubbleArrowWidthForImage = 5.f;
    CGFloat bubbleArrowWidthForImage = 5.f;
    //: if (message.isOutgoingMsg) {
    if (message.isOutgoingMsg) {
        //: return UIEdgeInsetsMake(bubblePaddingForImage,bubblePaddingForImage,bubblePaddingForImage,bubblePaddingForImage + bubbleArrowWidthForImage);
        return UIEdgeInsetsMake(bubblePaddingForImage,bubblePaddingForImage,bubblePaddingForImage,bubblePaddingForImage + bubbleArrowWidthForImage);
    //: }else{
    }else{
        //: return UIEdgeInsetsMake(bubblePaddingForImage,bubblePaddingForImage + bubbleArrowWidthForImage, bubblePaddingForImage,bubblePaddingForImage);
        return UIEdgeInsetsMake(bubblePaddingForImage,bubblePaddingForImage + bubbleArrowWidthForImage, bubblePaddingForImage,bubblePaddingForImage);
    }
}

//: - (NSString *)cellContent:(NIMMessage *)message{
- (NSString *)item:(NIMMessage *)message{
   //: return @"NTESSessionRedPacketContentView";
   return @"ExecutiveSessionControl";
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

Byte *StuffDataToByte(StuffData *data) {
    if (data->swimmingEvent) return data->lawmaker;
    for (int i = 0; i < data->craftMenu; i++) {
        data->lawmaker[i] ^= data->packed;
    }
    data->lawmaker[data->craftMenu] = 0;
    data->swimmingEvent = true;
	if (data->craftMenu >= 1) {
		data->fastHopeful = data->lawmaker[0];
	}
    return data->lawmaker;
}

NSString *StringFromStuffData(StuffData *data) {
    return [NSString stringWithUTF8String:(char *)StuffDataToByte(data)];
}
