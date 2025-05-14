
#import <Foundation/Foundation.h>

NSString *StringFromMethodData(Byte *data);


//: session_snapchat_other_unread
Byte kStr_shrinkTitle[] = {22, 29, 10, 221, 153, 2, 204, 85, 211, 232, 100, 97, 101, 114, 110, 117, 95, 114, 101, 104, 116, 111, 95, 116, 97, 104, 99, 112, 97, 110, 115, 95, 110, 111, 105, 115, 115, 101, 115, 91};


//: md5
Byte kStr_abaseTapName[] = {85, 3, 6, 54, 213, 38, 53, 100, 109, 224};


//: session_snapchat_other_readed
Byte kStr_swimmingCurData[] = {58, 29, 4, 25, 100, 101, 100, 97, 101, 114, 95, 114, 101, 104, 116, 111, 95, 116, 97, 104, 99, 112, 97, 110, 115, 95, 110, 111, 105, 115, 115, 101, 115, 157};


//: data
Byte kStr_driverWithValue[] = {9, 4, 3, 97, 116, 97, 100, 36};


//: type
Byte kStr_menuVariationName[] = {58, 4, 3, 101, 112, 121, 116, 243};


//: HEIC
Byte kStr_sectorValue[] = {30, 4, 5, 192, 45, 67, 73, 69, 72, 222};


//: url
Byte kStr_stopMerelyValue[] = {46, 3, 6, 122, 210, 66, 108, 114, 117, 234};


//: fired
Byte kStr_coverMessageName[] = {36, 5, 12, 147, 235, 178, 230, 44, 166, 155, 223, 255, 100, 101, 114, 105, 102, 232};


//: jpg
Byte kStr_connectionValue[] = {69, 3, 12, 253, 72, 217, 24, 216, 205, 195, 116, 50, 103, 112, 106, 188};


//: session_snapchat_self_readed
Byte kStr_rooName[] = {58, 28, 6, 166, 183, 225, 100, 101, 100, 97, 101, 114, 95, 102, 108, 101, 115, 95, 116, 97, 104, 99, 112, 97, 110, 115, 95, 110, 111, 105, 115, 115, 101, 115, 60};


//: session_snapchat_self_unread
Byte kStr_chipData[] = {46, 28, 10, 121, 168, 112, 146, 134, 67, 219, 100, 97, 101, 114, 110, 117, 95, 102, 108, 101, 115, 95, 116, 97, 104, 99, 112, 97, 110, 115, 95, 110, 111, 105, 115, 115, 101, 115, 56};

// __DEBUG__
// __CLOSE_PRINT__
//
//  SnapchatAttachment.m
//  NIM
//
//  Created by amao on 7/2/15.
//  Copyright (c) 2015 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESSnapchatAttachment.h"
#import "BackgroundAttachment.h"
//: #import "NTESFileLocationHelper.h"
#import "FileWithAddCell.h"
//: #import "NSData+NTES.h"
#import "NSData+Item.h"
//: #import "NTESSessionUtil.h"
#import "ComponentUtil.h"

//: @interface NTESSnapchatAttachment()
@interface BackgroundAttachment()

//: @property (nonatomic,assign) BOOL isFromMe;
@property (nonatomic,assign) BOOL isFromMe;

//: @end
@end

//: @implementation NTESSnapchatAttachment
@implementation BackgroundAttachment

//: - (void)setImage:(UIImage *)image
- (void)setVisualImage:(UIImage *)image
{
    //: NSData *data = UIImageJPEGRepresentation(image, 0.3);
    NSData *data = UIImageJPEGRepresentation(image, 0.3);
    //: NSString *md5= [data MD5String];
    NSString *md5= [data mark];
    //: self.md5 = md5;
    self.md5 = md5;

    //: [data writeToFile:[self filepath]
    [data writeToFile:[self mode]
           //: atomically:YES];
           atomically:YES];
}

//: - (void)setImageFilePath:(NSString *)path
- (void)setMentalRepresentation:(NSString *)path
{
    //: if ([[NSFileManager defaultManager] fileExistsAtPath:path]){
    if ([[NSFileManager defaultManager] fileExistsAtPath:path]){
        //: NSData *jpgData = nil;
        NSData *jpgData = nil;
        //: if ([path.pathExtension.uppercaseString isEqualToString:@"HEIC"]) {
        if ([path.pathExtension.uppercaseString isEqualToString:StringFromMethodData(kStr_sectorValue)]) {
            //: CIImage *ciImage = [CIImage imageWithContentsOfURL:[NSURL fileURLWithPath:path]];
            CIImage *ciImage = [CIImage imageWithContentsOfURL:[NSURL fileURLWithPath:path]];
                                //: CIContext *context = [CIContext context];
                                CIContext *context = [CIContext context];
            //: jpgData = [context JPEGRepresentationOfImage:ciImage colorSpace:ciImage.colorSpace options:@{}];
            jpgData = [context JPEGRepresentationOfImage:ciImage colorSpace:ciImage.colorSpace options:@{}];
        //: } else {
        } else {
            //: jpgData = [NSData dataWithContentsOfFile:path];
            jpgData = [NSData dataWithContentsOfFile:path];
        }

        //: self.md5 = [jpgData MD5String];
        self.md5 = [jpgData mark];

        //: [jpgData writeToFile:[self filepath]
        [jpgData writeToFile:[self mode]
               //: atomically:YES];
               atomically:YES];
     }
}

//: - (void)setIsFired:(BOOL)isFired{
- (void)setIsFired:(BOOL)isFired{
    //: if (_isFired != isFired) {
    if (_isFired != isFired) {
        //: _isFired = isFired;
        _isFired = isFired;
        //: [self updateCover];
        [self image];
    }
}


//: - (NSString *)filepath
- (NSString *)mode
{
    //: NSString *filename = [_md5 stringByAppendingFormat:@".%@",(@"jpg")];
    NSString *filename = [_md5 stringByAppendingFormat:@".%@",(StringFromMethodData(kStr_connectionValue))];
    //: return [NTESFileLocationHelper filepathForImage:filename];
    return [FileWithAddCell my:filename];
}


//: - (NSString *)cellContent:(NIMMessage *)message{
- (NSString *)item:(NIMMessage *)message{
    //: self.isFromMe = message.isOutgoingMsg;
    self.isFromMe = message.isOutgoingMsg;
    //: return @"NTESSessionSnapchatContentView";
    return @"SessionContentView";
}

//: - (CGSize)contentSize:(NIMMessage *)message cellWidth:(CGFloat)width{
- (CGSize)cellCheck:(NIMMessage *)message total:(CGFloat)width{
    //: self.isFromMe = message.isOutgoingMsg;
    self.isFromMe = message.isOutgoingMsg;
    //: CGSize size = self.showCoverImage.size;
    CGSize size = self.showCoverImage.size;
    //: CGFloat customSnapMessageImageRightToText = 5;
    CGFloat customSnapMessageImageRightToText = 5;
    //: return CGSizeMake(size.width + customSnapMessageImageRightToText, size.height);
    return CGSizeMake(size.width + customSnapMessageImageRightToText, size.height);
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)up:(NIMMessage *)message
{
    //: CGFloat bubblePaddingForImage = 3.f;
    CGFloat bubblePaddingForImage = 3.f;
    //: CGFloat bubbleArrowWidthForImage = -4.f;
    CGFloat bubbleArrowWidthForImage = -4.f;
    //: if (message.isOutgoingMsg) {
    if (message.isOutgoingMsg) {
        //: return UIEdgeInsetsMake(bubblePaddingForImage,bubblePaddingForImage,bubblePaddingForImage,bubblePaddingForImage + bubbleArrowWidthForImage);
        return UIEdgeInsetsMake(bubblePaddingForImage,bubblePaddingForImage,bubblePaddingForImage,bubblePaddingForImage + bubbleArrowWidthForImage);
    //: } else {
    } else {
        //: return UIEdgeInsetsMake(bubblePaddingForImage,bubblePaddingForImage + bubbleArrowWidthForImage + 4, bubblePaddingForImage,bubblePaddingForImage);
        return UIEdgeInsetsMake(bubblePaddingForImage,bubblePaddingForImage + bubbleArrowWidthForImage + 4, bubblePaddingForImage,bubblePaddingForImage);
    }
}

//: - (void)setIsFromMe:(BOOL)isFromMe{
- (void)setIsFromMe:(BOOL)isFromMe{
    //: if (_isFromMe != isFromMe) {
    if (_isFromMe != isFromMe) {
        //: _isFromMe = isFromMe;
        _isFromMe = isFromMe;
        //: [self updateCover];
        [self image];
    }
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
    //: return YES;
    return YES;
}



//: #pragma NIMCustomAttachment
#pragma NIMCustomAttachment
//: - (NSString *)encodeAttachment
- (NSString *)encodeAttachment
{
    //: NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    //: NSMutableDictionary *data = [NSMutableDictionary dictionary];
    NSMutableDictionary *data = [NSMutableDictionary dictionary];
    //: [dict setObject:@(CustomMessageTypeSnapchat) forKey:@"type"];
    [dict setObject:@(CustomMessageTypeSnapchat) forKey:StringFromMethodData(kStr_menuVariationName)];
    //: [data setObject:_md5?_md5:@"" forKey:@"md5"];
    [data setObject:_md5?_md5:@"" forKey:StringFromMethodData(kStr_abaseTapName)];
    //: [data setObject:@(_isFired) forKey:@"fired"];
    [data setObject:@(_isFired) forKey:StringFromMethodData(kStr_coverMessageName)];
    //: if ([_url length])
    if ([_url length])
    {
        //: [data setObject:_url forKey:@"url"];
        [data setObject:_url forKey:StringFromMethodData(kStr_stopMerelyValue)];
    }
    //: [dict setObject:data forKey:@"data"];
    [dict setObject:data forKey:StringFromMethodData(kStr_driverWithValue)];

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


//: #pragma mark - 实现文件上传需要接口
#pragma mark - 实现文件上传需要接口
//: - (BOOL)attachmentNeedsUpload
- (BOOL)attachmentNeedsUpload
{
    //: return [_url length] == 0;
    return [_url length] == 0;
}

//: - (NSString *)attachmentPathForUploading
- (NSString *)attachmentPathForUploading
{
    //: return [self filepath];
    return [self mode];
}

//: - (void)updateAttachmentURL:(NSString *)urlString
- (void)updateAttachmentURL:(NSString *)urlString
{
    //: self.url = urlString;
    self.url = urlString;
}


//: #pragma mark - Private
#pragma mark - Private
//: - (void)updateCover{
- (void)image{
    //: UIImage *image;
    UIImage *image;
    //: if (!self.isFromMe) {
    if (!self.isFromMe) {
        //: if (self.isFired) {
        if (self.isFired) {
            //: image = [UIImage imageNamed:@"session_snapchat_other_readed"];
            image = [UIImage imageNamed:StringFromMethodData(kStr_swimmingCurData)];
        //: }else{
        }else{
            //: image = [UIImage imageNamed:@"session_snapchat_other_unread"];
            image = [UIImage imageNamed:StringFromMethodData(kStr_shrinkTitle)];
        }
    //: }else{
    }else{
        //: if (self.isFired) {
        if (self.isFired) {
            //: image = [UIImage imageNamed:@"session_snapchat_self_readed"];
            image = [UIImage imageNamed:StringFromMethodData(kStr_rooName)];
        //: }else{
        }else{
            //: image = [UIImage imageNamed:@"session_snapchat_self_unread"];
            image = [UIImage imageNamed:StringFromMethodData(kStr_chipData)];
        }
    }
    //: self.showCoverImage = image;
    self.showCoverImage = image;
}

//: - (UIImage *)showCoverImage
- (UIImage *)showCoverImage
{
    //: if (_showCoverImage == nil)
    if (_showCoverImage == nil)
    {
        //: [self updateCover];
        [self image];
    }
    //: return _showCoverImage;
    return _showCoverImage;
}

//: #pragma mark - https
#pragma mark - https
//: - (NSString *)url
- (NSString *)url
{
    //: return [_url length] ?
    return [_url length] ?
    //: [[[NIMSDK sharedSDK] resourceManager] normalizeURLString:_url] : nil;
    [[[NIMSDK sharedSDK] resourceManager] normalizeURLString:_url] : nil;
}

//: @end
@end

Byte * MethodDataToCache(Byte *data) {
    int tension = data[0];
    int creaseAccurate = data[1];
    int bronchitic = data[2];
    if (!tension) return data + bronchitic;
    for (int i = 0; i < creaseAccurate / 2; i++) {
        int begin = bronchitic + i;
        int end = bronchitic + creaseAccurate - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[bronchitic + creaseAccurate] = 0;
    return data + bronchitic;
}

NSString *StringFromMethodData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)MethodDataToCache(data)];
}  
