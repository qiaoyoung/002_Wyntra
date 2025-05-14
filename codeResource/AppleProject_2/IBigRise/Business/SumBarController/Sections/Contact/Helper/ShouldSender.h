// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESCustomSysNotiSender.h
//  NIM
//
//  Created by chris on 15/5/26.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @interface NTESCustomSysNotificationSender : NSObject
@interface ShouldSender : NSObject

//: - (void)sendCustomContent:(NSString *)content toSession:(NIMSession *)session;
- (void)line:(NSString *)content redirectInSession:(NIMSession *)session;

//: - (void)sendTypingState:(NIMSession *)session;
- (void)textMore:(NIMSession *)session;

//: - (void)sendCallNotification:(NIMTeam *)team
- (void)data:(NIMTeam *)team
                    //: roomName:(NSString *)roomName
                    prevalence:(NSString *)roomName
                     //: members:(NSArray *)members;
                     ting:(NSArray *)members;

//: @end
@end