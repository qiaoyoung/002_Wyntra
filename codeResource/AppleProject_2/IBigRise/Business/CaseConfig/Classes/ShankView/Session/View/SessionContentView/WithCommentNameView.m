
#import <Foundation/Foundation.h>
typedef struct {
    Byte mutualCosy;
    Byte *analogise;
    unsigned int policySuccess;
    bool narrowRange;
	int weekendGage;
	int resolutionButton;
	int countegrationSorry;
} LocomoteData;

NSString *StringFromLocomoteData(LocomoteData *data);


//: icon_receiver_voice_playing_004
LocomoteData kStr_mathChronicTitle = (LocomoteData){225, (Byte []){136, 130, 142, 143, 190, 147, 132, 130, 132, 136, 151, 132, 147, 190, 151, 142, 136, 130, 132, 190, 145, 141, 128, 152, 136, 143, 134, 190, 209, 209, 213, 39}, 31, false, 175, 197, 91};


//: icon_receiver_voice_playing_001
LocomoteData kStr_swimmingRapidTitle = (LocomoteData){14, (Byte []){103, 109, 97, 96, 81, 124, 107, 109, 107, 103, 120, 107, 124, 81, 120, 97, 103, 109, 107, 81, 126, 98, 111, 119, 103, 96, 105, 81, 62, 62, 63, 160}, 31, false, 53, 170, 103};


//: icon_receiver_voice_playing_005
LocomoteData kStr_drownName = (LocomoteData){37, (Byte []){76, 70, 74, 75, 122, 87, 64, 70, 64, 76, 83, 64, 87, 122, 83, 74, 76, 70, 64, 122, 85, 73, 68, 92, 76, 75, 66, 122, 21, 21, 16, 200}, 31, false, 44, 107, 108};


//: icon_receiver_voice_playing_003
LocomoteData kStr_throughoutContent = (LocomoteData){146, (Byte []){251, 241, 253, 252, 205, 224, 247, 241, 247, 251, 228, 247, 224, 205, 228, 253, 251, 241, 247, 205, 226, 254, 243, 235, 251, 252, 245, 205, 162, 162, 161, 144}, 31, false, 185, 242, 51};


//: icon_receiver_voice_playing_w
LocomoteData kStr_byTapValue = (LocomoteData){145, (Byte []){248, 242, 254, 255, 206, 227, 244, 242, 244, 248, 231, 244, 227, 206, 231, 254, 248, 242, 244, 206, 225, 253, 240, 232, 248, 255, 246, 206, 230, 82}, 29, false, 56, 179, 71};


//: icon_receiver_voice_playing_002
LocomoteData kStr_wheatRoutValue = (LocomoteData){142, (Byte []){231, 237, 225, 224, 209, 252, 235, 237, 235, 231, 248, 235, 252, 209, 248, 225, 231, 237, 235, 209, 254, 226, 239, 247, 231, 224, 233, 209, 190, 190, 188, 221}, 31, false, 37, 44, 67};


//: icon_receiver_voice_playing
LocomoteData kStr_conferenceContent = (LocomoteData){103, (Byte []){14, 4, 8, 9, 56, 21, 2, 4, 2, 14, 17, 2, 21, 56, 17, 8, 14, 4, 2, 56, 23, 11, 6, 30, 14, 9, 0, 95}, 27, false, 196, 85, 127};

// __DEBUG__
// __CLOSE_PRINT__
//
//  SessionAudioCententView.m
//  NIMDemo
//
//  Created by chris.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZZZSessionAudioContentView.h"
#import "WithCommentNameView.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "ZZZMessageModel.h"
#import "CollectionModel.h"
//: #import "UIImage+AppleProjectKit.h"
#import "UIImage+On.h"
//: #import "ZZZKitAudioCenter.h"
#import "ShareCenter.h"
//: #import "AppleProjectKit.h"
#import "On.h"
//: #import "UIColor+AppleProjectKit.h"
#import "UIColor+On.h"

//: @interface ZZZSessionAudioContentView()<NIMMediaManagerDelegate>
@interface WithCommentNameView()<NIMMediaManagerDelegate>

//: @property (nonatomic,strong) UIImageView *voiceImageView;
@property (nonatomic,strong) UIImageView *voiceImageView;

//: @property (nonatomic,strong) UILabel *durationLabel;
@property (nonatomic,strong) UILabel *durationLabel;

//: @end
@end

//: @implementation ZZZSessionAudioContentView
@implementation WithCommentNameView

//: -(instancetype)initSessionMessageContentView{
-(instancetype)initDistance{
    //: self = [super initSessionMessageContentView];
    self = [super initDistance];
    //: if (self) {
    if (self) {
        //: [self addVoiceView];
        [self need];
        //: [[NIMSDK sharedSDK].mediaManager addDelegate:self];
        [[NIMSDK sharedSDK].mediaManager addDelegate:self];
    }
    //: return self;
    return self;
}

//: - (void)dealloc
- (void)dealloc
{
    //: [[NSNotificationCenter defaultCenter] removeObserver:self];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    //: [[NIMSDK sharedSDK].mediaManager removeDelegate:self];
    [[NIMSDK sharedSDK].mediaManager removeDelegate:self];
}

//: - (void)setPlaying:(BOOL)isPlaying
- (void)setCirclePlaying:(BOOL)isPlaying
{
    //: if (isPlaying) {
    if (isPlaying) {
        //: [self.voiceImageView startAnimating];
        [self.voiceImageView startAnimating];
    //: }else{
    }else{
        //: [self.voiceImageView stopAnimating];
        [self.voiceImageView stopAnimating];
    }
}

//: - (void)addVoiceView{
- (void)need{
    //: _audioBackgroundView = [[UIView alloc] initWithFrame:CGRectZero];
    _audioBackgroundView = [[UIView alloc] initWithFrame:CGRectZero];
    //: _audioBackgroundView.layer.cornerRadius = 16.f;
    _audioBackgroundView.layer.cornerRadius = 16.f;
    //: _audioBackgroundView.userInteractionEnabled = NO;
    _audioBackgroundView.userInteractionEnabled = NO;
    //: [self addSubview:_audioBackgroundView];
    [self addSubview:_audioBackgroundView];

    //: UIImage *image = [UIImage imageNamed:@"icon_receiver_voice_playing"];
    UIImage *image = [UIImage imageNamed:StringFromLocomoteData(&kStr_conferenceContent)];
    //: _voiceImageView = [[UIImageView alloc] initWithImage:image];
    _voiceImageView = [[UIImageView alloc] initWithImage:image];
    //: NSArray *animateNames = @[@"icon_receiver_voice_playing_001",@"icon_receiver_voice_playing_002",@"icon_receiver_voice_playing_003",@"icon_receiver_voice_playing_004",@"icon_receiver_voice_playing_005"];
    NSArray *animateNames = @[StringFromLocomoteData(&kStr_swimmingRapidTitle),StringFromLocomoteData(&kStr_wheatRoutValue),StringFromLocomoteData(&kStr_throughoutContent),StringFromLocomoteData(&kStr_mathChronicTitle),StringFromLocomoteData(&kStr_drownName)];
    //: NSMutableArray * animationImages = [[NSMutableArray alloc] initWithCapacity:animateNames.count];
    NSMutableArray * animationImages = [[NSMutableArray alloc] initWithCapacity:animateNames.count];
    //: for (NSString * animateName in animateNames) {
    for (NSString * animateName in animateNames) {
        //: UIImage * animateImage = [UIImage imageNamed:animateName];
        UIImage * animateImage = [UIImage imageNamed:animateName];
        //: [animationImages addObject:animateImage];
        [animationImages addObject:animateImage];
    }
    //: _voiceImageView.animationImages = animationImages;
    _voiceImageView.animationImages = animationImages;
    //: _voiceImageView.animationDuration = 1.0;
    _voiceImageView.animationDuration = 1.0;
    //: [self addSubview:_voiceImageView];
    [self addSubview:_voiceImageView];

    //: _durationLabel = [[UILabel alloc] initWithFrame:CGRectZero];
    _durationLabel = [[UILabel alloc] initWithFrame:CGRectZero];
    //: _durationLabel.backgroundColor = [UIColor clearColor];
    _durationLabel.backgroundColor = [UIColor clearColor];
    //: [self addSubview:_durationLabel];
    [self addSubview:_durationLabel];

}

//: - (void)refresh:(ZZZMessageModel *)data {
- (void)text:(CollectionModel *)data {
    //: [super refresh:data];
    [super text:data];
    //: NIMAudioObject *object = self.model.message.messageObject;
    NIMAudioObject *object = self.model.message.messageObject;
    //: self.durationLabel.text = [NSString stringWithFormat:@"%zd\"",(NSInteger)((object.duration+500)/1000)];
    self.durationLabel.text = [NSString stringWithFormat:@"%zd\"",(NSInteger)((object.duration+500)/1000)];//四舍五入

    //: ZZZKitSetting *setting = [[AppleProjectKit sharedKit].config setting:data.message];
    CaseSetting *setting = [[On along].config style:data.message];

    //: self.durationLabel.font = setting.font;
    self.durationLabel.font = setting.font;
    //: self.durationLabel.textColor = setting.textColor;
    self.durationLabel.textColor = setting.textColor;

    //: [self.durationLabel sizeToFit];
    [self.durationLabel sizeToFit];

    //: [self setPlaying:self.isPlaying];
    [self setCirclePlaying:self.foam];

//    [self refreshBackground:data];
}

//: - (void)refreshBackground:(ZZZMessageModel *)data
- (void)title:(CollectionModel *)data
{
//    UIColor *color = [UIColor clearColor];
    //: if (data.shouldShowLeft)
    if (data.shouldShowLeft)
    {
//        color = [UIColor colorWithHex:0xF3F3F3 alpha:1];
        //: _voiceImageView.image = [UIImage imageNamed:@"icon_receiver_voice_playing"];
        _voiceImageView.image = [UIImage imageNamed:StringFromLocomoteData(&kStr_conferenceContent)];
    }
    //: else
    else
    {
//        color = [UIColor colorWithHex:0x1A73E0 alpha:1];
        //: _voiceImageView.image = [UIImage imageNamed:@"icon_receiver_voice_playing_w"];
        _voiceImageView.image = [UIImage imageNamed:StringFromLocomoteData(&kStr_byTapValue)];
    }

//    _audioBackgroundView.backgroundColor = color;
}

//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: UIEdgeInsets contentInsets = self.model.contentViewInsets;
    UIEdgeInsets contentInsets = self.model.contentViewInsets;
    //: switch (self.layoutStyle) {
    switch (self.layoutStyle) {
        //: case ZZZSessionMessageContentViewLayoutLeft: {
        case ZZZSessionMessageContentViewLayoutLeft: {
            //: _voiceImageView.transform = CGAffineTransformIdentity;
            _voiceImageView.transform = CGAffineTransformIdentity;
            //: self.voiceImageView.nim_left = contentInsets.left * 2;
            self.voiceImageView.nim_left = contentInsets.left * 2;
             //: _durationLabel.nim_right = self.nim_width - contentInsets.right * 2;
             _durationLabel.nim_right = self.nim_width - contentInsets.right * 2;
            //: break;
            break;
        }
        //: case ZZZSessionMessageContentViewLayoutRight: {
        case ZZZSessionMessageContentViewLayoutRight: {
            //: _voiceImageView.transform = CGAffineTransformMakeRotation(3.14159265358979323846264338327950288);
            _voiceImageView.transform = CGAffineTransformMakeRotation(3.14159265358979323846264338327950288);
            //: self.voiceImageView.nim_right = self.nim_width - contentInsets.right * 2;
            self.voiceImageView.nim_right = self.nim_width - contentInsets.right * 2;
            //: _durationLabel.nim_left = contentInsets.left;
            _durationLabel.nim_left = contentInsets.left;
            //: break;
            break;
        }
        //: case ZZZSessionMessageContentViewLayoutAuto:
        case ZZZSessionMessageContentViewLayoutAuto:
        //: default:
        default:
        {
            //: if (self.model.message.isOutgoingMsg) {
            if (self.model.message.isOutgoingMsg) {
                //: _voiceImageView.transform = CGAffineTransformMakeRotation(3.14159265358979323846264338327950288);
                _voiceImageView.transform = CGAffineTransformMakeRotation(3.14159265358979323846264338327950288);
                //: self.voiceImageView.nim_right = self.nim_width - contentInsets.right * 2;
                self.voiceImageView.nim_right = self.nim_width - contentInsets.right * 2;
                //: _durationLabel.nim_left = contentInsets.left * 2;
                _durationLabel.nim_left = contentInsets.left * 2;
            //: } else {
            } else {
                //: _voiceImageView.transform = CGAffineTransformIdentity;
                _voiceImageView.transform = CGAffineTransformIdentity;
               //: self.voiceImageView.nim_left = contentInsets.left;
               self.voiceImageView.nim_left = contentInsets.left;
                //: _durationLabel.nim_right = self.nim_width - contentInsets.right * 2;
                _durationLabel.nim_right = self.nim_width - contentInsets.right * 2;
            }
            //: break;
            break;
        }
    }
    //: _voiceImageView.width = 22;
    _voiceImageView.width = 22;
    //: _voiceImageView.height = 20;
    _voiceImageView.height = 20;
    //: _voiceImageView.nim_centerY = self.nim_height * .5f;
    _voiceImageView.nim_centerY = self.nim_height * .5f;
    //: _durationLabel.nim_centerY = _voiceImageView.nim_centerY;
    _durationLabel.nim_centerY = _voiceImageView.nim_centerY;

    //: CGFloat backgroundWidth = 0;
    CGFloat backgroundWidth = 0;
    //: CGFloat backgroundLeft = 0;
    CGFloat backgroundLeft = 0;
    //: switch (self.layoutStyle) {
    switch (self.layoutStyle) {
        //: case ZZZSessionMessageContentViewLayoutLeft:
        case ZZZSessionMessageContentViewLayoutLeft:
            {
                //: backgroundWidth = self.nim_width - contentInsets.left * .5f - 2;
                backgroundWidth = self.nim_width - contentInsets.left * .5f - 2;
                //: backgroundLeft = contentInsets.left * .5f;
                backgroundLeft = contentInsets.left * .5f;
            }
            //: break;
            break;
        //: case ZZZSessionMessageContentViewLayoutRight:
        case ZZZSessionMessageContentViewLayoutRight:
            {
                //: backgroundWidth = self.nim_width - 2 - contentInsets.right * .5f;
                backgroundWidth = self.nim_width - 2 - contentInsets.right * .5f;
                //: backgroundLeft = 2;
                backgroundLeft = 2;
            }
            //: break;
            break;
        //: default:
        default:
        {
            //: if (self.model.message.isOutgoingMsg) {
            if (self.model.message.isOutgoingMsg) {
                //: backgroundWidth = self.nim_width - 2 - contentInsets.right * .5f;
                backgroundWidth = self.nim_width - 2 - contentInsets.right * .5f;
                //: backgroundLeft = 2;
                backgroundLeft = 2;
            //: } else {
            } else {
                //: backgroundWidth = self.nim_width - contentInsets.left * .5f - 2;
                backgroundWidth = self.nim_width - contentInsets.left * .5f - 2;
                //: backgroundLeft = contentInsets.left * .5f;
                backgroundLeft = contentInsets.left * .5f;
            }
            //: break;
            break;
        }
    }
    //: _audioBackgroundView.nim_size = CGSizeMake(backgroundWidth,
    _audioBackgroundView.nim_size = CGSizeMake(backgroundWidth,
                                               //: self.nim_height - 4);
                                               self.nim_height - 4);
    //: _audioBackgroundView.nim_left = backgroundLeft;
    _audioBackgroundView.nim_left = backgroundLeft;
    //: _audioBackgroundView.nim_top = 2;
    _audioBackgroundView.nim_top = 2;
}

//: -(void)onTouchUpInside:(id)sender
-(void)directed:(id)sender
{
    //: if ([self.model.message attachmentDownloadState]== NIMMessageAttachmentDownloadStateFailed
    if ([self.model.message attachmentDownloadState]== NIMMessageAttachmentDownloadStateFailed
        //: || [self.model.message attachmentDownloadState] == NIMMessageAttachmentDownloadStateNeedDownload) {
        || [self.model.message attachmentDownloadState] == NIMMessageAttachmentDownloadStateNeedDownload) {
        //: [[[NIMSDK sharedSDK] chatManager] fetchMessageAttachment:self.model.message
        [[[NIMSDK sharedSDK] chatManager] fetchMessageAttachment:self.model.message
                                                           //: error:nil];
                                                           error:nil];
        //: return;
        return;
    }
    //: if ([self.model.message attachmentDownloadState] == NIMMessageAttachmentDownloadStateDownloaded) {
    if ([self.model.message attachmentDownloadState] == NIMMessageAttachmentDownloadStateDownloaded) {

        //: if ([[NIMSDK sharedSDK].mediaManager isPlaying]) {
        if ([[NIMSDK sharedSDK].mediaManager isPlaying]) {
            //: [self stopPlayingUI];
            [self quantityDown];
        }

        //: ZZZKitEvent *event = [[ZZZKitEvent alloc] init];
        ItemTap *event = [[ItemTap alloc] init];
        //: event.eventName = ZZZKitEventNameTapAudio;
        event.eventName = kConst_optionValue;
        //: event.messageModel = self.model;
        event.messageModel = self.model;
        //: [self.delegate onCatchEvent:event];
        [self.delegate inputStop:event];

    }
}

//: #pragma mark - NIMMediaManagerDelegate
#pragma mark - NIMMediaManagerDelegate

//: - (void)playAudio:(NSString *)filePath didBeganWithError:(NSError *)error {
- (void)playAudio:(NSString *)filePath didBeganWithError:(NSError *)error {
    //: if(filePath && !error) {
    if(filePath && !error) {
        //: if (self.isPlaying && [self.audioUIDelegate respondsToSelector:@selector(startPlayingAudioUI)]) {
        if (self.foam && [self.audioUIDelegate respondsToSelector:@selector(colorUi)]) {
            //: [self.audioUIDelegate startPlayingAudioUI];
            [self.audioUIDelegate colorUi];
        }
    }
}

//: - (void)playAudio:(NSString *)filePath didCompletedWithError:(NSError *)error
- (void)playAudio:(NSString *)filePath didCompletedWithError:(NSError *)error
{
    //: [self stopPlayingUI];
    [self quantityDown];
}

//: - (void)stopPlayAudio:(NSString *)filePath didCompletedWithError:(nullable NSError *)error
- (void)stopPlayAudio:(NSString *)filePath didCompletedWithError:(nullable NSError *)error
{
    //: [self stopPlayingUI];
    [self quantityDown];
}

//: #pragma mark - private methods
#pragma mark - private methods
//: - (void)stopPlayingUI
- (void)quantityDown
{
    //: [self setPlaying:NO];
    [self setCirclePlaying:NO];
}

//: - (BOOL)isPlaying
- (BOOL)foam
{
    //: BOOL play = [ZZZKitAudioCenter instance].currentPlayingMessage == self.model.message; 
    BOOL play = [ShareCenter show].currentPlayingMessage == self.model.message; //对比是否是同一条消息，严格同一条，不能是相同ID，防止进了会话又进云端消息界面，导致同一个ID的云消息也在动画
    //: return play;
    return play;
}


//- (NSString *)convertToTimeStringWithTimeInterval:(NSTimeInterval)timeInterval{
//    NSDate *date = [NSDate dateWithTimeIntervalSince1970:timeInterval];
//    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
//    [dateFormatter setDateFormat:@"HH:mm"];
//    NSString *dateStsring = [dateFormatter stringFromDate:date];
//    return dateStsring;
//}

//: @end
@end

Byte *LocomoteDataToByte(LocomoteData *data) {
    if (data->narrowRange) return data->analogise;
    for (int i = 0; i < data->policySuccess; i++) {
        data->analogise[i] ^= data->mutualCosy;
    }
    data->analogise[data->policySuccess] = 0;
    data->narrowRange = true;
	if (data->policySuccess >= 3) {
		data->weekendGage = data->analogise[0];
		data->resolutionButton = data->analogise[1];
		data->countegrationSorry = data->analogise[2];
	}
    return data->analogise;
}

NSString *StringFromLocomoteData(LocomoteData *data) {
    return [NSString stringWithUTF8String:(char *)LocomoteDataToByte(data)];
}
