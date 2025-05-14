
#import <Foundation/Foundation.h>
typedef struct {
    Byte student;
    Byte *bronze;
    unsigned int maintenanceCharm;
    bool golfMidst;
	int muscle;
	int goryGal;
	int bent;
} DenialData;

NSString *StringFromDenialData(DenialData *data);


//: tyl_spellingCache
DenialData kStr_leastEyebrowValue = (DenialData){253, (Byte []){137, 132, 145, 162, 142, 141, 152, 145, 145, 148, 147, 154, 190, 156, 158, 149, 152, 182}, 17, false, 201, 105, 186};

// __DEBUG__
// __CLOSE_PRINT__
//
//  ItemTing.m
//  NIM
//
//  Created by amao on 13-1-21.
//  Copyright (c) 2013年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZZZSpellingCenter.h"
#import "SimulationCenter.h"
//: #import "ZZZPinyinConverter.h"
#import "CenterConverter.h"
//: #import "YYModel/YYModel.h"
#import "YYModel/YYModel.h"
//: #import "NSObject+YYModel.h"
#import "NSObject+YYModel.h"

//: @implementation NIMSpellingUnit
@implementation CheckMessage

//: @end
@end

//: @interface ZZZSpellingCenter ()
@interface SimulationCenter ()
//: - (NIMSpellingUnit *)calcSpellingOfString: (NSString *)source;
- (CheckMessage *)dedicationName: (NSString *)source;
//: @end
@end


//: @implementation ZZZSpellingCenter
@implementation SimulationCenter
//: + (ZZZSpellingCenter *)sharedCenter
+ (SimulationCenter *)centreOff
{
    //: static ZZZSpellingCenter *instance = nil;
    static SimulationCenter *instance = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: instance = [[ZZZSpellingCenter alloc]init];
        instance = [[SimulationCenter alloc]init];
    //: });
    });
    //: return instance;
    return instance;
}

//: - (id)init
- (id)init
{
    //: if (self = [super init])
    if (self = [super init])
    {
        //: NSDictionary *spellingCache = [[NSUserDefaults standardUserDefaults] objectForKey:@"tyl_spellingCache"];
        NSDictionary *spellingCache = [[NSUserDefaults standardUserDefaults] objectForKey:StringFromDenialData(&kStr_leastEyebrowValue)];
        //: if (spellingCache) {
        if (spellingCache) {
            //: _spellingCache = [[NSMutableDictionary alloc]initWithDictionary:[NSDictionary yy_modelDictionaryWithClass:[NIMSpellingUnit class] json:spellingCache]];
            _spellingCache = [[NSMutableDictionary alloc]initWithDictionary:[NSDictionary yy_modelDictionaryWithClass:[CheckMessage class] json:spellingCache]];
        }

        //: if (!_spellingCache)
        if (!_spellingCache)
        {
            //: _spellingCache = [[NSMutableDictionary alloc]init];
            _spellingCache = [[NSMutableDictionary alloc]init];
        }
    }
    //: return self;
    return self;
}



//: - (void)saveSpellingCache
- (void)input
{
    //: static const NSInteger kMaxEntriesCount = 5000;
    static const NSInteger kMaxEntriesCount = 5000;
    //: @synchronized(self)
    @synchronized(self)
    {
        //: NSInteger count = [_spellingCache count];
        NSInteger count = [_spellingCache count];
        //: if (count >= kMaxEntriesCount)
        if (count >= kMaxEntriesCount)
        {
            //: [_spellingCache removeAllObjects];
            [_spellingCache removeAllObjects];
        }
        //: if (_spellingCache)
        if (_spellingCache)
        {
            //: [[NSUserDefaults standardUserDefaults] setObject:[_spellingCache yy_modelToJSONString] forKey:@"tyl_spellingCache"];
            [[NSUserDefaults standardUserDefaults] setObject:[_spellingCache yy_modelToJSONString] forKey:StringFromDenialData(&kStr_leastEyebrowValue)];
        }

    }
}


//: - (NIMSpellingUnit *)spellingForString:(NSString *)source
- (CheckMessage *)tingUponSnapline:(NSString *)source
{
    //: if ([source length] == 0)
    if ([source length] == 0)
    {
        //: return nil;
        return nil;
    }
    //: NIMSpellingUnit *spellingUnit = nil;
    CheckMessage *spellingUnit = nil;
    //: @synchronized(self)
    @synchronized(self)
    {
        //: NIMSpellingUnit *unit = [_spellingCache objectForKey:source];
        CheckMessage *unit = [_spellingCache objectForKey:source];
        //: if (!unit)
        if (!unit)
        {
            //: unit = [self calcSpellingOfString:source];
            unit = [self dedicationName:source];
            //: if ([unit.fullSpelling length] && [unit.shortSpelling length])
            if ([unit.fullSpelling length] && [unit.shortSpelling length])
            {
                //: [_spellingCache setObject:unit forKey:source];
                [_spellingCache setObject:unit forKey:source];
            }
        }
        //: spellingUnit = unit;
        spellingUnit = unit;
    }
    //: return spellingUnit;
    return spellingUnit;
}

//: - (NSString *)firstLetter:(NSString *)input
- (NSString *)language:(NSString *)input
{
    //: NIMSpellingUnit *unit = [self spellingForString:input];
    CheckMessage *unit = [self tingUponSnapline:input];
    //: NSString *spelling = unit.fullSpelling;
    NSString *spelling = unit.fullSpelling;
    //: return [spelling length] ? [spelling substringWithRange:NSMakeRange(0, 1)] : nil;
    return [spelling length] ? [spelling substringWithRange:NSMakeRange(0, 1)] : nil;
}


//: - (NIMSpellingUnit *)calcSpellingOfString:(NSString *)source
- (CheckMessage *)dedicationName:(NSString *)source
{
    //: NSMutableString *fullSpelling = [[NSMutableString alloc]init];
    NSMutableString *fullSpelling = [[NSMutableString alloc]init];
    //: NSMutableString *shortSpelling= [[NSMutableString alloc]init];
    NSMutableString *shortSpelling= [[NSMutableString alloc]init];
    //: for (NSInteger i = 0; i < [source length]; i++)
    for (NSInteger i = 0; i < [source length]; i++)
    {
        //: NSString *word = [source substringWithRange:NSMakeRange(i, 1)];
        NSString *word = [source substringWithRange:NSMakeRange(i, 1)];
        //: NSString *pinyin = [[ZZZPinyinConverter sharedInstance] toPinyin:word];
        NSString *pinyin = [[CenterConverter cameraAccount] of:word];

        //: if ([pinyin length])
        if ([pinyin length])
        {
            //: [fullSpelling appendString:pinyin];
            [fullSpelling appendString:pinyin];
            //: [shortSpelling appendString:[pinyin substringToIndex:1]];
            [shortSpelling appendString:[pinyin substringToIndex:1]];
        }
    }

    //: NIMSpellingUnit *unit = [[NIMSpellingUnit alloc]init];
    CheckMessage *unit = [[CheckMessage alloc]init];
    //: unit.fullSpelling = [fullSpelling lowercaseString];
    unit.fullSpelling = [fullSpelling lowercaseString];
    //: unit.shortSpelling= [shortSpelling lowercaseString];
    unit.shortSpelling= [shortSpelling lowercaseString];
    //: return unit;
    return unit;
}




//: @end
@end

Byte *DenialDataToByte(DenialData *data) {
    if (data->golfMidst) return data->bronze;
    for (int i = 0; i < data->maintenanceCharm; i++) {
        data->bronze[i] ^= data->student;
    }
    data->bronze[data->maintenanceCharm] = 0;
    data->golfMidst = true;
	if (data->maintenanceCharm >= 3) {
		data->muscle = data->bronze[0];
		data->goryGal = data->bronze[1];
		data->bent = data->bronze[2];
	}
    return data->bronze;
}

NSString *StringFromDenialData(DenialData *data) {
    return [NSString stringWithUTF8String:(char *)DenialDataToByte(data)];
}
