
#import <Foundation/Foundation.h>
typedef struct {
    Byte wrinkle;
    Byte *midstIncreased;
    unsigned int gagRout;
    bool movableFeast;
	int styeMath;
} MerchantData;

NSString *StringFromMerchantData(MerchantData *data);


//: Webpage
MerchantData kStr_listenName = (MerchantData){37, (Byte []){114, 64, 71, 85, 68, 66, 64, 242}, 7, false, 55};


//: isregitor
MerchantData kStr_thereViewContent = (MerchantData){59, (Byte []){82, 72, 73, 94, 92, 82, 79, 84, 73, 75}, 9, false, 68};


//: appkey
MerchantData kStr_percentageText = (MerchantData){119, (Byte []){22, 7, 7, 28, 18, 14, 85}, 6, false, 245};


//: logininfo
MerchantData kStr_listenGalaxyData = (MerchantData){148, (Byte []){248, 251, 243, 253, 250, 253, 250, 242, 251, 252}, 9, false, 186};


//: e6548ec2fe71a38961430ee520b0ad47
MerchantData kStr_forestData = (MerchantData){218, (Byte []){191, 236, 239, 238, 226, 191, 185, 232, 188, 191, 237, 235, 187, 233, 226, 227, 236, 235, 238, 233, 234, 191, 191, 239, 232, 234, 184, 234, 187, 190, 238, 237, 7}, 32, false, 253};


//: NSUserDefault%@
MerchantData kStr_layerValue = (MerchantData){125, (Byte []){51, 46, 40, 14, 24, 15, 57, 24, 27, 28, 8, 17, 9, 88, 61, 184}, 15, false, 160};


//: KEKENotificationLanguageChanged
MerchantData kStr_messageIndexName = (MerchantData){76, (Byte []){7, 9, 7, 9, 2, 35, 56, 37, 42, 37, 47, 45, 56, 37, 35, 34, 0, 45, 34, 43, 57, 45, 43, 41, 15, 36, 45, 34, 43, 41, 40, 29}, 31, false, 178};


//: Hello World
MerchantData kStr_topMessageValue = (MerchantData){69, (Byte []){13, 32, 41, 41, 42, 101, 18, 42, 55, 41, 33, 13}, 11, false, 164};


//: webViewURL
MerchantData kStr_platObjectMessageData = (MerchantData){229, (Byte []){146, 128, 135, 179, 140, 128, 146, 176, 183, 169, 129}, 10, false, 226};


//: webViewTitle
MerchantData kStr_convictContent = (MerchantData){150, (Byte []){225, 243, 244, 192, 255, 243, 225, 194, 255, 226, 250, 243, 125}, 12, false, 223};


//: isclose
MerchantData kStr_instanceSizeData = (MerchantData){145, (Byte []){248, 226, 242, 253, 254, 226, 244, 181}, 7, false, 168};


//: language
MerchantData kStr_chronicShootName = (MerchantData){77, (Byte []){33, 44, 35, 42, 56, 44, 42, 40, 142}, 8, false, 88};

// __DEBUG__
// __CLOSE_PRINT__
//
//  AlongDefaults+Util.m
//  译同行
//
//  Created by 曹宇 on 2017/8/29.
//  Copyright © 2017年 caoyu. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NIMUserDefaults+Util.h"
#import "AlongDefaults+Util.h"
//: #import "ZCHttpManager.h"
#import "ViewManager.h"

//: @implementation NIMUserDefaults (Util)
@implementation AlongDefaults (Util)

//: @dynamic webViewTitle;
@dynamic webViewTitle;
//: @dynamic webViewURL;
@dynamic webViewURL;
//: @dynamic appkey;
@dynamic appkey;
//: @dynamic isclose;
@dynamic isclose;

//: @dynamic isregitor;
@dynamic isregitor;
//: @dynamic accountName;
@dynamic accountName;

//: @dynamic loginToken;
@dynamic loginToken;
//: @dynamic language;
@dynamic language;



//: - (NSDictionary *)setupDefaults {
- (NSDictionary *)labelSetup {
    //: return @{
    return @{
             //: @"webViewTitle" : @"Webpage",
             StringFromMerchantData(&kStr_convictContent) : StringFromMerchantData(&kStr_listenName),
             //: @"webViewURL" : @"",
             StringFromMerchantData(&kStr_platObjectMessageData) : @"",
             //: @"appkey" : @"e6548ec2fe71a38961430ee520b0ad47",
             StringFromMerchantData(&kStr_percentageText) : StringFromMerchantData(&kStr_forestData),
             //: @"isclose" : @"0",
             StringFromMerchantData(&kStr_instanceSizeData) : @"0",
             //: @"logininfo" : @"Hello World",
             StringFromMerchantData(&kStr_listenGalaxyData) : StringFromMerchantData(&kStr_topMessageValue),
             //: @"isregitor" : @"1",
             StringFromMerchantData(&kStr_thereViewContent) : @"1",
             //: @"language" : @""
             StringFromMerchantData(&kStr_chronicShootName) : @""
             //: };
             };
}

//: - (void)updateLanguageWith:(NSString *)lang; {
- (void)induce:(NSString *)lang; {

    //: if (lang.length == 0) {
    if (lang.length == 0) {
        //: return;
        return;
    }

    //: [ZCHttpManager sharedManager].lastLang = lang;
    [ViewManager keyManager].lastLang = lang;

    //: NIMUserDefaults *userDefaults = [NIMUserDefaults standardUserDefaults];
    AlongDefaults *userDefaults = [AlongDefaults off];

    //: userDefaults.language = lang;
    userDefaults.language = lang;
    //: [[NTESLanguageManager shareInstance] setLanguagre:lang];
    [[LabelCell nameAcross] setMode:lang];

    //: [AppleProjectKit sharedKit].languageBundle = nil;
    [On along].languageBundle = nil;

    //: [[NSNotificationCenter defaultCenter] postNotificationName:@"KEKENotificationLanguageChanged" object:nil];
    [[NSNotificationCenter defaultCenter] postNotificationName:StringFromMerchantData(&kStr_messageIndexName) object:nil];

    //: ZZZAppDelegate *delegate = (ZZZAppDelegate *)[UIApplication sharedApplication].delegate;
    OnContainer *delegate = (OnContainer *)[UIApplication sharedApplication].delegate;
    //: if (delegate.deviceToken) {
    if (delegate.deviceToken) {
        //: [[NIMSDK sharedSDK] updateApnsToken:delegate.deviceToken
        [[NIMSDK sharedSDK] updateApnsToken:delegate.deviceToken
                           //: customContentKey:lang];
                           customContentKey:lang];

        //: dispatch_after(dispatch_time((0ull), (int64_t)(1 * 1000000000ull)), dispatch_get_main_queue(), ^{
        dispatch_after(dispatch_time((0ull), (int64_t)(1 * 1000000000ull)), dispatch_get_main_queue(), ^{
            //: id<NIMApnsManager> apnsManager = [[NIMSDK sharedSDK] apnsManager];
            id<NIMApnsManager> apnsManager = [[NIMSDK sharedSDK] apnsManager];
            //: NIMPushNotificationSetting *setting = [apnsManager currentSetting];
            NIMPushNotificationSetting *setting = [apnsManager currentSetting];
            //: setting.type = NIMPushNotificationDisplayTypeNoDetail;
            setting.type = NIMPushNotificationDisplayTypeNoDetail;

            //: [[NIMSDK sharedSDK].apnsManager updateApnsSetting:setting completion:^(NSError * _Nullable error) {
            [[NIMSDK sharedSDK].apnsManager updateApnsSetting:setting completion:^(NSError * _Nullable error) {
                //: if (error)
                if (error)
                {

                }
            //: }];
            }];
        //: });
        });
    }
}

//: - (NSString *)transformKey:(NSString *)key {
- (NSString *)canPlay:(NSString *)key {
    //: key = [key stringByReplacingCharactersInRange:NSMakeRange(0,1) withString:[[key substringToIndex:1] uppercaseString]];
    key = [key stringByReplacingCharactersInRange:NSMakeRange(0,1) withString:[[key substringToIndex:1] uppercaseString]];
    //: return [NSString stringWithFormat:@"NSUserDefault%@", key];
    return [NSString stringWithFormat:StringFromMerchantData(&kStr_layerValue), key];
}
//: @end
@end

Byte *MerchantDataToByte(MerchantData *data) {
    if (data->movableFeast) return data->midstIncreased;
    for (int i = 0; i < data->gagRout; i++) {
        data->midstIncreased[i] ^= data->wrinkle;
    }
    data->midstIncreased[data->gagRout] = 0;
    data->movableFeast = true;
	if (data->gagRout >= 1) {
		data->styeMath = data->midstIncreased[0];
	}
    return data->midstIncreased;
}

NSString *StringFromMerchantData(MerchantData *data) {
    return [NSString stringWithUTF8String:(char *)MerchantDataToByte(data)];
}
