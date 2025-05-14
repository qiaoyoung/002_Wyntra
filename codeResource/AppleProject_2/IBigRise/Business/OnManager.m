
#import <Foundation/Foundation.h>

NSString *StringFromReluctantData(Byte *data);


//: LittleCabbage
Byte kStr_towValue[] = {48, 13, 79, 12, 86, 50, 118, 245, 191, 5, 55, 73, 155, 184, 195, 195, 187, 180, 146, 176, 177, 177, 176, 182, 180, 243};


//: Lproj
Byte kStr_danceCompareName[] = {86, 5, 48, 10, 198, 58, 11, 40, 54, 93, 124, 160, 162, 159, 154, 222};


//: %@@%dx.png
Byte kStr_meanData[] = {61, 10, 48, 7, 100, 237, 162, 85, 112, 112, 85, 148, 168, 94, 160, 158, 151, 36};


//: xml_file
Byte kStr_powerfulExcludeName[] = {29, 8, 15, 13, 2, 253, 62, 183, 21, 143, 56, 37, 250, 135, 124, 123, 110, 117, 120, 123, 116, 242};


//: Emoji
Byte kStr_shellBotName[] = {82, 5, 80, 10, 84, 50, 73, 141, 66, 94, 149, 189, 191, 186, 185, 55};


//: Voice
Byte kStr_impulseCompareContent[] = {48, 5, 96, 13, 105, 4, 34, 29, 197, 33, 49, 222, 160, 182, 207, 201, 195, 197, 66};


//: .zip
Byte kStr_psychologicalName[] = {3, 4, 78, 11, 235, 167, 193, 155, 184, 37, 68, 124, 200, 183, 190, 16};


//: %@.imageset
Byte kStr_adjustmentCurateData[] = {41, 11, 6, 9, 223, 95, 2, 101, 38, 43, 70, 52, 111, 115, 103, 109, 107, 121, 107, 122, 104};


//: file
Byte kStr_realizeName[] = {56, 4, 68, 9, 170, 174, 6, 141, 3, 170, 173, 176, 169, 47};


//: Image
Byte kStr_conscienceDoleValue[] = {67, 5, 74, 14, 222, 227, 5, 46, 206, 250, 23, 182, 221, 239, 147, 183, 171, 177, 175, 66};


//: kSSZipArchiveManagerVersionKey
Byte kStr_ditValue[] = {4, 30, 13, 9, 150, 214, 107, 230, 117, 120, 96, 96, 103, 118, 125, 78, 127, 112, 117, 118, 131, 114, 90, 110, 123, 110, 116, 114, 127, 99, 114, 127, 128, 118, 124, 123, 88, 114, 134, 30};


//: html
Byte kStr_outputName[] = {33, 4, 48, 4, 152, 164, 157, 156, 156};


//: %@.png
Byte kStr_sunnyViewData[] = {72, 6, 41, 5, 199, 78, 105, 87, 153, 151, 144, 138};

// __DEBUG__
// __CLOSE_PRINT__

// __M_A_C_R_O__
//: #import "SSZipArchiveManager.h"
#import "OnManager.h"
//: #import "NTESMigrateHeader.h"
#import "SureMedia.h"

//: @interface SSZipArchiveManager()
@interface OnManager()

//: @property (nonatomic, strong) NSString *appResPath;
@property (nonatomic, strong) NSString *appResPath;

//: @end
@end

//: @implementation SSZipArchiveManager
@implementation OnManager

//: + (instancetype)sharedManager {
+ (instancetype)directorLength {
    //: static SSZipArchiveManager *sharedInstance = nil;
    static OnManager *sharedInstance = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: sharedInstance = [[self alloc] init];
        sharedInstance = [[self alloc] init];
    //: });
    });
    //: return sharedInstance;
    return sharedInstance;
}

//: + (instancetype)allocWithZone:(struct _NSZone *)zone {
+ (instancetype)allocWithZone:(struct _NSZone *)zone {
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: static SSZipArchiveManager *sharedInstance = nil;
    static OnManager *sharedInstance = nil;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: sharedInstance = [super allocWithZone:zone];
        sharedInstance = [super allocWithZone:zone];
    //: });
    });
    //: return sharedInstance;
    return sharedInstance;
}

//: - (id)copyWithZone:(NSZone *)zone {
- (id)modify:(NSZone *)zone {
    //: return self;
    return self;
}

//: - (instancetype)init {
- (instancetype)init {
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: _appResPath = [self calculateAppResPath];
        _appResPath = [self language];
    }
    //: return self;
    return self;
}

//: - (NSString *)calculateAppResPath {
- (NSString *)language {
    //: NSString *docuPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject];
    NSString *docuPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject];
    //: NSString *resDir = [docuPath stringByAppendingPathComponent:@"LittleCabbage"];
    NSString *resDir = [docuPath stringByAppendingPathComponent:StringFromReluctantData(kStr_towValue)];

    //: NSString *version = [[NSUserDefaults standardUserDefaults] stringForKey:@"kSSZipArchiveManagerVersionKey"];
    NSString *version = [[NSUserDefaults standardUserDefaults] stringForKey:StringFromReluctantData(kStr_ditValue)];
    //: if (!version) {
    if (!version) {
        //: version = @""; 
        version = @""; // Default to empty string if nil
    }


    //: if ([version isEqualToString:[NTESMigrateHeader initWithDefaultConfig].appVersion] && [[NSFileManager defaultManager] fileExistsAtPath:resDir]) {
    if ([version isEqualToString:[SureMedia initWithContainerAcross].appVersion] && [[NSFileManager defaultManager] fileExistsAtPath:resDir]) {
        //: return resDir;
        return resDir;
    }

    //: NSString *fileResDir = [[docuPath stringByAppendingPathComponent:@"file"] stringByAppendingPathComponent:@"LittleCabbage"];
    NSString *fileResDir = [[docuPath stringByAppendingPathComponent:StringFromReluctantData(kStr_realizeName)] stringByAppendingPathComponent:StringFromReluctantData(kStr_towValue)];
    //: if ([version isEqualToString:[NTESMigrateHeader initWithDefaultConfig].appVersion] && [[NSFileManager defaultManager] fileExistsAtPath:fileResDir]) {
    if ([version isEqualToString:[SureMedia initWithContainerAcross].appVersion] && [[NSFileManager defaultManager] fileExistsAtPath:fileResDir]) {
        //: return fileResDir;
        return fileResDir;
    }

    //: NSString *path = [[AppleProjectKit sharedKit].emoticonBundle pathForResource:@"LittleCabbage" ofType:@".zip"];
    NSString *path = [[On along].emoticonBundle pathForResource:StringFromReluctantData(kStr_towValue) ofType:StringFromReluctantData(kStr_psychologicalName)];
    //: if (!path) {
    if (!path) {
        //: return @""; 
        return @""; // Return empty string if path is nil
    }

    //: BOOL zipSuc = [SSZipArchive unzipFileAtPath:path
    BOOL zipSuc = [SSZipArchive unzipFileAtPath:path
                                 //: toDestination:docuPath
                                 toDestination:docuPath
                                     //: overwrite:YES
                                     overwrite:YES
                                       //: password:@"LittleCabbage"
                                       password:StringFromReluctantData(kStr_towValue)
                                         //: error:nil];
                                         error:nil];
    //: if (zipSuc) {
    if (zipSuc) {
        //: [[NSUserDefaults standardUserDefaults] setObject:[NTESMigrateHeader initWithDefaultConfig].appVersion forKey:@"kSSZipArchiveManagerVersionKey"];
        [[NSUserDefaults standardUserDefaults] setObject:[SureMedia initWithContainerAcross].appVersion forKey:StringFromReluctantData(kStr_ditValue)];
        //: [[NSUserDefaults standardUserDefaults] synchronize];
        [[NSUserDefaults standardUserDefaults] synchronize];
        //: if ([[NSFileManager defaultManager] fileExistsAtPath:resDir]) {
        if ([[NSFileManager defaultManager] fileExistsAtPath:resDir]) {
            //: return resDir;
            return resDir;
        //: } else {
        } else {
            //: return fileResDir;
            return fileResDir;
        }
    }

    //: return @""; 
    return @""; // Return empty string if unzip fails
}

//: - (NSString *)getHtml_filePath {
- (NSString *)style {
    //: return [_appResPath stringByAppendingPathComponent:@"html"];
    return [_appResPath stringByAppendingPathComponent:StringFromReluctantData(kStr_outputName)];
}

//: - (NSString *)getXML_filePath {
- (NSString *)nameFor {
    //: return [_appResPath stringByAppendingPathComponent:@"xml_file"];
    return [_appResPath stringByAppendingPathComponent:StringFromReluctantData(kStr_powerfulExcludeName)];
}

//: - (NSString *)getEmojiPath {
- (NSString *)byAmbages {
    //: return [_appResPath stringByAppendingPathComponent:@"Emoji"];
    return [_appResPath stringByAppendingPathComponent:StringFromReluctantData(kStr_shellBotName)];
}

//: - (NSString *)getLprojPath {
- (NSString *)name {
    //: return [_appResPath stringByAppendingPathComponent:@"Lproj"];
    return [_appResPath stringByAppendingPathComponent:StringFromReluctantData(kStr_danceCompareName)];
}

//: - (NSString *)getVoicePath {
- (NSString *)event {
    //: return [_appResPath stringByAppendingPathComponent:@"Voice"];
    return [_appResPath stringByAppendingPathComponent:StringFromReluctantData(kStr_impulseCompareContent)];
}

//: - (NSString *)getImagesPath {
- (NSString *)removePath {
    //: return [_appResPath stringByAppendingPathComponent:@"Image"];
    return [_appResPath stringByAppendingPathComponent:StringFromReluctantData(kStr_conscienceDoleValue)];
}

//: - (UIImage *)zip_imageNamed:(NSString *)name {
- (UIImage *)holderred:(NSString *)name {
    // 构建 imageset 路径
    //: NSString *imagesetPath = [[self getImagesPath] stringByAppendingPathComponent:[NSString stringWithFormat:@"%@.imageset", name]];
    NSString *imagesetPath = [[self removePath] stringByAppendingPathComponent:[NSString stringWithFormat:StringFromReluctantData(kStr_adjustmentCurateData), name]];

    // 尝试加载 @2x 和 @3x 图片
    //: CGFloat scale = [UIScreen mainScreen].scale;
    CGFloat scale = [UIScreen mainScreen].scale;
    //: NSString *scaledName = [NSString stringWithFormat:@"%@@%dx.png", name, (int)scale];
    NSString *scaledName = [NSString stringWithFormat:StringFromReluctantData(kStr_meanData), name, (int)scale];
    //: NSString *scaledPath = [imagesetPath stringByAppendingPathComponent:scaledName];
    NSString *scaledPath = [imagesetPath stringByAppendingPathComponent:scaledName];

    //: if ([[NSFileManager defaultManager] fileExistsAtPath:scaledPath]) {
    if ([[NSFileManager defaultManager] fileExistsAtPath:scaledPath]) {
        //: return [UIImage imageWithContentsOfFile:scaledPath];
        return [UIImage imageWithContentsOfFile:scaledPath];
    }

    // 降级到其他倍数图片
    //: NSString *altScaleName = [NSString stringWithFormat:@"%@@%dx.png", name, (scale == 2 ? 3 : 2)];
    NSString *altScaleName = [NSString stringWithFormat:StringFromReluctantData(kStr_meanData), name, (scale == 2 ? 3 : 2)];
    //: NSString *altScalePath = [imagesetPath stringByAppendingPathComponent:altScaleName];
    NSString *altScalePath = [imagesetPath stringByAppendingPathComponent:altScaleName];

    //: if ([[NSFileManager defaultManager] fileExistsAtPath:altScalePath]) {
    if ([[NSFileManager defaultManager] fileExistsAtPath:altScalePath]) {
        //: return [UIImage imageWithContentsOfFile:altScalePath];
        return [UIImage imageWithContentsOfFile:altScalePath];
    }

    // 最后尝试普通图片
    //: NSString *normalPath = [imagesetPath stringByAppendingPathComponent:[NSString stringWithFormat:@"%@.png", name]];
    NSString *normalPath = [imagesetPath stringByAppendingPathComponent:[NSString stringWithFormat:StringFromReluctantData(kStr_sunnyViewData), name]];
    //: if ([[NSFileManager defaultManager] fileExistsAtPath:normalPath]) {
    if ([[NSFileManager defaultManager] fileExistsAtPath:normalPath]) {
        //: return [UIImage imageWithContentsOfFile:normalPath];
        return [UIImage imageWithContentsOfFile:normalPath];
    }

    //: return nil;
    return nil;
}

//: @end
@end

Byte * ReluctantDataToCache(Byte *data) {
    int sandGel = data[0];
    int jampack = data[1];
    Byte decent = data[2];
    int outsideImaginationBackground = data[3];
    if (!sandGel) return data + outsideImaginationBackground;
    for (int i = outsideImaginationBackground; i < outsideImaginationBackground + jampack; i++) {
        int value = data[i] - decent;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[outsideImaginationBackground + jampack] = 0;
    return data + outsideImaginationBackground;
}

NSString *StringFromReluctantData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)ReluctantDataToCache(data)];
}
