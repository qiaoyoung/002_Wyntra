// __DEBUG__
// __CLOSE_PRINT__
//
//  NSDictionaryAdditions.h
//  WeiboPad
//
//  Created by junmin liu on 10-10-6.
//  Copyright 2010 Openlab. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @interface NSDictionary (Additions)
@interface NSDictionary (Status)

//: - (BOOL)getBoolValueForKey:(NSString *)key defaultValue:(BOOL)defaultValue;
- (BOOL)removeLength:(NSString *)key record:(BOOL)defaultValue;
//: - (int)getIntValueForKey:(NSString *)key defaultValue:(int)defaultValue;
- (int)move:(NSString *)key dateCount:(int)defaultValue;
//: - (float)getFloatValueForKey:(NSString*)key defaultValue:(float)defaultValue;
- (float)custom:(NSString*)key title:(float)defaultValue;
//: - (double)getDoubleValueForKey:(NSString*)key defaultValue:(double)defaultValue;
- (double)saveValue:(NSString*)key m:(double)defaultValue;
//: - (long long)getLongLongValueValueForKey:(NSString *)key defaultValue:(long long)defaultValue;
- (long long)longOffValue:(NSString *)key preface:(long long)defaultValue;
//: - (NSString *)getStringValueForKey:(NSString *)key defaultValue:(NSString *)defaultValue;
- (NSString *)chromaticColour:(NSString *)key message_strong:(NSString *)defaultValue;

//: - (NSDictionary*)getDictionaryForKey:(NSString*)key;
- (NSDictionary*)index:(NSString*)key;
//: - (NSArray*)getArrayForKey:(NSString*)key;
- (NSArray*)towardBy:(NSString*)key;
//: @end
@end

//: @interface NSDictionary (CollationAdditions)
@interface NSDictionary (Cell)
//: - (NSString*)getNameValue;
- (NSString*)inheritStepEigenvalueOfASquareMatrix;
//: - (NSString*)getCodeValue;
- (NSString*)can;
//: @end
@end