// __DEBUG__
// __CLOSE_PRINT__
//
//  CenterConverter.h
//  NIM
//
//  Created by amao on 10/15/13.
//  Copyright (c) 2013 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @interface ZZZPinyinConverter : NSObject
@interface CenterConverter : NSObject

//: + (ZZZPinyinConverter *)sharedInstance;
+ (CenterConverter *)cameraAccount;

//: - (NSString *)toPinyin: (NSString *)source;
- (NSString *)of: (NSString *)source;

//: @end
@end