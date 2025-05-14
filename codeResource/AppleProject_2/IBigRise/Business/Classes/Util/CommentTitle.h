// __DEBUG__
// __CLOSE_PRINT__
//
//  CommentTitle.h
//  NIM
//
//  Created by Netease on 2019/10/17.
//  Copyright © 2019 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import "NTESSnapchatAttachment.h"
#import "BackgroundAttachment.h"
//: #import "NTESJanKenPonAttachment.h"
#import "TeamAttachment.h"
//: #import "NTESWhiteboardAttachment.h"
#import "InsertShare.h"
//: #import "NTESRedPacketAttachment.h"
#import "LanguageEnter.h"
//: #import "NTESRedPacketTipAttachment.h"
#import "TitleAttachment.h"
//: #import "NTESMultiRetweetAttachment.h"
#import "RefreshMessage.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface NTESMessageUtil : NSObject
@interface CommentTitle : NSObject

//: + (NSString *)messageContent:(NIMMessage *)message;
+ (NSString *)complete:(NIMMessage *)message;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END