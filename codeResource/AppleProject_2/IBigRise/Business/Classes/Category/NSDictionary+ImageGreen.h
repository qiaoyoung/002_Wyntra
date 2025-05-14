// __DEBUG__
// __CLOSE_PRINT__
//
//  NSDictionary+ImageGreen.h
//  NIM
//
//  Created by amao on 13-7-12.
//  Copyright (c) 2013年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @interface NSDictionary (NTESJson)
@interface NSDictionary (ImageGreen)
//: - (NSString *)jsonString: (NSString *)key;
- (NSString *)show: (NSString *)key;

//: - (NSDictionary *)jsonDict: (NSString *)key;
- (NSDictionary *)info: (NSString *)key;
//: - (NSArray *)jsonArray: (NSString *)key;
- (NSArray *)date: (NSString *)key;
//: - (NSArray *)jsonStringArray: (NSString *)key;
- (NSArray *)remote: (NSString *)key;


//: - (BOOL)jsonBool: (NSString *)key;
- (BOOL)wearerName: (NSString *)key;
//: - (NSInteger)jsonInteger: (NSString *)key;
- (NSInteger)plumbSum: (NSString *)key;
//: - (long long)jsonLongLong: (NSString *)key;
- (long long)nameLong: (NSString *)key;
//: - (unsigned long long)jsonUnsignedLongLong:(NSString *)key;
- (unsigned long long)title:(NSString *)key;

//: - (double)jsonDouble: (NSString *)key;
- (double)safetyPlay: (NSString *)key;
//: @end
@end