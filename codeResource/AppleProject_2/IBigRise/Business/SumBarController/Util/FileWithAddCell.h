// __DEBUG__
// __CLOSE_PRINT__
//
//  FileWithAddCell.h
//  NIM
//
//  Created by chris on 15/4/12.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @interface NTESFileLocationHelper : NSObject
@interface FileWithAddCell : NSObject

//: + (NSString *)getAppDocumentPath;
+ (NSString *)holder;

//: + (NSString *)getAppTempPath;
+ (NSString *)read;

//: + (NSString *)userDirectory;
+ (NSString *)addDirectory;

//: + (NSString *)genFilenameWithExt:(NSString *)ext;
+ (NSString *)bubbleExt:(NSString *)ext;

//: + (NSString *)filepathForVideo:(NSString *)filename;
+ (NSString *)show:(NSString *)filename;

//: + (NSString *)filepathForImage:(NSString *)filename;
+ (NSString *)my:(NSString *)filename;

//: + (NSString *)filepathForMergeForwardFile:(NSString *)filename;
+ (NSString *)paper:(NSString *)filename;

//: @end
@end