
#import <Foundation/Foundation.h>

NSString *StringFromRelevancyData(Byte *data);


//: CFBundleShortVersionString
Byte kStr_weekendKeyValue[] = {96, 26, 83, 6, 93, 225, 150, 153, 149, 200, 193, 183, 191, 184, 166, 187, 194, 197, 199, 169, 184, 197, 198, 188, 194, 193, 166, 199, 197, 188, 193, 186, 198};

// __DEBUG__
// __CLOSE_PRINT__
//
//  SureMedia.m
//  NIM
//
//  Created by Netease on 2019/10/16.
//  Copyright © 2019 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESMigrateHeader.h"
#import "SureMedia.h"
//: #import "NSDictionary+NTESJson.h"
#import "NSDictionary+ImageGreen.h"

//: static NSString *const kNTESMigrateHeaderVersion = @"version";
static NSString *const kConst_eventTitle = @"version";
//: static NSString *const kNTESMigrateHeaderTerminal = @"terminal";
static NSString *const kConst_versionValue = @"terminal";
//: static NSString *const kNTESMigrateHeaderSDKVersion = @"sdk_version";
static NSString *const kConst_allowContactName = @"sdk_version";
//: static NSString *const kNTESMigrateHeaderAPPVersion = @"app_version";
static NSString *const kConst_styleScaleText = @"app_version";
//: static NSString *const kNTESMigrateHeaderMessageCount = @"message_count";
static NSString *const kConst_kitContent = @"message_count";

//: @implementation NTESMigrateHeader
@implementation SureMedia


//: + (instancetype)initWithDefaultConfig {
+ (instancetype)initWithContainerAcross {
    //: NTESMigrateHeader *ret = [[NTESMigrateHeader alloc] init];
    SureMedia *ret = [[SureMedia alloc] init];
    //: ret.version = 0;
    ret.version = 0;
    //: ret.clientType = NIMLoginClientTypeiOS;
    ret.clientType = NIMLoginClientTypeiOS;
    //: ret.sdkVersion = [NIMSDK sharedSDK].sdkVersion;
    ret.sdkVersion = [NIMSDK sharedSDK].sdkVersion;
    //: ret.appVersion = [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"];
    ret.appVersion = [[[NSBundle mainBundle] infoDictionary] objectForKey:StringFromRelevancyData(kStr_weekendKeyValue)];
    //: return ret;
    return ret;
}

//: + (instancetype)initWithRawContent:(NSData *)data {
+ (instancetype)initWithPage:(NSData *)data {
    //: if (!data) {
    if (!data) {
        //: return nil;
        return nil;
    }
    //: id jsonData = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
    id jsonData = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
    //: if (![jsonData isKindOfClass:[NSDictionary class]]) {
    if (![jsonData isKindOfClass:[NSDictionary class]]) {
        //: return nil;
        return nil;
    }

    //: NSDictionary *dict = (NSDictionary *)jsonData;
    NSDictionary *dict = (NSDictionary *)jsonData;
    //: NTESMigrateHeader *info = [[NTESMigrateHeader alloc] init];
    SureMedia *info = [[SureMedia alloc] init];
    //: info.version = [dict jsonInteger:kNTESMigrateHeaderVersion];
    info.version = [dict plumbSum:kConst_eventTitle];
    //: info.clientType = [dict jsonInteger:kNTESMigrateHeaderTerminal];
    info.clientType = [dict plumbSum:kConst_versionValue];
    //: info.sdkVersion = [dict jsonString:kNTESMigrateHeaderSDKVersion];
    info.sdkVersion = [dict show:kConst_allowContactName];
    //: info.appVersion = [dict jsonString:kNTESMigrateHeaderAPPVersion];
    info.appVersion = [dict show:kConst_styleScaleText];
    //: info.totalInfoCount = [dict jsonInteger:kNTESMigrateHeaderMessageCount];
    info.totalInfoCount = [dict plumbSum:kConst_kitContent];
    //: return info;
    return info;
}

//: - (nullable NSData *)toRawContent {
- (nullable NSData *)light {

    //: if ([self invalid]) {
    if ([self noneWith]) {
        //: return nil;
        return nil;
    }

    //: NSMutableDictionary *dic = [NSMutableDictionary dictionary];
    NSMutableDictionary *dic = [NSMutableDictionary dictionary];
    //: dic[kNTESMigrateHeaderVersion] = @(_version);
    dic[kConst_eventTitle] = @(_version);
    //: dic[kNTESMigrateHeaderTerminal] = @(_clientType);
    dic[kConst_versionValue] = @(_clientType);
    //: dic[kNTESMigrateHeaderSDKVersion] = _sdkVersion;
    dic[kConst_allowContactName] = _sdkVersion;
    //: dic[kNTESMigrateHeaderAPPVersion] = _appVersion;
    dic[kConst_styleScaleText] = _appVersion;
    //: dic[kNTESMigrateHeaderMessageCount] = @(_totalInfoCount);
    dic[kConst_kitContent] = @(_totalInfoCount);
    //: NSData *jsonData = [NSJSONSerialization dataWithJSONObject:dic options:0 error:nil];
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:dic options:0 error:nil];
    //: return jsonData;
    return jsonData;
}

//: - (BOOL)invalid {
- (BOOL)noneWith {
    //: return (_totalInfoCount == 0 ||
    return (_totalInfoCount == 0 ||
            //: _version != 0);
            _version != 0);
}

//: @end
@end

Byte * RelevancyDataToCache(Byte *data) {
    int alongsideColor = data[0];
    int fluForbid = data[1];
    Byte layer = data[2];
    int constituent = data[3];
    if (!alongsideColor) return data + constituent;
    for (int i = constituent; i < constituent + fluForbid; i++) {
        int value = data[i] - layer;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[constituent + fluForbid] = 0;
    return data + constituent;
}

NSString *StringFromRelevancyData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)RelevancyDataToCache(data)];
}
