// __DEBUG__
// __CLOSE_PRINT__
//
// AppleProjectKitCommentUtil.h
// On
//
//  Created by He on 2020/4/14.
//  Copyright © 2020 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @class NIMQuickComment;
@class NIMQuickComment;
//: @class M80AttributedLabel;
@class GreenNameView;
//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: extern const CGFloat NIMKitCommentUtilCellPadding;
extern const CGFloat kConst_authorityText;

//: extern const CGFloat NIMKitCommentUtilCellContentPadding;
extern const CGFloat kConst_handleData;

//: extern NSString * const NIMKitQuickCommentFormat;
extern NSString * const kConst_whiteWordData;


//: @interface ZZZKitQuickCommentUtil : NSObject
@interface SizeUtil : NSObject

//: + (UIFont *)commentFont;
+ (UIFont *)partIn;

//: + (NSString *)commentContent:(NIMQuickComment *)comment;
+ (NSString *)view:(NIMQuickComment *)comment;

//: + (NSString *)commentsContent:(NSArray<NIMQuickComment *> *)comments;
+ (NSString *)outsideComments:(NSArray<NIMQuickComment *> *)comments;

//: + (CGSize)itemSizeWithComment:(NIMQuickComment *)comment;
+ (CGSize)item:(NIMQuickComment *)comment;

//: + (CGSize)itemSizeWithComments:(NSArray<NIMQuickComment *> *)comments;
+ (CGSize)status:(NSArray<NIMQuickComment *> *)comments;

//: + (CGSize)containerSizeWithComments:(NSMapTable *)comments;
+ (CGSize)doingIcon:(NSMapTable *)comments;

//: + (NIMQuickComment * _Nullable)myCommentFromComments:(NSInteger )keyIndex
+ (NIMQuickComment * _Nullable)uncolored:(NSInteger )keyIndex
                                      //: keys:(NSArray *)keys
                                      candid:(NSArray *)keys
                                  //: comments:(NSMapTable *)map;
                                  sum:(NSMapTable *)map;

//: + (M80AttributedLabel *)newCommentLabel;
+ (GreenNameView *)valueDenominate;

//: + (NSArray *)sortedKeys:(NSMapTable<NSNumber *, NIMQuickComment *> *)map;
+ (NSArray *)session:(NSMapTable<NSNumber *, NIMQuickComment *> *)map;
//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END