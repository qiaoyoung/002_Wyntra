// __DEBUG__
// __CLOSE_PRINT__
//
//  EmptyRemoveSerialization.h
//  NIM
//
//  Created by Netease on 2019/10/16.
//  Copyright © 2019 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @class NTESMessageSerializationInfo;
@class ContentInfo;

//: typedef void(^NTESMessageEncodeResult)(NSError * _Nullable error, NTESMessageSerializationInfo * _Nullable info);
typedef void(^NTESMessageEncodeResult)(NSError * _Nullable error, ContentInfo * _Nullable info);
//: typedef void(^NTESMessageDecodeResult)(NSError * _Nullable error, NSMutableArray<NIMMessage *> * _Nullable messages);
typedef void(^NTESMessageDecodeResult)(NSError * _Nullable error, NSMutableArray<NIMMessage *> * _Nullable messages);

//: @interface NTESMessageSerialization : NSObject
@interface EmptyRemoveSerialization : NSObject

//: - (void)encode:(NSArray <NIMMessage *>*)messages
- (void)view:(NSArray <NIMMessage *>*)messages
       //: encrypt:(BOOL)encrypt
       duringWith:(BOOL)encrypt
      //: password:(NSString *)password
      color:(NSString *)password
    //: completion:(NTESMessageEncodeResult)completion;
    imageFormat:(NTESMessageEncodeResult)completion;

//: - (void)decode:(NSString *)filePath
- (void)container:(NSString *)filePath
       //: encrypt:(BOOL)encrypt
       visualization:(BOOL)encrypt
      //: password:(NSString *)password
      manager:(NSString *)password
    //: completion:(NTESMessageDecodeResult)completion;
    show:(NTESMessageDecodeResult)completion;

//: @end
@end

//: @interface NTESMessageSerializationInfo : NSObject
@interface ContentInfo : NSObject

//: @property (nonatomic, copy) NSString *filePath;
@property (nonatomic, copy) NSString *filePath;

//: @property (nonatomic, copy) NSString *md5;
@property (nonatomic, copy) NSString *md5;

//: @property (nonatomic, assign) BOOL encrypted;
@property (nonatomic, assign) BOOL encrypted;

//: @property (nonatomic, copy) NSString *password;
@property (nonatomic, copy) NSString *password;

//: @property (nonatomic, assign) BOOL compressed;
@property (nonatomic, assign) BOOL compressed;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END