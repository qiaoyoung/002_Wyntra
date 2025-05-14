
#import <Foundation/Foundation.h>

NSString *StringFromTensionData(Byte *data);        


//: emoji.plist
Byte kStr_piracyWithConvictValue[] = {58, 11, 35, 14, 224, 127, 240, 22, 229, 168, 217, 234, 21, 4, 66, 74, 76, 71, 70, 11, 77, 73, 70, 80, 81, 222};


//: en.lproj
Byte kStr_hugValue[] = {68, 8, 43, 14, 130, 66, 137, 31, 234, 210, 82, 211, 222, 34, 58, 67, 3, 65, 69, 71, 68, 63, 110};


//: NSUserDefaultLanguage
Byte kStr_moveShouldTitle[] = {43, 21, 35, 12, 56, 186, 59, 2, 236, 183, 56, 23, 43, 48, 50, 80, 66, 79, 33, 66, 67, 62, 82, 73, 81, 41, 62, 75, 68, 82, 62, 68, 66, 83};


//: emoji_ios.plist
Byte kStr_phoneContent[] = {47, 15, 68, 13, 75, 146, 23, 81, 23, 199, 239, 101, 161, 33, 41, 43, 38, 37, 27, 37, 43, 47, 234, 44, 40, 37, 47, 48, 29};


//: %@.lproj
Byte kStr_fallValue[] = {80, 8, 74, 11, 221, 18, 53, 146, 91, 124, 10, 219, 246, 228, 34, 38, 40, 37, 32, 14};


//: bundle
Byte kStr_byBoxName[] = {57, 6, 62, 9, 203, 144, 240, 46, 149, 36, 55, 48, 38, 46, 39, 50};


//: LittleCabbage
Byte kStr_historicallyTitle[] = {24, 13, 49, 5, 144, 27, 56, 67, 67, 59, 52, 18, 48, 49, 49, 48, 54, 52, 103};

// __DEBUG__
// __CLOSE_PRINT__
//
//  NSBundle+NIMKit.m
// On
//
//  Created by Genning-Work on 2019/11/14.
//  Copyright © 2019 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NSBundle+AppleProjectKit.h"
#import "NSBundle+On.h"
//: #import "AppleProjectKit.h"
#import "On.h"
//: #import "ZZZInputEmoticonDefine.h"
#import "ZZZInputEmoticonDefine.h"
//: #import "SSZipArchiveManager.h"
#import "OnManager.h"

//: @implementation NSBundle (AppleProjectKit)
@implementation NSBundle (On)

//: + (NSBundle *)nim_defaultEmojiBundle {
+ (NSBundle *)rubric {
    //: NSBundle *bundle = [NSBundle bundleForClass:[AppleProjectKit class]];
    NSBundle *bundle = [NSBundle bundleForClass:[On class]];
    //: NSURL *url = [bundle URLForResource:@"LittleCabbage" withExtension:@"bundle"];
    NSURL *url = [bundle URLForResource:StringFromTensionData(kStr_historicallyTitle) withExtension:StringFromTensionData(kStr_byBoxName)];
    //: NSBundle *emojiBundle = [NSBundle bundleWithURL:url];
    NSBundle *emojiBundle = [NSBundle bundleWithURL:url];
    //: return emojiBundle;
    return emojiBundle;
}

//: + (NSBundle *)nim_defaultLanguageBundle {
+ (NSBundle *)text {
    // 获取语言资源所在路径
    //: NSString *lprojPath = [[SSZipArchiveManager sharedManager] getLprojPath];
    NSString *lprojPath = [[OnManager directorLength] name];
    //: if (!lprojPath || ![lprojPath length]) {
    if (!lprojPath || ![lprojPath length]) {
        //: return nil;
        return nil;
    }

    // 构建完整的语言资源路径
    //: NSString *languageName = [self preferredLanguage];
    NSString *languageName = [self reasonWith];
    //: NSString *fullLprojPath = [lprojPath stringByAppendingPathComponent:[NSString stringWithFormat:@"%@.lproj", languageName]];
    NSString *fullLprojPath = [lprojPath stringByAppendingPathComponent:[NSString stringWithFormat:StringFromTensionData(kStr_fallValue), languageName]];

    // 检查路径是否存在
    //: if (![[NSFileManager defaultManager] fileExistsAtPath:fullLprojPath]) {
    if (![[NSFileManager defaultManager] fileExistsAtPath:fullLprojPath]) {
        // 如果指定语言的资源不存在，尝试使用默认语言（英语）
        //: fullLprojPath = [lprojPath stringByAppendingPathComponent:@"en.lproj"];
        fullLprojPath = [lprojPath stringByAppendingPathComponent:StringFromTensionData(kStr_hugValue)];
        //: if (![[NSFileManager defaultManager] fileExistsAtPath:fullLprojPath]) {
        if (![[NSFileManager defaultManager] fileExistsAtPath:fullLprojPath]) {
            //: return nil;
            return nil;
        }
    }

    // 创建并返回语言资源包
    //: return [NSBundle bundleWithPath:fullLprojPath];
    return [NSBundle bundleWithPath:fullLprojPath];
}

//: + (NSString *)nim_EmojiPlistFile {
+ (NSString *)subSelected {
    //: NSString *emojiPath = [[SSZipArchiveManager sharedManager] getEmojiPath];
    NSString *emojiPath = [[OnManager directorLength] byAmbages];
    //: NSString *plistPath = [emojiPath stringByAppendingPathComponent:@"emoji_ios.plist"];
    NSString *plistPath = [emojiPath stringByAppendingPathComponent:StringFromTensionData(kStr_phoneContent)];
    //: if ([[NSFileManager defaultManager] fileExistsAtPath:plistPath]) {
    if ([[NSFileManager defaultManager] fileExistsAtPath:plistPath]) {
        //: return plistPath;
        return plistPath;
    }
    //: return @"";
    return @"";
//    NSBundle *bundle = [On sharedKit].emoticonBundle;
//    NSString *filepath = [bundle pathForResource:@"emoji_ios" ofType:@"plist" inDirectory:NEEKIT_EmojiPath];
//    return filepath;
}


//: + (NSString *)nim_EmojiGifPlistFile {
+ (NSString *)object {
    //: NSString *emojiPath = [[SSZipArchiveManager sharedManager] getEmojiPath];
    NSString *emojiPath = [[OnManager directorLength] byAmbages];
    //: NSString *plistPath = [emojiPath stringByAppendingPathComponent:@"emoji.plist"];
    NSString *plistPath = [emojiPath stringByAppendingPathComponent:StringFromTensionData(kStr_piracyWithConvictValue)];
    //: if ([[NSFileManager defaultManager] fileExistsAtPath:plistPath]) {
    if ([[NSFileManager defaultManager] fileExistsAtPath:plistPath]) {
        //: return plistPath;
        return plistPath;
    }
    //: return @"";
    return @"";
//    NSBundle *bundle = [On sharedKit].emoticonBundle;
//    NSString *filepath = [bundle pathForResource:@"emoji" ofType:@"plist" inDirectory:NEEKIT_EmojiPath];
//    return filepath;
}

//: + (NSString *)preferredLanguage
+ (NSString *)reasonWith
{

    //: NSString *lang = [[NSUserDefaults standardUserDefaults] objectForKey:@"NSUserDefaultLanguage"];
    NSString *lang = [[NSUserDefaults standardUserDefaults] objectForKey:StringFromTensionData(kStr_moveShouldTitle)];
    //: if (lang.length <= 0) {
    if (lang.length <= 0) {
        //: lang = @"en";
        lang = @"en";
    }
//    NSString * preferredLanguage = [NSLocale preferredLanguages].firstObject;
//    if ([preferredLanguage rangeOfString:@"zh-Hans"].location != NSNotFound) {
//        preferredLanguage = @"zh";
//    } else {
//        preferredLanguage = @"en";
//    }

    //: return lang;
    return lang;
}


//: @end
@end

Byte * TensionDataToCache(Byte *data) {
    int shell = data[0];
    int barrel = data[1];
    Byte convictTing = data[2];
    int fashionHeadquarters = data[3];
    if (!shell) return data + fashionHeadquarters;
    for (int i = fashionHeadquarters; i < fashionHeadquarters + barrel; i++) {
        int value = data[i] + convictTing;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[fashionHeadquarters + barrel] = 0;
    return data + fashionHeadquarters;
}

NSString *StringFromTensionData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)TensionDataToCache(data)];
}
