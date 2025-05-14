
#import <Foundation/Foundation.h>

NSString *StringFromUniversalData(Byte *data);


//: icon_toolview_emotion_normal
Byte kStr_optimisticFingerName[] = {66, 28, 26, 12, 65, 67, 63, 180, 34, 56, 169, 35, 131, 125, 137, 136, 121, 142, 137, 137, 134, 144, 131, 127, 145, 121, 127, 135, 137, 142, 131, 137, 136, 121, 136, 137, 140, 135, 123, 134, 44};


//: icon_toolview_emotion2_normal
Byte kStr_litEasterText[] = {54, 29, 5, 10, 106, 102, 15, 66, 190, 162, 110, 104, 116, 115, 100, 121, 116, 116, 113, 123, 110, 106, 124, 100, 106, 114, 116, 121, 110, 116, 115, 55, 100, 115, 116, 119, 114, 102, 113, 147};


//: icon_toolview_voice_normal
Byte kStr_fighterData[] = {97, 26, 40, 6, 136, 181, 145, 139, 151, 150, 135, 156, 151, 151, 148, 158, 145, 141, 159, 135, 158, 151, 145, 139, 141, 135, 150, 151, 154, 149, 137, 148, 130};


//: icon_toolview_send
Byte kStr_nutrientLeastValue[] = {64, 18, 54, 13, 59, 92, 37, 150, 194, 138, 177, 11, 97, 159, 153, 165, 164, 149, 170, 165, 165, 162, 172, 159, 155, 173, 149, 169, 155, 164, 154, 141};


//: icon_toolview_keyboard_normal
Byte kStr_mediaTianEventData[] = {1, 29, 51, 9, 133, 185, 74, 125, 223, 156, 150, 162, 161, 146, 167, 162, 162, 159, 169, 156, 152, 170, 146, 158, 152, 172, 149, 162, 148, 165, 151, 146, 161, 162, 165, 160, 148, 159, 128};


//: icon_toolview_album_normal
Byte kStr_legislatorTitle[] = {63, 26, 90, 14, 210, 51, 210, 134, 160, 24, 147, 145, 57, 236, 195, 189, 201, 200, 185, 206, 201, 201, 198, 208, 195, 191, 209, 185, 187, 198, 188, 207, 199, 185, 200, 201, 204, 199, 187, 198, 199};


//: icon_toolview_keybord
Byte kStr_sonTitle[] = {32, 21, 78, 6, 249, 158, 183, 177, 189, 188, 173, 194, 189, 189, 186, 196, 183, 179, 197, 173, 185, 179, 199, 176, 189, 192, 178, 143};


//: icon_toolview_camera_normal
Byte kStr_withTherapistValue[] = {73, 27, 97, 4, 202, 196, 208, 207, 192, 213, 208, 208, 205, 215, 202, 198, 216, 192, 196, 194, 206, 198, 211, 194, 192, 207, 208, 211, 206, 194, 205, 33};

// __DEBUG__
// __CLOSE_PRINT__
//
//  BosomView.m
// On
//
//  Created by chris
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZZZInputToolBar.h"
#import "BosomView.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "UIImage+AppleProjectKit.h"
#import "UIImage+On.h"
//: #import "ZZZInputBarItemType.h"
#import "ZZZInputBarItemType.h"
//: #import "ZZZInputEmoticonManager.h"
#import "SumManager.h"
//: #import "YYText.h"
#import "YYText.h"
//: #import "SNTextHighlight.h"
#import "BrinkTitleHighlight.h"
//: #import "ZZZKitKeyboardInfo.h"
#import "DemonstrateInfo.h"

//: @interface ZZZInputToolBar()<ZZZGrowingTextViewDelegate>
@interface BosomView()<NamePathKey>

//: @property (nonatomic,copy) NSArray<NSNumber *> *types;
@property (nonatomic,copy) NSArray<NSNumber *> *types;

//: @property (nonatomic,copy) NSDictionary *dict;
@property (nonatomic,copy) NSDictionary *dict;

//: @property (nonatomic,assign) NIMInputStatus status;
@property (nonatomic,assign) NIMInputStatus status;

//: @end
@end

//: @implementation ZZZInputToolBar
@implementation BosomView

//: - (instancetype)initWithFrame:(CGRect)frame{
- (instancetype)initWithFrame:(CGRect)frame{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: [self setBackgroundColor:[UIColor whiteColor]];
        [self setBackgroundColor:[UIColor whiteColor]];

        //: _voiceButton = [UIButton buttonWithType:UIButtonTypeCustom];
        _voiceButton = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_voiceButton setImage:[UIImage imageNamed:@"icon_toolview_voice_normal"] forState:UIControlStateNormal];
        [_voiceButton setImage:[UIImage imageNamed:StringFromUniversalData(kStr_fighterData)] forState:UIControlStateNormal];
//        [_voiceButton sizeToFit];
        //: [self addSubview:_voiceButton];
        [self addSubview:_voiceButton];


        //: _emoticonBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _emoticonBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_emoticonBtn setImage:[UIImage imageNamed:@"icon_toolview_emotion_normal"] forState:UIControlStateNormal];
        [_emoticonBtn setImage:[UIImage imageNamed:StringFromUniversalData(kStr_optimisticFingerName)] forState:UIControlStateNormal];
//        [_emoticonBtn sizeToFit];
        //: [self addSubview:_emoticonBtn];
        [self addSubview:_emoticonBtn];

        //: _emoticonBtn2 = [UIButton buttonWithType:UIButtonTypeCustom];
        _emoticonBtn2 = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_emoticonBtn2 setImage:[UIImage imageNamed:@"icon_toolview_emotion2_normal"] forState:UIControlStateNormal];
        [_emoticonBtn2 setImage:[UIImage imageNamed:StringFromUniversalData(kStr_litEasterText)] forState:UIControlStateNormal];
        //: [_emoticonBtn2 setImage:[UIImage imageNamed:@"icon_toolview_keybord"] forState:UIControlStateSelected];
        [_emoticonBtn2 setImage:[UIImage imageNamed:StringFromUniversalData(kStr_sonTitle)] forState:UIControlStateSelected];
        //: _emoticonBtn2.hidden = YES;
        _emoticonBtn2.hidden = YES;
        //: [self addSubview:_emoticonBtn2];
        [self addSubview:_emoticonBtn2];

        //: _albunBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _albunBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_albunBtn setImage:[UIImage imageNamed:@"icon_toolview_album_normal"] forState:UIControlStateNormal];
        [_albunBtn setImage:[UIImage imageNamed:StringFromUniversalData(kStr_legislatorTitle)] forState:UIControlStateNormal];
//        [_albunBtn sizeToFit];
        //: [self addSubview:_albunBtn];
        [self addSubview:_albunBtn];

        //: _cameraBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _cameraBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_cameraBtn setImage:[UIImage imageNamed:@"icon_toolview_camera_normal"] forState:UIControlStateNormal];
        [_cameraBtn setImage:[UIImage imageNamed:StringFromUniversalData(kStr_withTherapistValue)] forState:UIControlStateNormal];
//        [_cameraBtn sizeToFit];
        //: [self addSubview:_cameraBtn];
        [self addSubview:_cameraBtn];

//        _moreMediaBtn = [UIButton buttonWithType:UIButtonTypeCustom];
//        [_moreMediaBtn setImage:[UIImage imageNamed:@"icon_toolview_add_normal"] forState:UIControlStateNormal];
//        [_moreMediaBtn sizeToFit];

//        _recordButton = [UIButton buttonWithType:UIButtonTypeCustom];
//        [_recordButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
//        [_recordButton.titleLabel setFont:[UIFont systemFontOfSize:14.f]];
//        [_recordButton setBackgroundImage:[[UIImage imageNamed:@"icon_input_text_bg"] resizableImageWithCapInsets:UIEdgeInsetsMake(15,80,15,80) resizingMode:UIImageResizingModeStretch] forState:UIControlStateNormal];
//        _recordButton.exclusiveTouch = YES;
//        [_recordButton sizeToFit];

        //: _sendButton = [UIButton buttonWithType:UIButtonTypeCustom];
        _sendButton = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_sendButton setImage:[UIImage imageNamed:@"icon_toolview_send"] forState:UIControlStateNormal];
        [_sendButton setImage:[UIImage imageNamed:StringFromUniversalData(kStr_nutrientLeastValue)] forState:UIControlStateNormal];
        //: _sendButton.hidden = YES;
        _sendButton.hidden = YES;
        //: [self addSubview:_sendButton];
        [self addSubview:_sendButton];
//        [_sendButton sizeToFit];
//        _sendButton.hitTestEdgeInsets = UIEdgeInsetsMake(-10, -10, -10, -10);

//        _inputTextBkgImage = [[UIImageView alloc] initWithFrame:CGRectZero];
//        [_inputTextBkgImage setImage:[[UIImage imageNamed:@"icon_input_text_bg_"] resizableImageWithCapInsets:UIEdgeInsetsMake(15,80,15,80) resizingMode:UIImageResizingModeStretch]];

        //: _inputTextView = [[ZZZGrowingTextView alloc] initWithFrame:CGRectZero];
        _inputTextView = [[ByView alloc] initWithFrame:CGRectZero];
        //: _inputTextView.font = [UIFont systemFontOfSize:14.0f];
        _inputTextView.font = [UIFont systemFontOfSize:14.0f];
        //: _inputTextView.maxNumberOfLines = _maxNumberOfInputLines?:4;
        _inputTextView.maxNumberOfLines = _maxNumberOfInputLines?:4;
        //: _inputTextView.minNumberOfLines = 1;
        _inputTextView.minNumberOfLines = 1;
        //: _inputTextView.textColor = [UIColor blackColor];
        _inputTextView.textColor = [UIColor blackColor];
        //: _inputTextView.backgroundColor = [UIColor clearColor];
        _inputTextView.backgroundColor = [UIColor clearColor];
        //: _inputTextView.nim_size = [_inputTextView intrinsicContentSize];
        _inputTextView.nim_size = [_inputTextView intrinsicContentSize];
        //: _inputTextView.layer.cornerRadius = _inputTextView.nim_height/2;
        _inputTextView.layer.cornerRadius = _inputTextView.nim_height/2;

        //: _inputTextView.textViewDelegate = self;
        _inputTextView.textViewDelegate = self;
//        _inputTextView.returnKeyType = UIReturnKeySend;
        //: _inputTextView.returnKeyType = UIReturnKeyDefault;
        _inputTextView.returnKeyType = UIReturnKeyDefault;
        //: [self addSubview:self.inputTextView];
        [self addSubview:self.inputTextView];

        //顶部分割线
//        UIView *sep = [[UIView alloc] initWithFrame:CGRectZero];
//        sep.backgroundColor = [UIColor lightGrayColor];
//        sep.nim_size = CGSizeMake(self.nim_width, .5f);
//        sep.autoresizingMask = UIViewAutoresizingFlexibleWidth;
//        [self addSubview:sep];
//
//        //底部分割线
//        _bottomSep = [[UIView alloc] initWithFrame:CGRectZero];
//        _bottomSep.backgroundColor = [UIColor lightGrayColor];
//        [self addSubview:_bottomSep];

        //: self.types = @[
        self.types = @[
//            @(ZZZInputBarItemTypeMore),
//            @(ZZZInputBarItemTypeEmoticon),
//                         @(ZZZInputBarItemTypeVoice),
                         //: @(ZZZInputBarItemTypeTextAndRecord),
                         @(ZZZInputBarItemTypeTextAndRecord),
                         //: @(ZZZInputBarItemTypeSend),
                         @(ZZZInputBarItemTypeSend),

                       //: ];
                       ];



    }
    //: return self;
    return self;
}



//: - (void)setInputBarItemTypes:(NSArray<NSNumber *> *)types{
- (void)setInputBarItemTypes:(NSArray<NSNumber *> *)types{
    //: self.types = types;
    self.types = types;
    //: [self setNeedsLayout];
    [self setNeedsLayout];
}

//: - (NSString *)contentText
- (NSString *)contentText
{
    //: return self.inputTextView.text;
    return self.inputTextView.text;
}

//: - (void)setContentText:(NSString *)contentText
- (void)setContentText:(NSString *)contentText
{
    //: self.inputTextView.text = contentText;
    self.inputTextView.text = contentText;
}

//: - (NSArray *)inputBarItemTypes
- (NSArray *)inputBarItemTypes
{
    //: return self.types;
    return self.types;
}


//: - (CGSize)sizeThatFits:(CGSize)size
- (CGSize)sizeThatFits:(CGSize)size
{
    //: CGFloat viewHeight = 0.0f;
    CGFloat viewHeight = 0.0f;
    //: if (self.status == NIMInputStatusAudio) {
    if (self.status == NIMInputStatusAudio) {
        //: viewHeight = 51+50;
        viewHeight = 51+50;
        //: self.emoticonBtn.hidden = NO;
        self.emoticonBtn.hidden = NO;
        //: self.albunBtn.hidden = NO;
        self.albunBtn.hidden = NO;
        //: self.cameraBtn.hidden = NO;
        self.cameraBtn.hidden = NO;
        //: self.voiceButton.hidden = NO;
        self.voiceButton.hidden = NO;
    //: }else if(self.status == NIMInputStatusText){
    }else if(self.status == NIMInputStatusText){
        //算出 TextView 的宽度
        //: [self adjustTextViewWidth:size.width];
        [self manager:size.width];
        // TextView 自适应高度
        //: [self.inputTextView layoutIfNeeded];
        [self.inputTextView layoutIfNeeded];
        //: viewHeight = (int)self.inputTextView.frame.size.height;
        viewHeight = (int)self.inputTextView.frame.size.height;
        //得到 ToolBar 自身高度

        //: if([ZZZKitKeyboardInfo instance].keyboardHeight){
        if([DemonstrateInfo allState].keyboardHeight){
            //: viewHeight = viewHeight + 2 * self.spacing + 2 * self.textViewPadding;
            viewHeight = viewHeight + 2 * self.key + 2 * self.device;
            //: self.emoticonBtn.hidden = YES;
            self.emoticonBtn.hidden = YES;
            //: self.albunBtn.hidden = YES;
            self.albunBtn.hidden = YES;
            //: self.cameraBtn.hidden = YES;
            self.cameraBtn.hidden = YES;
            //: self.voiceButton.hidden = YES;
            self.voiceButton.hidden = YES;
        //: }else{
        }else{
            //: viewHeight = viewHeight + 2 * self.spacing + 2 * self.textViewPadding +50;
            viewHeight = viewHeight + 2 * self.key + 2 * self.device +50;
            //: self.emoticonBtn.hidden = NO;
            self.emoticonBtn.hidden = NO;
            //: self.albunBtn.hidden = NO;
            self.albunBtn.hidden = NO;
            //: self.cameraBtn.hidden = NO;
            self.cameraBtn.hidden = NO;
            //: self.voiceButton.hidden = NO;
            self.voiceButton.hidden = NO;
        }

    //: }else {
    }else {
        //: viewHeight = 51;
        viewHeight = 51;
        //: self.emoticonBtn.hidden = YES;
        self.emoticonBtn.hidden = YES;
        //: self.albunBtn.hidden = YES;
        self.albunBtn.hidden = YES;
        //: self.cameraBtn.hidden = YES;
        self.cameraBtn.hidden = YES;
        //: self.voiceButton.hidden = YES;
        self.voiceButton.hidden = YES;
    }

    //: return CGSizeMake(size.width,viewHeight);
    return CGSizeMake(size.width,viewHeight);
}

//: - (void)adjustTextViewWidth:(CGFloat)width
- (void)manager:(CGFloat)width
{
//    CGFloat textViewWidth = 0;
//    for (NSNumber *type in self.types) {
//        if (type.integerValue == ZZZInputBarItemTypeTextAndRecord) {
//            continue;
//        }
//        UIView *view = [self subViewForType:type.integerValue];
//        textViewWidth += view.nim_width;
//    }
//    textViewWidth += (self.spacing * (self.types.count + 1));
    //: self.inputTextView.nim_width = width - 100 - 4*self.textViewPadding;
    self.inputTextView.nim_width = width - 100 - 4*self.device;
}


//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];

//    if ([self.types containsObject:@(ZZZInputBarItemTypeTextAndRecord)]) {
//        self.inputTextBkgImage.nim_width  = self.inputTextView.nim_width  + 2 * self.textViewPadding;
//        self.inputTextBkgImage.nim_height = self.inputTextView.nim_height + 2 * self.textViewPadding;
//    }
//    CGFloat left = 0;
//    for (NSNumber *type in self.types) {
//        UIView *view  = [self subViewForType:type.integerValue];
//        if (!view.superview)
//        {
//            [self addSubview:view];
//        }
//
//        view.nim_left = left + self.spacing;
//        view.nim_centerY = self.nim_height * .5f;
//        left = view.nim_right;
//    }
//
//    [self adjustTextAndRecordView];

//    //底部分割线
//    CGFloat sepHeight = .5f;
//    _bottomSep.nim_size     = CGSizeMake(self.nim_width, sepHeight);
//    _bottomSep.nim_bottom   = self.nim_height - sepHeight;

    //: self.sendButton.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-15-25, self.spacing, 25, 25);
    self.sendButton.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-15-25, self.key, 25, 25);
    //: self.emoticonBtn2.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-15-25-25-15, self.spacing, 25, 25);
    self.emoticonBtn2.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-15-25-25-15, self.key, 25, 25);

    //: self.inputTextView.nim_left = self.spacing;
    self.inputTextView.nim_left = self.key;
    //: self.inputTextView.nim_top = self.spacing;
    self.inputTextView.nim_top = self.key;

    //: self.sendButton.nim_centerY = self.inputTextView.nim_centerY;
    self.sendButton.nim_centerY = self.inputTextView.nim_centerY;
    //: self.emoticonBtn2.nim_centerY = self.inputTextView.nim_centerY;
    self.emoticonBtn2.nim_centerY = self.inputTextView.nim_centerY;

    //: CGFloat width = [[UIScreen mainScreen] bounds].size.width/4;
    CGFloat width = [[UIScreen mainScreen] bounds].size.width/4;
    //: CGFloat spaeHeight = 12;
    CGFloat spaeHeight = 12;
    //: self.emoticonBtn.frame = CGRectMake(0, self.inputTextView.bottom + spaeHeight, width, 32);
    self.emoticonBtn.frame = CGRectMake(0, self.inputTextView.bottom + spaeHeight, width, 32);
    //: self.albunBtn.frame = CGRectMake(width, self.inputTextView.bottom + spaeHeight, width, 32);
    self.albunBtn.frame = CGRectMake(width, self.inputTextView.bottom + spaeHeight, width, 32);
    //: self.cameraBtn.frame = CGRectMake(2*width, self.inputTextView.bottom + spaeHeight, width, 32);
    self.cameraBtn.frame = CGRectMake(2*width, self.inputTextView.bottom + spaeHeight, width, 32);
    //: self.voiceButton.frame = CGRectMake(3*width, self.inputTextView.bottom + spaeHeight, width, 32);
    self.voiceButton.frame = CGRectMake(3*width, self.inputTextView.bottom + spaeHeight, width, 32);



}


//: - (void)adjustTextAndRecordView
- (void)bubble
{
    //: if ([self.types containsObject:@(ZZZInputBarItemTypeTextAndRecord)])
    if ([self.types containsObject:@(ZZZInputBarItemTypeTextAndRecord)])
    {
//        self.inputTextView.center  = self.inputTextBkgImage.center;

        //: if (!self.inputTextView.superview)
        if (!self.inputTextView.superview)
        {
            //输入框
            //: [self addSubview:self.inputTextView];
            [self addSubview:self.inputTextView];
        }
//        if (!self.recordButton.superview)
//        {
//            //中间点击录音按钮
//            self.recordButton.frame    = self.inputTextBkgImage.frame;
//            [self addSubview:self.recordButton];
//        }
    }
}

//: - (BOOL)showsKeyboard
- (BOOL)showsKeyboard
{
    //: return [self.inputTextView isFirstResponder];
    return [self.inputTextView isFirstResponder];
}


//: - (void)setShowsKeyboard:(BOOL)showsKeyboard
- (void)setShowsKeyboard:(BOOL)showsKeyboard
{
    //: if (showsKeyboard)
    if (showsKeyboard)
    {
        //: [self.inputTextView becomeFirstResponder];
        [self.inputTextView becomeFirstResponder];
//        self.emoticonBtn.hidden = YES;
//        self.albunBtn.hidden = YES;
//        self.cameraBtn.hidden = YES;
//        self.voiceButton.hidden = YES;
    }
    //: else
    else
    {
        //: [self.inputTextView resignFirstResponder];
        [self.inputTextView resignFirstResponder];
//        self.emoticonBtn.hidden = NO;
//        self.albunBtn.hidden = NO;
//        self.cameraBtn.hidden = NO;
//        self.voiceButton.hidden = NO;
    }
}


//: - (void)update:(NIMInputStatus)status
- (void)file:(NIMInputStatus)status
{
    //: self.status = status;
    self.status = status;
    //: [self sizeToFit];
    [self sizeToFit];

    //: if (status == NIMInputStatusText || status == NIMInputStatusMore)
    if (status == NIMInputStatusText || status == NIMInputStatusMore)
    {
//        [self.recordButton setHidden:YES];
        //: [self.inputTextView setHidden:NO];
        [self.inputTextView setHidden:NO];
//        [self.inputTextBkgImage setHidden:NO];
//        [self updateVoiceBtnImages:YES];
//        [self updateEmotAndTextBtnImages:YES];
        //: [self updateEmotAndTextBtnImages:YES];
        [self length:YES];
    }
    //: else if(status == NIMInputStatusAudio)
    else if(status == NIMInputStatusAudio)
    {
//        [self.recordButton setHidden:NO];
        //: [self.inputTextView setHidden:YES];
        [self.inputTextView setHidden:YES];
//        [self.inputTextBkgImage setHidden:YES];
//        [self updateVoiceBtnImages:NO];
        //: [self updateEmotAndTextBtnImages:YES];
        [self length:YES];
    }
//    else if (status == NIMInputStatusEmoticon)
//    {
//        [self.inputTextView setHidden:NO];
//        [self updateEmotAndTextBtnImages:YES];
//    }
    //: else
    else
    {
//        [self.recordButton setHidden:YES];
        //: [self.inputTextView setHidden:NO];
        [self.inputTextView setHidden:NO];
//        [self.inputTextBkgImage setHidden:NO];
//        [self updateVoiceBtnImages:YES];
        //: [self updateEmotAndTextBtnImages:NO];
        [self length:NO];
    }
}

//: - (void)updateVoiceBtnImages:(BOOL)selected
- (void)text:(BOOL)selected
{
    //: [self.voiceButton setImage:selected?[UIImage imageNamed:@"icon_toolview_voice_normal"]:[UIImage imageNamed:@"icon_toolview_keyboard_normal"] forState:UIControlStateNormal];
    [self.voiceButton setImage:selected?[UIImage imageNamed:StringFromUniversalData(kStr_fighterData)]:[UIImage imageNamed:StringFromUniversalData(kStr_mediaTianEventData)] forState:UIControlStateNormal];
}

//: - (void)updateEmotAndTextBtnImages:(BOOL)selected
- (void)length:(BOOL)selected
{
    //: [self.emoticonBtn2 setImage:selected?[UIImage imageNamed:@"icon_toolview_emotion2_normal"]:[UIImage imageNamed:@"icon_toolview_keybord"] forState:UIControlStateNormal];
    [self.emoticonBtn2 setImage:selected?[UIImage imageNamed:StringFromUniversalData(kStr_litEasterText)]:[UIImage imageNamed:StringFromUniversalData(kStr_sonTitle)] forState:UIControlStateNormal];
}


//: #pragma mark - ZZZGrowingTextViewDelegate
#pragma mark - NamePathKey
//: - (BOOL)shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)replacementText
- (BOOL)indicator:(NSRange)range window:(NSString *)replacementText
{
    //: BOOL should = YES;
    BOOL should = YES;
    //: if ([self.delegate respondsToSelector:@selector(shouldChangeTextInRange:replacementText:)]) {
    if ([self.delegate respondsToSelector:@selector(indicator:window:)]) {
        //: should = [self.delegate shouldChangeTextInRange:range replacementText:replacementText];
        should = [self.delegate indicator:range window:replacementText];
    }
    //: return should;
    return should;
}


//: - (BOOL)textViewShouldBeginEditing:(ZZZGrowingTextView *)growingTextView
- (BOOL)bared:(ByView *)growingTextView
{
    //: BOOL should = YES;
    BOOL should = YES;
    //: if ([self.delegate respondsToSelector:@selector(textViewShouldBeginEditing)]) {
    if ([self.delegate respondsToSelector:@selector(isRecord)]) {
        //: should = [self.delegate textViewShouldBeginEditing];
        should = [self.delegate isRecord];
    }
    //: return should;
    return should;
}

//: - (void)textViewDidEndEditing:(ZZZGrowingTextView *)growingTextView
- (void)names:(ByView *)growingTextView
{
    //: if ([self.delegate respondsToSelector:@selector(textViewDidEndEditing)]) {
    if ([self.delegate respondsToSelector:@selector(completeEmpty)]) {
        //: [self.delegate textViewDidEndEditing];
        [self.delegate completeEmpty];
    }
}


//: - (void)textViewDidChange:(ZZZGrowingTextView *)growingTextView
- (void)cuts:(ByView *)growingTextView
{
    //: if ([self.delegate respondsToSelector:@selector(textViewDidChange)]) {
    if ([self.delegate respondsToSelector:@selector(replyChange)]) {
        //: [self.delegate textViewDidChange];
        [self.delegate replyChange];
    }

    //: if (_inputTextView.text.length > 0) {
    if (_inputTextView.text.length > 0) {
        //: self.sendButton.hidden = NO;
        self.sendButton.hidden = NO;
        //: self.emoticonBtn2.hidden = NO;
        self.emoticonBtn2.hidden = NO;
    //: } else {
    } else {
        //: self.sendButton.hidden = YES;
        self.sendButton.hidden = YES;
        //: self.emoticonBtn2.hidden = YES;
        self.emoticonBtn2.hidden = YES;
    }
}

//: - (void)willChangeHeight:(CGFloat)height
- (void)infoHeight:(CGFloat)height
{
    //: CGFloat toolBarHeight = height + 2 * self.spacing +50 ;
    CGFloat toolBarHeight = height + 2 * self.key +50 ;
    //: if ([self.delegate respondsToSelector:@selector(toolBarWillChangeHeight:)]) {
    if ([self.delegate respondsToSelector:@selector(indexDisable:)]) {
        //: [self.delegate toolBarWillChangeHeight:toolBarHeight];
        [self.delegate indexDisable:toolBarHeight];
    }
}

//: - (void)didChangeHeight:(CGFloat)height
- (void)commutatived:(CGFloat)height
{
    //去掉了+50
    //: self.nim_height = height + 2 * self.spacing + 2 * self.textViewPadding +50;
    self.nim_height = height + 2 * self.key + 2 * self.device +50;
//    self.nim_height = height + 2 * self.spacing + 2 * self.textViewPadding ;
    //: if ([self.delegate respondsToSelector:@selector(toolBarDidChangeHeight:)]) {
    if ([self.delegate respondsToSelector:@selector(colorfuls:)]) {
        //: [self.delegate toolBarDidChangeHeight:self.nim_height];
        [self.delegate colorfuls:self.nim_height];
    }
}


//: #pragma mark - Get
#pragma mark - Get
//: - (UIView *)subViewForType:(ZZZInputBarItemType)type{
- (UIView *)recordLine:(ZZZInputBarItemType)type{
    //: if (!_dict) {
    if (!_dict) {
        //: _dict = @{
        _dict = @{
                  //: @(ZZZInputBarItemTypeVoice) : self.voiceButton,
                  @(ZZZInputBarItemTypeVoice) : self.voiceButton,
//                  @(ZZZInputBarItemTypeTextAndRecord)  : self.inputTextBkgImage,
                  //: @(ZZZInputBarItemTypeEmoticon) : self.emoticonBtn,
                  @(ZZZInputBarItemTypeEmoticon) : self.emoticonBtn,
//                  @(ZZZInputBarItemTypeMore)     : self.moreMediaBtn,
                  //: @(ZZZInputBarItemTypeSend) : self.sendButton,
                  @(ZZZInputBarItemTypeSend) : self.sendButton,
                //: };
                };
    }
    //: return _dict[@(type)];
    return _dict[@(type)];
}

//: - (CGFloat)spacing{
- (CGFloat)key{
    //: return 6.f;
    return 6.f;
}

//: - (CGFloat)textViewPadding
- (CGFloat)device
{
    //: return 3.f;
    return 3.f;
}


//: @end
@end


//: @implementation ZZZInputToolBar(InputText)
@implementation BosomView(InputText)

//: - (NSRange)selectedRange
- (NSRange)pinRange
{
    //: return self.inputTextView.selectedRange;
    return self.inputTextView.selectedRange;
}

//: - (void)setPlaceHolder:(NSString *)placeHolder
- (void)setComment:(NSString *)placeHolder
{
    //: self.inputTextView.placeholderAttributedText = [[NSAttributedString alloc] initWithString:placeHolder attributes:@{NSForegroundColorAttributeName:[UIColor grayColor]}];
    self.inputTextView.placeholderAttributedText = [[NSAttributedString alloc] initWithString:placeHolder attributes:@{NSForegroundColorAttributeName:[UIColor grayColor]}];
}

//: - (void)setPlaceHolder:(NSString *)placeHolder color:(UIColor *)placeholderColor
- (void)oarlockColor:(NSString *)placeHolder top:(UIColor *)placeholderColor
{
    //: self.inputTextView.placeholderAttributedText = [[NSAttributedString alloc] initWithString:placeHolder attributes:@{NSForegroundColorAttributeName:placeholderColor}];
    self.inputTextView.placeholderAttributedText = [[NSAttributedString alloc] initWithString:placeHolder attributes:@{NSForegroundColorAttributeName:placeholderColor}];
}

//: - (void)insertText:(NSString *)text
- (void)tillName:(NSString *)text
{
//    NSRange range = self.inputTextView.selectedRange;
//    NSString *replaceText = [self.inputTextView.text stringByReplacingCharactersInRange:range withString:text];
//    range = NSMakeRange(range.location + text.length, 0);
//    self.inputTextView.text = replaceText;
//    self.inputTextView.selectedRange = range;

    //: [self insertAttributedText:text withEmoji:NO];
    [self view:text send:NO];
}

//: - (void)deleteText:(NSRange)range
- (void)scale:(NSRange)range
{
    //: NSString *text = self.contentText;
    NSString *text = self.contentText;
    //: if (range.location + range.length <= [text length]
    if (range.location + range.length <= [text length]
        //: && range.location != NSNotFound && range.length != 0)
        && range.location != NSNotFound && range.length != 0)
    {
        //: NSString *newText = [text stringByReplacingCharactersInRange:range withString:@""];
        NSString *newText = [text stringByReplacingCharactersInRange:range withString:@""];
        //: NSRange newSelectRange = NSMakeRange(range.location, 0);
        NSRange newSelectRange = NSMakeRange(range.location, 0);
        //: [self.inputTextView setText:newText];
        [self.inputTextView setText:newText];
        //: self.inputTextView.selectedRange = newSelectRange;
        self.inputTextView.selectedRange = newSelectRange;
    }
}

//// 2022年08月25日 emoji处理
//: - (void)insertAttributedText:(NSString *)text withEmoji:(BOOL)isEmoji {
- (void)view:(NSString *)text send:(BOOL)isEmoji {

//    if (text.length > 0) {
//        self.inputTextView.placeholderAttributedText = nil;
//    }
    //: if (text.length > 0) {
    if (text.length > 0) {
        //: self.sendButton.hidden = NO;
        self.sendButton.hidden = NO;
        //: self.emoticonBtn2.hidden = NO;
        self.emoticonBtn2.hidden = NO;
        //: self.inputTextView.placeholderAttributedText = nil;
        self.inputTextView.placeholderAttributedText = nil;
    //: } else {
    } else {
        //: self.sendButton.hidden = YES;
        self.sendButton.hidden = YES;
        //: self.emoticonBtn2.hidden = YES;
        self.emoticonBtn2.hidden = YES;
    }

    //: if (isEmoji) {
    if (isEmoji) {

        //: NSRange range = self.inputTextView.selectedRange;
        NSRange range = self.inputTextView.selectedRange;
        //: self.inputTextView.attributedText = [self nim_setText:text];
        self.inputTextView.attributedText = [self inside:text];
        //: range = NSMakeRange(range.location + 2, 0);
        range = NSMakeRange(range.location + 2, 0);
        //: self.inputTextView.selectedRange = range;
        self.inputTextView.selectedRange = range;
        //: [self.inputTextView scrollRangeToVisible:self.inputTextView.selectedRange];
        [self.inputTextView reply:self.inputTextView.selectedRange];

        //: return;
        return;
    }


    //: NSRange range = self.inputTextView.selectedRange;
    NSRange range = self.inputTextView.selectedRange;
    //: NSString *replaceText = [self.inputTextView.text stringByReplacingCharactersInRange:range withString:text];
    NSString *replaceText = [self.inputTextView.text stringByReplacingCharactersInRange:range withString:text];
    //: range = NSMakeRange(range.location + text.length, 0);
    range = NSMakeRange(range.location + text.length, 0);

    //: NSMutableAttributedString *attributedStringM = [[NSMutableAttributedString alloc] initWithString:replaceText];
    NSMutableAttributedString *attributedStringM = [[NSMutableAttributedString alloc] initWithString:replaceText];
    //: self.inputTextView.attributedText = attributedStringM;
    self.inputTextView.attributedText = attributedStringM;
    //: self.inputTextView.selectedRange = range;
    self.inputTextView.selectedRange = range;
}

//: - (NSMutableAttributedString *)nim_setText:(NSString *)text
- (NSMutableAttributedString *)inside:(NSString *)text
{

    //: NSMutableAttributedString *attributedStringM = [[NSMutableAttributedString alloc] initWithAttributedString:self.inputTextView.attributedText];
    NSMutableAttributedString *attributedStringM = [[NSMutableAttributedString alloc] initWithAttributedString:self.inputTextView.attributedText];

    //: NIMInputEmoticon *emoticon = [[ZZZInputEmoticonManager sharedManager] emoticonByTag:text];
    IndependentSure *emoticon = [[SumManager tap] file:text];
    //: UIImage *image = nil;
    UIImage *image = nil;

    //: if(emoticon.filename &&
    if(emoticon.filename &&
       //: emoticon.filename.length>0 &&
       emoticon.filename.length>0 &&
        //: (image = [UIImage nim_emoticonInKit:emoticon.filename])!= nil) {
        (image = [UIImage chromatic:emoticon.filename])!= nil) {

        //: NSTextAttachment *attachment = [[NSTextAttachment alloc] init];
        NSTextAttachment *attachment = [[NSTextAttachment alloc] init];
        //: attachment.image = image;
        attachment.image = image;
        //: CGFloat emojiHeight = _inputTextView.font.lineHeight;
        CGFloat emojiHeight = _inputTextView.font.lineHeight;
        //: attachment.bounds = CGRectMake(0, _inputTextView.font.descender, emojiHeight, emojiHeight);
        attachment.bounds = CGRectMake(0, _inputTextView.font.descender, emojiHeight, emojiHeight);

        //: NSMutableAttributedString *emojiAtt = [[NSMutableAttributedString alloc] initWithString:YYTextAttachmentToken];
        NSMutableAttributedString *emojiAtt = [[NSMutableAttributedString alloc] initWithString:YYTextAttachmentToken];
        //: [emojiAtt appendAttributedString:[[NSAttributedString alloc] initWithString:@" "]];
        [emojiAtt appendAttributedString:[[NSAttributedString alloc] initWithString:@" "]];
        //: [emojiAtt yy_setAttribute:NSKernAttributeName value:@(-1)];
        [emojiAtt yy_setAttribute:NSKernAttributeName value:@(-1)];
        //: [emojiAtt yy_setAttachment:attachment range:emojiAtt.yy_rangeOfAll];
        [emojiAtt yy_setAttachment:attachment range:emojiAtt.yy_rangeOfAll];

        //: [attributedStringM insertAttributedString:emojiAtt atIndex:_inputTextView.selectedRange.location];
        [attributedStringM insertAttributedString:emojiAtt atIndex:_inputTextView.selectedRange.location];

        //: SNTextHighlight *highlight = [[SNTextHighlight alloc] init];
        BrinkTitleHighlight *highlight = [[BrinkTitleHighlight alloc] init];
        //: highlight.type = SNTextHighlightTypeEmoji;
        highlight.type = SNTextHighlightTypeEmoji;
        //: highlight.text = emoticon.tag;
        highlight.text = emoticon.tag;

        //: [attributedStringM yy_setTextHighlight:highlight range:NSMakeRange(_inputTextView.selectedRange.location, emojiAtt.length)];
        [attributedStringM yy_setTextHighlight:highlight range:NSMakeRange(_inputTextView.selectedRange.location, emojiAtt.length)];
        //: attributedStringM.yy_font = _inputTextView.font;
        attributedStringM.yy_font = _inputTextView.font;

    }

    //: else {
    else {

        //: NSMutableAttributedString *emojiAtt = [[NSMutableAttributedString alloc] initWithString:emoticon.unicode];
        NSMutableAttributedString *emojiAtt = [[NSMutableAttributedString alloc] initWithString:emoticon.unicode];
        //: [emojiAtt yy_setAttribute:NSKernAttributeName value:@(-1)];
        [emojiAtt yy_setAttribute:NSKernAttributeName value:@(-1)];

        //: [attributedStringM insertAttributedString:emojiAtt atIndex:_inputTextView.selectedRange.location];
        [attributedStringM insertAttributedString:emojiAtt atIndex:_inputTextView.selectedRange.location];

        //: SNTextHighlight *highlight = [[SNTextHighlight alloc] init];
        BrinkTitleHighlight *highlight = [[BrinkTitleHighlight alloc] init];
        //: highlight.type = SNTextHighlightTypeEmoji;
        highlight.type = SNTextHighlightTypeEmoji;
        //: highlight.text = emoticon.tag;
        highlight.text = emoticon.tag;

        //: [attributedStringM yy_setTextHighlight:highlight range:NSMakeRange(_inputTextView.selectedRange.location, emojiAtt.length)];
        [attributedStringM yy_setTextHighlight:highlight range:NSMakeRange(_inputTextView.selectedRange.location, emojiAtt.length)];
        //: attributedStringM.yy_font = _inputTextView.font;
        attributedStringM.yy_font = _inputTextView.font;
    }

    //: return attributedStringM;
    return attributedStringM;
}

//: @end
@end

Byte * UniversalDataToCache(Byte *data) {
    int geologicalFormation = data[0];
    int teeContent = data[1];
    Byte pennyDreadful = data[2];
    int speciesNovel = data[3];
    if (!geologicalFormation) return data + speciesNovel;
    for (int i = speciesNovel; i < speciesNovel + teeContent; i++) {
        int value = data[i] - pennyDreadful;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[speciesNovel + teeContent] = 0;
    return data + speciesNovel;
}

NSString *StringFromUniversalData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)UniversalDataToCache(data)];
}
