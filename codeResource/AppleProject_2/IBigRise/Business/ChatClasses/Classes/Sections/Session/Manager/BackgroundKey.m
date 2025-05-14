
#import <Foundation/Foundation.h>

NSString *StringFromCourtroomNameData(Byte *data);        


//: 确认转发
Byte kStr_allyData[] = {71, 12, 84, 8, 122, 162, 55, 116, 147, 77, 90, 148, 90, 80, 148, 105, 88, 145, 59, 61, 186};


//: 转发失败
Byte kStr_buttonTingData[] = {20, 12, 58, 6, 214, 18, 174, 131, 114, 171, 85, 87, 171, 106, 119, 174, 122, 107, 26};


//: 确认转发给
Byte kStr_mutualText[] = {19, 15, 30, 14, 50, 65, 211, 92, 116, 66, 28, 194, 58, 175, 201, 131, 144, 202, 144, 134, 202, 159, 142, 199, 113, 115, 201, 157, 123, 220};


//: %@.code:%zd
Byte kStr_behaveContent[] = {78, 11, 24, 4, 13, 40, 22, 75, 87, 76, 77, 34, 13, 98, 76, 154};


//: 已发送
Byte kStr_compareGemData[] = {48, 9, 15, 8, 95, 232, 238, 141, 214, 168, 163, 214, 128, 130, 218, 113, 114, 237};


//: message_super_team
Byte kStr_tianMinderName[] = {84, 18, 8, 4, 101, 93, 107, 107, 89, 95, 93, 87, 107, 109, 104, 93, 106, 87, 108, 93, 89, 101, 39};


//: friend_circle_adapter_cancel
Byte kStr_easterAwayText[] = {23, 28, 46, 14, 62, 14, 27, 122, 242, 18, 150, 105, 139, 5, 56, 68, 59, 55, 64, 54, 49, 53, 59, 68, 53, 62, 55, 49, 51, 54, 51, 66, 70, 55, 68, 49, 53, 51, 64, 53, 55, 62, 59};


//: contact_fragment_group
Byte kStr_appreciationTitle[] = {65, 22, 99, 13, 225, 212, 180, 2, 173, 243, 231, 247, 84, 0, 12, 11, 17, 254, 0, 17, 252, 3, 15, 254, 4, 10, 2, 11, 17, 252, 4, 15, 12, 18, 13, 69};


//: 选择会话类型
Byte kStr_grossMathValue[] = {76, 18, 29, 9, 86, 108, 63, 234, 64, 204, 99, 108, 201, 110, 140, 199, 159, 125, 203, 146, 128, 202, 148, 158, 200, 129, 110, 34};


//: watch_multiretweet_activity_person
Byte kStr_minderValue[] = {85, 34, 40, 7, 157, 86, 249, 79, 57, 76, 59, 64, 55, 69, 77, 68, 76, 65, 74, 61, 76, 79, 61, 61, 76, 55, 57, 59, 76, 65, 78, 65, 76, 81, 55, 72, 61, 74, 75, 71, 70, 44};

// __DEBUG__
// __CLOSE_PRINT__
//
//  BackgroundKey.m
// On
//
//  Created by 丁文超 on 2020/3/19.
//  Copyright © 2020 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZZZChatUIManager.h"
#import "BackgroundKey.h"
//: #import "ZZZContactSelectConfig.h"
#import "EdgeConfig.h"
//: #import "ZZZContactSelectViewController.h"
#import "InputValueViewController.h"
//: #import "ZZZKitInfoFetchOption.h"
#import "CertainOption.h"
//: #import "UIView+NIMToast.h"
#import "UIView+Straddle.h"

//: @implementation ZZZChatUIManager
@implementation BackgroundKey

//: + (instancetype)sharedManager
+ (instancetype)user
{
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: static ZZZChatUIManager *instance;
    static BackgroundKey *instance;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: instance = [self.alloc init];
        instance = [self.alloc init];
    //: });
    });
    //: return instance;
    return instance;
}

//: - (void)forwardMessage:(NIMMessage *)message fromViewController:(UIViewController *)fromVC
- (void)with:(NIMMessage *)message taskScan:(UIViewController *)fromVC
{
    //: UIAlertController *alertController = [UIAlertController alertControllerWithTitle:[NTESLanguageManager getTextWithKey:@"选择会话类型"] message:nil preferredStyle:UIAlertControllerStyleActionSheet];
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:[LabelCell tinkleKey:StringFromCourtroomNameData(kStr_grossMathValue)] message:nil preferredStyle:UIAlertControllerStyleActionSheet];
    //: [alertController addAction:[UIAlertAction actionWithTitle:[NTESLanguageManager getTextWithKey:@"watch_multiretweet_activity_person"] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    [alertController addAction:[UIAlertAction actionWithTitle:[LabelCell tinkleKey:StringFromCourtroomNameData(kStr_minderValue)] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: NIMContactFriendSelectConfig *config = [[NIMContactFriendSelectConfig alloc] init];
        TextCell *config = [[TextCell alloc] init];
        //: config.needMutiSelected = NO;
        config.needMutiSelected = NO;
        //: ZZZContactSelectViewController *vc = [[ZZZContactSelectViewController alloc] initWithConfig:config];
        InputValueViewController *vc = [[InputValueViewController alloc] initWithSessionMore:config];
        //: vc.finshBlock = ^(NSArray *array, NSString *name, UIImage *avater){
        vc.finshBlock = ^(NSArray *array, NSString *name, UIImage *avater){
            //: NSString *userId = array.firstObject;
            NSString *userId = array.firstObject;
            //: NIMSession *session = [NIMSession session:userId type:NIMSessionTypeP2P];
            NIMSession *session = [NIMSession session:userId type:NIMSessionTypeP2P];
            //: [self forwardMessage:message toSession:session fromViewController:fromVC];
            [self status:message digitizer:session fromInController:fromVC];
        //: };
        };
        //: [vc show];
        [vc with];
    //: }]];
    }]];
    //: [alertController addAction:[UIAlertAction actionWithTitle:[NTESLanguageManager getTextWithKey:@"contact_fragment_group"] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    [alertController addAction:[UIAlertAction actionWithTitle:[LabelCell tinkleKey:StringFromCourtroomNameData(kStr_appreciationTitle)] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: NIMContactTeamSelectConfig *config = [[NIMContactTeamSelectConfig alloc] init];
        EnterBy *config = [[EnterBy alloc] init];
        //: config.teamType = NIMKitTeamTypeNomal;
        config.teamType = NIMKitTeamTypeNomal;
        //: ZZZContactSelectViewController *vc = [[ZZZContactSelectViewController alloc] initWithConfig:config];
        InputValueViewController *vc = [[InputValueViewController alloc] initWithSessionMore:config];
        //: vc.finshBlock = ^(NSArray *array, NSString *name, UIImage *avater){
        vc.finshBlock = ^(NSArray *array, NSString *name, UIImage *avater){
            //: NSString *teamId = array.firstObject;
            NSString *teamId = array.firstObject;
            //: NIMSession *session = [NIMSession session:teamId type:NIMSessionTypeTeam];
            NIMSession *session = [NIMSession session:teamId type:NIMSessionTypeTeam];
            //: [self forwardMessage:message toSession:session fromViewController:fromVC];
            [self status:message digitizer:session fromInController:fromVC];
        //: };
        };
        //: [vc show];
        [vc with];
    //: }]];
    }]];
    //: [alertController addAction:[UIAlertAction actionWithTitle:[NTESLanguageManager getTextWithKey:@"message_super_team"] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    [alertController addAction:[UIAlertAction actionWithTitle:[LabelCell tinkleKey:StringFromCourtroomNameData(kStr_tianMinderName)] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: NIMContactTeamSelectConfig *config = [[NIMContactTeamSelectConfig alloc] init];
        EnterBy *config = [[EnterBy alloc] init];
        //: config.teamType = NIMKitTeamTypeSuper;
        config.teamType = NIMKitTeamTypeSuper;
        //: ZZZContactSelectViewController *vc = [[ZZZContactSelectViewController alloc] initWithConfig:config];
        InputValueViewController *vc = [[InputValueViewController alloc] initWithSessionMore:config];
        //: vc.finshBlock = ^(NSArray *array, NSString *name, UIImage *avater){
        vc.finshBlock = ^(NSArray *array, NSString *name, UIImage *avater){
            //: NSString *teamId = array.firstObject;
            NSString *teamId = array.firstObject;
            //: NIMSession *session = [NIMSession session:teamId type:NIMSessionTypeSuperTeam];
            NIMSession *session = [NIMSession session:teamId type:NIMSessionTypeSuperTeam];
            //: [self forwardMessage:message toSession:session fromViewController:fromVC];
            [self status:message digitizer:session fromInController:fromVC];
        //: };
        };
        //: [vc show];
        [vc with];
    //: }]];
    }]];
    //: [alertController addAction:[UIAlertAction actionWithTitle:[NTESLanguageManager getTextWithKey:@"friend_circle_adapter_cancel"] style:UIAlertActionStyleCancel handler:nil]];
    [alertController addAction:[UIAlertAction actionWithTitle:[LabelCell tinkleKey:StringFromCourtroomNameData(kStr_easterAwayText)] style:UIAlertActionStyleCancel handler:nil]];
    //: [fromVC presentViewController:alertController animated:YES completion:nil];
    [fromVC presentViewController:alertController animated:YES completion:nil];
}

//: - (void)forwardMessage:(NIMMessage *)message toSession:(NIMSession *)session fromViewController:(UIViewController *)fromVC
- (void)status:(NIMMessage *)message digitizer:(NIMSession *)session fromInController:(UIViewController *)fromVC
{
    //: NSString *name;
    NSString *name;
    //: if (session.sessionType == NIMSessionTypeP2P) {
    if (session.sessionType == NIMSessionTypeP2P) {
        //: ZZZKitInfoFetchOption *option = [[ZZZKitInfoFetchOption alloc] init];
        CertainOption *option = [[CertainOption alloc] init];
        //: option.session = session;
        option.session = session;
        //: name = [[AppleProjectKit sharedKit] infoByUser:session.sessionId option:option].showName;
        name = [[On along] toKey:session.sessionId image:option].showName;
    }
    //: else if (session.sessionType == NIMSessionTypeTeam) {
    else if (session.sessionType == NIMSessionTypeTeam) {
        //: name = [[AppleProjectKit sharedKit] infoByTeam:session.sessionId option:nil].showName;
        name = [[On along] center:session.sessionId touch:nil].showName;
    }
    //: else if (session.sessionType == NIMSessionTypeSuperTeam) {
    else if (session.sessionType == NIMSessionTypeSuperTeam) {
        //: name = [[AppleProjectKit sharedKit] infoBySuperTeam:session.sessionId option:nil].showName;
        name = [[On along] image:session.sessionId status:nil].showName;
    }
    //: NSString *tip = [NSString stringWithFormat:@"%@ %@ ?", NSLocalizedString(@"确认转发给", nil), name];
    NSString *tip = [NSString stringWithFormat:@"%@ %@ ?", NSLocalizedString(StringFromCourtroomNameData(kStr_mutualText), nil), name];
    //: UIAlertController *alertController = [UIAlertController alertControllerWithTitle:NSLocalizedString(@"确认转发", nil) message:tip preferredStyle:UIAlertControllerStyleAlert];
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:NSLocalizedString(StringFromCourtroomNameData(kStr_allyData), nil) message:tip preferredStyle:UIAlertControllerStyleAlert];
    //: [alertController addAction:[UIAlertAction actionWithTitle:NSLocalizedString(@"取消", nil) style:UIAlertActionStyleCancel handler:nil]];
    [alertController addAction:[UIAlertAction actionWithTitle:NSLocalizedString(@"取消", nil) style:UIAlertActionStyleCancel handler:nil]];
    //: [alertController addAction:[UIAlertAction actionWithTitle:NSLocalizedString(@"确认", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    [alertController addAction:[UIAlertAction actionWithTitle:NSLocalizedString(@"确认", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: NSError *error = nil;
        NSError *error = nil;
        //: if (message.session) {
        if (message.session) {
            //: [[NIMSDK sharedSDK].chatManager forwardMessage:message toSession:session error:&error];
            [[NIMSDK sharedSDK].chatManager forwardMessage:message toSession:session error:&error];
        //: } else {
        } else {
            //: [[NIMSDK sharedSDK].chatManager sendMessage:message toSession:session error:&error];
            [[NIMSDK sharedSDK].chatManager sendMessage:message toSession:session error:&error];
        }
        //: if (error) {
        if (error) {
            //: NSString *errorMessage = [NSString stringWithFormat:@"%@.code:%zd", NSLocalizedString(@"转发失败", nil), error.code];
            NSString *errorMessage = [NSString stringWithFormat:StringFromCourtroomNameData(kStr_behaveContent), NSLocalizedString(StringFromCourtroomNameData(kStr_buttonTingData), nil), error.code];
            //: [fromVC.view nim_showToast:errorMessage duration:2.0];
            [fromVC.view aggregation:errorMessage trap:2.0];
        //: } else {
        } else {
            //: [fromVC.view nim_showToast:NSLocalizedString(@"已发送", nil) duration:2.0];
            [fromVC.view aggregation:NSLocalizedString(StringFromCourtroomNameData(kStr_compareGemData), nil) trap:2.0];
        }
    //: }]];
    }]];
    //: [fromVC presentViewController:alertController animated:YES completion:nil];
    [fromVC presentViewController:alertController animated:YES completion:nil];
}

//: @end
@end

Byte * CourtroomNameDataToCache(Byte *data) {
    int survival = data[0];
    int payerExamineed = data[1];
    Byte fieldOperate = data[2];
    int gladiator = data[3];
    if (!survival) return data + gladiator;
    for (int i = gladiator; i < gladiator + payerExamineed; i++) {
        int value = data[i] + fieldOperate;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[gladiator + payerExamineed] = 0;
    return data + gladiator;
}

NSString *StringFromCourtroomNameData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)CourtroomNameDataToCache(data)];
}
