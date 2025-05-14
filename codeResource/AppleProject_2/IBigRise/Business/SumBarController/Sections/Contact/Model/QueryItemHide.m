
#import <Foundation/Foundation.h>

NSString *StringFromGlassData(Byte *data);


//: NTESContactDataItem
Byte kStr_recordingLabelProgressValue[] = {64, 19, 21, 13, 207, 157, 122, 137, 46, 191, 24, 255, 140, 99, 105, 90, 104, 88, 132, 131, 137, 118, 120, 137, 89, 118, 137, 118, 94, 137, 122, 130, 174};

// __DEBUG__
// __CLOSE_PRINT__
//
//  QueryItemHide.m
//  NIM
//
//  Created by chris on 15/9/21.
//  Copyright © 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESContactDataMember.h"
#import "QueryItemHide.h"
//: #import "NTESSpellingCenter.h"
#import "ItemTing.h"

//: @implementation NTESContactDataMember
@implementation QueryItemHide

//: - (CGFloat)uiHeight{
- (CGFloat)title{
    //: return 60;
    return 60;
}

//userId和Vcname必有一个有值，根据有值的状态push进不同的页面

//: - (NSString *)vcName{
- (NSString *)quick{
    //: return nil;
    return nil;
}

//: - (NSString *)reuseId{
- (NSString *)gray{
    //: return @"NTESContactDataItem";
    return StringFromGlassData(kStr_recordingLabelProgressValue);
}

//: - (NSString *)cellName{
- (NSString *)compartment{
    //: return @"NTESContactDataCell";
    return @"TingDisableView";
}

//: - (NSString *)badge{
- (NSString *)color{
    //: return @"";
    return @"";
}

- (NSString *)groupTitle {
    //: NSString *title = [[NTESSpellingCenter sharedCenter] firstLetter:self.info.showName].capitalizedString;
    NSString *title = [[ItemTing collectiveTingMiddle] instance:self.info.showName].capitalizedString;
    //: unichar character = [title characterAtIndex:0];
    unichar character = [title characterAtIndex:0];
    //: if (character >= 'A' && character <= 'Z') {
    if (character >= 'A' && character <= 'Z') {
        //: return title;
        return title;
    //: }else{
    }else{
        //: return @"#";
        return @"#";
    }
}

//: - (NSString *)userId{
- (NSString *)saveTo{
    //: return self.info.infoId;
    return self.info.infoId;
}

//: - (UIImage *)icon{
- (UIImage *)page{
    //: return self.info.avatarImage;
    return self.info.avatarImage;
}

//: - (NSString *)avatarUrl{
- (NSString *)lineBy{
    //: return self.info.avatarUrlString;
    return self.info.avatarUrlString;
}

//: - (NSString *)memberId{
- (NSString *)memberId{
    //: return self.info.infoId;
    return self.info.infoId;
}

//: - (NSString *)showName{
- (NSString *)showName{
    //: return self.info.showName;
    return self.info.showName;
}

//: - (BOOL)showAccessoryView{
- (BOOL)inputBegin{
    //: return NO;
    return NO;
}

//: - (id)sortKey {
- (id)sortKey {
    //: return [[NTESSpellingCenter sharedCenter] spellingForString:self.info.showName].shortSpelling;
    return [[ItemTing collectiveTingMiddle] unwished:self.info.showName].shortSpelling;
}

//: - (BOOL)isEqual:(id)object{
- (BOOL)isEqual:(id)object{
    //: if (![object isKindOfClass:[self class]]) {
    if (![object isKindOfClass:[self class]]) {
        //: return NO;
        return NO;
    }
    //: return [self.info.infoId isEqualToString:[[object info] infoId]];
    return [self.info.infoId isEqualToString:[[object info] infoId]];
}


//: @end
@end

Byte * GlassDataToCache(Byte *data) {
    int birdSEyeView = data[0];
    int field = data[1];
    Byte circleMessage = data[2];
    int keyRecording = data[3];
    if (!birdSEyeView) return data + keyRecording;
    for (int i = keyRecording; i < keyRecording + field; i++) {
        int value = data[i] - circleMessage;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[keyRecording + field] = 0;
    return data + keyRecording;
}

NSString *StringFromGlassData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)GlassDataToCache(data)];
}
