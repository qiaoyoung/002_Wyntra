// __DEBUG__
// __CLOSE_PRINT__
//
//  DisableManager.h
//  NIM
//
//  Created by 彭爽 on 2021/9/6.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import "ZZZLoginViewController.h"
#import "TextViewController.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface NTESRegistConfigManager : NSObject
@interface DisableManager : NSObject
//: @property (nonatomic ,strong) ZZZLoginViewController *loginVC;
@property (nonatomic ,strong) TextViewController *loginVC;
//: @property (nonatomic ,strong) NSMutableDictionary *registDict;
@property (nonatomic ,strong) NSMutableDictionary *registDict;
//: @property (nonatomic ,strong) UIImage *headerImage;
@property (nonatomic ,strong) UIImage *headerImage;

//: + (NTESRegistConfigManager *)shareConfigManager;
+ (DisableManager *)direct;

//: + (void)refreshRegistConfig;
+ (void)language;

//: + (void)sendRegistRequest:(UINavigationController *)nav;
+ (void)itemUse:(UINavigationController *)nav;


//: + (void)firstSendRegistName:(NSString *)name pd:(NSString *)pd RequestWithComplete:(void(^)(BOOL ,NSString *))complete;
+ (void)inputStandard:(NSString *)name margin:(NSString *)pd sheer:(void(^)(BOOL ,NSString *))complete;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END