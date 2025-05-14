// __DEBUG__
// __CLOSE_PRINT__
//
//  ByView.h
// On
//
//  Created by chris on 16/3/27.
//  Copyright © 2016年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @class ZZZGrowingTextView;
@class ByView;

//: @protocol ZZZGrowingTextViewDelegate <NSObject>
@protocol NamePathKey <NSObject>
//: @optional
@optional

//: - (BOOL)shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)replacementText;
- (BOOL)indicator:(NSRange)range window:(NSString *)replacementText;

//: - (BOOL)shouldInteractWithURL:(NSURL *)URL inRange:(NSRange)range;
- (BOOL)ting:(NSURL *)URL should:(NSRange)range;

//: - (BOOL)shouldInteractWithTextAttachment:(NSTextAttachment *)textAttachment inRange:(NSRange)range;
- (BOOL)key:(NSTextAttachment *)textAttachment should:(NSRange)range;

//: - (void)textViewDidBeginEditing:(ZZZGrowingTextView *)growingTextView;
- (void)upwardlied:(ByView *)growingTextView;

//: - (void)textViewDidChangeSelection:(ZZZGrowingTextView *)growingTextView;
- (void)haphazards:(ByView *)growingTextView;

//: - (void)textViewDidEndEditing:(ZZZGrowingTextView *)growingTextView;
- (void)names:(ByView *)growingTextView;

//: - (BOOL)textViewShouldBeginEditing:(ZZZGrowingTextView *)growingTextView;
- (BOOL)bared:(ByView *)growingTextView;

//: - (BOOL)textViewShouldEndEditing:(ZZZGrowingTextView *)growingTextView;
- (BOOL)imageEditing:(ByView *)growingTextView;

//: - (void)textViewDidChange:(ZZZGrowingTextView *)growingTextView;
- (void)cuts:(ByView *)growingTextView;

//: - (void)willChangeHeight:(CGFloat)height;
- (void)infoHeight:(CGFloat)height;

//: - (void)didChangeHeight:(CGFloat)height;
- (void)commutatived:(CGFloat)height;

//: @end
@end

//: @interface ZZZGrowingTextView : UIScrollView
@interface ByView : UIScrollView

//: @property (nonatomic,weak) id<ZZZGrowingTextViewDelegate> textViewDelegate;
@property (nonatomic,weak) id<NamePathKey> textViewDelegate;

//: @property (nonatomic,assign) NSInteger minNumberOfLines;
@property (nonatomic,assign) NSInteger minNumberOfLines;

//: @property (nonatomic,assign) NSInteger maxNumberOfLines;
@property (nonatomic,assign) NSInteger maxNumberOfLines;

//: @property (nonatomic,strong) UIView *inputView;
@property (nonatomic,strong) UIView *inputView;

//: @end
@end

//: @interface ZZZGrowingTextView(TextView)
@interface ByView(TextView)

//: @property (nonatomic,copy) NSAttributedString *placeholderAttributedText;
@property (nonatomic,copy) NSAttributedString *placeholderAttributedText;

//: @property (nonatomic,copy) NSString *text;
@property (nonatomic,copy) NSString *text;

//: @property (nonatomic,strong) UIFont *font;
@property (nonatomic,strong) UIFont *font;

//: @property (nonatomic,strong) UIColor *textColor;
@property (nonatomic,strong) UIColor *textColor;

//: @property (nonatomic,assign) NSTextAlignment textAlignment;
@property (nonatomic,assign) NSTextAlignment textAlignment;

//: @property (nonatomic,assign) NSRange selectedRange;
@property (nonatomic,assign) NSRange selectedRange;

//: @property (nonatomic,assign) UIDataDetectorTypes dataDetectorTypes;
@property (nonatomic,assign) UIDataDetectorTypes dataDetectorTypes;

//: @property (nonatomic,assign) BOOL editable;
@property (nonatomic,assign) BOOL editable;

//: @property (nonatomic,assign) BOOL selectable;
@property (nonatomic,assign) BOOL selectable;

//: @property (nonatomic,assign) BOOL allowsEditingTextAttributes;
@property (nonatomic,assign) BOOL allowsEditingTextAttributes;

//: @property (nonatomic,copy) NSAttributedString *attributedText;
@property (nonatomic,copy) NSAttributedString *attributedText;

//: @property (nonatomic,strong) UIView *textViewInputAccessoryView;
@property (nonatomic,strong) UIView *textViewInputAccessoryView;

//: @property (nonatomic,assign) BOOL clearsOnInsertion;
@property (nonatomic,assign) BOOL clearsOnInsertion;

//: @property (nonatomic,readonly) NSTextContainer *textContainer;
@property (nonatomic,readonly) NSTextContainer *textContainer;

//: @property (nonatomic,assign) UIEdgeInsets textContainerInset;
@property (nonatomic,assign) UIEdgeInsets textContainerInset;

//: @property (nonatomic,readonly) NSLayoutManager *layoutManger;
@property (nonatomic,readonly) NSLayoutManager *layoutManger;

//: @property (nonatomic,readonly) NSTextStorage *textStorage;
@property (nonatomic,readonly) NSTextStorage *textStorage;

//: @property (nonatomic, copy) NSDictionary<NSString *, id> *linkTextAttributes;
@property (nonatomic, copy) NSDictionary<NSString *, id> *linkTextAttributes;

//: @property (nonatomic,assign) UIReturnKeyType returnKeyType;
@property (nonatomic,assign) UIReturnKeyType returnKeyType;

//: - (void)scrollRangeToVisible:(NSRange)range;
- (void)reply:(NSRange)range;

//: @end
@end