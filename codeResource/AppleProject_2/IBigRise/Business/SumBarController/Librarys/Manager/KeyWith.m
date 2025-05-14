
#import <Foundation/Foundation.h>

NSString *StringFromFluRedData(Byte *data);        


//: /wallet/questionList
Byte kStr_raceData[] = {42, 20, 26, 10, 105, 82, 42, 109, 132, 108, 21, 93, 71, 82, 82, 75, 90, 21, 87, 91, 75, 89, 90, 79, 85, 84, 50, 79, 89, 90, 253};


//: data
Byte kStr_introduceValue[] = {39, 4, 89, 12, 150, 40, 9, 25, 36, 24, 20, 73, 11, 8, 27, 8, 194};


//: code
Byte kStr_sessionMarkText[] = {51, 4, 25, 5, 36, 74, 86, 75, 76, 247};

// __DEBUG__
// __CLOSE_PRINT__
//
//  KeyWith.m
//  NIM
//
//  Created by 彭爽 on 2021/9/8.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESGlobalConfigManager.h"
#import "KeyWith.h"

//: @interface NTESGlobalConfigManager ()
@interface KeyWith ()
//: @property (nonatomic ,strong) NSArray *secretQuestionArray;
@property (nonatomic ,strong) NSArray *secretQuestionArray;
//: @end
@end

//: @implementation NTESGlobalConfigManager
@implementation KeyWith

//: static NTESGlobalConfigManager *shareConfigManager = nil;
static KeyWith *kConst_quickData = nil;

//: + (NTESGlobalConfigManager *)shareConfigManager{
+ (KeyWith *)border{
    //: @synchronized(self) {
    @synchronized(self) {
        //: if (shareConfigManager == nil) {
        if (kConst_quickData == nil) {
            //: shareConfigManager = [[NTESGlobalConfigManager alloc] init];
            kConst_quickData = [[KeyWith alloc] init];
        }
        //: return shareConfigManager;
        return kConst_quickData;
    }
}



//: + (NSArray *)getSecretQuestionList{
+ (NSArray *)list{
    //: return [NTESGlobalConfigManager shareConfigManager].secretQuestionArray;
    return [KeyWith border].secretQuestionArray;
}

//: + (void)refreshSecretQuestionConfig{
+ (void)scarlet{

    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/wallet/questionList"] params:nil isShow:NO success:^(id responseObject) {
    [ViewManager viewFailed:[NSString stringWithFormat:StringFromFluRedData(kStr_raceData)] disable:nil params:NO status:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict length:StringFromFluRedData(kStr_sessionMarkText)];
        //: if (code.integerValue == 0) {
        if (code.integerValue == 0) {
            //: [NTESGlobalConfigManager shareConfigManager].secretQuestionArray = [resultDict valueObjectForKey:@"data"];
            [KeyWith border].secretQuestionArray = [resultDict userTo:StringFromFluRedData(kStr_introduceValue)];
        }
    //: } failed:^(id responseObject, NSError *error) {
    } allow:^(id responseObject, NSError *error) {

    //: }];
    }];
}

//: @end
@end

Byte * FluRedDataToCache(Byte *data) {
    int viseSorryForest = data[0];
    int circleSend = data[1];
    Byte darknessText = data[2];
    int solarHouse = data[3];
    if (!viseSorryForest) return data + solarHouse;
    for (int i = solarHouse; i < solarHouse + circleSend; i++) {
        int value = data[i] + darknessText;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[solarHouse + circleSend] = 0;
    return data + solarHouse;
}

NSString *StringFromFluRedData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)FluRedDataToCache(data)];
}
