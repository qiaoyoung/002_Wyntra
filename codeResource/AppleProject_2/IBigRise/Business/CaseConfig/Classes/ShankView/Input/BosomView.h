// __DEBUG__
// __CLOSE_PRINT__
//
//  BosomView.h
// On
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "ZZZGrowingTextView.h"
#import "ByView.h"

//: typedef NS_ENUM(NSInteger,NIMInputStatus)
typedef NS_ENUM(NSInteger,NIMInputStatus)
{
    //: NIMInputStatusText,
    NIMInputStatusText,
    //: NIMInputStatusAudio,
    NIMInputStatusAudio,
    //: NIMInputStatusEmoticon,
    NIMInputStatusEmoticon,
    //: NIMInputStatusMore
    NIMInputStatusMore
//: };
};


//: @protocol ZZZInputToolBarDelegate <NSObject>
@protocol TeamContentDelegate <NSObject>

//: @optional
@optional

//: - (BOOL)textViewShouldBeginEditing;
- (BOOL)isRecord;

//: - (void)textViewDidEndEditing;
- (void)completeEmpty;

//: - (BOOL)shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)replacementText;
- (BOOL)indicator:(NSRange)range window:(NSString *)replacementText;

//: - (void)textViewDidChange;
- (void)replyChange;

//: - (void)toolBarWillChangeHeight:(CGFloat)height;
- (void)indexDisable:(CGFloat)height;

//: - (void)toolBarDidChangeHeight:(CGFloat)height;
- (void)colorfuls:(CGFloat)height;

//: @end
@end


//: @interface ZZZInputToolBar : UIView
@interface BosomView : UIView

//: @property (nonatomic,strong) UIButton *voiceButton;
@property (nonatomic,strong) UIButton *voiceButton;

//: @property (nonatomic,strong) UIButton *emoticonBtn;
@property (nonatomic,strong) UIButton *emoticonBtn;
//: @property (nonatomic,strong) UIButton *emoticonBtn2;
@property (nonatomic,strong) UIButton *emoticonBtn2;

//: @property (nonatomic,strong) UIButton *albunBtn;
@property (nonatomic,strong) UIButton *albunBtn;

//: @property (nonatomic,strong) UIButton *cameraBtn;
@property (nonatomic,strong) UIButton *cameraBtn;

//@property (nonatomic,strong) UIButton    *moreMediaBtn;
//
//@property (nonatomic,strong) UIButton    *recordButton;

//: @property (nonatomic,strong) UIButton *sendButton;
@property (nonatomic,strong) UIButton *sendButton;

//@property (nonatomic,strong) UIImageView *inputTextBkgImage;

//: @property (nonatomic,strong) UIView *bottomSep;
@property (nonatomic,strong) UIView *bottomSep;

//: @property (nonatomic,copy) NSString *contentText;
@property (nonatomic,copy) NSString *contentText;

//: @property (nonatomic,weak) id<ZZZInputToolBarDelegate> delegate;
@property (nonatomic,weak) id<TeamContentDelegate> delegate;

//: @property (nonatomic,assign) BOOL showsKeyboard;
@property (nonatomic,assign) BOOL showsKeyboard;

//: @property (nonatomic,assign) NSArray *inputBarItemTypes;
@property (nonatomic,assign) NSArray *inputBarItemTypes;

//: @property (nonatomic,assign) NSInteger maxNumberOfInputLines;
@property (nonatomic,assign) NSInteger maxNumberOfInputLines;

//: @property (nonatomic,strong) ZZZGrowingTextView *inputTextView;
@property (nonatomic,strong) ByView *inputTextView;

//: - (void)update:(NIMInputStatus)status;
- (void)file:(NIMInputStatus)status;

//: @end
@end

//: @interface ZZZInputToolBar(InputText)
@interface BosomView(InputText)

//: - (NSRange)selectedRange;
- (NSRange)pinRange;

//: - (void)setPlaceHolder:(NSString *)placeHolder;
- (void)setComment:(NSString *)placeHolder;
//: - (void)setPlaceHolder:(NSString *)placeHolder color:(UIColor *)placeholderColor;
- (void)oarlockColor:(NSString *)placeHolder top:(UIColor *)placeholderColor;

//: - (void)insertText:(NSString *)text;
- (void)tillName:(NSString *)text;

//: - (void)deleteText:(NSRange)range;
- (void)scale:(NSRange)range;

//// 2022年08月25日 emoji处理
//: - (void)insertAttributedText:(NSString *)text withEmoji:(BOOL)isEmoji;
- (void)view:(NSString *)text send:(BOOL)isEmoji;

//: @end
@end