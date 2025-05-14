// __DEBUG__
// __CLOSE_PRINT__
//
//  RefreshMessage.h
//  NIM
//
//  Created by Netease on 2019/10/16.
//  Copyright © 2019 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import "NTESCustomAttachmentDefines.h"
#import "NTESCustomAttachmentDefines.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @class NTESMessageAbstract;
@class LightTing;

//: @interface NTESMultiRetweetAttachment : NSObject<NIMCustomAttachment,NTESCustomAttachmentInfo>
@interface RefreshMessage : NSObject<NIMCustomAttachment,ShouldQuantityComment>

//: @property (nonatomic,copy) NSString *md5;
@property (nonatomic,copy) NSString *md5;

//: @property (nonatomic,copy) NSString *url;
@property (nonatomic,copy) NSString *url;

//: @property (nonatomic,assign) BOOL compressed;
@property (nonatomic,assign) BOOL compressed;

//: @property (nonatomic,assign) BOOL encrypted;
@property (nonatomic,assign) BOOL encrypted;

//: @property (nonatomic,copy) NSString *password;
@property (nonatomic,copy) NSString *password;

//: @property (nonatomic,copy) NSString *sessionName;
@property (nonatomic,copy) NSString *sessionName;

//: @property (nonatomic,copy) NSString *sessionId;
@property (nonatomic,copy) NSString *sessionId;

//: @property (nonatomic,copy) NSArray *messageAbstract;
@property (nonatomic,copy) NSArray *messageAbstract;

//: @property (nonatomic,strong) NSMutableArray <NTESMessageAbstract *> *abstracts;
@property (nonatomic,strong) NSMutableArray <LightTing *> *abstracts;

//: @property (nonatomic,copy) NSString *fileName;
@property (nonatomic,copy) NSString *fileName;

//: @property (nonatomic,readonly) NSString * _Nullable filePath;
@property (nonatomic,readonly) NSString * _Nullable filePath;

//: - (NSString *)formatTitleMessage;
- (NSString *)between;

//: - (NSString *)formatAbstractMessage:(NTESMessageAbstract *)abstract;
- (NSString *)message:(LightTing *)abstract;

//: @end
@end

//: @interface NTESMessageAbstract : NSObject
@interface LightTing : NSObject

//: @property (nonatomic, copy) NSString *sender;
@property (nonatomic, copy) NSString *sender;

//: @property (nonatomic, copy) NSString *message;
@property (nonatomic, copy) NSString *message;

//: + (instancetype)abstractWithMessage:(NIMMessage *)message;
+ (instancetype)see:(NIMMessage *)message;

//: + (instancetype)abstractWithDictionary:(NSDictionary *)content;
+ (instancetype)smartBy:(NSDictionary *)content;

//: - (nullable NSDictionary *)abstractDictionary;
- (nullable NSDictionary *)video;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END