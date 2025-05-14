
#import <Foundation/Foundation.h>

NSString *StringFromBrushData(Byte *data);


//: message should be video
Byte kStr_fingerLengthTitle[] = {40, 23, 84, 7, 206, 223, 33, 193, 185, 199, 199, 181, 187, 185, 116, 199, 188, 195, 201, 192, 184, 116, 182, 185, 116, 202, 189, 184, 185, 195, 26};

// __DEBUG__
// __CLOSE_PRINT__
//
//  ModelImage.m
// On
//
//  Created by amao on 9/15/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZZZVideoContentConfig.h"
#import "ModelImage.h"
//: #import "UIImage+AppleProjectKit.h"
#import "UIImage+On.h"
//: #import "AppleProjectKit.h"
#import "On.h"

//: @implementation ZZZVideoContentConfig
@implementation ModelImage
//: - (CGSize)contentSize:(CGFloat)cellWidth message:(NIMMessage *)message
- (CGSize)myRefer:(CGFloat)cellWidth view:(NIMMessage *)message
{
    //: NIMVideoObject *videoObject = (NIMVideoObject*)[message messageObject];
    NIMVideoObject *videoObject = (NIMVideoObject*)[message messageObject];
    //: NSAssert([videoObject isKindOfClass:[NIMVideoObject class]], @"message should be video");
    NSAssert([videoObject isKindOfClass:[NIMVideoObject class]], StringFromBrushData(kStr_fingerLengthTitle));

    //: CGFloat attachmentImageMinWidth = (cellWidth / 4.0);
    CGFloat attachmentImageMinWidth = (cellWidth / 4.0);
    //: CGFloat attachmentImageMinHeight = (cellWidth / 4.0);
    CGFloat attachmentImageMinHeight = (cellWidth / 4.0);
    //: CGFloat attachmemtImageMaxWidth = (cellWidth - 184);
    CGFloat attachmemtImageMaxWidth = (cellWidth - 184);
    //: CGFloat attachmentImageMaxHeight = (cellWidth - 184);
    CGFloat attachmentImageMaxHeight = (cellWidth - 184);
    //: CGSize contentSize = CGSizeMake(attachmentImageMinWidth, attachmentImageMinHeight);
    CGSize contentSize = CGSizeMake(attachmentImageMinWidth, attachmentImageMinHeight);


    //: if (!__CGSizeEqualToSize(videoObject.coverSize, CGSizeZero)) {
    if (!__CGSizeEqualToSize(videoObject.coverSize, CGSizeZero)) {
        //有封面就直接拿封面大小
        //: contentSize = [UIImage nim_sizeWithImageOriginSize:videoObject.coverSize
        contentSize = [UIImage perimeter:videoObject.coverSize
                                                   //: minSize:CGSizeMake(attachmentImageMinWidth, attachmentImageMinHeight)
                                                   inheritance:CGSizeMake(attachmentImageMinWidth, attachmentImageMinHeight)
                                                   //: maxSize:CGSizeMake(attachmemtImageMaxWidth, attachmentImageMaxHeight)];
                                                   size:CGSizeMake(attachmemtImageMaxWidth, attachmentImageMaxHeight)];
    }
    //: return contentSize;
    return contentSize;
}


//: - (NSString *)cellContent:(NIMMessage *)message
- (NSString *)month:(NIMMessage *)message
{
    //: return @"ZZZSessionVideoContentView";
    return @"BeGroupDiscussionView";
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)sign:(NIMMessage *)message
{
    //: return [[AppleProjectKit sharedKit].config setting:message].contentInsets;
    return [[On along].config style:message].contentInsets;
}

//: @end
@end

Byte * BrushDataToCache(Byte *data) {
    int physicalTherapy = data[0];
    int intervalegration = data[1];
    Byte licensingAgreementWith = data[2];
    int pointVoter = data[3];
    if (!physicalTherapy) return data + pointVoter;
    for (int i = pointVoter; i < pointVoter + intervalegration; i++) {
        int value = data[i] - licensingAgreementWith;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[pointVoter + intervalegration] = 0;
    return data + pointVoter;
}

NSString *StringFromBrushData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)BrushDataToCache(data)];
}
