
#import <Foundation/Foundation.h>

NSString *StringFromArtifactData(Byte *data);


//: image
Byte kStr_virtuallyValue[] = {92, 5, 64, 9, 58, 62, 144, 38, 163, 169, 173, 161, 167, 165, 43};


//: merge
Byte kStr_addCombineSportData[] = {97, 5, 52, 4, 161, 153, 166, 155, 153, 248};


//: video
Byte kStr_gageHostageData[] = {91, 5, 24, 4, 142, 129, 124, 125, 135, 250};

// __DEBUG__
// __CLOSE_PRINT__
//
//  FileWithAddCell.m
//  NIM
//
//  Created by chris on 15/4/12.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESFileLocationHelper.h"
#import "FileWithAddCell.h"
//: #import <sys/stat.h>
#import <sys/stat.h>
//: #import "ZZZConfig.h"
#import "LabelSure.h"

//: @interface NTESFileLocationHelper ()
@interface FileWithAddCell ()
//: + (NSString *)filepathForDir: (NSString *)dirname filename: (NSString *)filename;
+ (NSString *)name: (NSString *)dirname valueFilename: (NSString *)filename;
//: @end
@end


//: @implementation NTESFileLocationHelper
@implementation FileWithAddCell
//: + (BOOL)addSkipBackupAttributeToItemAtURL:(NSURL *)URL
+ (BOOL)addUponAstatine:(NSURL *)URL
{
    //: assert([[NSFileManager defaultManager] fileExistsAtPath: [URL path]]);
    assert([[NSFileManager defaultManager] fileExistsAtPath: [URL path]]);


    //: NSError *error = nil;
    NSError *error = nil;
    //: BOOL success = [URL setResourceValue:@(YES)
    BOOL success = [URL setResourceValue:@(YES)
                                  //: forKey:NSURLIsExcludedFromBackupKey
                                  forKey:NSURLIsExcludedFromBackupKey
                                   //: error:&error];
                                   error:&error];
    //: if(!success)
    if(!success)
    {
    }
    //: return success;
    return success;

}
//: + (NSString *)getAppDocumentPath
+ (NSString *)holder
{
    //: static NSString *appDocumentPath = nil;
    static NSString *appDocumentPath = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: NSString *appKey = [[ZZZConfig sharedConfig] appKey];
        NSString *appKey = [[LabelSure with] appKey];
        //: NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
        NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
        //: appDocumentPath= [[NSString alloc]initWithFormat:@"%@/%@/",[paths objectAtIndex:0],appKey];
        appDocumentPath= [[NSString alloc]initWithFormat:@"%@/%@/",[paths objectAtIndex:0],appKey];
        //: if (![[NSFileManager defaultManager] fileExistsAtPath:appDocumentPath])
        if (![[NSFileManager defaultManager] fileExistsAtPath:appDocumentPath])
        {
            //: [[NSFileManager defaultManager] createDirectoryAtPath:appDocumentPath
            [[NSFileManager defaultManager] createDirectoryAtPath:appDocumentPath
                                      //: withIntermediateDirectories:NO
                                      withIntermediateDirectories:NO
                                                       //: attributes:nil
                                                       attributes:nil
                                                            //: error:nil];
                                                            error:nil];
        }
        //: [NTESFileLocationHelper addSkipBackupAttributeToItemAtURL:[NSURL fileURLWithPath:appDocumentPath]];
        [FileWithAddCell addUponAstatine:[NSURL fileURLWithPath:appDocumentPath]];
    //: });
    });
    //: return appDocumentPath;
    return appDocumentPath;

}

//: + (NSString *)getAppTempPath
+ (NSString *)read
{
    //: return NSTemporaryDirectory();
    return NSTemporaryDirectory();
}

//: + (NSString *)userDirectory
+ (NSString *)addDirectory
{
    //: NSString *documentPath = [NTESFileLocationHelper getAppDocumentPath];
    NSString *documentPath = [FileWithAddCell holder];
    //: NSString *userID = [NIMSDK sharedSDK].loginManager.currentAccount;
    NSString *userID = [NIMSDK sharedSDK].loginManager.currentAccount;
    //: if ([userID length] == 0)
    if ([userID length] == 0)
    {
    }
    //: NSString* userDirectory= [NSString stringWithFormat:@"%@%@/",documentPath,userID];
    NSString* userDirectory= [NSString stringWithFormat:@"%@%@/",documentPath,userID];
    //: if (![[NSFileManager defaultManager] fileExistsAtPath:userDirectory])
    if (![[NSFileManager defaultManager] fileExistsAtPath:userDirectory])
    {
        //: [[NSFileManager defaultManager] createDirectoryAtPath:userDirectory
        [[NSFileManager defaultManager] createDirectoryAtPath:userDirectory
                                  //: withIntermediateDirectories:NO
                                  withIntermediateDirectories:NO
                                                   //: attributes:nil
                                                   attributes:nil
                                                        //: error:nil];
                                                        error:nil];

    }
    //: return userDirectory;
    return userDirectory;
}

//: + (NSString *)resourceDir: (NSString *)resouceName
+ (NSString *)date: (NSString *)resouceName
{
    //: NSString *dir = [[NTESFileLocationHelper userDirectory] stringByAppendingPathComponent:resouceName];
    NSString *dir = [[FileWithAddCell addDirectory] stringByAppendingPathComponent:resouceName];
    //: if (![[NSFileManager defaultManager] fileExistsAtPath:dir])
    if (![[NSFileManager defaultManager] fileExistsAtPath:dir])
    {
        //: [[NSFileManager defaultManager] createDirectoryAtPath:dir
        [[NSFileManager defaultManager] createDirectoryAtPath:dir
                                  //: withIntermediateDirectories:NO
                                  withIntermediateDirectories:NO
                                                   //: attributes:nil
                                                   attributes:nil
                                                        //: error:nil];
                                                        error:nil];
    }
    //: return dir;
    return dir;
}


//: + (NSString *)filepathForVideo:(NSString *)filename
+ (NSString *)show:(NSString *)filename
{
    //: return [NTESFileLocationHelper filepathForDir:(@"video")
    return [FileWithAddCell name:(StringFromArtifactData(kStr_gageHostageData))
                                     //: filename:filename];
                                     valueFilename:filename];
}

//: + (NSString *)filepathForImage:(NSString *)filename
+ (NSString *)my:(NSString *)filename
{
    //: return [NTESFileLocationHelper filepathForDir:(@"image")
    return [FileWithAddCell name:(StringFromArtifactData(kStr_virtuallyValue))
                                     //: filename:filename];
                                     valueFilename:filename];
}

//: + (NSString *)filepathForMergeForwardFile:(NSString *)filename {
+ (NSString *)paper:(NSString *)filename {
    //: return [NTESFileLocationHelper filepathForDir:(@"merge")
    return [FileWithAddCell name:(StringFromArtifactData(kStr_addCombineSportData))
                                     //: filename:filename];
                                     valueFilename:filename];
}

//: + (NSString *)genFilenameWithExt:(NSString *)ext
+ (NSString *)bubbleExt:(NSString *)ext
{
    //: CFUUIDRef uuid = CFUUIDCreate(nil);
    CFUUIDRef uuid = CFUUIDCreate(nil);
    //: NSString *uuidString = (__bridge_transfer NSString*)CFUUIDCreateString(nil, uuid);
    NSString *uuidString = (__bridge_transfer NSString*)CFUUIDCreateString(nil, uuid);
    //: CFRelease(uuid);
    CFRelease(uuid);
    //: NSString *uuidStr = [[uuidString stringByReplacingOccurrencesOfString:@"-" withString:@""] lowercaseString];
    NSString *uuidStr = [[uuidString stringByReplacingOccurrencesOfString:@"-" withString:@""] lowercaseString];
    //: NSString *name = [NSString stringWithFormat:@"%@",uuidStr];
    NSString *name = [NSString stringWithFormat:@"%@",uuidStr];
    //: return [ext length] ? [NSString stringWithFormat:@"%@.%@",name,ext]:name;
    return [ext length] ? [NSString stringWithFormat:@"%@.%@",name,ext]:name;
}


//: #pragma mark - 辅助方法
#pragma mark - 辅助方法
//: + (NSString *)filepathForDir:(NSString *)dirname
+ (NSString *)name:(NSString *)dirname
                    //: filename:(NSString *)filename
                    valueFilename:(NSString *)filename
{
    //: return [[NTESFileLocationHelper resourceDir:dirname] stringByAppendingPathComponent:filename];
    return [[FileWithAddCell date:dirname] stringByAppendingPathComponent:filename];
}

//: @end
@end

Byte * ArtifactDataToCache(Byte *data) {
    int methodBox = data[0];
    int damnScan = data[1];
    Byte damn = data[2];
    int creaseShoot = data[3];
    if (!methodBox) return data + creaseShoot;
    for (int i = creaseShoot; i < creaseShoot + damnScan; i++) {
        int value = data[i] - damn;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[creaseShoot + damnScan] = 0;
    return data + creaseShoot;
}

NSString *StringFromArtifactData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)ArtifactDataToCache(data)];
}
