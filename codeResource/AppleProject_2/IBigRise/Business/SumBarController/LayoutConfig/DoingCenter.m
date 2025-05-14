
#import <Foundation/Foundation.h>
typedef struct {
    Byte practicallyChronic;
    Byte *tunSpecies;
    unsigned int floatingVoter;
    bool takeDown;
	int anybodyTian;
	int cramWarning;
	int mutual;
} CutData;

NSString *StringFromCutData(CutData *data);


//: message must be custom
CutData kStr_grossIllValue = (CutData){21, (Byte []){120, 112, 102, 102, 116, 114, 112, 53, 120, 96, 102, 97, 53, 119, 112, 53, 118, 96, 102, 97, 122, 120, 125}, 22, false, 172, 103, 242};

// __DEBUG__
// __CLOSE_PRINT__
//
//  DoingCenter.m
//  NIM
//
//  Created by chris on 16/1/14.
//  Copyright © 2016年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESSessionCustomContentConfig.h"
#import "DoingCenter.h"
//: #import "NTESCustomAttachmentDefines.h"
#import "NTESCustomAttachmentDefines.h"

//: @interface NTESSessionCustomContentConfig()
@interface DoingCenter()

//: @end
@end

//: @implementation NTESSessionCustomContentConfig
@implementation DoingCenter

//: - (CGSize)contentSize:(CGFloat)cellWidth message:(NIMMessage *)message
- (CGSize)myRefer:(CGFloat)cellWidth view:(NIMMessage *)message
{
    //: NIMCustomObject *object = message.messageObject;
    NIMCustomObject *object = message.messageObject;
    //: NSAssert([object isKindOfClass:[NIMCustomObject class]], @"message must be custom");
    NSAssert([object isKindOfClass:[NIMCustomObject class]], StringFromCutData(&kStr_grossIllValue));
    //: id<NTESCustomAttachmentInfo> info = (id<NTESCustomAttachmentInfo>)object.attachment;
    id<ShouldQuantityComment> info = (id<ShouldQuantityComment>)object.attachment;
    //: return [info contentSize:message cellWidth:cellWidth];
    return [info cellCheck:message total:cellWidth];
}

//: - (NSString *)cellContent:(NIMMessage *)message
- (NSString *)month:(NIMMessage *)message
{
    //: NIMCustomObject *object = message.messageObject;
    NIMCustomObject *object = message.messageObject;
    //: NSAssert([object isKindOfClass:[NIMCustomObject class]], @"message must be custom");
    NSAssert([object isKindOfClass:[NIMCustomObject class]], StringFromCutData(&kStr_grossIllValue));
    //: id<NTESCustomAttachmentInfo> info = (id<NTESCustomAttachmentInfo>)object.attachment;
    id<ShouldQuantityComment> info = (id<ShouldQuantityComment>)object.attachment;
    //: return [info cellContent:message];
    return [info item:message];
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)sign:(NIMMessage *)message
{
    //: NIMCustomObject *object = message.messageObject;
    NIMCustomObject *object = message.messageObject;
    //: NSAssert([object isKindOfClass:[NIMCustomObject class]], @"message must be custom");
    NSAssert([object isKindOfClass:[NIMCustomObject class]], StringFromCutData(&kStr_grossIllValue));
    //: id<NTESCustomAttachmentInfo> info = (id<NTESCustomAttachmentInfo>)object.attachment;
    id<ShouldQuantityComment> info = (id<ShouldQuantityComment>)object.attachment;
    //: return [info contentViewInsets:message];
    return [info up:message];
}

//: - (BOOL)enableBackgroundBubbleView:(NIMMessage *)message
- (BOOL)fasted:(NIMMessage *)message
{
    //: NIMCustomObject *object = message.messageObject;
    NIMCustomObject *object = message.messageObject;
    //: NSAssert([object isKindOfClass:[NIMCustomObject class]], @"message must be custom");
    NSAssert([object isKindOfClass:[NIMCustomObject class]], StringFromCutData(&kStr_grossIllValue));
    //: id<NTESCustomAttachmentInfo> info = (id<NTESCustomAttachmentInfo>)object.attachment;
    id<ShouldQuantityComment> info = (id<ShouldQuantityComment>)object.attachment;
    //: if (![info respondsToSelector:@selector(canDisplayBubbleBackground:)])
    if (![info respondsToSelector:@selector(alled:)])
    {
        //: return YES;
        return YES;
    }
    //: return [info canDisplayBubbleBackground:message];
    return [info alled:message];
}


//: @end
@end

Byte *CutDataToByte(CutData *data) {
    if (data->takeDown) return data->tunSpecies;
    for (int i = 0; i < data->floatingVoter; i++) {
        data->tunSpecies[i] ^= data->practicallyChronic;
    }
    data->tunSpecies[data->floatingVoter] = 0;
    data->takeDown = true;
	if (data->floatingVoter >= 3) {
		data->anybodyTian = data->tunSpecies[0];
		data->cramWarning = data->tunSpecies[1];
		data->mutual = data->tunSpecies[2];
	}
    return data->tunSpecies;
}

NSString *StringFromCutData(CutData *data) {
    return [NSString stringWithUTF8String:(char *)CutDataToByte(data)];
}
