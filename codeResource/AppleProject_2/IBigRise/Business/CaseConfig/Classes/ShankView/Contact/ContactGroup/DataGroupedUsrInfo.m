// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESGroupedUsrInfo.m
//  NIM
//
//  Created by Xuhui on 15/3/24.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "DataGroupedUsrInfo.h"
#import "DataGroupedUsrInfo.h"
//: #import "ZZZSpellingCenter.h"
#import "SimulationCenter.h"
//: #import "ZZZKitInfoFetchOption.h"
#import "CertainOption.h"

//: @interface NIMGroupUser()
@interface CenterIndividualBackground()

//: @property (nonatomic,copy) NSString *userId;
@property (nonatomic,copy) NSString *userId;
//: @property (nonatomic,strong) ZZZKitInfo *info;
@property (nonatomic,strong) MagnitudeCommentInfo *info;

//: @end
@end

//: @implementation NIMGroupUser
@implementation CenterIndividualBackground

//: - (instancetype)initWithUserId:(NSString *)userId{
- (instancetype)initWithMargin:(NSString *)userId{
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: _userId = userId;
        _userId = userId;
        //: _info = [[AppleProjectKit sharedKit] infoByUser:userId option:nil];
        _info = [[On along] toKey:userId image:nil];
    }
    //: return self;
    return self;
}

- (NSString *)groupTitle{
    //: NSString *title = [[ZZZSpellingCenter sharedCenter] firstLetter:self.info.showName].capitalizedString;
    NSString *title = [[SimulationCenter centreOff] language:self.info.showName].capitalizedString;
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

//: - (NSString *)showName{
- (NSString *)showName{
    //: return self.info.showName;
    return self.info.showName;
}

//: - (NSString *)memberId{
- (NSString *)memberId{
    //: return self.userId;
    return self.userId;
}

//: - (id)sortKey{
- (id)sortKey{
    //: return [[ZZZSpellingCenter sharedCenter] spellingForString:self.info.showName].shortSpelling;
    return [[SimulationCenter centreOff] tingUponSnapline:self.info.showName].shortSpelling;
}

//: - (UIImage *)avatarImage {
- (UIImage *)link {
    //: return self.info.avatarImage;
    return self.info.avatarImage;
}


//: - (NSString *)avatarUrlString {
- (NSString *)ofTip {
    //: return self.info.avatarUrlString;
    return self.info.avatarUrlString;
}


//: @end
@end

//: @interface NIMGroupTeamMember()
@interface InputMember()

//: @property (nonatomic,copy) NSString *userId;
@property (nonatomic,copy) NSString *userId;
//: @property (nonatomic,strong) ZZZKitInfo *info;
@property (nonatomic,strong) MagnitudeCommentInfo *info;

//: @end
@end

//: @implementation NIMGroupTeamMember
@implementation InputMember

//: - (instancetype)initWithUserId:(NSString *)userId
- (instancetype)initWithTip:(NSString *)userId
                       //: session:(NIMSession *)session {
                       name:(NIMSession *)session {
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: _userId = userId;
        _userId = userId;
        //: ZZZKitInfoFetchOption *option = [[ZZZKitInfoFetchOption alloc] init];
        CertainOption *option = [[CertainOption alloc] init];
        //: option.session = session;
        option.session = session;
        //: _info = [[AppleProjectKit sharedKit] infoByUser:userId option:option];
        _info = [[On along] toKey:userId image:option];
    }
    //: return self;
    return self;
}

- (NSString *)groupTitle{
    //: NSString *title = [[ZZZSpellingCenter sharedCenter] firstLetter:self.showName].capitalizedString;
    NSString *title = [[SimulationCenter centreOff] language:self.showName].capitalizedString;
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

//: - (id)sortKey{
- (id)sortKey{
    //: return [[ZZZSpellingCenter sharedCenter] spellingForString:self.showName].shortSpelling;
    return [[SimulationCenter centreOff] tingUponSnapline:self.showName].shortSpelling;
}

//: - (NSString *)showName{
- (NSString *)showName{
    //: return self.info.showName;
    return self.info.showName;
}

//: - (NSString *)memberId{
- (NSString *)memberId{
    //: return self.userId;
    return self.userId;
}

//: - (UIImage *)avatarImage {
- (UIImage *)link {
    //: return self.info.avatarImage;
    return self.info.avatarImage;
}

//: - (NSString *)avatarUrlString {
- (NSString *)ofTip {
    //: return self.info.avatarUrlString;
    return self.info.avatarUrlString;
}

//: @end
@end

//: @interface NIMGroupTeam()
@interface GroupMessage()

//: @property (nonatomic,copy) NSString *teamId;
@property (nonatomic,copy) NSString *teamId;
//: @property (nonatomic,strong) ZZZKitInfo *info;
@property (nonatomic,strong) MagnitudeCommentInfo *info;

//: @end
@end

//: @implementation NIMGroupTeam
@implementation GroupMessage

//: - (instancetype)initWithTeamId:(NSString *)teamId
- (instancetype)initWithInfo:(NSString *)teamId
                      //: teamType:(NIMKitTeamType)teamType {
                      text:(NIMKitTeamType)teamType {
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: _teamId = teamId;
        _teamId = teamId;
        //: if (teamType == NIMKitTeamTypeNomal) {
        if (teamType == NIMKitTeamTypeNomal) {
            //: _info = [[AppleProjectKit sharedKit] infoByTeam:teamId option:nil];
            _info = [[On along] center:teamId touch:nil];
        //: } else if (teamType == NIMKitTeamTypeSuper) {
        } else if (teamType == NIMKitTeamTypeSuper) {
            //: _info = [[AppleProjectKit sharedKit] infoBySuperTeam:teamId option:nil];
            _info = [[On along] image:teamId status:nil];
        }
    }
    //: return self;
    return self;
}

- (NSString *)groupTitle{
    //: NSString *title = [[ZZZSpellingCenter sharedCenter] firstLetter:self.showName].capitalizedString;
    NSString *title = [[SimulationCenter centreOff] language:self.showName].capitalizedString;
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

//: - (id)sortKey{
- (id)sortKey{
    //: return [[ZZZSpellingCenter sharedCenter] spellingForString:[self showName]].shortSpelling;
    return [[SimulationCenter centreOff] tingUponSnapline:[self showName]].shortSpelling;
}

//: - (NSString *)showName{
- (NSString *)showName{
    //: return self.info.showName;
    return self.info.showName;
}

//: - (NSString *)memberId{
- (NSString *)memberId{
    //: return self.teamId;
    return self.teamId;
}

//: - (UIImage *)avatarImage {
- (UIImage *)link {
    //: return self.info.avatarImage;
    return self.info.avatarImage;
}

//: - (NSString *)avatarUrlString {
- (NSString *)ofTip {
    //: return self.info.avatarUrlString;
    return self.info.avatarUrlString;
}

//: @end
@end
