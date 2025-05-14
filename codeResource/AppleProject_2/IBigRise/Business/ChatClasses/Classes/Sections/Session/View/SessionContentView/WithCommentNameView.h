// __DEBUG__
// __CLOSE_PRINT__
//
//  NIMSessionAudioCententView.h
// On
//
//  Created by chris.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZZZSessionMessageContentView.h"
#import "ShouldControl.h"

//: @protocol NIMPlayAudioUIDelegate <NSObject>
@protocol ValueUidelegate <NSObject>
//: -(void)startPlayingAudioUI; 
-(void)colorUi; //点击一开始就要显示
//: @optional
@optional
//: - (void)retryDownloadMsg; 
- (void)can; //重收消息
//: @end
@end

//: @interface ZZZSessionAudioContentView : ZZZSessionMessageContentView
@interface WithCommentNameView : ShouldControl

//: @property (nonatomic, strong) UILabel *audioDurationLable; 
@property (nonatomic, strong) UILabel *audioDurationLable; //语音时长

//: @property (nonatomic, weak) id<NIMPlayAudioUIDelegate> audioUIDelegate;
@property (nonatomic, weak) id<ValueUidelegate> audioUIDelegate;

//: @property (nonatomic, strong) UIView *audioBackgroundView;
@property (nonatomic, strong) UIView *audioBackgroundView;

//: - (void)setPlaying:(BOOL)isPlaying;
- (void)setCirclePlaying:(BOOL)isPlaying;

//: @end
@end