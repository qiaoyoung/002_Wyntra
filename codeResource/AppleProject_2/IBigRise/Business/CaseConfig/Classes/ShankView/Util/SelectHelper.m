
#import <Foundation/Foundation.h>

NSString *StringFromSpendingData(Byte *data);


//: image
Byte kStr_tianMoveTitle[] = {38, 5, 11, 221, 183, 179, 98, 144, 172, 82, 178, 101, 103, 97, 109, 105, 91};


//: video
Byte kStr_layValue[] = {59, 5, 6, 185, 52, 190, 111, 101, 100, 105, 118, 238};

// __DEBUG__
// __CLOSE_PRINT__
//
//  SelectHelper.m
// On
//
//  Created by chris on 2016/11/12.
//  Copyright © 2016年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZZZKitFileLocationHelper.h"
#import "SelectHelper.h"
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>
//: #import <sys/stat.h>
#import <sys/stat.h>

//: @interface ZZZKitFileLocationHelper ()
@interface SelectHelper ()
//: + (NSString *)filepathForDir: (NSString *)dirname filename: (NSString *)filename;
+ (NSString *)content: (NSString *)dirname pastWhite: (NSString *)filename;
//: @end
@end


//: @implementation ZZZKitFileLocationHelper
@implementation SelectHelper
//: + (BOOL)addSkipBackupAttributeToItemAtURL:(NSURL *)URL
+ (BOOL)send:(NSURL *)URL
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
        //: NSLog(@"Error excluding %@ from backup %@", [URL lastPathComponent], error);
    }
    //: return success;
    return success;

}
//: + (NSString *)getAppDocumentPath
+ (NSString *)title
{
    //: static NSString *appDocumentPath = nil;
    static NSString *appDocumentPath = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: NSString *appKey = [NIMSDK sharedSDK].appKey;
        NSString *appKey = [NIMSDK sharedSDK].appKey;
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
        //: [ZZZKitFileLocationHelper addSkipBackupAttributeToItemAtURL:[NSURL fileURLWithPath:appDocumentPath]];
        [SelectHelper send:[NSURL fileURLWithPath:appDocumentPath]];
    //: });
    });
    //: return appDocumentPath;
    return appDocumentPath;

}

//: + (NSString *)getAppTempPath
+ (NSString *)option
{
    //: return NSTemporaryDirectory();
    return NSTemporaryDirectory();
}

//: + (NSString *)userDirectory
+ (NSString *)center
{
    //: NSString *documentPath = [ZZZKitFileLocationHelper getAppDocumentPath];
    NSString *documentPath = [SelectHelper title];
    //: NSString *userID = [NIMSDK sharedSDK].loginManager.currentAccount;
    NSString *userID = [NIMSDK sharedSDK].loginManager.currentAccount;
    //: if ([userID length] == 0)
    if ([userID length] == 0)
    {
        //: NSLog(@"Error: Get User Directory While UserID Is Empty");
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
+ (NSString *)last: (NSString *)resouceName
{
    //: NSString *dir = [[ZZZKitFileLocationHelper userDirectory] stringByAppendingPathComponent:resouceName];
    NSString *dir = [[SelectHelper center] stringByAppendingPathComponent:resouceName];
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
+ (NSString *)should:(NSString *)filename
{
    //: return [ZZZKitFileLocationHelper filepathForDir:@"video"
    return [SelectHelper content:StringFromSpendingData(kStr_layValue)
                                         //: filename:filename];
                                         pastWhite:filename];
}

//: + (NSString *)filepathForImage:(NSString *)filename
+ (NSString *)temp:(NSString *)filename
{
    //: return [ZZZKitFileLocationHelper filepathForDir:@"image"
    return [SelectHelper content:StringFromSpendingData(kStr_tianMoveTitle)
                                         //: filename:filename];
                                         pastWhite:filename];
}

//: + (NSString *)genFilenameWithExt:(NSString *)ext
+ (NSString *)image:(NSString *)ext
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
+ (NSString *)content:(NSString *)dirname
                    //: filename:(NSString *)filename
                    pastWhite:(NSString *)filename
{
    //: return [[ZZZKitFileLocationHelper resourceDir:dirname] stringByAppendingPathComponent:filename];
    return [[SelectHelper last:dirname] stringByAppendingPathComponent:filename];
}

//: @end
@end

Byte * SpendingDataToCache(Byte *data) {
    int reMagnituded = data[0];
    int scope = data[1];
    int remunerator = data[2];
    if (!reMagnituded) return data + remunerator;
    for (int i = 0; i < scope / 2; i++) {
        int begin = remunerator + i;
        int end = remunerator + scope - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[remunerator + scope] = 0;
    return data + remunerator;
}

NSString *StringFromSpendingData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)SpendingDataToCache(data)];
}  
