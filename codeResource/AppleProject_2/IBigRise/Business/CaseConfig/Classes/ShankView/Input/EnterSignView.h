// __DEBUG__
// __CLOSE_PRINT__
//
//  EnterSignView.h
// On
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import "DataInputProtocol.h"
#import "DataInputProtocol.h"
//: #import "ZZZSessionConfig.h"
#import "PastConfig.h"
//: #import "ZZZInputToolBar.h"
#import "BosomView.h"
//: #import "ZZZInputAtCache.h"
#import "DistanceCache.h"

//: @class ZZZInputMoreContainerView;
@class LabelMessageView;
//: @class ZZZInputEmoticonContainerView;
@class ItemEnableView;
//: @class ZZZReplyContentView;
@class MagnitudeerestView;



//: typedef NS_ENUM(NSInteger, NIMAudioRecordPhase) {
typedef NS_ENUM(NSInteger, NIMAudioRecordPhase) {
    //: AudioRecordPhaseStart,
    AudioRecordPhaseStart,
    //: AudioRecordPhaseRecording,
    AudioRecordPhaseRecording,
    //: AudioRecordPhaseCancelling,
    AudioRecordPhaseCancelling,
    //: AudioRecordPhaseEnd
    AudioRecordPhaseEnd
//: };
};



//: @protocol NIMInputDelegate <NSObject>
@protocol BulkDelegate <NSObject>

//: @optional
@optional

//: - (void)didChangeInputHeight:(CGFloat)inputHeight;
- (void)tipName:(CGFloat)inputHeight;

//: @end
@end

//: @interface ZZZInputView : UIView
@interface EnterSignView : UIView

//: @property (nonatomic, strong) NIMSession *session;
@property (nonatomic, strong) NIMSession *session;

//: @property (nonatomic, assign) NSInteger maxTextLength;
@property (nonatomic, assign) NSInteger maxTextLength;

//: @property (assign, nonatomic, getter=isRecording) BOOL recording;
@property (assign, nonatomic, getter=isRecording) BOOL recording;

//: @property (strong, nonatomic) ZZZInputToolBar *toolBar;
@property (strong, nonatomic) BosomView *toolBar;
//: @property (strong, nonatomic) UIView *moreContainer;
@property (strong, nonatomic) UIView *moreContainer;
//: @property (strong, nonatomic) UIView *emoticonContainer;
@property (strong, nonatomic) UIView *emoticonContainer;

//: @property (nonatomic, strong) ZZZReplyContentView *replyedContent;
@property (nonatomic, strong) MagnitudeerestView *replyedContent;

//: @property (nonatomic, assign) NIMInputStatus status;
@property (nonatomic, assign) NIMInputStatus status;
//: @property (nonatomic, strong) ZZZInputAtCache *atCache;
@property (nonatomic, strong) DistanceCache *atCache;

//: - (instancetype)initWithFrame:(CGRect)frame
- (instancetype)initWithSessionSourceConfig:(CGRect)frame
                       //: config:(id<ZZZSessionConfig>)config;
                       send:(id<PastConfig>)config;

//: - (void)reset;
- (void)be;

//: - (void)refreshStatus:(NIMInputStatus)status;
- (void)by:(NIMInputStatus)status;

//: - (void)setInputDelegate:(id<NIMInputDelegate>)delegate;
- (void)setInputDelegate:(id<BulkDelegate>)delegate;

//外部设置
//: - (void)setInputActionDelegate:(id<NIMInputActionDelegate>)actionDelegate;
- (void)setAddSession:(id<DelegateDoing>)actionDelegate;

//: - (void)setInputTextPlaceHolder:(NSString*)placeHolder;
- (void)setTitleHolderSetSituateSign:(NSString*)placeHolder;
//: - (void)setInputTextPlaceHolder:(NSString*)placeHolder color:(UIColor *)placeholderColor;
- (void)address:(NSString*)placeHolder parallelizeButton:(UIColor *)placeholderColor;

//: - (void)updateAudioRecordTime:(NSTimeInterval)time;
- (void)path:(NSTimeInterval)time;
//: - (void)updateVoicePower:(float)power;
- (void)grayPower:(float)power;
//: - (void)addAtItems:(NSArray *)contacts;
- (void)edge:(NSArray *)contacts;

//: - (void)refreshReplyedContent:(NIMMessage *)message;
- (void)replyed:(NIMMessage *)message;
//: - (void)dismissReplyedContent;
- (void)show;

//: @end
@end
