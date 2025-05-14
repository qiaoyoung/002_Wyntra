// __DEBUG__
// __CLOSE_PRINT__
//
//  NSDictionaryExtend.h
//  sohunews
//
//  Created by yanchen wang on 12-5-28.
//  Copyright (c) 2012年 Sohu.com Inc. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @interface NSDictionary(Extend)
@interface NSDictionary(Extend)

// for value
//: - (id)objectForKey:(NSString *)key defaultObj:(id)defaultObj;
- (id)futurism:(NSString *)key media:(id)defaultObj;
//: - (id)objectForKey:(id)aKey ofClass:(Class)aClass defaultObj:(id)defaultObj;
- (id)success:(id)aKey video:(Class)aClass solidGroundImageRecord:(id)defaultObj;
//: - (int)intValueForKey:(NSString *)key defaultValue:(int)defaultValue;
- (int)cleanly:(NSString *)key reply:(int)defaultValue;
//: - (float)floatValueForKey:(NSString *)key defaultValue:(float)defaultValue;
- (float)forSize:(NSString *)key value:(float)defaultValue;
//: - (double)doubleValueForKey:(NSString *)key defaultValue:(double)defaultValue;
- (double)item:(NSString *)key label:(double)defaultValue;
//: - (long)longValueForKey:(NSString *)key defaultValue:(long)defaultValue;
- (long)nameBar:(NSString *)key to:(long)defaultValue;
//: - (long long)longlongValueForKey:(NSString *)key defaultValue:(long long)defaultValue;
- (long long)immobilize:(NSString *)key modeTitle:(long long)defaultValue;
//: - (NSString *)stringValueForKey:(NSString *)key defaultValue:(NSString *)defaultValue;
- (NSString *)tempKey:(NSString *)key by:(NSString *)defaultValue;
//: - (NSArray *)arrayValueForKey:(NSString *)key defaultValue:(NSArray *)defaultValue;
- (NSArray *)on:(NSString *)key defaultShowTeam:(NSArray *)defaultValue;
//: - (NSDictionary *)dictionaryValueForKey:(NSString *)key defalutValue:(NSDictionary *)defaultValue;
- (NSDictionary *)queryedEnable:(NSString *)key messageProduceValue:(NSDictionary *)defaultValue;


// xml
//: - (NSArray*) toArray;
- (NSArray*) item;
//: - (NSString*) toXMLString;
- (NSString*) dataSession;

// url string

//: - (NSString *)toUrlString;
- (NSString *)click;
//: - (NSMutableString *)mutableUrlString;
- (NSMutableString *)showNet;

/// e.g. {a1:b1,a2:b2} ===> a1=b1&a2=b2
//: - (NSString *)toQueryString;
- (NSString *)text;
//: - (NSString *)translateDictionaryToJsonString;
- (NSString *)data;

//: @end
@end