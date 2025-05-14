
#import <Foundation/Foundation.h>

NSString *StringFromPinkieData(Byte *data);


//: icon_add_normal
Byte kStr_resideTitle[] = {51, 15, 82, 8, 58, 154, 180, 109, 187, 181, 193, 192, 177, 179, 182, 182, 177, 192, 193, 196, 191, 179, 190, 215};


//: icon_remove_normal
Byte kStr_elderlySuccessText[] = {79, 18, 78, 6, 142, 177, 183, 177, 189, 188, 173, 192, 179, 187, 189, 196, 179, 173, 188, 189, 192, 187, 175, 186, 109};


//: icon_remove_pressed
Byte kStr_bureauTartData[] = {16, 19, 11, 8, 73, 252, 208, 48, 116, 110, 122, 121, 106, 125, 112, 120, 122, 129, 112, 106, 123, 125, 112, 126, 126, 112, 111, 1};


//: icon_add_pressed
Byte kStr_galDominantData[] = {62, 16, 64, 8, 85, 254, 87, 27, 169, 163, 175, 174, 159, 161, 164, 164, 159, 176, 178, 165, 179, 179, 165, 164, 195};

// __DEBUG__
// __CLOSE_PRINT__
//
//  TeamCardOperationItem.m
//  NIM
//
//  Created by chris on 15/3/5.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZZZCardOperationItem.h"
#import "LabelRescueOperationContainer.h"
//: #import "UIImage+AppleProjectKit.h"
#import "UIImage+On.h"
//: #import "ZZZGlobalMacro.h"
#import "ZZZGlobalMacro.h"

//: @interface ZZZCardOperationItem()
@interface LabelRescueOperationContainer()

//: @property(nonatomic,assign) NIMKitCardHeaderOpeator opera;
@property(nonatomic,assign) NIMKitCardHeaderOpeator opera;

//: @end
@end

//: @implementation ZZZCardOperationItem
@implementation LabelRescueOperationContainer

//: - (instancetype)initWithOperation:(NIMKitCardHeaderOpeator)opera{
- (instancetype)initWithToOperation:(NIMKitCardHeaderOpeator)opera{
    //: self = [self init];
    self = [self init];
    //: if (self) {
    if (self) {
        //: [self buildWithTeamCardOperation:opera];
        [self view:opera];
    }
    //: return self;
    return self;
}

//: - (void)buildWithTeamCardOperation:(NIMKitCardHeaderOpeator)opera{
- (void)view:(NIMKitCardHeaderOpeator)opera{
    //: _opera = opera;
    _opera = opera;
    //: switch (opera) {
    switch (opera) {
        //: case CardHeaderOpeatorAdd:
        case CardHeaderOpeatorAdd:
            //: _title = @"加入".nim_localized;
            _title = @"加入".start;
            //: _imageNormal = [UIImage imageNamed:@"icon_add_normal"];
            _imageNormal = [UIImage imageNamed:StringFromPinkieData(kStr_resideTitle)];
            //: _imageHighLight = [UIImage imageNamed:@"icon_add_pressed"];
            _imageHighLight = [UIImage imageNamed:StringFromPinkieData(kStr_galDominantData)];
            //: break;
            break;
        //: case CardHeaderOpeatorRemove:
        case CardHeaderOpeatorRemove:
            //: _title = @"移除".nim_localized;
            _title = @"移除".start;
            //: _imageNormal = [UIImage imageNamed:@"icon_remove_normal"];
            _imageNormal = [UIImage imageNamed:StringFromPinkieData(kStr_elderlySuccessText)];
            //: _imageHighLight = [UIImage imageNamed:@"icon_remove_pressed"];
            _imageHighLight = [UIImage imageNamed:StringFromPinkieData(kStr_bureauTartData)];
            //: break;
            break;
        //: default:
        default:
            //: break;
            break;
    }
}

//: - (NSString*)teamId {
- (NSString*)teamId {
    //: return @"";
    return @"";
}

//: - (NSString*)userId {
- (NSString*)userId {
    //: return @"";
    return @"";
}

//: - (NIMTeamMemberType)userType {
- (NIMTeamMemberType)userType {
    //: return NIMTeamMemberTypeNormal;
    return NIMTeamMemberTypeNormal;
}

//: - (void)setUserType:(NIMTeamMemberType)userType {}
- (void)setUserType:(NIMTeamMemberType)userType {}

//: - (NIMTeamType)teamType {
- (NIMTeamType)teamType {
    //: return NIMTeamTypeNormal;
    return NIMTeamTypeNormal;
}


//: - (NSString*)imageUrl {
- (NSString*)imageUrl {
    //: return nil;
    return nil;
}

//: - (NSString*)inviterAccid {
- (NSString*)inviterAccid {
    //: return nil;
    return nil;
}

//: - (BOOL)isMuted {
- (BOOL)isMuted {
    //: return NO;
    return NO;
}

//: - (BOOL)isMyUserId {
- (BOOL)isMyUserId {
    //: return NO;
    return NO;
}

//: @end
@end

Byte * PinkieDataToCache(Byte *data) {
    int forbidSoutheast = data[0];
    int countegration = data[1];
    Byte unitedStatesPublicHealthService = data[2];
    int concerned = data[3];
    if (!forbidSoutheast) return data + concerned;
    for (int i = concerned; i < concerned + countegration; i++) {
        int value = data[i] - unitedStatesPublicHealthService;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[concerned + countegration] = 0;
    return data + concerned;
}

NSString *StringFromPinkieData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)PinkieDataToCache(data)];
}
