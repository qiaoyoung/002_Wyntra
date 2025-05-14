// __DEBUG__
// __CLOSE_PRINT__
//
//  NSData+Item.h
//  NIM
//
//  Created by amao on 7/2/15.
//  Copyright (c) 2015 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @interface NSData (NTES)
@interface NSData (Item)
//: - (NSString *)MD5String;
- (NSString *)mark;

//: - (NSData *)aes256EncryptWithKey:(NSString *)key vector:(NSString *)vector;
- (NSData *)key:(NSString *)key state:(NSString *)vector;
//: - (NSData *)aes256DecryptWithKey:(NSString *)key vector:(NSString *)vector;
- (NSData *)message:(NSString *)key green:(NSString *)vector;

//: - (NSData *)rc4EncryptWithKey:(NSString *)key;
- (NSData *)imageKey:(NSString *)key;
//: - (NSData *)rc4DecryptWithKey:(NSString *)key;
- (NSData *)success:(NSString *)key;

//: @end
@end