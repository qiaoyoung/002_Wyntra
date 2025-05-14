
#import <Foundation/Foundation.h>

NSString *StringFromHornData(Byte *data);


//: http
Byte kStr_realizeTitle[] = {51, 4, 37, 14, 96, 14, 19, 170, 31, 219, 246, 2, 154, 111, 141, 153, 153, 149, 146};


//: 系统错误～
Byte kStr_fieldCurName[] = {77, 15, 18, 6, 223, 255, 249, 197, 205, 249, 205, 177, 251, 166, 171, 250, 193, 193, 1, 207, 176, 190};


//: png
Byte kStr_ditTitle[] = {29, 3, 27, 7, 16, 126, 68, 139, 137, 130, 106};


//: text/json
Byte kStr_acidThereContent[] = {69, 9, 49, 13, 51, 93, 64, 107, 85, 142, 120, 6, 201, 165, 150, 169, 165, 96, 155, 164, 160, 159, 129};


//: text/javascript
Byte kStr_operationAnybodyValue[] = {28, 15, 27, 6, 112, 151, 143, 128, 147, 143, 74, 133, 124, 145, 124, 142, 126, 141, 132, 139, 143, 6};


//: img_%@.jpg
Byte kStr_egretAdditionalTitle[] = {66, 10, 97, 10, 185, 114, 75, 86, 147, 53, 202, 206, 200, 192, 134, 161, 143, 203, 209, 200, 203};


//: application/json
Byte kStr_timeFormulaContent[] = {32, 16, 69, 6, 11, 140, 166, 181, 181, 177, 174, 168, 166, 185, 174, 180, 179, 116, 175, 184, 180, 179, 93};


//: 连接失败,请检查网络连接
Byte kStr_messageMediaData[] = {52, 34, 2, 5, 19, 234, 193, 160, 232, 144, 167, 231, 166, 179, 234, 182, 167, 46, 234, 177, 185, 232, 165, 130, 232, 161, 167, 233, 191, 147, 233, 189, 158, 234, 193, 160, 232, 144, 167, 179};


//: data
Byte kStr_passData[] = {3, 4, 85, 13, 230, 116, 186, 31, 37, 118, 222, 97, 195, 185, 182, 201, 182, 9};


//: gif
Byte kStr_thinkTitle[] = {24, 3, 6, 12, 199, 56, 255, 255, 97, 2, 52, 44, 109, 111, 108, 244};


//: text/plain
Byte kStr_monsterValue[] = {85, 10, 68, 9, 205, 168, 23, 48, 34, 184, 169, 188, 184, 115, 180, 176, 165, 173, 178, 106};


//: image/*
Byte kStr_egretName[] = {36, 7, 46, 6, 153, 79, 151, 155, 143, 149, 147, 93, 88, 3};


//: msg
Byte kStr_inevitableName[] = {36, 3, 71, 7, 102, 150, 150, 180, 186, 174, 56};


//: file
Byte kStr_powerfulObjectValue[] = {39, 4, 46, 13, 38, 208, 23, 124, 154, 120, 189, 15, 184, 148, 151, 154, 147, 146};


//: text/xml
Byte kStr_redGageName[] = {27, 8, 15, 6, 15, 10, 131, 116, 135, 131, 62, 135, 124, 123, 222};


//: image
Byte kStr_attendanceData[] = {9, 5, 77, 8, 118, 116, 238, 179, 182, 186, 174, 180, 178, 68};


//: text/html
Byte kStr_listenData[] = {17, 9, 10, 10, 117, 49, 138, 156, 108, 36, 126, 111, 130, 126, 57, 114, 126, 119, 118, 14};


//: jpeg
Byte kStr_grandTitle[] = {39, 4, 59, 6, 86, 144, 165, 171, 160, 162, 94};


//: upload错误：%@
Byte kStr_towTitle[] = {64, 17, 29, 6, 79, 36, 146, 141, 137, 140, 126, 129, 6, 177, 182, 5, 204, 204, 12, 217, 183, 66, 93, 22};


//: jpg
Byte kStr_globValue[] = {90, 3, 55, 8, 144, 140, 220, 248, 161, 167, 158, 189};


//: 连接错误
Byte kStr_buttonSortName[] = {80, 12, 54, 11, 129, 211, 212, 61, 111, 60, 89, 30, 245, 212, 28, 196, 219, 31, 202, 207, 30, 229, 229, 192};


//: 网络错误
Byte kStr_varyCommendPointedData[] = {40, 12, 28, 11, 48, 249, 200, 51, 101, 203, 181, 3, 217, 173, 3, 215, 184, 5, 176, 181, 4, 203, 203, 134};


//: code
Byte kStr_prisonData[] = {61, 4, 69, 9, 212, 51, 137, 13, 102, 168, 180, 169, 170, 13};

// __DEBUG__
// __CLOSE_PRINT__
//
//  GoopView.m
//  hualiaoshi
//
//  Created by imim on 2017/12/22.
//  Copyright © 2017年 ali.com. All rights reserved.
//

// __M_A_C_R_O__
//: #import "RestUtil.h"
#import "GoopView.h"
//: #import "YLNetworkHelper.h"
#import "ContainerTitle.h"
//: #import "NSDictionaryAdditions.h"
#import "NSDictionaryAdditions.h"
//: #import <NSData+ImageContentType.h>
#import <NSData+ImageContentType.h>
//: #import "AFHTTPSessionManager.h"
#import "AFHTTPSessionManager.h"

//: @implementation RestUtil
@implementation GoopView

//: + (NSURLSessionTask *)post:(NSString *)url params:(NSDictionary *)params success:(YLRestSuccess)success fail:(YLRestFail)fail
+ (NSURLSessionTask *)by:(NSString *)url constituent:(NSDictionary *)params infoRestSuccess:(YLRestSuccess)success tingFail:(YLRestFail)fail
{
    // 在请求之前你可以统一配置你请求的相关参数 ,设置请求头, 请求参数的格式, 返回数据的格式....这样你就不需要每次请求都要设置一遍相关参数
    // 设置请求头
    //    [ContainerTitle setValue:@"9" forHTTPHeaderField:@"fromType"];

    //: if (![url containsString:@"http"]){
    if (![url containsString:StringFromHornData(kStr_realizeTitle)]){
        //: fail(-1, @"连接失败,请检查网络连接");
        fail(-1, StringFromHornData(kStr_messageMediaData));
        //: return nil;
        return nil;
    }

    // 发起请求
    //: return [YLNetworkHelper POST:url parameters:params success:^(id response) {
    return [ContainerTitle stick:url view:params tag:^(id response) {

        // 在这里你可以根据项目自定义其他一些重复操作,比如加载页面时候的等待效果, 提醒弹窗....
        //        success(responseObject);

        //: NSDictionary *res;
        NSDictionary *res;
        //: if ([response isKindOfClass:[NSData class]]){
        if ([response isKindOfClass:[NSData class]]){
            //: res = [NSJSONSerialization JSONObjectWithData:response options:0 error:0];
            res = [NSJSONSerialization JSONObjectWithData:response options:0 error:0];
        //: } else {
        } else {
            //: res = (NSDictionary *)response;
            res = (NSDictionary *)response;
        }

        //: int code = [res getIntValueForKey:@"code" defaultValue:-1];
        int code = [res move:StringFromHornData(kStr_prisonData) dateCount:-1];
        //: if (0 == code) {
        if (0 == code) {
            //: id data = [res objectForKey:@"data"];
            id data = [res objectForKey:StringFromHornData(kStr_passData)];
            //: success(data);
            success(data);
        //: } else {
        } else {
            //: NSString * msg = [res getStringValueForKey:@"msg" defaultValue:@"系统错误～"];
            NSString * msg = [res chromaticColour:StringFromHornData(kStr_inevitableName) message_strong:StringFromHornData(kStr_fieldCurName)];
            //: fail(code, [NSString stringWithFormat:@"%@",msg]);
            fail(code, [NSString stringWithFormat:@"%@",msg]);
        }
    //: } failure:^(NSError *error) {
    } by:^(NSError *error) {
        //: NSArray *array = [url componentsSeparatedByString:@"/"];
        NSArray *array = [url componentsSeparatedByString:@"/"];
        //: if (array.count){
        if (array.count){
            //: fail(-1, [NSString stringWithFormat:@"%@",@"连接错误"]);
            fail(-1, [NSString stringWithFormat:@"%@",StringFromHornData(kStr_buttonSortName)]);
        //: } else {
        } else {
            //: fail(-1, @"网络错误");
            fail(-1, StringFromHornData(kStr_varyCommendPointedData));
        }
    //: }];
    }];
}

//: + (NSURLSessionTask *)get:(NSString *)url params:(NSDictionary *)params success:(YLRestSuccess)success fail:(YLRestFail)fail
+ (NSURLSessionTask *)container:(NSString *)url will:(NSDictionary *)params fail:(YLRestSuccess)success nameRestFail:(YLRestFail)fail
{
    // 在请求之前你可以统一配置你请求的相关参数 ,设置请求头, 请求参数的格式, 返回数据的格式....这样你就不需要每次请求都要设置一遍相关参数
    // 设置请求头
    //    [ContainerTitle setValue:@"9" forHTTPHeaderField:@"fromType"];

    //: if (![url containsString:@"http"]){
    if (![url containsString:StringFromHornData(kStr_realizeTitle)]){
        //: fail(-1, @"连接失败,请检查网络连接");
        fail(-1, StringFromHornData(kStr_messageMediaData));
        //: return nil;
        return nil;
    }


    //: AFHTTPSessionManager *sessionManager = [AFHTTPSessionManager manager];
    AFHTTPSessionManager *sessionManager = [AFHTTPSessionManager manager];
    //: sessionManager.requestSerializer.timeoutInterval = 5.f;
    sessionManager.requestSerializer.timeoutInterval = 5.f;
    //: sessionManager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json", @"text/html", @"text/json", @"text/plain", @"text/javascript", @"text/xml", @"image/|*", nil];
    sessionManager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:StringFromHornData(kStr_timeFormulaContent), StringFromHornData(kStr_listenData), StringFromHornData(kStr_acidThereContent), StringFromHornData(kStr_monsterValue), StringFromHornData(kStr_operationAnybodyValue), StringFromHornData(kStr_redGageName), StringFromHornData(kStr_egretName), nil];
    //: [sessionManager setResponseSerializer:[AFHTTPResponseSerializer serializer]];
    [sessionManager setResponseSerializer:[AFHTTPResponseSerializer serializer]];


    //: NSURLSessionTask *sessionTask = [sessionManager GET:url parameters:@{} headers:nil progress:^(NSProgress * _Nonnull uploadProgress) {
    NSURLSessionTask *sessionTask = [sessionManager GET:url parameters:@{} headers:nil progress:^(NSProgress * _Nonnull uploadProgress) {

    //: } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {

        //: if ([responseObject isKindOfClass:[NSData class]]){
        if ([responseObject isKindOfClass:[NSData class]]){
            //: NSString * str = [[NSString alloc] initWithData:responseObject encoding:NSUTF8StringEncoding];
            NSString * str = [[NSString alloc] initWithData:responseObject encoding:NSUTF8StringEncoding];
            //: success ? success(str) : nil;
            success ? success(str) : nil;
        //: } else if ([responseObject isKindOfClass:[NSString class]]){
        } else if ([responseObject isKindOfClass:[NSString class]]){
            //: success ? success(responseObject) : nil;
            success ? success(responseObject) : nil;
        }

    //: } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {

        //: fail(-1, @"网络错误");
        fail(-1, StringFromHornData(kStr_varyCommendPointedData));

    //: }];
    }];

    //: return sessionTask;
    return sessionTask;


//    // 发起请求
//    return [ContainerTitle GET:url parameters:params success:^(id response) {
//
//        // 在这里你可以根据项目自定义其他一些重复操作,比如加载页面时候的等待效果, 提醒弹窗....
//        //        success(responseObject);
//
//        NSString *dataStr = [[NSString alloc] initWithData:response encoding:NSUTF8StringEncoding];
//        if (dataStr.length > 0) {
//            success(dataStr);
//        } else {
//            fail(-1,@"OSS系统错误～");
//        }
//    } failure:^(NSError *error) {
//        NSArray *array = [url componentsSeparatedByString:@"/"];
//        if (array.count){
//            fail(-1, [NSString stringWithFormat:@"%@",@"连接错误"]);
//        } else {
//            fail(-1, @"网络错误");
//        }
//    }];
}

//: + (NSURLSessionTask *)upload:(NSString *)url params:(NSDictionary *)params images:(NSArray *)images success:(YLRestSuccess)success fail:(YLRestFail)fail
+ (NSURLSessionTask *)naturalEvent:(NSString *)url pressed:(NSDictionary *)params itemKit:(NSArray *)images messageAcross:(YLRestSuccess)success reason:(YLRestFail)fail
{
//    NSString * fileName = [NSString stringWithFormat:@"img_%@.jpg", [[NSDate date] description]];
    //: return [YLNetworkHelper uploadImagesWithURL:url parameters:params name:@"image" images:images fileNames:nil imageScale:0.8f imageType:@"jpeg" progress:nil success:^(id responseObject) {
    return [ContainerTitle replacement:url electronicText:params color:StringFromHornData(kStr_attendanceData) counterchange:images date:nil sendMode:0.8f tableBy:StringFromHornData(kStr_grandTitle) chromatic:nil message:^(id responseObject) {

        // 在这里你可以根据项目自定义其他一些重复操作,比如加载页面时候的等待效果, 提醒弹窗....
        //        success(responseObject);

        //: NSDictionary *res = (NSDictionary *)responseObject;
        NSDictionary *res = (NSDictionary *)responseObject;
        //: int code = [res getIntValueForKey:@"code" defaultValue:-1];
        int code = [res move:StringFromHornData(kStr_prisonData) dateCount:-1];
        //: if (0 == code) {
        if (0 == code) {
            //: id data = [res objectForKey:@"data"];
            id data = [res objectForKey:StringFromHornData(kStr_passData)];
            //: success(data);
            success(data);
        //: } else {
        } else {
            //: NSString * msg = [res getStringValueForKey:@"msg" defaultValue:@"系统错误～"];
            NSString * msg = [res chromaticColour:StringFromHornData(kStr_inevitableName) message_strong:StringFromHornData(kStr_fieldCurName)];
            //: fail(code, [NSString stringWithFormat:@"upload错误：%@",msg]);
            fail(code, [NSString stringWithFormat:StringFromHornData(kStr_towTitle),msg]);
        }
    //: } failure:^(NSError *error) {
    } disguise:^(NSError *error) {
        //: fail(-1, @"网络错误");
        fail(-1, StringFromHornData(kStr_varyCommendPointedData));
    //: }];
    }];
}

//: + (NSURLSessionTask *)upload:(NSString *)url params:(NSDictionary *)params data:(NSData *)data success:(YLRestSuccess)success fail:(YLRestFail)fail
+ (NSURLSessionTask *)label:(NSString *)url happening:(NSDictionary *)params nip:(NSData *)data team:(YLRestSuccess)success pressed:(YLRestFail)fail
{
    //: NSString * fileName = [NSString stringWithFormat:@"img_%@.jpg",[[NSDate date] description]];
    NSString * fileName = [NSString stringWithFormat:StringFromHornData(kStr_egretAdditionalTitle),[[NSDate date] description]];
    //: SDImageFormat imageFormat = [NSData sd_imageFormatForImageData:data];
    SDImageFormat imageFormat = [NSData sd_imageFormatForImageData:data];
    //: NSString *imageType = @"jpg";
    NSString *imageType = StringFromHornData(kStr_globValue);
    //: if (imageFormat == SDImageFormatGIF) {
    if (imageFormat == SDImageFormatGIF) {
        //: imageType = @"gif";
        imageType = StringFromHornData(kStr_thinkTitle);
    //: } else if (imageFormat == SDImageFormatPNG) {
    } else if (imageFormat == SDImageFormatPNG) {
        //: imageType = @"png";
        imageType = StringFromHornData(kStr_ditTitle);
    }
    //: return [YLNetworkHelper uploadImageWithURL:url parameters:params name:@"image" data:data fileName:fileName imageType:imageType progress:nil success:^(id responseObject) {
    return [ContainerTitle compartment:url recording:params key:StringFromHornData(kStr_attendanceData) at:data upload:fileName retort:imageType cradle:nil label:^(id responseObject) {

        // 在这里你可以根据项目自定义其他一些重复操作,比如加载页面时候的等待效果, 提醒弹窗....
        //        success(responseObject);

        //: NSDictionary *res = (NSDictionary *)responseObject;
        NSDictionary *res = (NSDictionary *)responseObject;
        //: int code = [res getIntValueForKey:@"code" defaultValue:-1];
        int code = [res move:StringFromHornData(kStr_prisonData) dateCount:-1];
        //: if (0 == code) {
        if (0 == code) {
            //: id data = [res objectForKey:@"data"];
            id data = [res objectForKey:StringFromHornData(kStr_passData)];
            //: success(data);
            success(data);
        //: } else {
        } else {
            //: NSString * msg = [res getStringValueForKey:@"msg" defaultValue:@"系统错误～"];
            NSString * msg = [res chromaticColour:StringFromHornData(kStr_inevitableName) message_strong:StringFromHornData(kStr_fieldCurName)];
            //: fail(code, [NSString stringWithFormat:@"upload错误：%@",msg]);
            fail(code, [NSString stringWithFormat:StringFromHornData(kStr_towTitle),msg]);
        }
    //: } failure:^(NSError *error) {
    } surname:^(NSError *error) {
        //: fail(-1, @"网络错误");
        fail(-1, StringFromHornData(kStr_varyCommendPointedData));
    //: }];
    }];
}

//: + (NSURLSessionTask *)upload:(NSString *)url params:(NSDictionary *)params file:(NSString *)file success:(YLRestSuccess)success fail:(YLRestFail)fail
+ (NSURLSessionTask *)cellDownName:(NSString *)url picture:(NSDictionary *)params paramsFail:(NSString *)file show:(YLRestSuccess)success uploadFail:(YLRestFail)fail
{
    //: return [YLNetworkHelper uploadFileWithURL:url parameters:params name:@"file" filePath:file progress:nil success:^(id responseObject) {
    return [ContainerTitle show:url metadata:params atStraightAndNarrow:StringFromHornData(kStr_powerfulObjectValue) maxHadithThread:file airshipHttpProgress:nil relapsing:^(id responseObject) {

        // 在这里你可以根据项目自定义其他一些重复操作,比如加载页面时候的等待效果, 提醒弹窗....
        //        success(responseObject);

        //: NSDictionary *res = (NSDictionary *)responseObject;
        NSDictionary *res = (NSDictionary *)responseObject;
        //: int code = [res getIntValueForKey:@"code" defaultValue:-1];
        int code = [res move:StringFromHornData(kStr_prisonData) dateCount:-1];
        //: if (0 == code) {
        if (0 == code) {
            //: id data = [res objectForKey:@"data"];
            id data = [res objectForKey:StringFromHornData(kStr_passData)];
            //: success(data);
            success(data);
        //: } else {
        } else {
            //: NSString * msg = [res getStringValueForKey:@"msg" defaultValue:@"系统错误～"];
            NSString * msg = [res chromaticColour:StringFromHornData(kStr_inevitableName) message_strong:StringFromHornData(kStr_fieldCurName)];
            //: fail(code, [NSString stringWithFormat:@"upload错误：%@",msg]);
            fail(code, [NSString stringWithFormat:StringFromHornData(kStr_towTitle),msg]);
        }
    //: } failure:^(NSError *error) {
    } progress:^(NSError *error) {
        //: fail(-1, @"网络错误");
        fail(-1, StringFromHornData(kStr_varyCommendPointedData));
    //: }];
    }];
}

//: + (NSURLSessionTask *)upload:(NSString *)url params:(NSDictionary *)params files:(NSDictionary<NSString*, NSString*> *)files success:(YLRestSuccess)success fail:(YLRestFail)fail {
+ (NSURLSessionTask *)image:(NSString *)url to:(NSDictionary *)params params_strong:(NSDictionary<NSString*, NSString*> *)files chokeCrop:(YLRestSuccess)success counterval:(YLRestFail)fail {
    //: return [YLNetworkHelper uploadFilesWithURL:url parameters:params files:files progress:nil success:^(id responseObject) {
    return [ContainerTitle message:url green:params storageAppPhase:files status:nil to:^(id responseObject) {

        // 在这里你可以根据项目自定义其他一些重复操作,比如加载页面时候的等待效果, 提醒弹窗....
        //        success(responseObject);

        //: NSDictionary *res = (NSDictionary *)responseObject;
        NSDictionary *res = (NSDictionary *)responseObject;
        //: int code = [res getIntValueForKey:@"code" defaultValue:-1];
        int code = [res move:StringFromHornData(kStr_prisonData) dateCount:-1];
        //: if (0 == code) {
        if (0 == code) {
            //: id data = [res objectForKey:@"data"];
            id data = [res objectForKey:StringFromHornData(kStr_passData)];
            //: success(data);
            success(data);
        //: } else {
        } else {
            //: NSString * msg = [res getStringValueForKey:@"msg" defaultValue:@"系统错误～"];
            NSString * msg = [res chromaticColour:StringFromHornData(kStr_inevitableName) message_strong:StringFromHornData(kStr_fieldCurName)];
            //: fail(code, [NSString stringWithFormat:@"upload错误：%@",msg]);
            fail(code, [NSString stringWithFormat:StringFromHornData(kStr_towTitle),msg]);
        }
    //: } failure:^(NSError *error) {
    } bar:^(NSError *error) {
        //: fail(-1, @"网络错误");
        fail(-1, StringFromHornData(kStr_varyCommendPointedData));
    //: }];
    }];
}

//: + (NSURLSessionTask *)upload:(NSString *)url params:(NSDictionary *)params video:(NSString*)videoPath thumb:(UIImage*)thumb success:(YLRestSuccess)success fail:(YLRestFail)fail {
+ (NSURLSessionTask *)complete:(NSString *)url showImageVoice:(NSDictionary *)params sendFail:(NSString*)videoPath success:(UIImage*)thumb turn:(YLRestSuccess)success thread:(YLRestFail)fail {
    //: return [YLNetworkHelper uploadVideoWithURL:url parameters:params video:videoPath thumb:thumb progress:nil success:^(id responseObject) {
    return [ContainerTitle opticTransmissionFailure:url backgroundId:params sitting:videoPath nobble:thumb towardHolder:nil anMessage:^(id responseObject) {

        // 在这里你可以根据项目自定义其他一些重复操作,比如加载页面时候的等待效果, 提醒弹窗....
        //        success(responseObject);

        //: NSDictionary *res = (NSDictionary *)responseObject;
        NSDictionary *res = (NSDictionary *)responseObject;
        //: int code = [res getIntValueForKey:@"code" defaultValue:-1];
        int code = [res move:StringFromHornData(kStr_prisonData) dateCount:-1];
        //: if (0 == code) {
        if (0 == code) {
            //: id data = [res objectForKey:@"data"];
            id data = [res objectForKey:StringFromHornData(kStr_passData)];
            //: success(data);
            success(data);
        //: } else {
        } else {
            //: NSString * msg = [res getStringValueForKey:@"msg" defaultValue:@"系统错误～"];
            NSString * msg = [res chromaticColour:StringFromHornData(kStr_inevitableName) message_strong:StringFromHornData(kStr_fieldCurName)];
            //: fail(code, [NSString stringWithFormat:@"upload错误：%@",msg]);
            fail(code, [NSString stringWithFormat:StringFromHornData(kStr_towTitle),msg]);
        }
    //: } failure:^(NSError *error) {
    } thumb:^(NSError *error) {
        //: fail(-1, @"网络错误");
        fail(-1, StringFromHornData(kStr_varyCommendPointedData));
    //: }];
    }];
}

//: + (NSString *)imageType:(NSData *)data
+ (NSString *)add:(NSData *)data
{
    //: if (!data) {
    if (!data) {
        //: return @"jpg";
        return StringFromHornData(kStr_globValue);
    }
    //: uint8_t c;
    uint8_t c;
    //: [data getBytes:&c length:1];
    [data getBytes:&c length:1];
    //: switch (c) {
    switch (c) {
        //: case 0xFF:
        case 0xFF:
            //: return @"jpg";
            return StringFromHornData(kStr_globValue);
        //: case 0x89:
        case 0x89:
            //: return @"png";
            return StringFromHornData(kStr_ditTitle);
        //: case 0x47:
        case 0x47:
            //: return @"gif";
            return StringFromHornData(kStr_thinkTitle);
        //: default:
        default:
            //: return @"jpg";
            return StringFromHornData(kStr_globValue);
    }
}


//: @end
@end

Byte * HornDataToCache(Byte *data) {
    int totalWheat = data[0];
    int declareHeadquarters = data[1];
    Byte meantime = data[2];
    int gibber = data[3];
    if (!totalWheat) return data + gibber;
    for (int i = gibber; i < gibber + declareHeadquarters; i++) {
        int value = data[i] - meantime;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[gibber + declareHeadquarters] = 0;
    return data + gibber;
}

NSString *StringFromHornData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)HornDataToCache(data)];
}
