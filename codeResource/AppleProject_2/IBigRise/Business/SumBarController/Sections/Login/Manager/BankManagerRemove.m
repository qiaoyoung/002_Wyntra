
#import <Foundation/Foundation.h>

NSString *StringFromDecreaseData(Byte *data);


//: tyl_NTESLoginData
Byte kStr_tapImageShootData[] = {67, 17, 6, 164, 167, 22, 97, 116, 97, 68, 110, 105, 103, 111, 76, 83, 69, 84, 78, 95, 108, 121, 116, 221};

// __DEBUG__
// __CLOSE_PRINT__
//
//  BankManagerRemove.m
//  NIM
//
//  Created by amao on 5/26/15.
//  Copyright (c) 2015 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZZZCCCLoginManager.h"
#import "BankManagerRemove.h"
//: #import "NTESFileLocationHelper.h"
#import "FileWithAddCell.h"

//: @interface NTESLoginData ()
@interface EmptyShare ()

//: @end
@end

//: @implementation NTESLoginData
@implementation EmptyShare

//: - (BOOL)isValid {
- (BOOL)mortal {
    //: if (_authType == NIMSDKAuthTypeDefault) {
    if (_authType == NIMSDKAuthTypeDefault) {
        //: return [_account length] && [_token length];
        return [_account length] && [_token length];
    }

    //: if (_authType == NIMSDKAuthTypeDynamicToken) {
    if (_authType == NIMSDKAuthTypeDynamicToken) {
        //: return [_account length] && [_token length];
        return [_account length] && [_token length];
    }

    //: if (_authType == NIMSDKAuthTypeThirdParty) {
    if (_authType == NIMSDKAuthTypeThirdParty) {
        //: return [_account length] && [_token length] && [_loginExtension length];
        return [_account length] && [_token length] && [_loginExtension length];
    }

    //: return NO;
    return NO;
}
//: @end
@end



//: @implementation ZZZCCCLoginManager
@implementation BankManagerRemove

//: + (instancetype)sharedManager
+ (instancetype)origin
{
    //: static ZZZCCCLoginManager *instance = nil;
    static BankManagerRemove *instance = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: instance = [[ZZZCCCLoginManager alloc] init];
        instance = [[BankManagerRemove alloc] init];
    //: });
    });
    //: return instance;
    return instance;
}


//: - (instancetype)init
- (instancetype)init
{
    //: if (self = [super init])
    if (self = [super init])
    {
        //: [self readData];
        [self collection];
    }
    //: return self;
    return self;
}


//: - (void)setCurrentLoginData:(NTESLoginData *)currentLoginData
- (void)setCurrentLoginData:(EmptyShare *)currentLoginData
{
    //: _currentLoginData = currentLoginData;
    _currentLoginData = currentLoginData;
    //: [self saveData];
    [self total];
}

//从文件中读取和保存用户名密码,建议上层开发对这个地方做加密,DEMO只为了做示范,所以没加密
//: - (void)readData
- (void)collection
{
    //: NSDictionary *loginDataDic = [[NSUserDefaults standardUserDefaults] objectForKey:@"tyl_NTESLoginData"];
    NSDictionary *loginDataDic = [[NSUserDefaults standardUserDefaults] objectForKey:StringFromDecreaseData(kStr_tapImageShootData)];
    //: if (loginDataDic) {
    if (loginDataDic) {
        //: _currentLoginData = [NTESLoginData yy_modelWithDictionary:loginDataDic];
        _currentLoginData = [EmptyShare yy_modelWithDictionary:loginDataDic];
    }
}

//: - (void)saveData
- (void)total
{
    //: if (_currentLoginData)
    if (_currentLoginData)
    {
        //: [[NSUserDefaults standardUserDefaults] setObject:[_currentLoginData yy_modelToJSONObject] forKey:@"tyl_NTESLoginData"];
        [[NSUserDefaults standardUserDefaults] setObject:[_currentLoginData yy_modelToJSONObject] forKey:StringFromDecreaseData(kStr_tapImageShootData)];
    }
}


//: @end
@end

Byte * DecreaseDataToCache(Byte *data) {
    int menu = data[0];
    int elsewhere = data[1];
    int viseFib = data[2];
    if (!menu) return data + viseFib;
    for (int i = 0; i < elsewhere / 2; i++) {
        int begin = viseFib + i;
        int end = viseFib + elsewhere - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[viseFib + elsewhere] = 0;
    return data + viseFib;
}

NSString *StringFromDecreaseData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)DecreaseDataToCache(data)];
}  
