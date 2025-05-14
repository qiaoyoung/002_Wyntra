
#import <Foundation/Foundation.h>
typedef struct {
    Byte second;
    Byte *dit;
    unsigned int indispensable;
    bool personality;
} ArrestData;

NSString *StringFromArrestData(ArrestData *data);


//: 手机自带网络
ArrestData kStr_yeText = (ArrestData){10, (Byte []){236, 131, 129, 236, 150, 176, 226, 141, 160, 239, 178, 172, 237, 183, 155, 237, 177, 150, 117}, 18, false};


//: 未知网络
ArrestData kStr_playoffHousingValue = (ArrestData){232, (Byte []){14, 116, 66, 15, 119, 77, 15, 85, 121, 15, 83, 116, 67}, 12, false};


//: responseObject = %@
ArrestData kStr_confusionData = (ArrestData){206, (Byte []){188, 171, 189, 190, 161, 160, 189, 171, 129, 172, 164, 171, 173, 186, 238, 243, 238, 235, 142, 142}, 19, false};


//: jpg
ArrestData kStr_wheelTitle = (ArrestData){104, (Byte []){2, 24, 15, 82}, 3, false};


//: text/plain
ArrestData kStr_ambitFastData = (ArrestData){86, (Byte []){34, 51, 46, 34, 121, 38, 58, 55, 63, 56, 117}, 10, false};


//: Download
ArrestData kStr_diplomaticText = (ArrestData){232, (Byte []){172, 135, 159, 134, 132, 135, 137, 140, 208}, 8, false};


//: image/*
ArrestData kStr_plateTeenText = (ArrestData){55, (Byte []){94, 90, 86, 80, 82, 24, 29, 195}, 7, false};


//: image/%@
ArrestData kStr_mysteryData = (ArrestData){184, (Byte []){209, 213, 217, 223, 221, 151, 157, 248, 224}, 8, false};


//: 无网络
ArrestData kStr_additionalValue = (ArrestData){196, (Byte []){34, 83, 100, 35, 121, 85, 35, 127, 88, 160}, 9, false};


//: text/javascript
ArrestData kStr_possessValue = (ArrestData){12, (Byte []){120, 105, 116, 120, 35, 102, 109, 122, 109, 127, 111, 126, 101, 124, 120, 97}, 15, false};


//: text/xml
ArrestData kStr_tacticHimselfContent = (ArrestData){26, (Byte []){110, 127, 98, 110, 53, 98, 119, 118, 186}, 8, false};


//: text/html
ArrestData kStr_attendanceName = (ArrestData){187, (Byte []){207, 222, 195, 207, 148, 211, 207, 214, 215, 47}, 9, false};


//: error = %@
ArrestData kStr_involvedContent = (ArrestData){149, (Byte []){240, 231, 231, 250, 231, 181, 168, 181, 176, 213, 195}, 10, false};


//: WIFI
ArrestData kStr_indexContent = (ArrestData){32, (Byte []){119, 105, 102, 105, 17}, 4, false};


//: application/json
ArrestData kStr_rubValue = (ArrestData){174, (Byte []){207, 222, 222, 194, 199, 205, 207, 218, 199, 193, 192, 129, 196, 221, 193, 192, 102}, 16, false};


//: thumb
ArrestData kStr_shellHistoricallyContent = (ArrestData){123, (Byte []){15, 19, 14, 22, 25, 211}, 5, false};


//: thumb.jpg
ArrestData kStr_beachDenialName = (ArrestData){137, (Byte []){253, 225, 252, 228, 235, 167, 227, 249, 238, 139}, 9, false};


//: yyyyMMddHHmmss
ArrestData kStr_tilSumByTitle = (ArrestData){198, (Byte []){191, 191, 191, 191, 139, 139, 162, 162, 142, 142, 171, 171, 181, 181, 157}, 14, false};


//: video
ArrestData kStr_passFactValue = (ArrestData){229, (Byte []){147, 140, 129, 128, 138, 253}, 5, false};


//: image/jpg
ArrestData kStr_physicValue = (ArrestData){40, (Byte []){65, 69, 73, 79, 77, 7, 66, 88, 79, 239}, 9, false};


//: text/json
ArrestData kStr_platProceedContent = (ArrestData){73, (Byte []){61, 44, 49, 61, 102, 35, 58, 38, 39, 173}, 9, false};

// __DEBUG__
// __CLOSE_PRINT__
//
//  ContainerTitle.m
//  ContainerTitle
//
//  Created by AndyPang on 16/8/12.
//  Copyright © 2016年 AndyPang. All rights reserved.
//

// __M_A_C_R_O__
//: #import "YLNetworkHelper.h"
#import "ContainerTitle.h"
//: #import "AFNetworking.h"
#import "AFNetworking.h"
//: #import "AFNetworkActivityIndicatorManager.h"
#import "AFNetworkActivityIndicatorManager.h"

//: @implementation YLNetworkHelper
@implementation ContainerTitle

//: static BOOL _isOpenLog; 
static BOOL kConst_labelText; // 是否已开启日志打印
//: static NSMutableArray *_allSessionTask;
static NSMutableArray *kConst_makeTitle;
//: static AFHTTPSessionManager *_sessionManager;
static AFHTTPSessionManager *kConst_rootValue;

//: #pragma mark - 开始监听网络
#pragma mark - 开始监听网络
//: + (void)networkStatusWithBlock:(YLNetworkStatus)networkStatus {
+ (void)examineed:(YLNetworkStatus)networkStatus {

    //: [[AFNetworkReachabilityManager sharedManager] setReachabilityStatusChangeBlock:^(AFNetworkReachabilityStatus status) {
    [[AFNetworkReachabilityManager sharedManager] setReachabilityStatusChangeBlock:^(AFNetworkReachabilityStatus status) {
        //: switch (status) {
        switch (status) {
            //: case AFNetworkReachabilityStatusUnknown:
            case AFNetworkReachabilityStatusUnknown:
                //: networkStatus ? networkStatus(YLNetworkStatusUnknown) : nil;
                networkStatus ? networkStatus(YLNetworkStatusUnknown) : nil;
                //: if (_isOpenLog) printf("[%s] %s [第%d行]: %s\n", "14:50:48" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"未知网络"] UTF8String]);
                if (kConst_labelText) printf("[%s] %s [第%d行]: %s\n", "14:50:48" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:StringFromArrestData(&kStr_playoffHousingValue)] UTF8String]);
                //: break;
                break;
            //: case AFNetworkReachabilityStatusNotReachable:
            case AFNetworkReachabilityStatusNotReachable:
                //: networkStatus ? networkStatus(YLNetworkStatusNotReachable) : nil;
                networkStatus ? networkStatus(YLNetworkStatusNotReachable) : nil;
                //: if (_isOpenLog) printf("[%s] %s [第%d行]: %s\n", "14:50:48" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"无网络"] UTF8String]);
                if (kConst_labelText) printf("[%s] %s [第%d行]: %s\n", "14:50:48" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:StringFromArrestData(&kStr_additionalValue)] UTF8String]);
                //: break;
                break;
            //: case AFNetworkReachabilityStatusReachableViaWWAN:
            case AFNetworkReachabilityStatusReachableViaWWAN:
                //: networkStatus ? networkStatus(YLNetworkStatusReachableViaWWAN) : nil;
                networkStatus ? networkStatus(YLNetworkStatusReachableViaWWAN) : nil;
                //: if (_isOpenLog) printf("[%s] %s [第%d行]: %s\n", "14:50:48" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"手机自带网络"] UTF8String]);
                if (kConst_labelText) printf("[%s] %s [第%d行]: %s\n", "14:50:48" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:StringFromArrestData(&kStr_yeText)] UTF8String]);
                //: break;
                break;
            //: case AFNetworkReachabilityStatusReachableViaWiFi:
            case AFNetworkReachabilityStatusReachableViaWiFi:
                //: networkStatus ? networkStatus(YLNetworkStatusReachableViaWiFi) : nil;
                networkStatus ? networkStatus(YLNetworkStatusReachableViaWiFi) : nil;
                //: if (_isOpenLog) printf("[%s] %s [第%d行]: %s\n", "14:50:48" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"WIFI"] UTF8String]);
                if (kConst_labelText) printf("[%s] %s [第%d行]: %s\n", "14:50:48" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:StringFromArrestData(&kStr_indexContent)] UTF8String]);
                //: break;
                break;
        }
    //: }];
    }];

}

//: + (BOOL)isNetwork {
+ (BOOL)failure {
    //: return [AFNetworkReachabilityManager sharedManager].reachable;
    return [AFNetworkReachabilityManager sharedManager].reachable;
}

//: + (BOOL)isWWANNetwork {
+ (BOOL)time {
    //: return [AFNetworkReachabilityManager sharedManager].reachableViaWWAN;
    return [AFNetworkReachabilityManager sharedManager].reachableViaWWAN;
}

//: + (BOOL)isWiFiNetwork {
+ (BOOL)device {
    //: return [AFNetworkReachabilityManager sharedManager].reachableViaWiFi;
    return [AFNetworkReachabilityManager sharedManager].reachableViaWiFi;
}

//: + (void)openLog {
+ (void)add {
    //: _isOpenLog = YES;
    kConst_labelText = YES;
}

//: + (void)closeLog {
+ (void)title {
    //: _isOpenLog = NO;
    kConst_labelText = NO;
}

//: + (void)cancelAllRequest {
+ (void)betweenName {
    // 锁操作
    //: @synchronized(self) {
    @synchronized(self) {
        //: [[self allSessionTask] enumerateObjectsUsingBlock:^(NSURLSessionTask *_Nonnull task, NSUInteger idx, BOOL * _Nonnull stop) {
        [[self totaleract] enumerateObjectsUsingBlock:^(NSURLSessionTask *_Nonnull task, NSUInteger idx, BOOL * _Nonnull stop) {
            //: [task cancel];
            [task cancel];
        //: }];
        }];
        //: [[self allSessionTask] removeAllObjects];
        [[self totaleract] removeAllObjects];
    }
}

//: + (void)cancelRequestWithURL:(NSString *)URL {
+ (void)boundEmpty:(NSString *)URL {
    //: if (!URL) { return; }
    if (!URL) { return; }
    //: @synchronized (self) {
    @synchronized (self) {
        //: [[self allSessionTask] enumerateObjectsUsingBlock:^(NSURLSessionTask *_Nonnull task, NSUInteger idx, BOOL * _Nonnull stop) {
        [[self totaleract] enumerateObjectsUsingBlock:^(NSURLSessionTask *_Nonnull task, NSUInteger idx, BOOL * _Nonnull stop) {
            //: if ([task.currentRequest.URL.absoluteString hasPrefix:URL]) {
            if ([task.currentRequest.URL.absoluteString hasPrefix:URL]) {
                //: [task cancel];
                [task cancel];
                //: [[self allSessionTask] removeObject:task];
                [[self totaleract] removeObject:task];
                //: *stop = YES;
                *stop = YES;
            }
        //: }];
        }];
    }
}

//: #pragma mark - GET请求无缓存
#pragma mark - GET请求无缓存
//: + (NSURLSessionTask *)GET:(NSString *)URL
+ (NSURLSessionTask *)visualization:(NSString *)URL
               //: parameters:(id)parameters
               remote:(id)parameters
                  //: success:(YLHttpRequestSuccess)success
                  photographicEquipment:(YLHttpRequestSuccess)success
                  //: failure:(YLHttpRequestFailed)failure {
                  text:(YLHttpRequestFailed)failure {
    //: return [self GET:URL parameters:parameters responseCache:nil success:success failure:failure];
    return [self button:URL to:parameters recentRequestCache:nil title:success rentTingNonconformance:failure];
}

//: #pragma mark - POST请求无缓存
#pragma mark - POST请求无缓存
//: + (NSURLSessionTask *)POST:(NSString *)URL
+ (NSURLSessionTask *)stick:(NSString *)URL
                //: parameters:(id)parameters
                view:(id)parameters
                   //: success:(YLHttpRequestSuccess)success
                   tag:(YLHttpRequestSuccess)success
                   //: failure:(YLHttpRequestFailed)failure {
                   by:(YLHttpRequestFailed)failure {
    //: return [self POST:URL parameters:parameters responseCache:nil success:success failure:failure];
    return [self we:URL show:parameters limit:nil atFailure:success numberRequestFailed:failure];
}

//: #pragma mark - GET请求自动缓存
#pragma mark - GET请求自动缓存
//: + (NSURLSessionTask *)GET:(NSString *)URL
+ (NSURLSessionTask *)button:(NSString *)URL
               //: parameters:(id)parameters
               to:(id)parameters
            //: responseCache:(YLHttpRequestCache)responseCache
            recentRequestCache:(YLHttpRequestCache)responseCache
                  //: success:(YLHttpRequestSuccess)success
                  title:(YLHttpRequestSuccess)success
                  //: failure:(YLHttpRequestFailed)failure {
                  rentTingNonconformance:(YLHttpRequestFailed)failure {

    //: [self setResponseSerializer:(YLResponseSerializerHTTP)];
    [self setPatronymicMy:(YLResponseSerializerHTTP)];

    //: NSURLSessionTask *sessionTask = [_sessionManager GET:URL parameters:parameters headers:nil progress:^(NSProgress * _Nonnull uploadProgress) {
    NSURLSessionTask *sessionTask = [kConst_rootValue GET:URL parameters:parameters headers:nil progress:^(NSProgress * _Nonnull uploadProgress) {

    //: } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "14:50:48" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"responseObject = %@",responseObject] UTF8String]);}
        if (kConst_labelText) {printf("[%s] %s [第%d行]: %s\n", "14:50:48" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:StringFromArrestData(&kStr_confusionData),responseObject] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self totaleract] removeObject:task];
        //: success ? success(responseObject) : nil;
        success ? success(responseObject) : nil;

    //: } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "14:50:48" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"error = %@",error] UTF8String]);}
        if (kConst_labelText) {printf("[%s] %s [第%d行]: %s\n", "14:50:48" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:StringFromArrestData(&kStr_involvedContent),error] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self totaleract] removeObject:task];
        //: failure ? failure(error) : nil;
        failure ? failure(error) : nil;

    //: }];
    }];
    // 添加sessionTask到数组
    //: sessionTask ? [[self allSessionTask] addObject:sessionTask] : nil ;
    sessionTask ? [[self totaleract] addObject:sessionTask] : nil ;

    //: return sessionTask;
    return sessionTask;
}

//: #pragma mark - POST请求自动缓存
#pragma mark - POST请求自动缓存
//: + (NSURLSessionTask *)POST:(NSString *)URL
+ (NSURLSessionTask *)we:(NSString *)URL
                //: parameters:(id)parameters
                show:(id)parameters
             //: responseCache:(YLHttpRequestCache)responseCache
             limit:(YLHttpRequestCache)responseCache
                   //: success:(YLHttpRequestSuccess)success
                   atFailure:(YLHttpRequestSuccess)success
                   //: failure:(YLHttpRequestFailed)failure {
                   numberRequestFailed:(YLHttpRequestFailed)failure {

    //: [self setResponseSerializer:(YLResponseSerializerJSON)];
    [self setPatronymicMy:(YLResponseSerializerJSON)];

    //: NSURLSessionTask *sessionTask = [_sessionManager POST:URL parameters:parameters headers:nil progress:^(NSProgress * _Nonnull uploadProgress) {
    NSURLSessionTask *sessionTask = [kConst_rootValue POST:URL parameters:parameters headers:nil progress:^(NSProgress * _Nonnull uploadProgress) {

    //: } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "14:50:48" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"responseObject = %@",responseObject] UTF8String]);}
        if (kConst_labelText) {printf("[%s] %s [第%d行]: %s\n", "14:50:48" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:StringFromArrestData(&kStr_confusionData),responseObject] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self totaleract] removeObject:task];
        //: success ? success(responseObject) : nil;
        success ? success(responseObject) : nil;

    //: } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "14:50:48" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"error = %@",error] UTF8String]);}
        if (kConst_labelText) {printf("[%s] %s [第%d行]: %s\n", "14:50:48" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:StringFromArrestData(&kStr_involvedContent),error] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self totaleract] removeObject:task];
        //: failure ? failure(error) : nil;
        failure ? failure(error) : nil;

    //: }];
    }];

    // 添加最新的sessionTask到数组
    //: sessionTask ? [[self allSessionTask] addObject:sessionTask] : nil ;
    sessionTask ? [[self totaleract] addObject:sessionTask] : nil ;
    //: return sessionTask;
    return sessionTask;
}

//: #pragma mark - 上传文件
#pragma mark - 上传文件
//: + (NSURLSessionTask *)uploadFileWithURL:(NSString *)URL
+ (NSURLSessionTask *)show:(NSString *)URL
                             //: parameters:(id)parameters
                             metadata:(id)parameters
                                   //: name:(NSString *)name
                                   atStraightAndNarrow:(NSString *)name
                               //: filePath:(NSString *)filePath
                               maxHadithThread:(NSString *)filePath
                               //: progress:(YLHttpProgress)progress
                               airshipHttpProgress:(YLHttpProgress)progress
                                //: success:(YLHttpRequestSuccess)success
                                relapsing:(YLHttpRequestSuccess)success
                                //: failure:(YLHttpRequestFailed)failure {
                                progress:(YLHttpRequestFailed)failure {

    //: NSURLSessionTask *sessionTask = [_sessionManager POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {
    NSURLSessionTask *sessionTask = [kConst_rootValue POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {
        //: NSError *error = nil;
        NSError *error = nil;
        //: [formData appendPartWithFileURL:[NSURL URLWithString:filePath] name:name error:&error];
        [formData appendPartWithFileURL:[NSURL URLWithString:filePath] name:name error:&error];
        //: (failure && error) ? failure(error) : nil;
        (failure && error) ? failure(error) : nil;
    //: } progress:^(NSProgress * _Nonnull uploadProgress) {
    } progress:^(NSProgress * _Nonnull uploadProgress) {
        //上传进度
        //: dispatch_sync(dispatch_get_main_queue(), ^{
        dispatch_sync(dispatch_get_main_queue(), ^{
            //: progress ? progress(uploadProgress) : nil;
            progress ? progress(uploadProgress) : nil;
        //: });
        });
    //: } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "14:50:48" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"responseObject = %@",responseObject] UTF8String]);}
        if (kConst_labelText) {printf("[%s] %s [第%d行]: %s\n", "14:50:48" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:StringFromArrestData(&kStr_confusionData),responseObject] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self totaleract] removeObject:task];
        //: success ? success(responseObject) : nil;
        success ? success(responseObject) : nil;

    //: } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "14:50:48" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"error = %@",error] UTF8String]);}
        if (kConst_labelText) {printf("[%s] %s [第%d行]: %s\n", "14:50:48" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:StringFromArrestData(&kStr_involvedContent),error] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self totaleract] removeObject:task];
        //: failure ? failure(error) : nil;
        failure ? failure(error) : nil;
    //: }];
    }];

    // 添加sessionTask到数组
    //: sessionTask ? [[self allSessionTask] addObject:sessionTask] : nil ;
    sessionTask ? [[self totaleract] addObject:sessionTask] : nil ;

    //: return sessionTask;
    return sessionTask;
}

//: + (__kindof NSURLSessionTask *)uploadVideoWithURL:(NSString *)URL
+ (__kindof NSURLSessionTask *)opticTransmissionFailure:(NSString *)URL
                                      //: parameters:(id)parameters
                                      backgroundId:(id)parameters
                                           //: video:(NSString *)videoPath
                                           sitting:(NSString *)videoPath
                                           //: thumb:(UIImage *)thumb
                                           nobble:(UIImage *)thumb
                                        //: progress:(YLHttpProgress)progress
                                        towardHolder:(YLHttpProgress)progress
                                         //: success:(YLHttpRequestSuccess)success
                                         anMessage:(YLHttpRequestSuccess)success
                                         //: failure:(YLHttpRequestFailed)failure {
                                         thumb:(YLHttpRequestFailed)failure {
    //: NSURLSessionTask *sessionTask = [_sessionManager POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {
    NSURLSessionTask *sessionTask = [kConst_rootValue POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {

        //: NSError *error = nil;
        NSError *error = nil;
        //: [formData appendPartWithFileURL:[NSURL fileURLWithPath:videoPath isDirectory:NO] name:@"video" error:&error];
        [formData appendPartWithFileURL:[NSURL fileURLWithPath:videoPath isDirectory:NO] name:StringFromArrestData(&kStr_passFactValue) error:&error];
        //: (failure && error) ? failure(error) : nil;
        (failure && error) ? failure(error) : nil;

        //: NSData *thumbData = UIImageJPEGRepresentation(thumb, 1.f);
        NSData *thumbData = UIImageJPEGRepresentation(thumb, 1.f);
        //: [formData appendPartWithFileData:thumbData
        [formData appendPartWithFileData:thumbData
                                    //: name:@"thumb"
                                    name:StringFromArrestData(&kStr_shellHistoricallyContent)
                                //: fileName:@"thumb.jpg"
                                fileName:StringFromArrestData(&kStr_beachDenialName)
                                //: mimeType:[NSString stringWithFormat:@"image/jpg"]];
                                mimeType:[NSString stringWithFormat:StringFromArrestData(&kStr_physicValue)]];

    //: } progress:^(NSProgress * _Nonnull uploadProgress) {
    } progress:^(NSProgress * _Nonnull uploadProgress) {
        //上传进度
        //: dispatch_sync(dispatch_get_main_queue(), ^{
        dispatch_sync(dispatch_get_main_queue(), ^{
            //: progress ? progress(uploadProgress) : nil;
            progress ? progress(uploadProgress) : nil;
        //: });
        });
    //: } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "14:50:48" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"responseObject = %@",responseObject] UTF8String]);}
        if (kConst_labelText) {printf("[%s] %s [第%d行]: %s\n", "14:50:48" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:StringFromArrestData(&kStr_confusionData),responseObject] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self totaleract] removeObject:task];
        //: success ? success(responseObject) : nil;
        success ? success(responseObject) : nil;

    //: } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "14:50:48" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"error = %@",error] UTF8String]);}
        if (kConst_labelText) {printf("[%s] %s [第%d行]: %s\n", "14:50:48" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:StringFromArrestData(&kStr_involvedContent),error] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self totaleract] removeObject:task];
        //: failure ? failure(error) : nil;
        failure ? failure(error) : nil;
    //: }];
    }];

    // 添加sessionTask到数组
    //: sessionTask ? [[self allSessionTask] addObject:sessionTask] : nil ;
    sessionTask ? [[self totaleract] addObject:sessionTask] : nil ;

    //: return sessionTask;
    return sessionTask;
}

/**
 *  上传多个文件
 *
 *  @param URL        请求地址
 *  @param parameters 请求参数
 *  @param files      文件 <文件对应服务器上的字段, 文件本地的沙盒路径>
 *  @param progress   上传进度信息
 *  @param success    请求成功的回调
 *  @param failure    请求失败的回调
 *
 *  @return 返回的对象可取消请求,调用cancel方法
 */
//: + (__kindof NSURLSessionTask *)uploadFilesWithURL:(NSString *)URL
+ (__kindof NSURLSessionTask *)message:(NSString *)URL
                                       //: parameters:(id)parameters
                                       green:(id)parameters
                                            //: files:(NSDictionary<NSString*, NSString*> *)files
                                            storageAppPhase:(NSDictionary<NSString*, NSString*> *)files
                                         //: progress:(YLHttpProgress)progress
                                         status:(YLHttpProgress)progress
                                          //: success:(YLHttpRequestSuccess)success
                                          to:(YLHttpRequestSuccess)success
                                          //: failure:(YLHttpRequestFailed)failure {
                                          bar:(YLHttpRequestFailed)failure {
    //: NSURLSessionTask *sessionTask = [_sessionManager POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {
    NSURLSessionTask *sessionTask = [kConst_rootValue POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {
        //: NSError *error = nil;
        NSError *error = nil;

        //: for (NSString * key in files) {
        for (NSString * key in files) {
            //: NSString * value = [files objectForKey:key];
            NSString * value = [files objectForKey:key];
            //: [formData appendPartWithFileURL:[NSURL URLWithString:value] name:key error:&error];
            [formData appendPartWithFileURL:[NSURL URLWithString:value] name:key error:&error];

            //: if (error) {
            if (error) {
                //: break;
                break;
            }
        }

        //: (failure && error) ? failure(error) : nil;
        (failure && error) ? failure(error) : nil;
    //: } progress:^(NSProgress * _Nonnull uploadProgress) {
    } progress:^(NSProgress * _Nonnull uploadProgress) {
        //上传进度
        //: dispatch_sync(dispatch_get_main_queue(), ^{
        dispatch_sync(dispatch_get_main_queue(), ^{
            //: progress ? progress(uploadProgress) : nil;
            progress ? progress(uploadProgress) : nil;
        //: });
        });
    //: } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "14:50:48" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"responseObject = %@",responseObject] UTF8String]);}
        if (kConst_labelText) {printf("[%s] %s [第%d行]: %s\n", "14:50:48" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:StringFromArrestData(&kStr_confusionData),responseObject] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self totaleract] removeObject:task];
        //: success ? success(responseObject) : nil;
        success ? success(responseObject) : nil;

    //: } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "14:50:48" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"error = %@",error] UTF8String]);}
        if (kConst_labelText) {printf("[%s] %s [第%d行]: %s\n", "14:50:48" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:StringFromArrestData(&kStr_involvedContent),error] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self totaleract] removeObject:task];
        //: failure ? failure(error) : nil;
        failure ? failure(error) : nil;
    //: }];
    }];

    // 添加sessionTask到数组
    //: sessionTask ? [[self allSessionTask] addObject:sessionTask] : nil ;
    sessionTask ? [[self totaleract] addObject:sessionTask] : nil ;

    //: return sessionTask;
    return sessionTask;
}



//: #pragma mark - 上传单张图片
#pragma mark - 上传单张图片
//: + (NSURLSessionTask *)uploadImageWithURL:(NSString *)URL parameters:(id)parameters name:(NSString *)name data:(NSData *)data fileName:(NSString *)fileName imageType:(NSString *)imageType progress:(YLHttpProgress)progress success:(YLHttpRequestSuccess)success failure:(YLHttpRequestFailed)failure
+ (NSURLSessionTask *)compartment:(NSString *)URL recording:(id)parameters key:(NSString *)name at:(NSData *)data upload:(NSString *)fileName retort:(NSString *)imageType cradle:(YLHttpProgress)progress label:(YLHttpRequestSuccess)success surname:(YLHttpRequestFailed)failure
{
    //: NSURLSessionTask *sessionTask = [_sessionManager POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {
    NSURLSessionTask *sessionTask = [kConst_rootValue POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {

        // 默认图片的文件名, 若fileNames为nil就使用

        //: NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
        NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
        //: formatter.dateFormat = @"yyyyMMddHHmmss";
        formatter.dateFormat = StringFromArrestData(&kStr_tilSumByTitle);
        //: NSString *str = [formatter stringFromDate:[NSDate date]];
        NSString *str = [formatter stringFromDate:[NSDate date]];
        //: NSString *imageFileName = [NSString stringWithFormat:@"%@.%@",str,imageType?:@"jpg"];
        NSString *imageFileName = [NSString stringWithFormat:@"%@.%@",str,imageType?:StringFromArrestData(&kStr_wheelTitle)];

        //: [formData appendPartWithFileData:data
        [formData appendPartWithFileData:data
                                    //: name:name
                                    name:name
                                //: fileName:fileName ? [NSString stringWithFormat:@"%@.%@",fileName,imageType?:@"jpg"] : imageFileName
                                fileName:fileName ? [NSString stringWithFormat:@"%@.%@",fileName,imageType?:StringFromArrestData(&kStr_wheelTitle)] : imageFileName
                                //: mimeType:[NSString stringWithFormat:@"image/%@",imageType ?: @"jpg"]];
                                mimeType:[NSString stringWithFormat:StringFromArrestData(&kStr_mysteryData),imageType ?: StringFromArrestData(&kStr_wheelTitle)]];

    //: } progress:^(NSProgress * _Nonnull uploadProgress) {
    } progress:^(NSProgress * _Nonnull uploadProgress) {
        //上传进度
        //: dispatch_sync(dispatch_get_main_queue(), ^{
        dispatch_sync(dispatch_get_main_queue(), ^{
            //: progress ? progress(uploadProgress) : nil;
            progress ? progress(uploadProgress) : nil;
        //: });
        });
    //: } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "14:50:48" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"responseObject = %@",responseObject] UTF8String]);}
        if (kConst_labelText) {printf("[%s] %s [第%d行]: %s\n", "14:50:48" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:StringFromArrestData(&kStr_confusionData),responseObject] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self totaleract] removeObject:task];
        //: success ? success(responseObject) : nil;
        success ? success(responseObject) : nil;

    //: } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "14:50:48" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"error = %@",error] UTF8String]);}
        if (kConst_labelText) {printf("[%s] %s [第%d行]: %s\n", "14:50:48" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:StringFromArrestData(&kStr_involvedContent),error] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self totaleract] removeObject:task];
        //: failure ? failure(error) : nil;
        failure ? failure(error) : nil;
    //: }];
    }];

    // 添加sessionTask到数组
    //: sessionTask ? [[self allSessionTask] addObject:sessionTask] : nil ;
    sessionTask ? [[self totaleract] addObject:sessionTask] : nil ;

    //: return sessionTask;
    return sessionTask;
}


//: #pragma mark - 上传多张图片
#pragma mark - 上传多张图片
//: + (NSURLSessionTask *)uploadImagesWithURL:(NSString *)URL
+ (NSURLSessionTask *)replacement:(NSString *)URL
                               //: parameters:(id)parameters
                               electronicText:(id)parameters
                                     //: name:(NSString *)name
                                     color:(NSString *)name
                                   //: images:(NSArray<UIImage *> *)images
                                   counterchange:(NSArray<UIImage *> *)images
                                //: fileNames:(NSArray<NSString *> *)fileNames
                                date:(NSArray<NSString *> *)fileNames
                               //: imageScale:(CGFloat)imageScale
                               sendMode:(CGFloat)imageScale
                                //: imageType:(NSString *)imageType
                                tableBy:(NSString *)imageType
                                 //: progress:(YLHttpProgress)progress
                                 chromatic:(YLHttpProgress)progress
                                  //: success:(YLHttpRequestSuccess)success
                                  message:(YLHttpRequestSuccess)success
                                  //: failure:(YLHttpRequestFailed)failure {
                                  disguise:(YLHttpRequestFailed)failure {
    //: NSURLSessionTask *sessionTask = [_sessionManager POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {
    NSURLSessionTask *sessionTask = [kConst_rootValue POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {

        //: for (NSUInteger i = 0; i < images.count; i++) {
        for (NSUInteger i = 0; i < images.count; i++) {
            // 图片经过等比压缩后得到的二进制文件
            //: NSData *imageData = UIImageJPEGRepresentation(images[i], imageScale ?: 1.f);
            NSData *imageData = UIImageJPEGRepresentation(images[i], imageScale ?: 1.f);
            // 默认图片的文件名, 若fileNames为nil就使用

            //: NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
            NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
            //: formatter.dateFormat = @"yyyyMMddHHmmss";
            formatter.dateFormat = StringFromArrestData(&kStr_tilSumByTitle);
            //: NSString *str = [formatter stringFromDate:[NSDate date]];
            NSString *str = [formatter stringFromDate:[NSDate date]];
            //: NSString *imageFileName = [NSString stringWithFormat:@"%@%ld.%@",str,i,imageType?:@"jpg"];
            NSString *imageFileName = [NSString stringWithFormat:@"%@%ld.%@",str,i,imageType?:StringFromArrestData(&kStr_wheelTitle)];

            //: [formData appendPartWithFileData:imageData
            [formData appendPartWithFileData:imageData
                                        //: name:[NSString stringWithFormat:@"%@%ld", name, i]
                                        name:[NSString stringWithFormat:@"%@%ld", name, i]
                                    //: fileName:fileNames ? [NSString stringWithFormat:@"%@.%@",fileNames[i],imageType?:@"jpg"] : imageFileName
                                    fileName:fileNames ? [NSString stringWithFormat:@"%@.%@",fileNames[i],imageType?:StringFromArrestData(&kStr_wheelTitle)] : imageFileName
                                    //: mimeType:[NSString stringWithFormat:@"image/%@",imageType ?: @"jpg"]];
                                    mimeType:[NSString stringWithFormat:StringFromArrestData(&kStr_mysteryData),imageType ?: StringFromArrestData(&kStr_wheelTitle)]];
        }

    //: } progress:^(NSProgress * _Nonnull uploadProgress) {
    } progress:^(NSProgress * _Nonnull uploadProgress) {
        //上传进度
        //: dispatch_sync(dispatch_get_main_queue(), ^{
        dispatch_sync(dispatch_get_main_queue(), ^{
            //: progress ? progress(uploadProgress) : nil;
            progress ? progress(uploadProgress) : nil;
        //: });
        });
    //: } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "14:50:48" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"responseObject = %@",responseObject] UTF8String]);}
        if (kConst_labelText) {printf("[%s] %s [第%d行]: %s\n", "14:50:48" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:StringFromArrestData(&kStr_confusionData),responseObject] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self totaleract] removeObject:task];
        //: success ? success(responseObject) : nil;
        success ? success(responseObject) : nil;

    //: } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "14:50:48" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"error = %@",error] UTF8String]);}
        if (kConst_labelText) {printf("[%s] %s [第%d行]: %s\n", "14:50:48" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:StringFromArrestData(&kStr_involvedContent),error] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self totaleract] removeObject:task];
        //: failure ? failure(error) : nil;
        failure ? failure(error) : nil;
    //: }];
    }];

    // 添加sessionTask到数组
    //: sessionTask ? [[self allSessionTask] addObject:sessionTask] : nil ;
    sessionTask ? [[self totaleract] addObject:sessionTask] : nil ;

    //: return sessionTask;
    return sessionTask;
}

//: #pragma mark - 下载文件
#pragma mark - 下载文件
//: + (NSURLSessionTask *)downloadWithURL:(NSString *)URL
+ (NSURLSessionTask *)text:(NSString *)URL
                              //: fileDir:(NSString *)fileDir
                              dismiss:(NSString *)fileDir
                             //: progress:(YLHttpProgress)progress
                             combine:(YLHttpProgress)progress
                              //: success:(void(^)(NSString *))success
                              along:(void(^)(NSString *))success
                              //: failure:(YLHttpRequestFailed)failure {
                              pressedRequestFailed:(YLHttpRequestFailed)failure {
    //: NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:URL]];
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:URL]];
    //: __block NSURLSessionDownloadTask *downloadTask = [_sessionManager downloadTaskWithRequest:request progress:^(NSProgress * _Nonnull downloadProgress) {
    __block NSURLSessionDownloadTask *downloadTask = [kConst_rootValue downloadTaskWithRequest:request progress:^(NSProgress * _Nonnull downloadProgress) {
        //下载进度
        //: dispatch_sync(dispatch_get_main_queue(), ^{
        dispatch_sync(dispatch_get_main_queue(), ^{
            //: progress ? progress(downloadProgress) : nil;
            progress ? progress(downloadProgress) : nil;
        //: });
        });
    //: } destination:^NSURL * _Nonnull(NSURL * _Nonnull targetPath, NSURLResponse * _Nonnull response) {
    } destination:^NSURL * _Nonnull(NSURL * _Nonnull targetPath, NSURLResponse * _Nonnull response) {
        //拼接缓存目录
        //: NSString *downloadDir = [[NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) lastObject] stringByAppendingPathComponent:fileDir ? fileDir : @"Download"];
        NSString *downloadDir = [[NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) lastObject] stringByAppendingPathComponent:fileDir ? fileDir : StringFromArrestData(&kStr_diplomaticText)];
        //打开文件管理器
        //: NSFileManager *fileManager = [NSFileManager defaultManager];
        NSFileManager *fileManager = [NSFileManager defaultManager];
        //创建Download目录
        //: [fileManager createDirectoryAtPath:downloadDir withIntermediateDirectories:YES attributes:nil error:nil];
        [fileManager createDirectoryAtPath:downloadDir withIntermediateDirectories:YES attributes:nil error:nil];
        //拼接文件路径
        //: NSString *filePath = [downloadDir stringByAppendingPathComponent:response.suggestedFilename];
        NSString *filePath = [downloadDir stringByAppendingPathComponent:response.suggestedFilename];
        //返回文件位置的URL路径
        //: return [NSURL fileURLWithPath:filePath];
        return [NSURL fileURLWithPath:filePath];

    //: } completionHandler:^(NSURLResponse * _Nonnull response, NSURL * _Nullable filePath, NSError * _Nullable error) {
    } completionHandler:^(NSURLResponse * _Nonnull response, NSURL * _Nullable filePath, NSError * _Nullable error) {

        //: [[self allSessionTask] removeObject:downloadTask];
        [[self totaleract] removeObject:downloadTask];
        //: if(failure && error) {failure(error) ; return ;};
        if(failure && error) {failure(error) ; return ;};
        //: success ? success(filePath.absoluteString /|** NSURL->NSString*|/) : nil;
        success ? success(filePath.absoluteString /** NSURL->NSString*/) : nil;

    //: }];
    }];
    //开始下载
    //: [downloadTask resume];
    [downloadTask resume];
    // 添加sessionTask到数组
    //: downloadTask ? [[self allSessionTask] addObject:downloadTask] : nil ;
    downloadTask ? [[self totaleract] addObject:downloadTask] : nil ;

    //: return downloadTask;
    return downloadTask;
}

/**
 存储着所有的请求task数组
 */
//: + (NSMutableArray *)allSessionTask {
+ (NSMutableArray *)totaleract {
    //: if (!_allSessionTask) {
    if (!kConst_makeTitle) {
        //: _allSessionTask = [[NSMutableArray alloc] init];
        kConst_makeTitle = [[NSMutableArray alloc] init];
    }
    //: return _allSessionTask;
    return kConst_makeTitle;
}

//: #pragma mark - 初始化AFHTTPSessionManager相关属性
#pragma mark - 初始化AFHTTPSessionManager相关属性
/**
 开始监测网络状态
 */
//: + (void)load {
+ (void)load {
    //: [[AFNetworkReachabilityManager sharedManager] startMonitoring];
    [[AFNetworkReachabilityManager sharedManager] startMonitoring];
}
/**
 *  所有的HTTP请求共享一个AFHTTPSessionManager
 *  原理参考地址:http://www.jianshu.com/p/5969bbb4af9f
 */
//: + (void)initialize {
+ (void)initialize {
    //: _sessionManager = [AFHTTPSessionManager manager];
    kConst_rootValue = [AFHTTPSessionManager manager];
    //: _sessionManager.requestSerializer.timeoutInterval = 15.f;
    kConst_rootValue.requestSerializer.timeoutInterval = 15.f;
    //: _sessionManager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json", @"text/html", @"text/json", @"text/plain", @"text/javascript", @"text/xml", @"image/|*", nil];
    kConst_rootValue.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:StringFromArrestData(&kStr_rubValue), StringFromArrestData(&kStr_attendanceName), StringFromArrestData(&kStr_platProceedContent), StringFromArrestData(&kStr_ambitFastData), StringFromArrestData(&kStr_possessValue), StringFromArrestData(&kStr_tacticHimselfContent), StringFromArrestData(&kStr_plateTeenText), nil];
    // 打开状态栏的等待菊花
    //: [AFNetworkActivityIndicatorManager sharedManager].enabled = YES;
    [AFNetworkActivityIndicatorManager sharedManager].enabled = YES;
}

//: #pragma mark - 重置AFHTTPSessionManager相关属性
#pragma mark - 重置AFHTTPSessionManager相关属性

//: + (void)setAFHTTPSessionManagerProperty:(void (^)(AFHTTPSessionManager *))sessionManager {
+ (void)setAnagram:(void (^)(AFHTTPSessionManager *))sessionManager {
    //: sessionManager ? sessionManager(_sessionManager) : nil;
    sessionManager ? sessionManager(kConst_rootValue) : nil;
}

//: + (void)setRequestSerializer:(YLRequestSerializer)requestSerializer {
+ (void)setSuperimpose:(YLRequestSerializer)requestSerializer {
    //: _sessionManager.requestSerializer = requestSerializer==YLRequestSerializerHTTP ? [AFHTTPRequestSerializer serializer] : [AFJSONRequestSerializer serializer];
    kConst_rootValue.requestSerializer = requestSerializer==YLRequestSerializerHTTP ? [AFHTTPRequestSerializer serializer] : [AFJSONRequestSerializer serializer];
}

//: + (void)setResponseSerializer:(YLResponseSerializer)responseSerializer {
+ (void)setPatronymicMy:(YLResponseSerializer)responseSerializer {
    //: _sessionManager.responseSerializer = responseSerializer==YLResponseSerializerHTTP ? [AFHTTPResponseSerializer serializer] : [AFJSONResponseSerializer serializer];
    kConst_rootValue.responseSerializer = responseSerializer==YLResponseSerializerHTTP ? [AFHTTPResponseSerializer serializer] : [AFJSONResponseSerializer serializer];
}

//: + (void)setRequestTimeoutInterval:(NSTimeInterval)time {
+ (void)setSumervalText:(NSTimeInterval)time {
    //: _sessionManager.requestSerializer.timeoutInterval = time;
    kConst_rootValue.requestSerializer.timeoutInterval = time;
}

//: + (void)setValue:(NSString *)value forHTTPHeaderField:(NSString *)field {
+ (void)grainfield:(NSString *)value unwelcome:(NSString *)field {
    //: [_sessionManager.requestSerializer setValue:value forHTTPHeaderField:field];
    [kConst_rootValue.requestSerializer setValue:value forHTTPHeaderField:field];
}

//: + (void)openNetworkActivityIndicator:(BOOL)open {
+ (void)fromStatus:(BOOL)open {
    //: [[AFNetworkActivityIndicatorManager sharedManager] setEnabled:open];
    [[AFNetworkActivityIndicatorManager sharedManager] setEnabled:open];
}

//: + (void)setSecurityPolicyWithCerPath:(NSString *)cerPath validatesDomainName:(BOOL)validatesDomainName {
+ (void)searched:(NSString *)cerPath asComplete:(BOOL)validatesDomainName {
    //: NSData *cerData = [NSData dataWithContentsOfFile:cerPath];
    NSData *cerData = [NSData dataWithContentsOfFile:cerPath];
    // 使用证书验证模式
    //: AFSecurityPolicy *securityPolicy = [AFSecurityPolicy policyWithPinningMode:AFSSLPinningModeCertificate];
    AFSecurityPolicy *securityPolicy = [AFSecurityPolicy policyWithPinningMode:AFSSLPinningModeCertificate];
    // 如果需要验证自建证书(无效证书)，需要设置为YES
    //: securityPolicy.allowInvalidCertificates = YES;
    securityPolicy.allowInvalidCertificates = YES;
    // 是否需要验证域名，默认为YES;
    //: securityPolicy.validatesDomainName = validatesDomainName;
    securityPolicy.validatesDomainName = validatesDomainName;
    //: securityPolicy.pinnedCertificates = [[NSSet alloc] initWithObjects:cerData, nil];
    securityPolicy.pinnedCertificates = [[NSSet alloc] initWithObjects:cerData, nil];

    //: [_sessionManager setSecurityPolicy:securityPolicy];
    [kConst_rootValue setSecurityPolicy:securityPolicy];
}

//: @end
@end


//: #pragma mark - NSDictionary,NSArray的分类
#pragma mark - NSDictionary,NSArray的分类
/*
 ************************************************************************************
 *新建NSDictionary与NSArray的分类, 控制台打印json数据中的中文
 ************************************************************************************
 */


//: @implementation NSArray (PP)
@implementation NSArray (PP)

//: - (NSString *)descriptionWithLocale:(id)locale {
- (NSString *)descriptionWithLocale:(id)locale {
    //: NSMutableString *strM = [NSMutableString stringWithString:@"(\n"];
    NSMutableString *strM = [NSMutableString stringWithString:@"(\n"];
    //: [self enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
    [self enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        //: [strM appendFormat:@"\t%@,\n", obj];
        [strM appendFormat:@"\t%@,\n", obj];
    //: }];
    }];
    //: [strM appendString:@")"];
    [strM appendString:@")"];

    //: return strM;
    return strM;
}

//: @end
@end

//: @implementation NSDictionary (PP)
@implementation NSDictionary (PP)

//: - (NSString *)descriptionWithLocale:(id)locale {
- (NSString *)descriptionWithLocale:(id)locale {
    //: NSMutableString *strM = [NSMutableString stringWithString:@"{\n"];
    NSMutableString *strM = [NSMutableString stringWithString:@"{\n"];
    //: [self enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop) {
    [self enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop) {
        //: [strM appendFormat:@"\t%@ = %@;\n", key, obj];
        [strM appendFormat:@"\t%@ = %@;\n", key, obj];
    //: }];
    }];

    //: [strM appendString:@"}\n"];
    [strM appendString:@"}\n"];

    //: return strM;
    return strM;
}
//: @end
@end

Byte *ArrestDataToByte(ArrestData *data) {
    if (data->personality) return data->dit;
    for (int i = 0; i < data->indispensable; i++) {
        data->dit[i] ^= data->second;
    }
    data->dit[data->indispensable] = 0;
    data->personality = true;
    return data->dit;
}

NSString *StringFromArrestData(ArrestData *data) {
    return [NSString stringWithUTF8String:(char *)ArrestDataToByte(data)];
}
