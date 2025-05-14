// __DEBUG__
// __CLOSE_PRINT__
//
//  LabelCell.h
//  NIM
//
//  Created by 彭爽 on 2022/6/24.
//  Copyright © 2022 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface NTESLanguageManager : NSObject
@interface LabelCell : NSObject
//: @property (nonatomic,strong) NSMutableDictionary *langDict;
@property (nonatomic,strong) NSMutableDictionary *langDict;
//: + (NTESLanguageManager *)shareInstance;
+ (LabelCell *)nameAcross;
//: - (void)setLanguagre:(NSString *)langType;
- (void)setMode:(NSString *)langType;
//: + (NSString *)getTextWithKey:(NSString *)key;
+ (NSString *)tinkleKey:(NSString *)key;

//: + (NSString *)getLocale;
+ (NSString *)distributor;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END