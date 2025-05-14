// __DEBUG__
// __CLOSE_PRINT__
//
//  ViewManager+Pin.h
//  NIM
//
//  Created by 田玉龙 on 2022/7/30.
//  Copyright © 2022 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZCHttpManager.h"
#import "ViewManager.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: typedef void(^GlobalConfigBlock)(NSDictionary *configDict);
typedef void(^GlobalConfigBlock)(NSDictionary *configDict);

//: @interface ZCHttpManager (Addtionals)
@interface ViewManager (Pin)
//: +(NSDictionary *)requestDataUserInfo:(NSDictionary *)userInfo;
+(NSDictionary *)barTitle:(NSDictionary *)userInfo;
//: +(void)changeUserInfo:(NSDictionary *)userInfo keyString:(NSString *)key valueString:(NSString *)value;
+(void)changeInput:(NSDictionary *)userInfo replyLimit:(NSString *)key message:(NSString *)value;

//: + (void)refreshRegistConfig:(GlobalConfigBlock)block;
+ (void)button:(GlobalConfigBlock)block;

//: +(void)refreshGlobalConfig:(GlobalConfigBlock)block;
+(void)with:(GlobalConfigBlock)block;

//: +(void)refreshCheckmoments:(GlobalConfigBlock)block;
+(void)color:(GlobalConfigBlock)block;//检查朋友圈权限

//: +(void)refreshSystemSetting:(GlobalConfigBlock)block;
+(void)environment:(GlobalConfigBlock)block;

//: + (void)refreshGenerateUser:(GlobalConfigBlock)block;
+ (void)contentUser:(GlobalConfigBlock)block;

//: +(void)deleteUser:(GlobalConfigBlock)block;
+(void)red:(GlobalConfigBlock)block;

//: + (void)refreshForbiddenWordsparams:(NSDictionary *)params GenerateUser:(GlobalConfigBlock)block;
+ (void)startInfo:(NSDictionary *)params text:(GlobalConfigBlock)block;

//: +(void)refreshGetBookStatus:(GlobalConfigBlock)block;
+(void)addStatus:(GlobalConfigBlock)block;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END