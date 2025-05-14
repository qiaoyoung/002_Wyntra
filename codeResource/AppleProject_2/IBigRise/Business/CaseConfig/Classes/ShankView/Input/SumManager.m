
#import <Foundation/Foundation.h>
typedef struct {
    Byte damnLope;
    Byte *notion;
    unsigned int actually;
    bool fell;
	int reach;
	int critical;
	int scrimEaster;
} HemeData;

NSString *StringFromHemeData(HemeData *data);


//: pressed
HemeData kStr_idealData = (HemeData){225, (Byte []){145, 147, 132, 146, 146, 132, 133, 248}, 7, false, 205, 175, 194};


//: data
HemeData kStr_messageViewSurvivalTitle = (HemeData){47, (Byte []){75, 78, 91, 78, 173}, 4, false, 247, 161, 218};


//: gif
HemeData kStr_fighterText = (HemeData){191, (Byte []){216, 214, 217, 76}, 3, false, 249, 128, 194};


//: tag
HemeData kStr_himData = (HemeData){34, (Byte []){86, 67, 69, 172}, 3, false, 173, 5, 86};


//: file
HemeData kStr_sumValue = (HemeData){242, (Byte []){148, 155, 158, 151, 25}, 4, false, 61, 124, 30};


//: info
HemeData kStr_renderTitle = (HemeData){27, (Byte []){114, 117, 125, 116, 175}, 4, false, 33, 132, 9};


//: title
HemeData kStr_proceedValue = (HemeData){191, (Byte []){203, 214, 203, 211, 218, 179}, 5, false, 45, 9, 155};


//: normal
HemeData kStr_outsideTrulyValue = (HemeData){46, (Byte []){64, 65, 92, 67, 79, 66, 15}, 6, false, 88, 55, 219};


//: unicode
HemeData kStr_muscleValue = (HemeData){170, (Byte []){223, 196, 195, 201, 197, 206, 207, 81}, 7, false, 157, 73, 11};

// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESEmoticonManager.h
//  NIM
//
//  Created by amao on 7/2/14.
//  Copyright (c) 2014 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZZZInputEmoticonManager.h"
#import "SumManager.h"
//: #import "NSString+AppleProjectKit.h"
#import "NSString+On.h"
//: #import "AppleProjectKit.h"
#import "On.h"
//: #import "UIImage+AppleProjectKit.h"
#import "UIImage+On.h"
//: #import "NSBundle+AppleProjectKit.h"
#import "NSBundle+On.h"

//: @implementation NIMInputEmoticon
@implementation IndependentSure

//: - (NIMEmoticonType)type {
- (NIMEmoticonType)type {
    //: if (_unicode.length) {
    if (_unicode.length) {
        //: return NIMEmoticonTypeUnicode;
        return NIMEmoticonTypeUnicode;
    }
    //: else if (_gif.length) {
    else if (_gif.length) {
        //: return NIMEmoticonTypeGif;
        return NIMEmoticonTypeGif;
    }
    //: else {
    else {
        //: return NIMEmoticonTypeFile;
        return NIMEmoticonTypeFile;
    }
}

//: @end
@end

//: @implementation NIMInputEmoticonCatalog
@implementation WithInput
//: @end
@end

//: @implementation NIMInputEmoticonLayout
@implementation InsertLayout

//: - (id)initEmojiLayout:(CGFloat)width
- (id)initItem:(CGFloat)width
{
    //: self = [super init];
    self = [super init];
    //: if (self)
    if (self)
    {
        //: _rows = 3;
        _rows = 3;
        //: _columes = ((width - 15 - 15) / 46.0);
        _columes = ((width - 15 - 15) / 46.0);
        //: _itemCountInPage = _rows * _columes -1;
        _itemCountInPage = _rows * _columes -1;
        //: _cellWidth = (width - 15 - 15) / _columes;
        _cellWidth = (width - 15 - 15) / _columes;
        //: _cellHeight = 46.0;
        _cellHeight = 46.0;
        //: _imageWidth = 46.0;
        _imageWidth = 46.0;
        //: _imageHeight = 46.0;
        _imageHeight = 46.0;
        //: _emoji = YES;
        _emoji = YES;
    }
    //: return self;
    return self;
}

//: - (id)initCharletLayout:(CGFloat)width{
- (id)initValueHouse:(CGFloat)width{
    //: self = [super init];
    self = [super init];
    //: if (self)
    if (self)
    {
        //: _rows = 2;
        _rows = 2;
        //: _columes = ((width - 15 - 15) / 70.f);
        _columes = ((width - 15 - 15) / 70.f);
        //: _itemCountInPage = _rows * _columes;
        _itemCountInPage = _rows * _columes;
        //: _cellWidth = (width - 15 - 15) / _columes;
        _cellWidth = (width - 15 - 15) / _columes;
        //: _cellHeight = 76.0;
        _cellHeight = 76.0;
        //: _imageWidth = 70.f;
        _imageWidth = 70.f;
        //: _imageHeight = 70.f;
        _imageHeight = 70.f;
        //: _emoji = NO;
        _emoji = NO;
    }
    //: return self;
    return self;
}

//: @end
@end

//: @interface ZZZInputEmoticonManager ()
@interface SumManager ()
//: @property (nonatomic,strong) NSArray *catalogs;
@property (nonatomic,strong) NSArray *catalogs;
//: @end
@end

//: @implementation ZZZInputEmoticonManager
@implementation SumManager

//: + (instancetype)sharedManager
+ (instancetype)tap
{
    //: static ZZZInputEmoticonManager *instance = nil;
    static SumManager *instance = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: instance = [[ZZZInputEmoticonManager alloc]init];
        instance = [[SumManager alloc]init];
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
        //: [self parsePlist];
        [self name];
        //: [self preloadEmoticonResource];
        [self range];
    }
    //: return self;
    return self;
}

//: - (void)start {};
- (void)image {};

//: - (NIMInputEmoticonCatalog *)emoticonCatalog:(NSString *)catalogID
- (WithInput *)emoticonTime:(NSString *)catalogID
{
    //: for (NIMInputEmoticonCatalog *catalog in _catalogs)
    for (WithInput *catalog in _catalogs)
    {
        //: if ([catalog.catalogID isEqualToString:catalogID])
        if ([catalog.catalogID isEqualToString:catalogID])
        {
            //: return catalog;
            return catalog;
        }
    }
    //: return nil;
    return nil;
}


//: - (NIMInputEmoticon *)emoticonByTag:(NSString *)tag
- (IndependentSure *)file:(NSString *)tag
{
    //: NIMInputEmoticon *emoticon = nil;
    IndependentSure *emoticon = nil;
    //: if ([tag length])
    if ([tag length])
    {
        //: for (NIMInputEmoticonCatalog *catalog in _catalogs)
        for (WithInput *catalog in _catalogs)
        {
            //: emoticon = [catalog.tag2Emoticons objectForKey:tag];
            emoticon = [catalog.tag2Emoticons objectForKey:tag];
            //: if (emoticon)
            if (emoticon)
            {
                //: break;
                break;
            }
        }
    }
    //: return emoticon;
    return emoticon;
}


//: - (NIMInputEmoticon *)emoticonByID:(NSString *)emoticonID
- (IndependentSure *)at:(NSString *)emoticonID
{
    //: NIMInputEmoticon *emoticon = nil;
    IndependentSure *emoticon = nil;
    //: if ([emoticonID length])
    if ([emoticonID length])
    {
        //: for (NIMInputEmoticonCatalog *catalog in _catalogs)
        for (WithInput *catalog in _catalogs)
        {
            //: emoticon = [catalog.id2Emoticons objectForKey:emoticonID];
            emoticon = [catalog.id2Emoticons objectForKey:emoticonID];
            //: if (emoticon)
            if (emoticon)
            {
                //: break;
                break;
            }
        }
    }
    //: return emoticon;
    return emoticon;
}

//: - (NIMInputEmoticon *)emoticonByCatalogID:(NSString *)catalogID
- (IndependentSure *)weEqual:(NSString *)catalogID
                           //: emoticonID:(NSString *)emoticonID
                           handle:(NSString *)emoticonID
{
    //: NIMInputEmoticon *emoticon = nil;
    IndependentSure *emoticon = nil;
    //: if ([emoticonID length] && [catalogID length])
    if ([emoticonID length] && [catalogID length])
    {
        //: for (NIMInputEmoticonCatalog *catalog in _catalogs)
        for (WithInput *catalog in _catalogs)
        {
            //: if ([catalog.catalogID isEqualToString:catalogID])
            if ([catalog.catalogID isEqualToString:catalogID])
            {
                //: emoticon = [catalog.id2Emoticons objectForKey:emoticonID];
                emoticon = [catalog.id2Emoticons objectForKey:emoticonID];
                //: break;
                break;
            }
        }
    }
    //: return emoticon;
    return emoticon;
}

//: - (void)parsePlist
- (void)name
{
    //: NSMutableArray *catalogs = [NSMutableArray array];
    NSMutableArray *catalogs = [NSMutableArray array];
    //: NSString *filepath = [NSBundle nim_EmojiPlistFile];
    NSString *filepath = [NSBundle subSelected];
    //: if (filepath) {
    if (filepath) {
        //: NSArray *array = [NSArray arrayWithContentsOfFile:filepath];
        NSArray *array = [NSArray arrayWithContentsOfFile:filepath];
        //: for (NSDictionary *dict in array)
        for (NSDictionary *dict in array)
        {
            //: NSDictionary *info = dict[@"info"];
            NSDictionary *info = dict[StringFromHemeData(&kStr_renderTitle)];
            //: NSArray *emoticons = dict[@"data"];
            NSArray *emoticons = dict[StringFromHemeData(&kStr_messageViewSurvivalTitle)];

            //: NIMInputEmoticonCatalog *catalog = [self catalogByInfo:info
            WithInput *catalog = [self with:info
                                                     //: emoticons:emoticons];
                                                     can:emoticons];
            //: [catalogs addObject:catalog];
            [catalogs addObject:catalog];
        }
    }

    //: NSString *filegifpath = [NSBundle nim_EmojiGifPlistFile];
    NSString *filegifpath = [NSBundle object];
    //: if (filegifpath) {
    if (filegifpath) {
        //: NSArray *array = [NSArray arrayWithContentsOfFile:filegifpath];
        NSArray *array = [NSArray arrayWithContentsOfFile:filegifpath];
        //: for (NSDictionary *dict in array)
        for (NSDictionary *dict in array)
        {
            //: NSDictionary *info = dict[@"info"];
            NSDictionary *info = dict[StringFromHemeData(&kStr_renderTitle)];
            //: NSArray *emoticons = dict[@"data"];
            NSArray *emoticons = dict[StringFromHemeData(&kStr_messageViewSurvivalTitle)];

            //: NIMInputEmoticonCatalog *catalog = [self catalogByInfo:info
            WithInput *catalog = [self with:info
                                                     //: emoticons:emoticons];
                                                     can:emoticons];
            //: [catalogs addObject:catalog];
            [catalogs addObject:catalog];
        }
    }

    //: _catalogs = catalogs;
    _catalogs = catalogs;
}

//: - (NIMInputEmoticonCatalog *)catalogByInfo:(NSDictionary *)info
- (WithInput *)with:(NSDictionary *)info
                             //: emoticons:(NSArray *)emoticonsArray
                             can:(NSArray *)emoticonsArray
{
    //: NIMInputEmoticonCatalog *catalog = [[NIMInputEmoticonCatalog alloc]init];
    WithInput *catalog = [[WithInput alloc]init];
    //: catalog.catalogID = info[@"id"];
    catalog.catalogID = info[@"id"];
    //: catalog.title = info[@"title"];
    catalog.title = info[StringFromHemeData(&kStr_proceedValue)];
    //: catalog.icon = info[@"normal"];
    catalog.icon = info[StringFromHemeData(&kStr_outsideTrulyValue)];
    //: catalog.iconPressed = info[@"pressed"];
    catalog.iconPressed = info[StringFromHemeData(&kStr_idealData)];
    //: NSMutableDictionary *tag2Emoticons = [NSMutableDictionary dictionary];
    NSMutableDictionary *tag2Emoticons = [NSMutableDictionary dictionary];
    //: NSMutableDictionary *id2Emoticons = [NSMutableDictionary dictionary];
    NSMutableDictionary *id2Emoticons = [NSMutableDictionary dictionary];
    //: NSMutableArray *emoticons = [NSMutableArray array];
    NSMutableArray *emoticons = [NSMutableArray array];

    //: for (NSDictionary *emoticonDict in emoticonsArray) {
    for (NSDictionary *emoticonDict in emoticonsArray) {
        //: NIMInputEmoticon *emoticon = [[NIMInputEmoticon alloc] init];
        IndependentSure *emoticon = [[IndependentSure alloc] init];
        //: emoticon.emoticonID = emoticonDict[@"id"];
        emoticon.emoticonID = emoticonDict[@"id"];
        //: emoticon.tag = emoticonDict[@"tag"];
        emoticon.tag = emoticonDict[StringFromHemeData(&kStr_himData)];
        //: emoticon.unicode = emoticonDict[@"unicode"];
        emoticon.unicode = emoticonDict[StringFromHemeData(&kStr_muscleValue)];
        //: emoticon.filename = emoticonDict[@"file"];
        emoticon.filename = emoticonDict[StringFromHemeData(&kStr_sumValue)];
        //: emoticon.gif = emoticonDict[@"gif"];
        emoticon.gif = emoticonDict[StringFromHemeData(&kStr_fighterText)];

        //: if (emoticon.emoticonID) {
        if (emoticon.emoticonID) {
            //: [emoticons addObject:emoticon];
            [emoticons addObject:emoticon];
            //: id2Emoticons[emoticon.emoticonID] = emoticon;
            id2Emoticons[emoticon.emoticonID] = emoticon;
        }
        //: if (emoticon.tag) {
        if (emoticon.tag) {
            //: tag2Emoticons[emoticon.tag] = emoticon;
            tag2Emoticons[emoticon.tag] = emoticon;
        }
    }

    //: catalog.emoticons = emoticons;
    catalog.emoticons = emoticons;
    //: catalog.id2Emoticons = id2Emoticons;
    catalog.id2Emoticons = id2Emoticons;
    //: catalog.tag2Emoticons = tag2Emoticons;
    catalog.tag2Emoticons = tag2Emoticons;
    //: return catalog;
    return catalog;
}

//: - (void)preloadEmoticonResource {
- (void)range {
    //: dispatch_async(dispatch_get_global_queue(0, 0), ^{
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        //: for (NIMInputEmoticonCatalog *catalog in _catalogs) {
        for (WithInput *catalog in _catalogs) {
            //: [catalog.emoticons enumerateObjectsUsingBlock:^(NIMInputEmoticon *obj, NSUInteger idx, BOOL * _Nonnull stop) {
            [catalog.emoticons enumerateObjectsUsingBlock:^(IndependentSure *obj, NSUInteger idx, BOOL * _Nonnull stop) {
                //: if (obj.filename) {
                if (obj.filename) {
                   //: __unused UIImage *image = [UIImage nim_emoticonInKit:obj.filename];
                   __unused UIImage *image = [UIImage chromatic:obj.filename];
                }
            //: }];
            }];
        }
    //: });
    });
}

//: @end
@end

Byte *HemeDataToByte(HemeData *data) {
    if (data->fell) return data->notion;
    for (int i = 0; i < data->actually; i++) {
        data->notion[i] ^= data->damnLope;
    }
    data->notion[data->actually] = 0;
    data->fell = true;
	if (data->actually >= 3) {
		data->reach = data->notion[0];
		data->critical = data->notion[1];
		data->scrimEaster = data->notion[2];
	}
    return data->notion;
}

NSString *StringFromHemeData(HemeData *data) {
    return [NSString stringWithUTF8String:(char *)HemeDataToByte(data)];
}
