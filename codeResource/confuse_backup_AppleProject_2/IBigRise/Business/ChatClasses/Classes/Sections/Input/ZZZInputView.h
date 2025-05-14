//
//  ZZZInputView.h
// AppleProjectKit
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ZZZInputProtocol.h"
#import "ZZZSessionConfig.h"
#import "ZZZInputToolBar.h"
#import "ZZZInputAtCache.h"

@class ZZZInputMoreContainerView;
@class ZZZInputEmoticonContainerView;
@class ZZZReplyContentView;



typedef NS_ENUM(NSInteger, NIMAudioRecordPhase) {
    AudioRecordPhaseStart,
    AudioRecordPhaseRecording,
    AudioRecordPhaseCancelling,
    AudioRecordPhaseEnd
};



@protocol NIMInputDelegate <NSObject>

@optional

- (void)didChangeInputHeight:(CGFloat)inputHeight;

@end

@interface ZZZInputView : UIView

@property (nonatomic, strong) NIMSession             *session;

@property (nonatomic, assign) NSInteger              maxTextLength;

@property (assign, nonatomic, getter=isRecording)    BOOL recording;

@property (strong, nonatomic)  ZZZInputToolBar *toolBar;
@property (strong, nonatomic)  UIView *moreContainer;
@property (strong, nonatomic)  UIView *emoticonContainer;

@property (nonatomic, strong)   ZZZReplyContentView *replyedContent;

@property (nonatomic, assign) NIMInputStatus status;
@property (nonatomic, strong) ZZZInputAtCache *atCache;

- (instancetype)initWithFrame:(CGRect)frame
                       config:(id<ZZZSessionConfig>)config;

- (void)reset;

- (void)refreshStatus:(NIMInputStatus)status;

- (void)setInputDelegate:(id<NIMInputDelegate>)delegate;

//外部设置
- (void)setInputActionDelegate:(id<NIMInputActionDelegate>)actionDelegate;

- (void)setInputTextPlaceHolder:(NSString*)placeHolder;
- (void)setInputTextPlaceHolder:(NSString*)placeHolder color:(UIColor *)placeholderColor;

- (void)updateAudioRecordTime:(NSTimeInterval)time;
- (void)updateVoicePower:(float)power;
- (void)addAtItems:(NSArray *)contacts;

- (void)refreshReplyedContent:(NIMMessage *)message;
- (void)dismissReplyedContent;

@end
