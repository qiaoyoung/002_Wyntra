
#import <Foundation/Foundation.h>

NSString *StringFromAddressData(Byte *data);


//: message_please_enter_content
Byte kStr_chronicThereVirtuallyData[] = {49, 28, 8, 75, 136, 52, 106, 138, 116, 110, 101, 116, 110, 111, 99, 95, 114, 101, 116, 110, 101, 95, 101, 115, 97, 101, 108, 112, 95, 101, 103, 97, 115, 115, 101, 109, 109};


//: default
Byte kStr_reluctantValue[] = {79, 7, 3, 116, 108, 117, 97, 102, 101, 100, 38};

// __DEBUG__
// __CLOSE_PRINT__
//
//  EnterSignView.m
// On
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZZZInputView.h"
#import "EnterSignView.h"
//: #import <AVFoundation/AVFoundation.h>
#import <AVFoundation/AVFoundation.h>
//: #import "ZZZInputMoreContainerView.h"
#import "LabelMessageView.h"
//: #import "ZZZInputEmoticonContainerView.h"
#import "ItemEnableView.h"
//: #import "ZZZInputAudioRecordIndicatorView.h"
#import "StatusView.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "ZZZInputEmoticonDefine.h"
#import "ZZZInputEmoticonDefine.h"
//: #import "ZZZInputEmoticonManager.h"
#import "SumManager.h"
//: #import "ZZZInputToolBar.h"
#import "BosomView.h"
//: #import "UIImage+AppleProjectKit.h"
#import "UIImage+On.h"
//: #import "ZZZGlobalMacro.h"
#import "ZZZGlobalMacro.h"
//: #import "ZZZContactSelectViewController.h"
#import "InputValueViewController.h"
//: #import "AppleProjectKit.h"
#import "On.h"
//: #import "ZZZKitInfoFetchOption.h"
#import "CertainOption.h"
//: #import "ZZZKitKeyboardInfo.h"
#import "DemonstrateInfo.h"
//: #import "NSString+AppleProjectKit.h"
#import "NSString+On.h"
//: #import "ZZZReplyContentView.h"
#import "MagnitudeerestView.h"
//: #import "M80AttributedLabel+AppleProjectKit.h"
#import "GreenNameView+On.h"
//: #import <YYText.h>
#import <YYText.h>
//: #import "SNTextHighlight.h"
#import "BrinkTitleHighlight.h"

//: @interface ZZZInputView()<ZZZInputToolBarDelegate,NIMInputEmoticonProtocol,NIMContactSelectDelegate,ZZZReplyContentViewDelegate>
@interface EnterSignView()<TeamContentDelegate,CookieProtocol,CompartmentDelegate,ShouldDelegate>
{
    //: UIView *_emoticonView;
    UIView *_emoticonView;
}

//: @property (nonatomic, strong) ZZZInputAudioRecordIndicatorView *audioRecordIndicator;
@property (nonatomic, strong) StatusView *audioRecordIndicator;
//: @property (nonatomic, assign) NIMAudioRecordPhase recordPhase;
@property (nonatomic, assign) NIMAudioRecordPhase recordPhase;
//: @property (nonatomic, weak) id<ZZZSessionConfig> inputConfig;
@property (nonatomic, weak) id<PastConfig> inputConfig;
//: @property (nonatomic, weak) id<NIMInputDelegate> inputDelegate;
@property (nonatomic, weak) id<BulkDelegate> inputDelegate;
//: @property (nonatomic, weak) id<NIMInputActionDelegate> actionDelegate;
@property (nonatomic, weak) id<DelegateDoing> actionDelegate;

//: @property (nonatomic, assign) CGFloat keyBoardFrameTop; 
@property (nonatomic, assign) CGFloat keyBoardFrameTop; //键盘的frame的top值，屏幕高度 - 键盘高度，由于有旋转的可能，这个值只有当 键盘弹出时才有意义。

//: @end
@end


//: @implementation ZZZInputView
@implementation EnterSignView

//: @synthesize emoticonContainer = _emoticonContainer;
@synthesize emoticonContainer = _emoticonContainer;
//: @synthesize moreContainer = _moreContainer;
@synthesize moreContainer = _moreContainer;

//: - (instancetype)initWithFrame:(CGRect)frame
- (instancetype)initWithSessionSourceConfig:(CGRect)frame
                       //: config:(id<ZZZSessionConfig>)config
                       send:(id<PastConfig>)config
{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self)
    if (self)
    {
        //: _recording = NO;
        _recording = NO;
        //: _recordPhase = AudioRecordPhaseEnd;
        _recordPhase = AudioRecordPhaseEnd;
        //: _atCache = [[ZZZInputAtCache alloc] init];
        _atCache = [[DistanceCache alloc] init];
        //: _inputConfig = config;
        _inputConfig = config;
        //: self.backgroundColor = [UIColor whiteColor];
        self.backgroundColor = [UIColor whiteColor];
        //        self.backgroundColor = [UIColor colorWithRed:243/255.0 green:242/255.0 blue:252/255.0 alpha:1];
    }
    //: return self;
    return self;
}

//: - (void)didMoveToWindow
- (void)didMoveToWindow
{
    //: [self setup];
    [self accountWith];
}

//: - (CGSize)sizeThatFits:(CGSize)size
- (CGSize)sizeThatFits:(CGSize)size
{
    //这里不做.语法 get 操作，会提前初始化组件导致卡顿
    //: CGFloat replyedContentHeight = _replyedContent.hidden ? 0 : _replyedContent.nim_height;
    CGFloat replyedContentHeight = _replyedContent.hidden ? 0 : _replyedContent.nim_height;
    //: CGFloat toolBarHeight = _toolBar.nim_height;
    CGFloat toolBarHeight = _toolBar.nim_height;
    //: CGFloat containerHeight = 0;
    CGFloat containerHeight = 0;
    //: switch (self.status)
    switch (self.status)
    {
        //: case NIMInputStatusEmoticon:
        case NIMInputStatusEmoticon:
        {
            //: containerHeight = _emoticonContainer.nim_height;
            containerHeight = _emoticonContainer.nim_height;
            //: break;
            break;
        }
        //: case NIMInputStatusMore:
        case NIMInputStatusMore:
        {
            //: containerHeight = _moreContainer.nim_height;
            containerHeight = _moreContainer.nim_height;
            //: break;
            break;
        }
        //: default:
        default:
        {
            //: UIEdgeInsets safeArea = self.superview.safeAreaInsets;
            UIEdgeInsets safeArea = self.superview.safeAreaInsets;
            //键盘是从最底下弹起的，需要减去安全区域底部的高度
            //: CGFloat keyboardDelta = [ZZZKitKeyboardInfo instance].keyboardHeight - safeArea.bottom;
            CGFloat keyboardDelta = [DemonstrateInfo allState].keyboardHeight - safeArea.bottom;

            //如果键盘还没有安全区域高，容器的初始值为0；否则则为键盘和安全区域的高度差值，这样可以保证 toolBar 始终在键盘上面
            //: containerHeight = keyboardDelta>0 ? keyboardDelta : 0;
            containerHeight = keyboardDelta>0 ? keyboardDelta : 0;

            //: if(containerHeight>0){
            if(containerHeight>0){
                //: toolBarHeight = _toolBar.nim_height-50;
                toolBarHeight = _toolBar.nim_height-50;
                //: self.toolBar.albunBtn.hidden = YES;
                self.toolBar.albunBtn.hidden = YES;
                //: self.toolBar.emoticonBtn.hidden = YES;
                self.toolBar.emoticonBtn.hidden = YES;
                //: self.toolBar.cameraBtn.hidden = YES;
                self.toolBar.cameraBtn.hidden = YES;
                //: self.toolBar.voiceButton.hidden = YES;
                self.toolBar.voiceButton.hidden = YES;
            //: }else{
            }else{
                //: self.toolBar.albunBtn.hidden = NO;
                self.toolBar.albunBtn.hidden = NO;
                //: self.toolBar.emoticonBtn.hidden = NO;
                self.toolBar.emoticonBtn.hidden = NO;
                //: self.toolBar.cameraBtn.hidden = NO;
                self.toolBar.cameraBtn.hidden = NO;
                //: self.toolBar.voiceButton.hidden = NO;
                self.toolBar.voiceButton.hidden = NO;
            }

        }
            //: break;
            break;
    }
    //: CGFloat height = replyedContentHeight + toolBarHeight + containerHeight;
    CGFloat height = replyedContentHeight + toolBarHeight + containerHeight;
    //: CGFloat width = self.superview? self.superview.nim_width : self.nim_width;
    CGFloat width = self.superview? self.superview.nim_width : self.nim_width;
    //: return CGSizeMake(width, height);
    return CGSizeMake(width, height);
}


//: - (void)setInputDelegate:(id<NIMInputDelegate>)delegate
- (void)setInputDelegate:(id<BulkDelegate>)delegate
{
    //: _inputDelegate = delegate;
    _inputDelegate = delegate;
}

//: - (void)setInputActionDelegate:(id<NIMInputActionDelegate>)actionDelegate
- (void)setAddSession:(id<DelegateDoing>)actionDelegate
{
    //: _actionDelegate = actionDelegate;
    _actionDelegate = actionDelegate;
}

//: - (void)reset
- (void)be
{
    //: self.nim_width = self.superview.nim_width;
    self.nim_width = self.superview.nim_width;
    //: [self refreshStatus:NIMInputStatusText];
    [self by:NIMInputStatusText];
    //: [self sizeToFit];
    [self sizeToFit];
}

//: - (void)refreshStatus:(NIMInputStatus)status
- (void)by:(NIMInputStatus)status
{
    //: self.status = status;
    self.status = status;
    //: [self.toolBar update:status];
    [self.toolBar file:status];
    //: dispatch_after(dispatch_time((0ull), (int64_t)(0.2 * 1000000000ull)), dispatch_get_main_queue(), ^{
    dispatch_after(dispatch_time((0ull), (int64_t)(0.2 * 1000000000ull)), dispatch_get_main_queue(), ^{
        //: self.moreContainer.hidden = status != NIMInputStatusMore;
        self.moreContainer.hidden = status != NIMInputStatusMore;
        //: self.emoticonContainer.hidden = status != NIMInputStatusEmoticon;
        self.emoticonContainer.hidden = status != NIMInputStatusEmoticon;
    //: });
    });
}

//- (StatusView *)audioRecordIndicator {
//    if(!_audioRecordIndicator) {
//        _audioRecordIndicator = [[StatusView alloc] init];
//    }
//    return _audioRecordIndicator;
//}
//
//- (void)setRecordPhase:(NIMAudioRecordPhase)recordPhase {
//    NIMAudioRecordPhase prevPhase = _recordPhase;
//    _recordPhase = recordPhase;
//    self.audioRecordIndicator.phase = _recordPhase;
//    if(prevPhase == AudioRecordPhaseEnd) {
//        if(AudioRecordPhaseStart == _recordPhase) {
//            if ([_actionDelegate respondsToSelector:@selector(onStartRecording)]) {
//                [_actionDelegate onStartRecording];
//            }
//        }
//    } else if (prevPhase == AudioRecordPhaseStart || prevPhase == AudioRecordPhaseRecording) {
//        if (AudioRecordPhaseEnd == _recordPhase) {
//            if ([_actionDelegate respondsToSelector:@selector(onStopRecording)]) {
//                [_actionDelegate onStopRecording];
//            }
//        }
//    } else if (prevPhase == AudioRecordPhaseCancelling) {
//        if(AudioRecordPhaseEnd == _recordPhase) {
//            if ([_actionDelegate respondsToSelector:@selector(onCancelRecording)]) {
//                [_actionDelegate onCancelRecording];
//            }
//        }
//    }
//}

//: - (void)setup
- (void)accountWith
{
    //: if (!_toolBar)
    if (!_toolBar)
    {
        //: _toolBar = [[ZZZInputToolBar alloc] initWithFrame:CGRectMake(0, 0, self.nim_width, 0)];
        _toolBar = [[BosomView alloc] initWithFrame:CGRectMake(0, 0, self.nim_width, 0)];
    }
    //: [self addSubview:_toolBar];
    [self addSubview:_toolBar];
    //设置placeholder
//        NSString *placeholder = [On sharedKit].config.placeholder;
//        [_toolBar setPlaceHolder:placeholder];
    //: [_toolBar setPlaceHolder:[NTESLanguageManager getTextWithKey:@"message_please_enter_content"]];
    [_toolBar setComment:[LabelCell tinkleKey:StringFromAddressData(kStr_chronicThereVirtuallyData)]];
    //设置input bar 上的按钮
    //: if ([_inputConfig respondsToSelector:@selector(inputBarItemTypes)]) {
    if ([_inputConfig respondsToSelector:@selector(itemText)]) {
        //: NSArray *types = [_inputConfig inputBarItemTypes];
        NSArray *types = [_inputConfig itemText];
        //: [_toolBar setInputBarItemTypes:types];
        [_toolBar setInputBarItemTypes:types];
    }

    //: _toolBar.delegate = self;
    _toolBar.delegate = self;
    //: [_toolBar.emoticonBtn addTarget:self action:@selector(onTouchEmoticonBtn:) forControlEvents:UIControlEventTouchUpInside];
    [_toolBar.emoticonBtn addTarget:self action:@selector(recordDoing:) forControlEvents:UIControlEventTouchUpInside];
    //: [_toolBar.emoticonBtn2 addTarget:self action:@selector(onTouchEmoticonBtn:) forControlEvents:UIControlEventTouchUpInside];
    [_toolBar.emoticonBtn2 addTarget:self action:@selector(recordDoing:) forControlEvents:UIControlEventTouchUpInside];
    //: [_toolBar.albunBtn addTarget:self action:@selector(onTouchAlbunBtn:) forControlEvents:UIControlEventTouchUpInside];
    [_toolBar.albunBtn addTarget:self action:@selector(nameImage:) forControlEvents:UIControlEventTouchUpInside];
    //: [_toolBar.cameraBtn addTarget:self action:@selector(onTouchCameraBtn:) forControlEvents:UIControlEventTouchUpInside];
    [_toolBar.cameraBtn addTarget:self action:@selector(upShow:) forControlEvents:UIControlEventTouchUpInside];
    //    [_toolBar.moreMediaBtn addTarget:self action:@selector(onTouchMoreBtn:) forControlEvents:UIControlEventTouchUpInside];
    //: [_toolBar.voiceButton addTarget:self action:@selector(onTouchVoiceBtn:) forControlEvents:UIControlEventTouchUpInside];
    [_toolBar.voiceButton addTarget:self action:@selector(built:) forControlEvents:UIControlEventTouchUpInside];
    //: [_toolBar.sendButton addTarget:self action:@selector(onTouchSendBtn:) forControlEvents:UIControlEventTouchUpInside];
    [_toolBar.sendButton addTarget:self action:@selector(turns:) forControlEvents:UIControlEventTouchUpInside];
    //    [_toolBar.recordButton addTarget:self action:@selector(onTouchRecordBtnDown:) forControlEvents:UIControlEventTouchDown];
    //    [_toolBar.recordButton addTarget:self action:@selector(onTouchRecordBtnDragInside:) forControlEvents:UIControlEventTouchDragInside];
    //    [_toolBar.recordButton addTarget:self action:@selector(onTouchRecordBtnDragOutside:) forControlEvents:UIControlEventTouchDragOutside];
    //    [_toolBar.recordButton addTarget:self action:@selector(onTouchRecordBtnUpInside:) forControlEvents:UIControlEventTouchUpInside];
    //    [_toolBar.recordButton addTarget:self action:@selector(onTouchRecordBtnUpOutside:) forControlEvents:UIControlEventTouchUpOutside];
    //: _toolBar.nim_size = [_toolBar sizeThatFits:CGSizeMake(self.nim_width, 1.7976931348623157e+308)];
    _toolBar.nim_size = [_toolBar sizeThatFits:CGSizeMake(self.nim_width, 1.7976931348623157e+308)];
    //: _toolBar.autoresizingMask = UIViewAutoresizingFlexibleWidth;
    _toolBar.autoresizingMask = UIViewAutoresizingFlexibleWidth;
    //    [_toolBar.recordButton setTitle:@"按住说话".nim_localized forState:UIControlStateNormal];
    //    [_toolBar.recordButton setHidden:YES];

    //设置最大输入字数
    //: NSInteger textInputLength = [AppleProjectKit sharedKit].config.inputMaxLength;
    NSInteger textInputLength = [On along].config.inputMaxLength;
    //: self.maxTextLength = textInputLength;
    self.maxTextLength = textInputLength;

    //: [self refreshStatus:NIMInputStatusText];
    [self by:NIMInputStatusText];
    //: [self sizeToFit];
    [self sizeToFit];
}

//: - (void)checkMoreContainer
- (void)label
{
    //: if (!_moreContainer) {
    if (!_moreContainer) {
        //: ZZZInputMoreContainerView *moreContainer = [[ZZZInputMoreContainerView alloc] initWithFrame:CGRectZero];
        LabelMessageView *moreContainer = [[LabelMessageView alloc] initWithFrame:CGRectZero];
        //: moreContainer.nim_size = [moreContainer sizeThatFits:CGSizeMake(self.nim_width, 1.7976931348623157e+308)];
        moreContainer.nim_size = [moreContainer sizeThatFits:CGSizeMake(self.nim_width, 1.7976931348623157e+308)];
        //: moreContainer.autoresizingMask = UIViewAutoresizingFlexibleWidth;
        moreContainer.autoresizingMask = UIViewAutoresizingFlexibleWidth;
        //: moreContainer.hidden = YES;
        moreContainer.hidden = YES;
        //: moreContainer.config = _inputConfig;
        moreContainer.config = _inputConfig;
        //: moreContainer.actionDelegate = self.actionDelegate;
        moreContainer.actionDelegate = self.actionDelegate;
        //: _moreContainer = moreContainer;
        _moreContainer = moreContainer;
    }

    //可能是外部主动设置进来的，统一放在这里添加 subview
    //: if (!_moreContainer.superview)
    if (!_moreContainer.superview)
    {
        //: [self addSubview:_moreContainer];
        [self addSubview:_moreContainer];
    }
}

//: - (void)setMoreContainer:(UIView *)moreContainer
- (void)setMoreContainer:(UIView *)moreContainer
{
    //: _moreContainer = moreContainer;
    _moreContainer = moreContainer;
    //: [self sizeToFit];
    [self sizeToFit];
}

//: - (void)checkEmoticonContainer
- (void)nether
{
    //: if (!_emoticonContainer) {
    if (!_emoticonContainer) {
        //: ZZZInputEmoticonContainerView *emoticonContainer = [[ZZZInputEmoticonContainerView alloc] initWithFrame:CGRectZero];
        ItemEnableView *emoticonContainer = [[ItemEnableView alloc] initWithFrame:CGRectZero];

        //: emoticonContainer.nim_size = [emoticonContainer sizeThatFits:CGSizeMake(self.nim_width, 1.7976931348623157e+308)];
        emoticonContainer.nim_size = [emoticonContainer sizeThatFits:CGSizeMake(self.nim_width, 1.7976931348623157e+308)];
        //: emoticonContainer.autoresizingMask = UIViewAutoresizingFlexibleWidth;
        emoticonContainer.autoresizingMask = UIViewAutoresizingFlexibleWidth;
        //: emoticonContainer.delegate = self;
        emoticonContainer.delegate = self;
        //: emoticonContainer.hidden = YES;
        emoticonContainer.hidden = YES;
        //: emoticonContainer.config = _inputConfig;
        emoticonContainer.config = _inputConfig;

        //: _emoticonContainer = emoticonContainer;
        _emoticonContainer = emoticonContainer;
    }

    //可能是外部主动设置进来的，统一放在这里添加 subview
    //: if (!_emoticonContainer.superview)
    if (!_emoticonContainer.superview)
    {
        //: [self addSubview:_emoticonContainer];
        [self addSubview:_emoticonContainer];
    }
}

//: - (void)setEmoticonContainer:(UIView *)emoticonContainer
- (void)setEmoticonContainer:(UIView *)emoticonContainer
{
    //: _emoticonContainer = emoticonContainer;
    _emoticonContainer = emoticonContainer;
    //: [self sizeToFit];
    [self sizeToFit];
}

//: - (void)onTouchSendBtn:(id)sender{
- (void)turns:(id)sender{
    //: [self didPressSend:nil];
    [self keyContent:nil];
}


//- (void)setRecording:(BOOL)recording
//{
//    if(recording)
//    {
//        self.audioRecordIndicator.center = self.superview.center;
//        [self.superview addSubview:self.audioRecordIndicator];
//        self.recordPhase = AudioRecordPhaseRecording;
//    }
//    else
//    {
//        [self.audioRecordIndicator removeFromSuperview];
//        self.recordPhase = AudioRecordPhaseEnd;
//    }
//    _recording = recording;
//}

//: #pragma mark - 外部接口
#pragma mark - 外部接口
//: - (void)setInputTextPlaceHolder:(NSString*)placeHolder
- (void)setTitleHolderSetSituateSign:(NSString*)placeHolder
{
    //: [_toolBar setPlaceHolder:placeHolder];
    [_toolBar setComment:placeHolder];
}

//: - (void)setInputTextPlaceHolder:(NSString*)placeHolder color:(UIColor *)placeholderColor
- (void)address:(NSString*)placeHolder parallelizeButton:(UIColor *)placeholderColor
{
    //: [_toolBar setPlaceHolder:placeHolder color:placeholderColor];
    [_toolBar oarlockColor:placeHolder top:placeholderColor];
}

//: - (void)updateAudioRecordTime:(NSTimeInterval)time {
- (void)path:(NSTimeInterval)time {
    //: self.audioRecordIndicator.recordTime = time;
    self.audioRecordIndicator.recordTime = time;
}

//: - (void)updateVoicePower:(float)power {
- (void)grayPower:(float)power {

}

//: - (void)refreshReplyedContent:(NIMMessage *)message
- (void)replyed:(NIMMessage *)message
{
    //: NSString *text = [NSString stringWithFormat:@"%@", [[AppleProjectKit sharedKit] replyedContentWithMessage:message]];
    NSString *text = [NSString stringWithFormat:@"%@", [[On along] modes:message]];
    //: [self.replyedContent.label nim_setText:text];
    [self.replyedContent.label sourceSet:text];

    //: self.replyedContent.hidden = NO;
    self.replyedContent.hidden = NO;
    //: [self.replyedContent setNeedsLayout];
    [self.replyedContent setNeedsLayout];
}

//: - (void)dismissReplyedContent
- (void)show
{
    //: self.replyedContent.label.text = nil;
    self.replyedContent.label.text = nil;
    //: self.replyedContent.hidden = YES;
    self.replyedContent.hidden = YES;
    //: [self setNeedsLayout];
    [self setNeedsLayout];
}

//: #pragma mark - private methods
#pragma mark - private methods

//: - (void)setFrame:(CGRect)frame
- (void)setFrame:(CGRect)frame
{
    //: CGFloat height = self.frame.size.height;
    CGFloat height = self.frame.size.height;
    //: [super setFrame:frame];
    [super setFrame:frame];
    //: if (frame.size.height != height)
    if (frame.size.height != height)
    {
        //: [self callDidChangeHeight];
        [self ting];
    }
}

//: - (void)callDidChangeHeight
- (void)ting
{
    //: if (_inputDelegate && [_inputDelegate respondsToSelector:@selector(didChangeInputHeight:)])
    if (_inputDelegate && [_inputDelegate respondsToSelector:@selector(tipName:)])
    {
        //: if (self.status == NIMInputStatusMore || self.status == NIMInputStatusEmoticon || self.status == NIMInputStatusAudio)
        if (self.status == NIMInputStatusMore || self.status == NIMInputStatusEmoticon || self.status == NIMInputStatusAudio)
        {
            //这个时候需要一个动画来模拟键盘
            //: [UIView animateWithDuration:0.25 delay:0 options:7 animations:^{
            [UIView animateWithDuration:0.25 delay:0 options:7 animations:^{
                //: [_inputDelegate didChangeInputHeight:self.nim_height];
                [_inputDelegate tipName:self.nim_height];
            //: } completion:nil];
            } completion:nil];
        }
        //: else
        else
        {
            //: [_inputDelegate didChangeInputHeight:self.nim_height];
            [_inputDelegate tipName:self.nim_height];



            //            if(self.nim_height == 101){
            //                self.toolBar.showsKeyboard = NO;
            //                [_inputDelegate didChangeInputHeight:self.nim_height];
            //
            //            }else{
            //                _toolBar.nim_height = 51;
            //                self.toolBar.showsKeyboard = YES;
            //                [_inputDelegate didChangeInputHeight:self.nim_height-50];
            //
            //            }

        }
    }
}

//: - (void)layoutSubviews
- (void)layoutSubviews
{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //这里不做.语法 get 操作，会提前初始化组件导致卡顿
    //: if (!_replyedContent.hidden)
    if (!_replyedContent.hidden)
    {
        //: self.toolBar.nim_top = _replyedContent.nim_bottom;
        self.toolBar.nim_top = _replyedContent.nim_bottom;
    }
    //: else
    else
    {
        //: self.toolBar.nim_top = 0.f;
        self.toolBar.nim_top = 0.f;
    }
    //: _moreContainer.nim_top = self.toolBar.nim_bottom;
    _moreContainer.nim_top = self.toolBar.nim_bottom;
    //: _emoticonContainer.nim_top = self.toolBar.nim_bottom;
    _emoticonContainer.nim_top = self.toolBar.nim_bottom;
}

//: - (ZZZReplyContentView *)replyedContent
- (MagnitudeerestView *)replyedContent
{
    //: if (!_replyedContent)
    if (!_replyedContent)
    {
        //: _replyedContent = [[ZZZReplyContentView alloc] initWithFrame:CGRectMake(0, 0, self.nim_width, 35)];
        _replyedContent = [[MagnitudeerestView alloc] initWithFrame:CGRectMake(0, 0, self.nim_width, 35)];
        //: _replyedContent.hidden = YES;
        _replyedContent.hidden = YES;
        //: _replyedContent.delegate = self;
        _replyedContent.delegate = self;
        //: [self addSubview:_replyedContent];
        [self addSubview:_replyedContent];
    }
    //: return _replyedContent;
    return _replyedContent;
}

//: - (void)setStatus:(NIMInputStatus)status
- (void)setStatus:(NIMInputStatus)status
{
    //: if (_status != status)
    if (_status != status)
    {
        //: _status = status;
        _status = status;
        //: switch (_status) {
        switch (_status) {
            //: case NIMInputStatusEmoticon:
            case NIMInputStatusEmoticon:
                //: [self checkEmoticonContainer];
                [self nether];
                //: break;
                break;
            //: case NIMInputStatusMore:
            case NIMInputStatusMore:
                //: [self checkMoreContainer];
                [self label];
            //: default:
            default:
                //: break;
                break;
        }
    }
}


//: #pragma mark - button actions
#pragma mark - button actions
//: - (void)onTouchAlbunBtn:(id)sender {
- (void)nameImage:(id)sender {

    //: if ([self.actionDelegate respondsToSelector:@selector(onTapAlbunBtn:)]) {
    if ([self.actionDelegate respondsToSelector:@selector(names:)]) {
        //: [self.actionDelegate onTapAlbunBtn:sender];
        [self.actionDelegate names:sender];
    }
}
//: - (void)onTouchCameraBtn:(id)sender {
- (void)upShow:(id)sender {

    //: if ([self.actionDelegate respondsToSelector:@selector(onTapCameraBtn:)]) {
    if ([self.actionDelegate respondsToSelector:@selector(cameraing:)]) {
        //: [self.actionDelegate onTapCameraBtn:sender];
        [self.actionDelegate cameraing:sender];
    }

}

//: - (void)onTouchVoiceBtn:(id)sender {
- (void)built:(id)sender {

    //: if ([self.actionDelegate respondsToSelector:@selector(onTapAudioBtn:)]) {
    if ([self.actionDelegate respondsToSelector:@selector(endued:)]) {
        //: [self.actionDelegate onTapAudioBtn:sender];
        [self.actionDelegate endued:sender];
    }
}

//: - (IBAction)onTouchRecordBtnDown:(id)sender {
- (IBAction)asRange:(id)sender {
    //: self.recordPhase = AudioRecordPhaseStart;
    self.recordPhase = AudioRecordPhaseStart;
}
//: - (IBAction)onTouchRecordBtnUpInside:(id)sender {
- (IBAction)alongFileInsideUpwardsTouch:(id)sender {
    // finish Recording
    //: self.recordPhase = AudioRecordPhaseEnd;
    self.recordPhase = AudioRecordPhaseEnd;
}
//: - (IBAction)onTouchRecordBtnUpOutside:(id)sender {
- (IBAction)emotionned:(id)sender {
    // cancel Recording
    //: self.recordPhase = AudioRecordPhaseEnd;
    self.recordPhase = AudioRecordPhaseEnd;
}

//: - (IBAction)onTouchRecordBtnDragInside:(id)sender {
- (IBAction)lists:(id)sender {
    // "手指上滑，取消发送"
    //: self.recordPhase = AudioRecordPhaseRecording;
    self.recordPhase = AudioRecordPhaseRecording;
}
//: - (IBAction)onTouchRecordBtnDragOutside:(id)sender {
- (IBAction)pinValue:(id)sender {
    // "松开手指，取消发送"
    //: self.recordPhase = AudioRecordPhaseCancelling;
    self.recordPhase = AudioRecordPhaseCancelling;
}


//: - (void)onTouchEmoticonBtn:(id)sender
- (void)recordDoing:(id)sender
{
    //: if (self.status != NIMInputStatusEmoticon) {
    if (self.status != NIMInputStatusEmoticon) {
        //: if ([self.actionDelegate respondsToSelector:@selector(onTapEmoticonBtn:)]) {
        if ([self.actionDelegate respondsToSelector:@selector(ranging:)]) {
            //: [self.actionDelegate onTapEmoticonBtn:sender];
            [self.actionDelegate ranging:sender];
        }
        //: [self checkEmoticonContainer];
        [self nether];
        //: [self bringSubviewToFront:self.emoticonContainer];
        [self bringSubviewToFront:self.emoticonContainer];
        //: [self.emoticonContainer setHidden:NO];
        [self.emoticonContainer setHidden:NO];
        //: [self.moreContainer setHidden:YES];
        [self.moreContainer setHidden:YES];
        //: [self refreshStatus:NIMInputStatusEmoticon];
        [self by:NIMInputStatusEmoticon];
        //: [self sizeToFit];
        [self sizeToFit];


        //: if (self.toolBar.showsKeyboard)
        if (self.toolBar.showsKeyboard)
        {
            //: self.toolBar.showsKeyboard = NO;
            self.toolBar.showsKeyboard = NO;
        }

    }
    //: else
    else
    {
        //: [self refreshStatus:NIMInputStatusText];
        [self by:NIMInputStatusText];
        //: self.toolBar.showsKeyboard = YES;
        self.toolBar.showsKeyboard = YES;
    }
}

//: - (void)onTouchMoreBtn:(id)sender {
- (void)read:(id)sender {
    //: if (self.status != NIMInputStatusMore)
    if (self.status != NIMInputStatusMore)
    {
        //: if ([self.actionDelegate respondsToSelector:@selector(onTapMoreBtn:)]) {
        if ([self.actionDelegate respondsToSelector:@selector(recording:)]) {
            //: [self.actionDelegate onTapMoreBtn:sender];
            [self.actionDelegate recording:sender];
        }
        //: [self checkMoreContainer];
        [self label];
        //: [self bringSubviewToFront:self.moreContainer];
        [self bringSubviewToFront:self.moreContainer];
        //: [self.moreContainer setHidden:NO];
        [self.moreContainer setHidden:NO];
        //: [self.emoticonContainer setHidden:YES];
        [self.emoticonContainer setHidden:YES];
        //: [self refreshStatus:NIMInputStatusMore];
        [self by:NIMInputStatusMore];
        //: [self sizeToFit];
        [self sizeToFit];

        //: if (self.toolBar.showsKeyboard)
        if (self.toolBar.showsKeyboard)
        {
            //: self.toolBar.showsKeyboard = NO;
            self.toolBar.showsKeyboard = NO;
        }
    }
    //: else
    else
    {
        //: [self refreshStatus:NIMInputStatusText];
        [self by:NIMInputStatusText];
        //: self.toolBar.showsKeyboard = YES;
        self.toolBar.showsKeyboard = YES;
    }
}


//: - (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    //: [self endEditing:YES];
    [self endEditing:YES];
}

//: - (BOOL)endEditing:(BOOL)force
- (BOOL)endEditing:(BOOL)force
{
    //: BOOL endEditing = [super endEditing:force];
    BOOL endEditing = [super endEditing:force];
    //: if (!self.toolBar.showsKeyboard) {
    if (!self.toolBar.showsKeyboard) {
        //: UIViewAnimationCurve curve = UIViewAnimationCurveEaseInOut;
        UIViewAnimationCurve curve = UIViewAnimationCurveEaseInOut;

        //: __weak typeof(self) weakSelf = self;
        __weak typeof(self) weakSelf = self;
        //: void(^animations)(void) = ^{
        void(^animations)(void) = ^{
            //: [weakSelf refreshStatus:NIMInputStatusText];
            [weakSelf by:NIMInputStatusText];
            //: [weakSelf sizeToFit];
            [weakSelf sizeToFit];
            //: if (weakSelf.inputDelegate && [weakSelf.inputDelegate respondsToSelector:@selector(didChangeInputHeight:)]) {
            if (weakSelf.inputDelegate && [weakSelf.inputDelegate respondsToSelector:@selector(tipName:)]) {
                //: [weakSelf.inputDelegate didChangeInputHeight:weakSelf.nim_height];
                [weakSelf.inputDelegate tipName:weakSelf.nim_height];
            }
        //: };
        };
        //: NSTimeInterval duration = 0.25;
        NSTimeInterval duration = 0.25;
        //: [UIView animateWithDuration:duration delay:0.0f options:(curve << 16 | UIViewAnimationOptionBeginFromCurrentState) animations:animations completion:nil];
        [UIView animateWithDuration:duration delay:0.0f options:(curve << 16 | UIViewAnimationOptionBeginFromCurrentState) animations:animations completion:nil];
    }
    //: return endEditing;
    return endEditing;
}


//: #pragma mark - ZZZInputToolBarDelegate
#pragma mark - TeamContentDelegate

//: - (BOOL)textViewShouldBeginEditing
- (BOOL)isRecord
{
    //: [self refreshStatus:NIMInputStatusText];
    [self by:NIMInputStatusText];
    //: return YES;
    return YES;
}

//: - (BOOL)shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text
- (BOOL)indicator:(NSRange)range window:(NSString *)text
{
    //: if ([text isEqualToString:@"\n"])
    if ([text isEqualToString:@"\n"])
    {
        //: [self didPressSend:nil];
        [self keyContent:nil];
        //: return NO;
        return NO;
    }
    //: if ([text isEqualToString:@""] && range.length == 1 )
    if ([text isEqualToString:@""] && range.length == 1 )
    {
        //非选择删除
        //: return [self onTextDelete];
        return [self remove];
    }
    //: if ([self shouldCheckAt])
    if ([self activity])
    {
        // @ 功能
        //: [self checkAt:text];
        [self view:text];
    }
    //: NSString *str = [self.toolBar.contentText stringByAppendingString:text];
    NSString *str = [self.toolBar.contentText stringByAppendingString:text];
    //: if (str.length > self.maxTextLength)
    if (str.length > self.maxTextLength)
    {
        //: return NO;
        return NO;
    }
    //: return YES;
    return YES;
}

//: - (BOOL)shouldCheckAt
- (BOOL)activity
{
    //: BOOL disable = NO;
    BOOL disable = NO;
    //: if ([self.inputConfig respondsToSelector:@selector(disableAt)])
    if ([self.inputConfig respondsToSelector:@selector(sectionLanguage)])
    {
        //: disable = [self.inputConfig disableAt];
        disable = [self.inputConfig sectionLanguage];
    }
    //: return !disable;
    return !disable;
}

//: - (void)checkAt:(NSString *)text
- (void)view:(NSString *)text
{
    //: if ([text isEqualToString:@"@"]) {
    if ([text isEqualToString:@"@"]) {
        //: switch (self.session.sessionType)
        switch (self.session.sessionType)
        {
            //: case NIMSessionTypeTeam:
            case NIMSessionTypeTeam:
            {
                //: NIMContactTeamMemberSelectConfig *config = [[NIMContactTeamMemberSelectConfig alloc] init];
                BeConfig *config = [[BeConfig alloc] init];
                //: config.teamType = NIMKitTeamTypeNomal;
                config.teamType = NIMKitTeamTypeNomal;
                //: config.needMutiSelected = NO;
                config.needMutiSelected = NO;
                //: config.teamId = self.session.sessionId;
                config.teamId = self.session.sessionId;
                //: config.session = self.session;
                config.session = self.session;
                //: config.filterIds = @[[NIMSDK sharedSDK].loginManager.currentAccount];
                config.filterIds = @[[NIMSDK sharedSDK].loginManager.currentAccount];
                //: ZZZContactSelectViewController *vc = [[ZZZContactSelectViewController alloc] initWithConfig:config];
                InputValueViewController *vc = [[InputValueViewController alloc] initWithSessionMore:config];
                //: vc.delegate = self;
                vc.delegate = self;
                //: dispatch_async(dispatch_get_main_queue(), ^{
                dispatch_async(dispatch_get_main_queue(), ^{
                    //: [vc show];
                    [vc with];
                //: });
                });
            }
                //: break;
                break;
            //: case NIMSessionTypeSuperTeam:
            case NIMSessionTypeSuperTeam:
            {
                //: NIMContactTeamMemberSelectConfig *config = [[NIMContactTeamMemberSelectConfig alloc] init];
                BeConfig *config = [[BeConfig alloc] init];
                //: config.teamType = NIMKitTeamTypeSuper;
                config.teamType = NIMKitTeamTypeSuper;
                //: config.needMutiSelected = NO;
                config.needMutiSelected = NO;
                //: config.teamId = self.session.sessionId;
                config.teamId = self.session.sessionId;
                //: config.session = self.session;
                config.session = self.session;
                //: config.filterIds = @[[NIMSDK sharedSDK].loginManager.currentAccount];
                config.filterIds = @[[NIMSDK sharedSDK].loginManager.currentAccount];
                //: ZZZContactSelectViewController *vc = [[ZZZContactSelectViewController alloc] initWithConfig:config];
                InputValueViewController *vc = [[InputValueViewController alloc] initWithSessionMore:config];
                //: vc.delegate = self;
                vc.delegate = self;
                //: dispatch_async(dispatch_get_main_queue(), ^{
                dispatch_async(dispatch_get_main_queue(), ^{
                    //: [vc show];
                    [vc with];
                //: });
                });
            }
                //: break;
                break;
            //: case NIMSessionTypeP2P:
            case NIMSessionTypeP2P:
                //: break;
                break;
            //: case NIMSessionTypeChatroom:
            case NIMSessionTypeChatroom:
                //: break;
                break;
            //: default:
            default:
                //: break;
                break;
        }
    }
}


//: - (void)textViewDidChange
- (void)replyChange
{
    //: if (self.actionDelegate && [self.actionDelegate respondsToSelector:@selector(onTextChanged:)])
    if (self.actionDelegate && [self.actionDelegate respondsToSelector:@selector(started:)])
    {
        //: [self.actionDelegate onTextChanged:self];
        [self.actionDelegate started:self];
    }
}


//: - (void)toolBarDidChangeHeight:(CGFloat)height
- (void)colorfuls:(CGFloat)height
{
    //: [self sizeToFit];
    [self sizeToFit];
}

//: - (void)addAtItems:(NSArray *)selectedContacts
- (void)edge:(NSArray *)selectedContacts
{
    //: NSMutableString *str = [[NSMutableString alloc] initWithString:@"@"];
    NSMutableString *str = [[NSMutableString alloc] initWithString:@"@"];
    //: [self addContacts:selectedContacts prefix:str];
    [self enrichMaxSmart:selectedContacts originView:str];
}

//: #pragma mark - NIMContactSelectDelegate
#pragma mark - CompartmentDelegate
//: - (void)didFinishedSelect:(NSArray *)selectedContacts
- (void)limitted:(NSArray *)selectedContacts
{
    //: NSMutableString *str = [[NSMutableString alloc] initWithString:@""];
    NSMutableString *str = [[NSMutableString alloc] initWithString:@""];
    //: [self addContacts:selectedContacts prefix:str];
    [self enrichMaxSmart:selectedContacts originView:str];
}

//: - (void)addContacts:(NSArray *)selectedContacts prefix:(NSMutableString *)str
- (void)enrichMaxSmart:(NSArray *)selectedContacts originView:(NSMutableString *)str
{
    //: ZZZKitInfoFetchOption *option = [[ZZZKitInfoFetchOption alloc] init];
    CertainOption *option = [[CertainOption alloc] init];
    //: option.session = self.session;
    option.session = self.session;
    //: option.forbidaAlias = YES;
    option.forbidaAlias = YES;
    //: for (NSString *uid in selectedContacts) {
    for (NSString *uid in selectedContacts) {
        //: NSString *nick = [[AppleProjectKit sharedKit].provider infoByUser:uid option:option].showName;
        NSString *nick = [[On along].provider toKey:uid image:option].showName;
        //: [str appendString:nick];
        [str appendString:nick];
        //: [str appendString:@"\u2004"];
        [str appendString:@"\u2004"];
        //: if (![selectedContacts.lastObject isEqualToString:uid]) {
        if (![selectedContacts.lastObject isEqualToString:uid]) {
            //: [str appendString:@"@"];
            [str appendString:@"@"];
        }
        //: NIMInputAtItem *item = [[NIMInputAtItem alloc] init];
        MaxSuggest *item = [[MaxSuggest alloc] init];
        //: item.uid = uid;
        item.uid = uid;
        //: item.name = nick;
        item.name = nick;
        //: [self.atCache addAtItem:item];
        [self.atCache time:item];
    }
    //: [self.toolBar insertText:str];
    [self.toolBar tillName:str];
}

//: #pragma mark - InputEmoticonProtocol
#pragma mark - InputEmoticonProtocol
//: - (void)selectedEmoticon:(NSString*)emoticonID catalog:(NSString*)emotCatalogID description:(NSString *)description{
- (void)valueTool:(NSString*)emoticonID post:(NSString*)emotCatalogID bubble:(NSString *)description{
    //: if (!emotCatalogID) { 
    if (!emotCatalogID) { //删除键
        //: [self doButtonDeleteText];
        [self find];
    //: }else{
    }else{
        //: if ([emotCatalogID isEqualToString:@"default"]) {
        if ([emotCatalogID isEqualToString:StringFromAddressData(kStr_reluctantValue)]) {
            //: [self.toolBar insertAttributedText:description withEmoji:YES];
            [self.toolBar view:description send:YES];
        //: }else{
        }else{
            //发送贴图消息
            //: if ([self.actionDelegate respondsToSelector:@selector(onSelectChartlet:catalog:)]) {
            if ([self.actionDelegate respondsToSelector:@selector(alongReplySend:message:)]) {
                //: [self.actionDelegate onSelectChartlet:emoticonID catalog:emotCatalogID];
                [self.actionDelegate alongReplySend:emoticonID message:emotCatalogID];
            }
        }
    }
}

//: - (void)selectedGifEmoticon:(NSString*)gif
- (void)restore:(NSString*)gif
{
    //: [self.toolBar setPlaceHolder:[NTESLanguageManager getTextWithKey:@"message_please_enter_content"]];
    [self.toolBar setComment:[LabelCell tinkleKey:StringFromAddressData(kStr_chronicThereVirtuallyData)]];
    //发送贴图消息
    //: if ([self.actionDelegate respondsToSelector:@selector(onSelectChartlet:catalog:)]) {
    if ([self.actionDelegate respondsToSelector:@selector(alongReplySend:message:)]) {
        //: [self.actionDelegate onSelectChartlet:gif catalog:gif];
        [self.actionDelegate alongReplySend:gif message:gif];
    }


}

//: - (void)didPressDelete:(id)sender
- (void)isContainerRemove:(id)sender
{
    //: self.toolBar.sendButton.hidden = YES;
    self.toolBar.sendButton.hidden = YES;
    //: self.toolBar.emoticonBtn2.hidden = YES;
    self.toolBar.emoticonBtn2.hidden = YES;
    //: [self.toolBar setPlaceHolder:[NTESLanguageManager getTextWithKey:@"message_please_enter_content"]];
    [self.toolBar setComment:[LabelCell tinkleKey:StringFromAddressData(kStr_chronicThereVirtuallyData)]];
    //: [self doButtonDeleteText];
    [self find];

}
//: - (void)didPressSend:(id)sender{
- (void)keyContent:(id)sender{
    //: if ([self.actionDelegate respondsToSelector:@selector(onSendText:atUsers:)] && [self.toolBar.contentText length] > 0) {
    if ([self.actionDelegate respondsToSelector:@selector(viewUsers:should:)] && [self.toolBar.contentText length] > 0) {
//        NSString *sendText = self.toolBar.contentText;
//        [self.actionDelegate onSendText:sendText atUsers:[self.atCache allAtUid:sendText]];
//        [self.atCache clean];
//        self.toolBar.contentText = @"";
//        [self.toolBar layoutIfNeeded];

        //: NSMutableAttributedString *attM = [[NSMutableAttributedString alloc] initWithAttributedString:self.toolBar.inputTextView.attributedText];
        NSMutableAttributedString *attM = [[NSMutableAttributedString alloc] initWithAttributedString:self.toolBar.inputTextView.attributedText];
        //: NSString *sendText = [[self transformEmojiImageToEmojiDes:attM].string stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        NSString *sendText = [[self itemInput:attM].string stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        //: [self.actionDelegate onSendText:sendText atUsers:[self.atCache allAtUid:sendText]];
        [self.actionDelegate viewUsers:sendText should:[self.atCache replyUid:sendText]];
        //: [self.atCache clean];
        [self.atCache tableClean];
        //: self.toolBar.contentText = @"";
        self.toolBar.contentText = @"";
        //: self.toolBar.sendButton.hidden = YES;
        self.toolBar.sendButton.hidden = YES;
        //: self.toolBar.emoticonBtn2.hidden = YES;
        self.toolBar.emoticonBtn2.hidden = YES;
        //: [self.toolBar setPlaceHolder:[NTESLanguageManager getTextWithKey:@"message_please_enter_content"]];
        [self.toolBar setComment:[LabelCell tinkleKey:StringFromAddressData(kStr_chronicThereVirtuallyData)]];
        //: [self.toolBar layoutIfNeeded];
        [self.toolBar layoutIfNeeded];

//        [self endEditing:YES];

    }
}

/// 把富文本里的表情图片转换成文字 '[哈哈]'
/// @param attrM 富文本
//: - (NSMutableAttributedString *)transformEmojiImageToEmojiDes:(NSMutableAttributedString *)attrM {
- (NSMutableAttributedString *)itemInput:(NSMutableAttributedString *)attrM {
    //: [attrM enumerateAttribute:YYTextHighlightAttributeName inRange:NSMakeRange(0, attrM.length) options:NSAttributedStringEnumerationReverse usingBlock:^(id _Nullable value, NSRange range, BOOL * _Nonnull stop) {
    [attrM enumerateAttribute:YYTextHighlightAttributeName inRange:NSMakeRange(0, attrM.length) options:NSAttributedStringEnumerationReverse usingBlock:^(id _Nullable value, NSRange range, BOOL * _Nonnull stop) {
        //: if (value && [value isKindOfClass:[SNTextHighlight class]]) {
        if (value && [value isKindOfClass:[BrinkTitleHighlight class]]) {
            //: SNTextHighlight *textHighlight = value;
            BrinkTitleHighlight *textHighlight = value;
            //: if (textHighlight.type == SNTextHighlightTypeEmoji) {
            if (textHighlight.type == SNTextHighlightTypeEmoji) {
                //: [attrM replaceCharactersInRange:range withString:textHighlight.text];
                [attrM replaceCharactersInRange:range withString:textHighlight.text];
            }
        }
    //: }];
    }];
    //: return attrM;
    return attrM;
}



//: - (BOOL)onTextDelete
- (BOOL)remove
{
    //: NSRange range = [self delRangeForEmoticon];
    NSRange range = [self withEmoticon];
    //: if (range.length == 1)
    if (range.length == 1)
    {
        //删的不是表情，可能是@
        //: NIMInputAtItem *item = [self delRangeForAt];
        MaxSuggest *item = [self imageAt];
        //: if (item) {
        if (item) {
            //: range = item.range;
            range = item.range;
        }
    }
    //: if (range.length == 1) {
    if (range.length == 1) {
        //自动删除
        //: return YES;
        return YES;
    }
    //: [self.toolBar deleteText:range];
    [self.toolBar scale:range];
    //: return NO;
    return NO;
}

//: - (BOOL)doButtonDeleteText
- (BOOL)find
{
    //: NSRange range = [self delRangeForLastComponent];
    NSRange range = [self disableComponent];
    //: if (range.length == 1)
    if (range.length == 1)
    {
        //删的不是表情，可能是@
        //: NIMInputAtItem *item = [self delRangeForAt];
        MaxSuggest *item = [self imageAt];
        //: if (item) {
        if (item) {
            //: range = item.range;
            range = item.range;
        }
    }

    //: [self.toolBar deleteText:range];
    [self.toolBar scale:range];
    //: return NO;
    return NO;
}


//: - (NSRange)delRangeForEmoticon
- (NSRange)withEmoticon
{
    //: NSString *text = self.toolBar.contentText;
    NSString *text = self.toolBar.contentText;
    //: NSRange selectedRange = [self.toolBar selectedRange];
    NSRange selectedRange = [self.toolBar pinRange];
    //: BOOL isEmoji = NO;
    BOOL isEmoji = NO;
    //: if (selectedRange.location >= 2) {
    if (selectedRange.location >= 2) {
        //: NSString *subStr = [text substringWithRange:NSMakeRange(selectedRange.location - 2, 2)];
        NSString *subStr = [text substringWithRange:NSMakeRange(selectedRange.location - 2, 2)];
        //: isEmoji = [subStr nim_containsEmoji];
        isEmoji = [subStr contains];
    }

    //: NSRange range = NSMakeRange(selectedRange.location - 1, 1);
    NSRange range = NSMakeRange(selectedRange.location - 1, 1);
    //: if (isEmoji) {
    if (isEmoji) {
        //: range = NSMakeRange(selectedRange.location-2, 2);
        range = NSMakeRange(selectedRange.location-2, 2);
    //: } else {
    } else {
        //: NSRange subRange = [self rangeForPrefix:@"[" suffix:@"]"];
        NSRange subRange = [self chromatic:@"[" independent:@"]"];
        //: if (subRange.length > 1)
        if (subRange.length > 1)
        {
            //: NSString *name = [text substringWithRange:subRange];
            NSString *name = [text substringWithRange:subRange];
            //: NIMInputEmoticon *icon = [[ZZZInputEmoticonManager sharedManager] emoticonByTag:name];
            IndependentSure *icon = [[SumManager tap] file:name];
            //: range = icon? subRange : NSMakeRange(selectedRange.location - 1, 1);
            range = icon? subRange : NSMakeRange(selectedRange.location - 1, 1);
        }
    }

    //: return range;
    return range;
}

//: - (NSRange)delRangeForLastComponent
- (NSRange)disableComponent
{
    //: NSString *text = self.toolBar.contentText;
    NSString *text = self.toolBar.contentText;
    //: NSRange selectedRange = [self.toolBar selectedRange];
    NSRange selectedRange = [self.toolBar pinRange];
    //: if (selectedRange.location == 0)
    if (selectedRange.location == 0)
    {
        //: return NSMakeRange(0, 0) ;
        return NSMakeRange(0, 0) ;
    }

    //: NSRange range;
    NSRange range;
    //: NSRange subRange = [self rangeForPrefix:@"[" suffix:@"]"];
    NSRange subRange = [self chromatic:@"[" independent:@"]"];

    //: if (text.length > 0 &&
    if (text.length > 0 &&
        //: [[text substringFromIndex:text.length - 1] isEqualToString:@"]"] &&
        [[text substringFromIndex:text.length - 1] isEqualToString:@"]"] &&
        //: subRange.length > 1)
        subRange.length > 1)
    {
        //: NSString *name = [text substringWithRange:subRange];
        NSString *name = [text substringWithRange:subRange];
        //: NIMInputEmoticon *icon = [[ZZZInputEmoticonManager sharedManager] emoticonByTag:name];
        IndependentSure *icon = [[SumManager tap] file:name];
        //: range = icon? subRange : NSMakeRange(selectedRange.location - 1, 1);
        range = icon? subRange : NSMakeRange(selectedRange.location - 1, 1);
    }
    //: else
    else
    {
        //: range = [text nim_rangeOfLastUnicode];
        range = [text convertUnicode];
    }

    //: return range;
    return range;
}


//: - (NIMInputAtItem *)delRangeForAt
- (MaxSuggest *)imageAt
{
    //: NSString *text = self.toolBar.contentText;
    NSString *text = self.toolBar.contentText;
    //: NSRange range = [self rangeForPrefix:@"@" suffix:@"\u2004"];
    NSRange range = [self chromatic:@"@" independent:@"\u2004"];
    //: NSRange selectedRange = [self.toolBar selectedRange];
    NSRange selectedRange = [self.toolBar pinRange];
    //: NIMInputAtItem *item = nil;
    MaxSuggest *item = nil;
    //: if (range.length > 1)
    if (range.length > 1)
    {
        //: NSString *name = [text substringWithRange:range];
        NSString *name = [text substringWithRange:range];
        //: NSString *set = [@"@" stringByAppendingString:@"\u2004"];
        NSString *set = [@"@" stringByAppendingString:@"\u2004"];
        //: name = [name stringByTrimmingCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:set]];
        name = [name stringByTrimmingCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:set]];
        //: item = [self.atCache item:name];
        item = [self.atCache bringHome:name];
        //: range = item? range : NSMakeRange(selectedRange.location - 1, 1);
        range = item? range : NSMakeRange(selectedRange.location - 1, 1);
    }
    //: item.range = range;
    item.range = range;
    //: return item;
    return item;
}


//: - (NSRange)rangeForPrefix:(NSString *)prefix suffix:(NSString *)suffix
- (NSRange)chromatic:(NSString *)prefix independent:(NSString *)suffix
{
    //: NSString *text = self.toolBar.contentText;
    NSString *text = self.toolBar.contentText;
    //: NSRange range = [self.toolBar selectedRange];
    NSRange range = [self.toolBar pinRange];
    //: NSString *selectedText = range.length ? [text substringWithRange:range] : text;
    NSString *selectedText = range.length ? [text substringWithRange:range] : text;
    //: NSInteger endLocation = range.location;
    NSInteger endLocation = range.location;
    //: if (endLocation <= 0)
    if (endLocation <= 0)
    {
        //: return NSMakeRange(NSNotFound, 0);
        return NSMakeRange(NSNotFound, 0);
    }
    //: NSInteger index = -1;
    NSInteger index = -1;
    //: if ([selectedText hasSuffix:suffix]) {
    if ([selectedText hasSuffix:suffix]) {
        //往前搜最多20个字符，一般来讲是够了...
        //: NSInteger p = 20;
        NSInteger p = 20;
        //: for (NSInteger i = endLocation; i >= endLocation - p && i-1 >= 0 ; i--)
        for (NSInteger i = endLocation; i >= endLocation - p && i-1 >= 0 ; i--)
        {
            //: NSRange subRange = NSMakeRange(i - 1, 1);
            NSRange subRange = NSMakeRange(i - 1, 1);
            //: NSString *subString = [text substringWithRange:subRange];
            NSString *subString = [text substringWithRange:subRange];
            //: if ([subString compare:prefix] == NSOrderedSame)
            if ([subString compare:prefix] == NSOrderedSame)
            {
                //: index = i - 1;
                index = i - 1;
                //: break;
                break;
            }
        }
    }
    //: return index == -1? NSMakeRange(endLocation - 1, 1) : NSMakeRange(index, endLocation - index);
    return index == -1? NSMakeRange(endLocation - 1, 1) : NSMakeRange(index, endLocation - index);
}

//: #pragma mark - ZZZReplyContentViewDelegate
#pragma mark - ShouldDelegate

//: - (void)onClearReplyContent:(id)sender
- (void)fasts:(id)sender
{
    //: [self setNeedsLayout];
    [self setNeedsLayout];
    //: self.toolBar.inputTextView.text = nil;
    self.toolBar.inputTextView.text = nil;
    //: self.toolBar.inputTextView.attributedText = nil;
    self.toolBar.inputTextView.attributedText = nil;

    //: NSString *placeholder = [AppleProjectKit sharedKit].config.placeholder;
    NSString *placeholder = [On along].config.placeholder;
    //: [_toolBar setPlaceHolder:placeholder];
    [_toolBar setComment:placeholder];

    //: if ([self.actionDelegate respondsToSelector:@selector(didReplyCancelled)])
    if ([self.actionDelegate respondsToSelector:@selector(theTextCancelled)])
    {
        //: [self.actionDelegate didReplyCancelled];
        [self.actionDelegate theTextCancelled];
    }
}

//: @end
@end

Byte * AddressDataToCache(Byte *data) {
    int accounting = data[0];
    int againstHostage = data[1];
    int tapTotal = data[2];
    if (!accounting) return data + tapTotal;
    for (int i = 0; i < againstHostage / 2; i++) {
        int begin = tapTotal + i;
        int end = tapTotal + againstHostage - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[tapTotal + againstHostage] = 0;
    return data + tapTotal;
}

NSString *StringFromAddressData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)AddressDataToCache(data)];
}  
