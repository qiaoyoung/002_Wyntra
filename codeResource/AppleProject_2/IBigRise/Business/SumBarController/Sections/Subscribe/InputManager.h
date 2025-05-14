// __DEBUG__
// __CLOSE_PRINT__
//
//  InputManager.h
//  NIM
//
//  Created by chris on 2017/4/5.
//  Copyright © 2017年 Netease. All rights reserved.
//

// __M_A_C_R_O__

//: @interface NTESSubscribeManager : NSObject
@interface InputManager : NSObject

//: + (instancetype)sharedManager;
+ (instancetype)pressed;

//: - (void)start;
- (void)to;

//: - (NSDictionary<NIMSubscribeEvent *, NSString *> *)eventsForType:(NSInteger)type;
- (NSDictionary<NIMSubscribeEvent *, NSString *> *)woof:(NSInteger)type;

//: - (void)subscribeTempUserOnlineState:(NSString *)userId;
- (void)stateReply:(NSString *)userId;

//: - (void)unsubscribeTempUserOnlineState:(NSString *)userId;
- (void)allow:(NSString *)userId;

//: @end
@end