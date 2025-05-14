// __DEBUG__
// __CLOSE_PRINT__
//
//  ShouldMedia.h
//  fanxingxue
//
//  Created by 曹宇 on 2018/3/28.
//  Copyright © 2018年 caoyu. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @interface UserManager : NSObject
@interface ShouldMedia : NSObject
//: +(BOOL)isLogin;
+(BOOL)screen;
//: + (void)refrushNewData;
+ (void)read;
//: + (NSString *)getUserId;
+ (NSString *)record;

//: + (NSString *)getHeaderImageUrl;
+ (NSString *)option;
//: + (NSString *)getNickName;
+ (NSString *)languageDown;


//: + (void)callSevicePhoneNumber;
+ (void)userRenameFull;
//: + (NSString *)getMobileNumber;
+ (NSString *)with;

//: + (void)saveUserInfo:(id)responseObject;
+ (void)subInfo:(id)responseObject;
//: + (void)logout;
+ (void)nameShow;


//: + (NSString *)getLocaleString;
+ (NSString *)nameTitle;

//: @end
@end