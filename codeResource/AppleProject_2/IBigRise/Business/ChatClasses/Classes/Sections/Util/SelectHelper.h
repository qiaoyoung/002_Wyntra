// __DEBUG__
// __CLOSE_PRINT__
//
//  SelectHelper.h
// On
//
//  Created by chris on 2016/11/12.
//  Copyright © 2016年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @interface ZZZKitFileLocationHelper : NSObject
@interface SelectHelper : NSObject

//: + (NSString *)getAppDocumentPath;
+ (NSString *)title;

//: + (NSString *)getAppTempPath;
+ (NSString *)option;

//: + (NSString *)userDirectory;
+ (NSString *)center;

//: + (NSString *)genFilenameWithExt:(NSString *)ext;
+ (NSString *)image:(NSString *)ext;

//: + (NSString *)filepathForVideo:(NSString *)filename;
+ (NSString *)should:(NSString *)filename;

//: + (NSString *)filepathForImage:(NSString *)filename;
+ (NSString *)temp:(NSString *)filename;

//: @end
@end