
#import <Foundation/Foundation.h>

NSString *StringFromPercentageData(Byte *data);


//: fileName
Byte kStr_untilCheckedTitle[] = {12, 8, 33, 10, 178, 60, 222, 135, 139, 5, 135, 138, 141, 134, 111, 130, 142, 134, 127};


//: data
Byte kStr_sorryCraftTitle[] = {45, 4, 51, 14, 92, 255, 81, 66, 53, 31, 119, 172, 231, 120, 151, 148, 167, 148, 203};


//: messageAbstract
Byte kStr_improveRageMoleName[] = {67, 15, 65, 11, 3, 179, 215, 194, 143, 189, 72, 174, 166, 180, 180, 162, 168, 166, 130, 163, 180, 181, 179, 162, 164, 181, 36};


//: url
Byte kStr_bureauText[] = {39, 3, 47, 5, 92, 164, 161, 155, 87};


//: sessionId
Byte kStr_viaLitName[] = {9, 9, 53, 13, 19, 139, 36, 66, 42, 22, 95, 204, 65, 168, 154, 168, 168, 158, 164, 163, 126, 153, 253};


//: type
Byte kStr_consciencePiracyGalName[] = {18, 4, 3, 10, 184, 44, 115, 208, 55, 130, 119, 124, 115, 104, 147};


//: sender
Byte kStr_strategyTitle[] = {19, 6, 55, 10, 47, 53, 162, 23, 171, 214, 170, 156, 165, 155, 156, 169, 241};


//: message
Byte kStr_stopThereEyebrowData[] = {95, 7, 86, 5, 100, 195, 187, 201, 201, 183, 189, 187, 39};


//: md5
Byte kStr_sleeveLysisValue[] = {29, 3, 35, 6, 63, 71, 144, 135, 88, 209};


//: compressed
Byte kStr_merelyShouldData[] = {86, 10, 66, 12, 250, 181, 248, 89, 239, 115, 221, 41, 165, 177, 175, 178, 180, 167, 181, 181, 167, 166, 252};


//: encrypted
Byte kStr_tartContent[] = {6, 9, 1, 12, 255, 217, 36, 161, 29, 15, 23, 194, 102, 111, 100, 115, 122, 113, 117, 102, 101, 112};


//: sessionName
Byte kStr_moleValue[] = {22, 11, 98, 8, 71, 117, 139, 188, 213, 199, 213, 213, 203, 209, 208, 176, 195, 207, 199, 230};


//: password
Byte kStr_totalRooText[] = {37, 8, 3, 14, 67, 80, 27, 241, 27, 109, 69, 135, 81, 38, 115, 100, 118, 118, 122, 114, 117, 103, 246};


//: null
Byte kStr_mathSharpValue[] = {65, 4, 69, 7, 148, 154, 240, 179, 186, 177, 177, 5};


//: 聊天记录
Byte kStr_cruiseAbaseValue[] = {24, 12, 80, 8, 103, 43, 163, 198, 56, 209, 218, 53, 244, 249, 56, 254, 0, 53, 13, 229, 34};

// __DEBUG__
// __CLOSE_PRINT__
//
//  RefreshMessage.m
//  NIM
//
//  Created by Netease on 2019/10/16.
//  Copyright © 2019 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESMultiRetweetAttachment.h"
#import "RefreshMessage.h"
//: #import "NTESFileLocationHelper.h"
#import "FileWithAddCell.h"
//: #import "ZZZKitInfoFetchOption.h"
#import "CertainOption.h"
//: #import "NSDictionary+NTESJson.h"
#import "NSDictionary+ImageGreen.h"
//: #import "M80AttributedLabel+AppleProjectKit.h"
#import "GreenNameView+On.h"
//: #import "NTESMessageUtil.h"
#import "CommentTitle.h"
//: #import "ZZZInputEmoticonParser.h"
#import "FrameworkName.h"

//: @interface NTESMultiRetweetAttachment ()
@interface RefreshMessage ()

//: @property (nonatomic,weak) NIMMessage *message;
@property (nonatomic,weak) NIMMessage *message;
//: @property (nonatomic,strong) M80AttributedLabel *label;
@property (nonatomic,strong) GreenNameView *label;

//: @end
@end

//: @implementation NTESMultiRetweetAttachment
@implementation RefreshMessage

//: - (NSString *)encodeAttachment {
- (NSString *)encodeAttachment {

    //: NSMutableDictionary *dataDic = [NSMutableDictionary dictionary];
    NSMutableDictionary *dataDic = [NSMutableDictionary dictionary];
    //: dataDic[@"url"] = _url;
    dataDic[StringFromPercentageData(kStr_bureauText)] = _url;
    //: dataDic[@"md5"] = _md5;
    dataDic[StringFromPercentageData(kStr_sleeveLysisValue)] = _md5;
    //: dataDic[@"fileName"] = _fileName;
    dataDic[StringFromPercentageData(kStr_untilCheckedTitle)] = _fileName;
    //: dataDic[@"compressed"] = @(_compressed);
    dataDic[StringFromPercentageData(kStr_merelyShouldData)] = @(_compressed);
    //: dataDic[@"encrypted"] = @(_encrypted);
    dataDic[StringFromPercentageData(kStr_tartContent)] = @(_encrypted);
    //: dataDic[@"password"] = _password;
    dataDic[StringFromPercentageData(kStr_totalRooText)] = _password;
    //: dataDic[@"messageAbstract"] = _messageAbstract;
    dataDic[StringFromPercentageData(kStr_improveRageMoleName)] = _messageAbstract;
    //: dataDic[@"sessionName"] = _sessionName;
    dataDic[StringFromPercentageData(kStr_moleValue)] = _sessionName;
    //: dataDic[@"sessionId"] = _sessionId;
    dataDic[StringFromPercentageData(kStr_viaLitName)] = _sessionId;
    //: NSDictionary *dict = @{@"type" : @(CustomMessageTypeMultiRetweet),
    NSDictionary *dict = @{StringFromPercentageData(kStr_consciencePiracyGalName) : @(CustomMessageTypeMultiRetweet),
                           //: @"data" : dataDic};
                           StringFromPercentageData(kStr_sorryCraftTitle) : dataDic};
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

//: - (void)setAbstracts:(NSMutableArray<NTESMessageAbstract *> *)abstracts {
- (void)setAbstracts:(NSMutableArray<LightTing *> *)abstracts {
    //: _abstracts = abstracts;
    _abstracts = abstracts;
    //: NSMutableArray *abstractDics = [NSMutableArray array];
    NSMutableArray *abstractDics = [NSMutableArray array];
    //: for (NTESMessageAbstract *obj in abstracts) {
    for (LightTing *obj in abstracts) {
        //: NSDictionary *objDic = [obj abstractDictionary];
        NSDictionary *objDic = [obj video];
        //: if (objDic) {
        if (objDic) {
            //: [abstractDics addObject:objDic];
            [abstractDics addObject:objDic];
        }
    }
    //: _messageAbstract = abstractDics;
    _messageAbstract = abstractDics;
}

//: - (void)setMessageAbstract:(NSArray *)messageAbstract {
- (void)setMessageAbstract:(NSArray *)messageAbstract {
    //: _messageAbstract = messageAbstract;
    _messageAbstract = messageAbstract;
    //: if (!messageAbstract) {
    if (!messageAbstract) {
        //: _abstracts = nil;
        _abstracts = nil;
    //: } else {
    } else {
        //: _abstracts = [NSMutableArray array];
        _abstracts = [NSMutableArray array];
        //: for (id obj in messageAbstract) {
        for (id obj in messageAbstract) {
            //: if ([obj isKindOfClass:[NSDictionary class]]) {
            if ([obj isKindOfClass:[NSDictionary class]]) {
                //: NTESMessageAbstract *abstract = [NTESMessageAbstract abstractWithDictionary:obj];
                LightTing *abstract = [LightTing smartBy:obj];
                //: if (abstract) {
                if (abstract) {
                    //: [_abstracts addObject:abstract];
                    [_abstracts addObject:abstract];
                }
            }
        }
    }
}

//: - (NSString *)formatTitleMessage {
- (NSString *)between {
    //: return [NSString stringWithFormat:@"%@%@",
    return [NSString stringWithFormat:@"%@%@",
            //: _sessionName,
            _sessionName,
            //: @"聊天记录".ntes_localized];
            StringFromPercentageData(kStr_cruiseAbaseValue).colorLocalized];
}

//: - (NSString *)formatAbstractMessage:(NTESMessageAbstract *)abstract {
- (NSString *)message:(LightTing *)abstract {
    //: return [NSString stringWithFormat:@"%@:%@", abstract.sender, abstract.message];
    return [NSString stringWithFormat:@"%@:%@", abstract.sender, abstract.message];
}

//: #pragma mark - 上传接口
#pragma mark - 上传接口
//: - (BOOL)attachmentNeedsUpload {
- (BOOL)attachmentNeedsUpload {
    //: return [_url length] == 0;
    return [_url length] == 0;
}

//: - (NSString *)attachmentPathForUploading {
- (NSString *)attachmentPathForUploading {
    //: return self.filePath;
    return self.filePath;
}

//: - (void)updateAttachmentURL:(NSString *)urlString {
- (void)updateAttachmentURL:(NSString *)urlString {
    //: self.url = urlString;
    self.url = urlString;
}

//: #pragma mark - 下载相关接口
#pragma mark - 下载相关接口
//: - (BOOL)attachmentNeedsDownload {
- (BOOL)attachmentNeedsDownload {
    //: NSFileManager *fm = [NSFileManager defaultManager];
    NSFileManager *fm = [NSFileManager defaultManager];
    //: BOOL isDir = NO;
    BOOL isDir = NO;
    //: BOOL fileExist = ([fm fileExistsAtPath:self.filePath isDirectory:&isDir]
    BOOL fileExist = ([fm fileExistsAtPath:self.filePath isDirectory:&isDir]
                      //: && !isDir);
                      && !isDir);
    //: return !fileExist;
    return !fileExist;
}

//: - (NSString *)attachmentURLStringForDownloading {
- (NSString *)attachmentURLStringForDownloading {
    //: return _url;
    return _url;
}

//: - (NSString *)attachmentPathForDownloading {
- (NSString *)attachmentPathForDownloading {
    //: return self.filePath;
    return self.filePath;
}

//: #pragma mark - cell相关
#pragma mark - cell相关
//: - (NSString *)cellContent:(NIMMessage *)message {
- (NSString *)item:(NIMMessage *)message {
    //: return @"NTESSessionMultiRetweetContentView";
    return @"ContentTextView";
}

//: - (CGSize)contentSize:(NIMMessage *)message cellWidth:(CGFloat)width {
- (CGSize)cellCheck:(NIMMessage *)message total:(CGFloat)width {
    //: CGFloat msgBubbleMaxWidth = (width - 130);
    CGFloat msgBubbleMaxWidth = (width - 130);
    //: CGFloat padding = 4.0;
    CGFloat padding = 4.0;
    //: CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - 2 * padding);
    CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - 2 * padding);
    //: NSString *titleString = [self formatTitleMessage];
    NSString *titleString = [self between];
    //: NSDictionary *attribute = @{NSFontAttributeName:[UIFont systemFontOfSize:14]};
    NSDictionary *attribute = @{NSFontAttributeName:[UIFont systemFontOfSize:14]};
    //: CGSize bounding = CGSizeMake(msgContentMaxWidth, 1.7976931348623157e+308);
    CGSize bounding = CGSizeMake(msgContentMaxWidth, 1.7976931348623157e+308);
    //: NSStringDrawingOptions options = NSStringDrawingUsesLineFragmentOrigin |NSStringDrawingUsesFontLeading;
    NSStringDrawingOptions options = NSStringDrawingUsesLineFragmentOrigin |NSStringDrawingUsesFontLeading;
    //: CGSize titleSize = [titleString boundingRectWithSize:bounding
    CGSize titleSize = [titleString boundingRectWithSize:bounding
                                                 //: options:options
                                                 options:options
                                              //: attributes:attribute
                                              attributes:attribute
                                                 //: context:nil].size;
                                                 context:nil].size;

    //: attribute = @{NSFontAttributeName:[UIFont systemFontOfSize:11]};
    attribute = @{NSFontAttributeName:[UIFont systemFontOfSize:11]};
    //: CGSize subTitleSize = [@"聊天记录".ntes_localized boundingRectWithSize:bounding
    CGSize subTitleSize = [StringFromPercentageData(kStr_cruiseAbaseValue).colorLocalized boundingRectWithSize:bounding
                                                               //: options:options
                                                               options:options
                                                            //: attributes:attribute
                                                            attributes:attribute
                                                               //: context:nil].size;
                                                               context:nil].size;


    //: CGFloat abstractHeight = 0;
    CGFloat abstractHeight = 0;
    //: for (NTESMessageAbstract *abs in _abstracts) {
    for (LightTing *abs in _abstracts) {
        //: [self.label nim_setText:[self formatAbstractMessage:abs]];
        [self.label sourceSet:[self message:abs]];
        //: CGSize size = [self.label sizeThatFits:CGSizeMake(msgContentMaxWidth, 1.7976931348623157e+308)];
        CGSize size = [self.label sizeThatFits:CGSizeMake(msgContentMaxWidth, 1.7976931348623157e+308)];
        //: abstractHeight += (size.height + padding);
        abstractHeight += (size.height + padding);
    }

    //: CGFloat height = titleSize.height +
    CGFloat height = titleSize.height +
                    //: abstractHeight + 1.0 +
                    abstractHeight + 1.0 +
                    //: padding + subTitleSize.height;
                    padding + subTitleSize.height;

    //: return CGSizeMake(msgBubbleMaxWidth, height);
    return CGSizeMake(msgBubbleMaxWidth, height);
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message {
- (UIEdgeInsets)up:(NIMMessage *)message {
    //: return UIEdgeInsetsMake(12.0, 12.0, 12.0, 4.0);
    return UIEdgeInsetsMake(12.0, 12.0, 12.0, 4.0);
}

//: - (BOOL)canBeRevoked {
- (BOOL)can {
    //: return YES;
    return YES;
}

//: - (BOOL)canBeForwarded {
- (BOOL)tapForwarded {
    //: return YES;
    return YES;
}

//: - (NSString *)filePath
- (NSString *)filePath
{
    //: NSString *filePath = self.fileName ? [NTESFileLocationHelper filepathForMergeForwardFile:self.fileName] : nil;
    NSString *filePath = self.fileName ? [FileWithAddCell paper:self.fileName] : nil;
    //: return filePath;
    return filePath;
}

//: - (NSString *)fileName
- (NSString *)fileName
{
    //: if (!_fileName) {
    if (!_fileName) {
        //: _fileName = self.url.lastPathComponent;
        _fileName = self.url.lastPathComponent;
    }
    //: return _fileName;
    return _fileName;
}

//: - (M80AttributedLabel *)label {
- (GreenNameView *)label {
    //: if (!_label) {
    if (!_label) {
        //: _label = [[M80AttributedLabel alloc] initWithFrame:CGRectZero];
        _label = [[GreenNameView alloc] initWithFrame:CGRectZero];
        //: _label.textColor = [UIColor lightGrayColor];
        _label.textColor = [UIColor lightGrayColor];
        //: _label.font = [UIFont systemFontOfSize:11];
        _label.font = [UIFont systemFontOfSize:11];
        //: _label.numberOfLines = 1;
        _label.numberOfLines = 1;
    }
    //: return _label;
    return _label;
}

//: @end
@end

//: #pragma mark - NTESMessageAbstract
#pragma mark - LightTing


//: @implementation NTESMessageAbstract
@implementation LightTing

//: - (NSDictionary *)abstractDictionary {
- (NSDictionary *)video {
    //: if (_sender && _message) {
    if (_sender && _message) {
        //: NSMutableDictionary *dic = [NSMutableDictionary dictionary];
        NSMutableDictionary *dic = [NSMutableDictionary dictionary];
        //: dic[@"sender"] = _sender;
        dic[StringFromPercentageData(kStr_strategyTitle)] = _sender;
        //: dic[@"message"] = _message;
        dic[StringFromPercentageData(kStr_stopThereEyebrowData)] = _message;
        //: return dic;
        return dic;
    //: } else {
    } else {
        //: return nil;
        return nil;
    }
}

//: + (instancetype)abstractWithMessage:(NIMMessage *)message {
+ (instancetype)see:(NIMMessage *)message {
    //: if (!message) {
    if (!message) {
        //: return nil;
        return nil;
    }
    //: NTESMessageAbstract *ret = [[NTESMessageAbstract alloc] init];
    LightTing *ret = [[LightTing alloc] init];
    //: ZZZKitInfoFetchOption *option = [[ZZZKitInfoFetchOption alloc] init];
    CertainOption *option = [[CertainOption alloc] init];
    //: option.session = message.session;
    option.session = message.session;
    //: option.message = message;
    option.message = message;
    //: ZZZKitInfo *info = [[AppleProjectKit sharedKit].provider infoByUser:message.from option:option];
    MagnitudeCommentInfo *info = [[On along].provider toKey:message.from image:option];
    //: ret.sender = info.showName ?: @"null";
    ret.sender = info.showName ?: StringFromPercentageData(kStr_mathSharpValue);
    //: ret.message = [ret abstract:message];
    ret.message = [ret container:message];
    //: return ret;
    return ret;
}

//: + (instancetype)abstractWithDictionary:(NSDictionary *)content {
+ (instancetype)smartBy:(NSDictionary *)content {
    //: if (!content) {
    if (!content) {
        //: return nil;
        return nil;
    }
    //: NTESMessageAbstract *ret = [[NTESMessageAbstract alloc] init];
    LightTing *ret = [[LightTing alloc] init];
    //: ret.sender = [content jsonString:@"sender"];
    ret.sender = [content show:StringFromPercentageData(kStr_strategyTitle)];
    //: ret.message = [content jsonString:@"message"];
    ret.message = [content show:StringFromPercentageData(kStr_stopThereEyebrowData)];
    //: return ret;
    return ret;
}

//: - (NSString *)abstract:(NIMMessage *)message {
- (NSString *)container:(NIMMessage *)message {
    //: NSString *msg = [NTESMessageUtil messageContent:message];
    NSString *msg = [CommentTitle complete:message];
    //: NSMutableString *ret = [NSMutableString string];
    NSMutableString *ret = [NSMutableString string];
    //: if (msg.length > (32)) {
    if (msg.length > (32)) {
        //: NSArray *tokens = [[ZZZInputEmoticonParser currentParser] tokens:msg];
        NSArray *tokens = [[FrameworkName parser] info:msg];
        //: for (NIMInputTextToken *token in tokens) { 
        for (With *token in tokens) { //防止emoji表情被截断
            //: if (ret.length > (32)) {
            if (ret.length > (32)) {
                //: break;
                break;
            }
            //: [ret appendString:token.text];
            [ret appendString:token.text];
        }
    //: } else {
    } else {
        //: [ret appendString:msg];
        [ret appendString:msg];
    }
    //: return ret;
    return ret;
}

//: @end
@end

Byte * PercentageDataToCache(Byte *data) {
    int lysis = data[0];
    int increased = data[1];
    Byte accountHistory = data[2];
    int palliate = data[3];
    if (!lysis) return data + palliate;
    for (int i = palliate; i < palliate + increased; i++) {
        int value = data[i] - accountHistory;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[palliate + increased] = 0;
    return data + palliate;
}

NSString *StringFromPercentageData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)PercentageDataToCache(data)];
}
