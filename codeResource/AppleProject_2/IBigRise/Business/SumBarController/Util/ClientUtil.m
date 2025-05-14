// __DEBUG__
// __CLOSE_PRINT__
//
//  ClientUtil.m
//  NIM
//
//  Created by chris on 15/7/27.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESClientUtil.h"
#import "ClientUtil.h"

//: @implementation NTESClientUtil
@implementation ClientUtil

//: + (NSString *)clientName:(NIMLoginClientType)clientType{
+ (NSString *)barContent:(NIMLoginClientType)clientType{
    //: switch (clientType) {
    switch (clientType) {
        //: case NIMLoginClientTypeAOS:
        case NIMLoginClientTypeAOS:
        //: case NIMLoginClientTypeiOS:
        case NIMLoginClientTypeiOS:
        //: case NIMLoginClientTypeWP:
        case NIMLoginClientTypeWP:
            //: return @"移动".ntes_localized;
            return @"移动".colorLocalized;
        //: case NIMLoginClientTypePC:
        case NIMLoginClientTypePC:
        //: case NIMLoginClientTypemacOS:
        case NIMLoginClientTypemacOS:
            //: return @"电脑".ntes_localized;
            return @"电脑".colorLocalized;
        //: case NIMLoginClientTypeWeb:
        case NIMLoginClientTypeWeb:
            //: return @"网页".ntes_localized;
            return @"网页".colorLocalized;
        //: default:
        default:
            //: return @"";
            return @"";
    }
}

//: @end
@end