// __DEBUG__
// __CLOSE_PRINT__
//
//  ZZZBaseSessionContentConfig.h
// On
//
//  Created by amao on 9/15/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>
//: #import "ZZZGlobalMacro.h"
#import "ZZZGlobalMacro.h"

//: @protocol CCCSessionContentConfig <NSObject>
@protocol MaxSize <NSObject>
//: @required
@required

//: - (CGSize)contentSize:(CGFloat)cellWidth message:(NIMMessage *)message;
- (CGSize)myRefer:(CGFloat)cellWidth view:(NIMMessage *)message;

//: - (NSString *)cellContent:(NIMMessage *)message;
- (NSString *)month:(NIMMessage *)message;

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message;
- (UIEdgeInsets)sign:(NIMMessage *)message;


//: @optional
@optional
//: - (BOOL)enableBackgroundBubbleView:(NIMMessage *)message;
- (BOOL)fasted:(NIMMessage *)message;

//: @end
@end

//: @interface CCCSessionContentConfigFactory : NSObject
@interface ContainerFactory : NSObject
//: + (instancetype)sharedFacotry;
+ (instancetype)colorTo;
//: - (id<CCCSessionContentConfig>)configBy:(NIMMessage *)message;
- (id<MaxSize>)addBy:(NIMMessage *)message;
//: - (id<CCCSessionContentConfig>)replyConfigBy:(NIMMessage *)message;
- (id<MaxSize>)sound:(NIMMessage *)message;

//: @end
@end