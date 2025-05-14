
#import <Foundation/Foundation.h>

NSString *StringFromFallData(Byte *data);


//: contact_group_header
Byte kStr_licenseName[] = {34, 20, 43, 14, 86, 188, 56, 193, 248, 177, 147, 31, 136, 249, 142, 154, 153, 159, 140, 142, 159, 138, 146, 157, 154, 160, 155, 138, 147, 144, 140, 143, 144, 157, 173};

// __DEBUG__
// __CLOSE_PRINT__
//
//  TeamInfoData.m
//  NIM
//
//  Created by chris on 15/6/1.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZZZTeamInfoData.h"
#import "ShareEmptyCell.h"
//: #import "ZZZSpellingCenter.h"
#import "SimulationCenter.h"

//: @implementation ZZZTeamInfoData
@implementation ShareEmptyCell

//: - (instancetype)initWithTeam:(NIMTeam *)team{
- (instancetype)initWithDropRecording:(NIMTeam *)team{
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: _teamId = team.teamId;
        _teamId = team.teamId;
        //: _teamName = team.teamName;
        _teamName = team.teamName;
        //: _iconId = @"contact_group_header";
        _iconId = StringFromFallData(kStr_licenseName);
    }
    //: return self;
    return self;
}

//: - (NSString *)groupTitle{
- (NSString *)sound{
    //: NSString *title = [[ZZZSpellingCenter sharedCenter] firstLetter:self.teamName].capitalizedString;
    NSString *title = [[SimulationCenter centreOff] language:self.teamName].capitalizedString;
    //: unichar character = [title characterAtIndex:0];
    unichar character = [title characterAtIndex:0];
    //: if (character >= 'A' && character <= 'Z') {
    if (character >= 'A' && character <= 'Z') {
        //: return title;
        return title;
    //: }else{
    }else{
        //: return @"#";
        return @"#";
    }

}

//: - (NSString *)memberId{
- (NSString *)modifyOption{
    //: return self.teamId;
    return self.teamId;
}

//: - (id)sortKey{
- (id)mostValuablePlayerKey{
    //: return [[ZZZSpellingCenter sharedCenter] spellingForString:self.teamName].shortSpelling;
    return [[SimulationCenter centreOff] tingUponSnapline:self.teamName].shortSpelling;
}

//: - (NSString *)usrId{
- (NSString *)green{
    //: return self.teamId;
    return self.teamId;
}

//: - (NSString *)nick{
- (NSString *)selected{
    //: return self.teamName;
    return self.teamName;
}

//: - (NSString *)showName{
- (NSString *)max{
    //: return self.teamName;
    return self.teamName;
}


//: @end
@end

Byte * FallDataToCache(Byte *data) {
    int independency = data[0];
    int behaveReputation = data[1];
    Byte totalention = data[2];
    int successLit = data[3];
    if (!independency) return data + successLit;
    for (int i = successLit; i < successLit + behaveReputation; i++) {
        int value = data[i] - totalention;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[successLit + behaveReputation] = 0;
    return data + successLit;
}

NSString *StringFromFallData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)FallDataToCache(data)];
}
