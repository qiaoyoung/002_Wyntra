// __DEBUG__
// __CLOSE_PRINT__
//
//  BecloudManager.h
// On
//
//  Created by Netease on 2019/7/15.
//  Copyright © 2019 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: typedef void(^NIMKitUrlCompletion)(NSString * _Nullable originalUrl, NSError * _Nullable error);
typedef void(^NIMKitUrlCompletion)(NSString * _Nullable originalUrl, NSError * _Nullable error);

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface ZZZKitUrlManager : NSObject
@interface BecloudManager : NSObject

//: + (instancetype)shareManager;
+ (instancetype)input;

//: - (void)queryQriginalUrlWithShortUrl:(NSString *)shortUrl
- (void)powerSafely:(NSString *)shortUrl
                          //: completion:(NIMKitUrlCompletion)completion;
                          pinSize:(NIMKitUrlCompletion)completion;


//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END