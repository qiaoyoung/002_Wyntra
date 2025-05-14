// __DEBUG__
// __CLOSE_PRINT__
//
//  ZCHttpInterfacedConst.m
//  NIM
//
//  Created by 田玉龙 on 2022/7/30.
//  Copyright © 2022 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZCHttpInterfacedConst.h"
#import "ZCHttpInterfacedConst.h"

//: NSString * RestApi(NSString *api) {
NSString * RestApi(NSString *api) {
    //: NSString* resultApi;
    NSString* resultApi;
    //: if ([ZZZConfig sharedConfig].domainURL.length <= 0) {
    if ([LabelSure with].domainURL.length <= 0) {
        //: return nil;
        return nil;
    }
    //: resultApi = [[ZZZConfig sharedConfig].domainURL stringByAppendingString:api];
    resultApi = [[LabelSure with].domainURL stringByAppendingString:api];
    //: return resultApi;
    return resultApi;
}
/** 接口前缀-生产服务器*/
//: NSString *const kToken = @"";
NSString *const kConst_makeData = @"";
//: NSString *const iphone_md5_key = @"";
NSString *const kConst_sizeExcessValue = @"";
//: NSString *const wss_msg_prefix = @"wss://open.ihccs.com/ws/myHandler/open?token=";
NSString *const kConst_teamTapTitle = @"wss://open.ihccs.com/ws/myHandler/open?token=";