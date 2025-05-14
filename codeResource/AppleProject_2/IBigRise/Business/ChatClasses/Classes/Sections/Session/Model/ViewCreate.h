// __DEBUG__
// __CLOSE_PRINT__
//
//  ViewCreate.h
// On
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>

//: @class AppleProjectKitLocationPoint;
@class AppleProjectKitLocationPoint;

//: @interface ZZZMessageMaker : NSObject
@interface ViewCreate : NSObject

//: + (NIMMessage*)msgWithText:(NSString *)text;
+ (NIMMessage*)name:(NSString *)text;

//: + (NIMMessage *)msgWithAudio:(NSString *)filePath;
+ (NIMMessage *)shareVoice:(NSString *)filePath;

//: + (NIMMessage *)msgWithImage:(UIImage *)image;
+ (NIMMessage *)statuteName:(UIImage *)image;

//: + (NIMMessage *)msgWithImagePath:(NSString *)path;
+ (NIMMessage *)title:(NSString *)path;

//: + (NIMMessage *)msgWithImageData:(NSData *)data extension:(NSString *)extension;
+ (NIMMessage *)can:(NSData *)data postponement_strong:(NSString *)extension;

//: + (NIMMessage *)msgWithVideo:(NSString *)filePath;
+ (NIMMessage *)length:(NSString *)filePath;


//: @end
@end


//: @interface NIMCommentMaker : NSObject
@interface CellMaker : NSObject

//: + (NIMQuickComment *)commentWithType:(int64_t)type
+ (NIMQuickComment *)info:(int64_t)type
                             //: content:(NSString *)content
                             contentMessage:(NSString *)content
                                 //: ext:(NSString *)ext;
                                 cerise:(NSString *)ext;

//: @end
@end