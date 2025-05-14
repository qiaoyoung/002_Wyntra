// __DEBUG__
// __CLOSE_PRINT__
//
//  KeyWith.h
//  NIM
//
//  Created by 彭爽 on 2021/9/8.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface NTESGlobalConfigManager : NSObject
@interface KeyWith : NSObject

//: + (NTESGlobalConfigManager *)shareConfigManager;
+ (KeyWith *)border;
//: + (void)refreshSecretQuestionConfig;
+ (void)scarlet;
//: + (NSArray *)getSecretQuestionList;
+ (NSArray *)list;
//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END