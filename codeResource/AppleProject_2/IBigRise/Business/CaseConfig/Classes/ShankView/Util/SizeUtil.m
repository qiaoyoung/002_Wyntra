
#import <Foundation/Foundation.h>

NSString *StringFromOccurrentData(Byte *data);        


//:  等%zd人
Byte kStr_stairsFingerValue[] = {88, 10, 12, 14, 20, 246, 5, 163, 106, 237, 148, 249, 140, 150, 20, 219, 161, 125, 25, 110, 88, 216, 174, 174, 234};

// __DEBUG__
// __CLOSE_PRINT__
//
// AppleProjectKitCommentUtil.m
// On
//
//  Created by He on 2020/4/14.
//  Copyright © 2020 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZZZKitQuickCommentUtil.h"
#import "SizeUtil.h"
//: #import "M80AttributedLabel+AppleProjectKit.h"
#import "GreenNameView+On.h"
//: #import "ZZZKitUtil.h"
#import "TingText.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "ZZZInputEmoticonManager.h"
#import "SumManager.h"
//: #import "AppleProjectKit.h"
#import "On.h"
//: #import "ZZZKitInfoFetchOption.h"
#import "CertainOption.h"

//: static const CGFloat kHeightPerRow = 25.0;
static const CGFloat kConst_kitText = 25.0;
//: static NSInteger kMaxWidthPerRow = 0;
static NSInteger kConst_toName = 0;
//: const CGFloat NIMKitCommentUtilCellPadding = 2.f;
const CGFloat kConst_authorityText = 2.f;
//: const CGFloat NIMKitCommentUtilCellContentPadding = 5.f;
const CGFloat kConst_handleData = 5.f;
//: NSString * const NIMKitQuickCommentFormat = @"emoticon_emoji_%02ld";
NSString * const kConst_whiteWordData = @"emoticon_emoji_%02ld";


//: @implementation ZZZKitQuickCommentUtil
@implementation SizeUtil

//: + (void)initialize
+ (void)initialize
{
    //: kMaxWidthPerRow = [UIScreen mainScreen].bounds.size.width * 3.5 / 5;
    kConst_toName = [UIScreen mainScreen].bounds.size.width * 3.5 / 5;
}

//: + (UIFont *)commentFont
+ (UIFont *)partIn
{
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: static UIFont *instance = nil;
    static UIFont *instance = nil;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: instance = [UIFont systemFontOfSize:13];
        instance = [UIFont systemFontOfSize:13];
    //: });
    });
    //: return instance;
    return instance;
}

//: + (M80AttributedLabel *)newCommentLabel
+ (GreenNameView *)valueDenominate
{
    //: M80AttributedLabel *textLabel = [[M80AttributedLabel alloc] init];
    GreenNameView *textLabel = [[GreenNameView alloc] init];
    //: textLabel.backgroundColor = [UIColor clearColor];
    textLabel.backgroundColor = [UIColor clearColor];
    //: textLabel.numberOfLines = 1;
    textLabel.numberOfLines = 1;
    //: textLabel.textAlignment = kCTTextAlignmentLeft;
    textLabel.textAlignment = kCTTextAlignmentLeft;
    //: textLabel.font = [self commentFont];
    textLabel.font = [self partIn];
    //: textLabel.lineBreakMode = kCTLineBreakByTruncatingTail;
    textLabel.lineBreakMode = kCTLineBreakByTruncatingTail;
    //: return textLabel;
    return textLabel;
}

//: + (NSString *)commentContent:(NIMQuickComment *)comment
+ (NSString *)view:(NIMQuickComment *)comment
{
    //: NSString *ID = [NSString stringWithFormat:NIMKitQuickCommentFormat, (long)comment.replyType];
    NSString *ID = [NSString stringWithFormat:kConst_whiteWordData, (long)comment.replyType];
    //: NIMInputEmoticon *emoticon = [[ZZZInputEmoticonManager sharedManager] emoticonByID:ID];
    IndependentSure *emoticon = [[SumManager tap] at:ID];
    //: NSString *content = nil;
    NSString *content = nil;
    //: if (emoticon)
    if (emoticon)
    {
        //: if (emoticon.type == NIMEmoticonTypeUnicode) {
        if (emoticon.type == NIMEmoticonTypeUnicode) {
            //: content = emoticon.unicode;
            content = emoticon.unicode;
        //: } else {
        } else {
            //: content = emoticon.tag;
            content = emoticon.tag;
        }
    }
    //: content = [NSString stringWithFormat:@"%@", content.length ? content : @"[?]".nim_localized];
    content = [NSString stringWithFormat:@"%@", content.length ? content : @"[?]".start];
    //: return content;
    return content;
}

//: + (NSString *)commentsContent:(NSArray<NIMQuickComment *> *)comments
+ (NSString *)outsideComments:(NSArray<NIMQuickComment *> *)comments
{
    //: NSString *currentAccount = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSString *currentAccount = [[NIMSDK sharedSDK].loginManager currentAccount];
    //: NIMQuickComment *firstComment = comments.firstObject;
    NIMQuickComment *firstComment = comments.firstObject;
    //: for (NIMQuickComment *comment in comments)
    for (NIMQuickComment *comment in comments)
    {
        //: if ([currentAccount isEqualToString:comment.from])
        if ([currentAccount isEqualToString:comment.from])
        {
            //: firstComment = comment;
            firstComment = comment;
            //: break;
            break;
        }
    }

    //: NSMutableString *string = [NSMutableString string];
    NSMutableString *string = [NSMutableString string];
    //: NSString *fristShowName = [self showNameWithCommentFrom:firstComment];
    NSString *fristShowName = [self behindChild:firstComment];
    //: [string appendFormat:@"%@  %@", [self commentContent:firstComment], fristShowName];
    [string appendFormat:@"%@  %@", [self view:firstComment], fristShowName];
    //: if (comments.count > 1)
    if (comments.count > 1)
    {
        //: [string appendFormat:@" 等%zd人", comments.count];
        [string appendFormat:StringFromOccurrentData(kStr_stairsFingerValue), comments.count];
    }
    //: return [string copy];
    return [string copy];
}

//: + (CGSize)itemSizeWithComment:(NIMQuickComment *)comment
+ (CGSize)item:(NIMQuickComment *)comment
{
    //: static M80AttributedLabel *label = nil;
    static GreenNameView *label = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: label = [self newCommentLabel];
        label = [self valueDenominate];
    //: });
    });

    //: [label nim_setText:[self commentContent:comment]];
    [label sourceSet:[self view:comment]];
    //: CGSize size = [label sizeThatFits:CGSizeMake(kMaxWidthPerRow, kHeightPerRow)];
    CGSize size = [label sizeThatFits:CGSizeMake(kConst_toName, kConst_kitText)];
    //: return CGSizeMake(size.width + NIMKitCommentUtilCellContentPadding * 2, kHeightPerRow);
    return CGSizeMake(size.width + kConst_handleData * 2, kConst_kitText);
}

//: + (CGSize)itemSizeWithComments:(NSArray<NIMQuickComment *> *)comments
+ (CGSize)status:(NSArray<NIMQuickComment *> *)comments
{
    //: if (comments.count == 0)
    if (comments.count == 0)
    {
        //: return CGSizeZero;
        return CGSizeZero;
    }

    //: static M80AttributedLabel *label = nil;
    static GreenNameView *label = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: label = [self newCommentLabel];
        label = [self valueDenominate];
    //: });
    });

    //: [label nim_setText:[self commentsContent:comments]];
    [label sourceSet:[self outsideComments:comments]];
    //: CGSize size = [label sizeThatFits:CGSizeMake(kMaxWidthPerRow, kHeightPerRow)];
    CGSize size = [label sizeThatFits:CGSizeMake(kConst_toName, kConst_kitText)];
    //: return CGSizeMake(size.width + NIMKitCommentUtilCellContentPadding * 2, kHeightPerRow);
    return CGSizeMake(size.width + kConst_handleData * 2, kConst_kitText);
}

//: + (CGSize)containerSizeWithComments:(NSMapTable *)table
+ (CGSize)doingIcon:(NSMapTable *)table
{
    //: NSArray *keys = [self sortedKeys:table];
    NSArray *keys = [self session:table];

    //: CGFloat sumWidth = 0;
    CGFloat sumWidth = 0;
    //: CGFloat maxWidth = sumWidth;
    CGFloat maxWidth = sumWidth;
    //: NSInteger row = 1;
    NSInteger row = 1;
    //: for (NSNumber *key in keys)
    for (NSNumber *key in keys)
    {
        //: NSArray<NIMQuickComment *> *comments = [table objectForKey:key];
        NSArray<NIMQuickComment *> *comments = [table objectForKey:key];
        //: if (!comments)
        if (!comments)
        {
            //: continue;
            continue;
        }

        //: CGSize size = [self itemSizeWithComments:comments];
        CGSize size = [self status:comments];
        //: if (sumWidth + size.width + NIMKitCommentUtilCellPadding * 2 >= kMaxWidthPerRow)
        if (sumWidth + size.width + kConst_authorityText * 2 >= kConst_toName)
        {
            //: row ++;
            row ++;
            //: sumWidth = NIMKitCommentUtilCellPadding + size.width;
            sumWidth = kConst_authorityText + size.width;
        }
        //: else
        else
        {
            //: sumWidth += NIMKitCommentUtilCellPadding + size.width;
            sumWidth += kConst_authorityText + size.width;
        }

        //: if (maxWidth < sumWidth)
        if (maxWidth < sumWidth)
        {
            //: maxWidth = sumWidth;
            maxWidth = sumWidth;
        }
    }

    //: maxWidth += NIMKitCommentUtilCellPadding;
    maxWidth += kConst_authorityText;

    //: return CGSizeMake(maxWidth, row * kHeightPerRow + (row + 1) * NIMKitCommentUtilCellPadding);
    return CGSizeMake(maxWidth, row * kConst_kitText + (row + 1) * kConst_authorityText);
}

//: + (NIMQuickComment *)myCommentFromComments:(NSInteger )indexPath
+ (NIMQuickComment *)uncolored:(NSInteger )indexPath
                                      //: keys:(NSArray *)keys
                                      candid:(NSArray *)keys
                                  //: comments:(NSMapTable *)map
                                  sum:(NSMapTable *)map
{
    //: NSNumber *number = [keys objectAtIndex:indexPath];
    NSNumber *number = [keys objectAtIndex:indexPath];
    //: NSArray *comments = [map objectForKey:number];
    NSArray *comments = [map objectForKey:number];
    //: NSString *currentAcount = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSString *currentAcount = [[NIMSDK sharedSDK].loginManager currentAccount];
    //: NIMQuickComment * mine = nil;
    NIMQuickComment * mine = nil;
    //: for (NIMQuickComment *comment in comments)
    for (NIMQuickComment *comment in comments)
    {
        //: if ([comment.from isEqualToString:currentAcount])
        if ([comment.from isEqualToString:currentAcount])
        {
            //: mine = comment;
            mine = comment;
            //: break;
            break;
        }
    }
    //: return mine;
    return mine;
}

//: + (NSString *)showNameWithCommentFrom:(NIMQuickComment *)comment
+ (NSString *)behindChild:(NIMQuickComment *)comment
{
    //: ZZZKitInfo *info = nil;
    MagnitudeCommentInfo *info = nil;
    //: NIMChatExtendBasicInfo *basicInfo = comment.basicInfo;
    NIMChatExtendBasicInfo *basicInfo = comment.basicInfo;
    //: NIMSession *session = basicInfo.session;
    NIMSession *session = basicInfo.session;
    //: ZZZKitInfoFetchOption *option = [[ZZZKitInfoFetchOption alloc] init];
    CertainOption *option = [[CertainOption alloc] init];
    //: option.session = session;
    option.session = session;
    //: info = [[AppleProjectKit sharedKit] infoByUser:comment.from option:option];
    info = [[On along] toKey:comment.from image:option];

    //: return info.showName;
    return info.showName;
}

//: + (NSArray *)sortedKeys:(NSMapTable<NSNumber *, NIMQuickComment *> *)map
+ (NSArray *)session:(NSMapTable<NSNumber *, NIMQuickComment *> *)map
{
    //: NSArray *keys = [map.keyEnumerator.allObjects sortedArrayUsingComparator:^NSComparisonResult(id _Nonnull obj1, id _Nonnull obj2) {
    NSArray *keys = [map.keyEnumerator.allObjects sortedArrayUsingComparator:^NSComparisonResult(id _Nonnull obj1, id _Nonnull obj2) {
               //: NSArray *array1 = (NSArray *)[map objectForKey:obj1];
               NSArray *array1 = (NSArray *)[map objectForKey:obj1];
               //: NIMQuickComment *comment1 = [array1 lastObject];
               NIMQuickComment *comment1 = [array1 lastObject];

               //: NSArray *array2 = (NSArray *)[map objectForKey:obj2];
               NSArray *array2 = (NSArray *)[map objectForKey:obj2];
               //: NIMQuickComment *comment2 = [array2 lastObject];
               NIMQuickComment *comment2 = [array2 lastObject];

               //: if (comment1.timestamp > comment2.timestamp)
               if (comment1.timestamp > comment2.timestamp)
               {
                   //: return NSOrderedDescending;
                   return NSOrderedDescending;
               }
               //: else if (comment1.timestamp == comment2.timestamp)
               else if (comment1.timestamp == comment2.timestamp)
               {
                   //: return NSOrderedSame;
                   return NSOrderedSame;
               }
               //: else
               else
               {
                   //: return NSOrderedAscending;
                   return NSOrderedAscending;
               }
           //: }];
           }];
    //: return keys;
    return keys;
}

//: @end
@end

Byte * OccurrentDataToCache(Byte *data) {
    int operationBeach = data[0];
    int annexe = data[1];
    Byte courseIncreased = data[2];
    int unlessStock = data[3];
    if (!operationBeach) return data + unlessStock;
    for (int i = unlessStock; i < unlessStock + annexe; i++) {
        int value = data[i] + courseIncreased;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[unlessStock + annexe] = 0;
    return data + unlessStock;
}

NSString *StringFromOccurrentData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)OccurrentDataToCache(data)];
}
