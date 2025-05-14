// __DEBUG__
// __CLOSE_PRINT__
//
//  GoopView.h
//  hualiaoshi
//
//  Created by imim on 2017/12/22.
//  Copyright © 2017年 ali.com. All rights reserved.
//
//#import "TYLSercetChatConfig.h"
//#define RestApi(api) [[On sharedKit].webHost stringByAppendingString:api]

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: extern __attribute__((visibility ("default"))) NSString * RestApi(NSString *api);
extern __attribute__((visibility ("default"))) NSString * RestApi(NSString *api);


//: @interface RestUtil : NSObject
@interface GoopView : NSObject

/**
 请求成功的block
 
 @param info     返回信息
 @param response 响应体数据
 */
//: typedef void(^YLRestSuccess)(id data);
typedef void(^YLRestSuccess)(id data);
/**
 请求失败的block
 
 @param extInfo 扩展信息
 */
//: typedef void(^YLRestFail)(int code, NSString *msg);
typedef void(^YLRestFail)(int code, NSString *msg);

//: + (NSURLSessionTask *)post:(NSString *)url params:(NSDictionary *)params success:(YLRestSuccess)success fail:(YLRestFail)fail;
+ (NSURLSessionTask *)by:(NSString *)url constituent:(NSDictionary *)params infoRestSuccess:(YLRestSuccess)success tingFail:(YLRestFail)fail;

//: + (NSURLSessionTask *)get:(NSString *)url params:(NSDictionary *)params success:(YLRestSuccess)success fail:(YLRestFail)fail;
+ (NSURLSessionTask *)container:(NSString *)url will:(NSDictionary *)params fail:(YLRestSuccess)success nameRestFail:(YLRestFail)fail;

//: + (NSURLSessionTask *)upload:(NSString *)url params:(NSDictionary *)params images:(NSArray *)images success:(YLRestSuccess)success fail:(YLRestFail)fail;
+ (NSURLSessionTask *)naturalEvent:(NSString *)url pressed:(NSDictionary *)params itemKit:(NSArray *)images messageAcross:(YLRestSuccess)success reason:(YLRestFail)fail;

//: + (NSURLSessionTask *)upload:(NSString *)url params:(NSDictionary *)params data:(NSData *)data success:(YLRestSuccess)success fail:(YLRestFail)fail;
+ (NSURLSessionTask *)label:(NSString *)url happening:(NSDictionary *)params nip:(NSData *)data team:(YLRestSuccess)success pressed:(YLRestFail)fail;

//: + (NSURLSessionTask *)upload:(NSString *)url params:(NSDictionary *)params file:(NSString *)file success:(YLRestSuccess)success fail:(YLRestFail)fail;
+ (NSURLSessionTask *)cellDownName:(NSString *)url picture:(NSDictionary *)params paramsFail:(NSString *)file show:(YLRestSuccess)success uploadFail:(YLRestFail)fail;

//: + (NSURLSessionTask *)upload:(NSString *)url params:(NSDictionary *)params files:(NSDictionary<NSString*, NSString*> *)files success:(YLRestSuccess)success fail:(YLRestFail)fail;
+ (NSURLSessionTask *)image:(NSString *)url to:(NSDictionary *)params params_strong:(NSDictionary<NSString*, NSString*> *)files chokeCrop:(YLRestSuccess)success counterval:(YLRestFail)fail;

//+ (NSURLSessionTask *)upload:(NSString *)url params:(NSDictionary *)params video:(NSString*)videoPath thumb:(UIImage*)thumb success:(YLRestSuccess)success fail:(YLRestFail)fail;

//: @end
@end