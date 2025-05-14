
#import <Foundation/Foundation.h>

NSString *StringFromFashionData(Byte *data);


//: personCardId
Byte kStr_operateTitle[] = {76, 12, 76, 4, 188, 177, 190, 191, 187, 186, 143, 173, 190, 176, 149, 176, 76};


//: type
Byte kStr_southeastText[] = {90, 4, 29, 10, 137, 29, 187, 176, 140, 97, 145, 150, 141, 130, 33};


//: content
Byte kStr_textureValue[] = {43, 7, 10, 8, 75, 108, 201, 195, 109, 121, 120, 126, 111, 120, 126, 82};


//: data
Byte kStr_therapyData[] = {51, 4, 15, 9, 121, 215, 229, 192, 5, 115, 112, 131, 112, 223};


//: title
Byte kStr_imageByData[] = {84, 5, 15, 4, 131, 120, 131, 123, 116, 248};

// __DEBUG__
// __CLOSE_PRINT__
//
//  AggregationTap.m
//  NIM
//
//  Created by 田玉龙 on 2022/8/22.
//  Copyright © 2022 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESShareCardAttachment.h"
#import "AggregationTap.h"

//: @implementation NTESShareCardAttachment
@implementation AggregationTap

//: - (NSString *)encodeAttachment {
- (NSString *)encodeAttachment {
    //: NSDictionary *dictContent = @{
    NSDictionary *dictContent = @{
        //: @"title" : self.title?:@"",
        StringFromFashionData(kStr_imageByData) : self.title?:@"",
        //: @"content" : self.content?:@"",
        StringFromFashionData(kStr_textureValue) : self.content?:@"",
        //: @"personCardId" : self.personCardId?:@"",
        StringFromFashionData(kStr_operateTitle) : self.personCardId?:@"",
        //: @"type" : self.type?:@"0",
        StringFromFashionData(kStr_southeastText) : self.type?:@"0",
    //: };
    };


    //: NSDictionary *dict = @{@"type": @(CustomMessageTypeCard), @"data": dictContent};
    NSDictionary *dict = @{StringFromFashionData(kStr_southeastText): @(CustomMessageTypeCard), StringFromFashionData(kStr_therapyData): dictContent};
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


//: - (CGSize)contentSize:(CGFloat)cellWidth message:(NIMMessage *)message
- (CGSize)holder:(CGFloat)cellWidth ting:(NIMMessage *)message
{
//    NIMImageObject *imageObject = (NIMImageObject*)[message messageObject];

    //: CGSize contentSize = CGSizeMake(249, 85);
    CGSize contentSize = CGSizeMake(249, 85);
    //: return contentSize;
    return contentSize;
}


//: - (CGSize)contentSize:(NIMMessage *)message cellWidth:(CGFloat)width {
- (CGSize)cellCheck:(NIMMessage *)message total:(CGFloat)width {
    //: return CGSizeMake(249, 85);
    return CGSizeMake(249, 85);
}

//: - (NSString *)cellContent:(NIMMessage *)message
- (NSString *)item:(NIMMessage *)message
{
    //: return @"ZZZSessionShareCardContentView";
    return @"TingNameView";
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)up:(NIMMessage *)message
{
    //: return [[AppleProjectKit sharedKit].config setting:message].contentInsets;
    return [[On along].config style:message].contentInsets;
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

Byte * FashionDataToCache(Byte *data) {
    int payer = data[0];
    int jammed = data[1];
    Byte convictScale = data[2];
    int varyMove = data[3];
    if (!payer) return data + varyMove;
    for (int i = varyMove; i < varyMove + jammed; i++) {
        int value = data[i] - convictScale;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[varyMove + jammed] = 0;
    return data + varyMove;
}

NSString *StringFromFashionData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)FashionDataToCache(data)];
}
