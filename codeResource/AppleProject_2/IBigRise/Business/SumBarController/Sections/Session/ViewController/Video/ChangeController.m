
#import <Foundation/Foundation.h>

NSString *StringFromElectronicTextData(Byte *data);


//: playbackBufferEmpty
Byte kStr_adventureText[] = {7, 19, 29, 6, 24, 192, 141, 137, 126, 150, 127, 126, 128, 136, 95, 146, 131, 131, 130, 143, 98, 138, 141, 145, 150, 91};


//: playbackBufferFull
Byte kStr_allowData[] = {22, 18, 66, 9, 64, 162, 42, 58, 38, 178, 174, 163, 187, 164, 163, 165, 173, 132, 183, 168, 168, 167, 180, 136, 183, 174, 174, 17};


//: playbackLikelyToKeepUp
Byte kStr_legislativeText[] = {46, 22, 63, 12, 4, 198, 178, 251, 62, 40, 58, 49, 175, 171, 160, 184, 161, 160, 162, 170, 139, 168, 170, 164, 171, 184, 147, 174, 138, 164, 164, 175, 148, 175, 223};


//: error
Byte kStr_vasName[] = {95, 5, 83, 12, 107, 75, 136, 4, 173, 47, 127, 163, 184, 197, 197, 194, 197, 44};


//: rate
Byte kStr_billHopefulAddValue[] = {78, 4, 88, 8, 99, 203, 216, 83, 202, 185, 204, 189, 172};


//: player item cancelled
Byte kStr_midstValue[] = {22, 21, 41, 11, 94, 161, 192, 64, 177, 104, 96, 153, 149, 138, 162, 142, 155, 73, 146, 157, 142, 150, 73, 140, 138, 151, 140, 142, 149, 149, 142, 141, 209};


//: status
Byte kStr_methodName[] = {12, 6, 84, 10, 14, 153, 136, 61, 28, 200, 199, 200, 181, 200, 201, 199, 172};


//: current player item is nil
Byte kStr_activityTitleCrowdedValue[] = {58, 26, 57, 14, 199, 77, 85, 70, 243, 216, 200, 199, 152, 191, 156, 174, 171, 171, 158, 167, 173, 89, 169, 165, 154, 178, 158, 171, 89, 162, 173, 158, 166, 89, 162, 172, 89, 167, 162, 165, 127};


//: playable
Byte kStr_gageContent[] = {47, 8, 97, 4, 209, 205, 194, 218, 194, 195, 205, 198, 37};


//: currentItem
Byte kStr_elderlyBotData[] = {81, 11, 90, 10, 12, 30, 187, 156, 50, 47, 189, 207, 204, 204, 191, 200, 206, 163, 206, 191, 199, 72};


//: AVMoviePlayer
Byte kStr_alongsideChronicSixTitle[] = {1, 13, 85, 8, 219, 143, 252, 152, 150, 171, 162, 196, 203, 190, 186, 165, 193, 182, 206, 186, 199, 160};


//: loadedTimeRanges
Byte kStr_carveTitle[] = {14, 16, 13, 4, 121, 124, 110, 113, 114, 113, 97, 118, 122, 114, 95, 110, 123, 116, 114, 128, 129};

// __DEBUG__
// __CLOSE_PRINT__
//
//  ChangeController.m
//  NIM
//
//  Created by Genning-Work on 2019/10/25.
//  Copyright © 2019 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZZZAVMoivePlayerController.h"
#import "ChangeController.h"
//: #import "NTESAVPlayerView.h"
#import "CardPlayerQuantityView.h"

//: static NSString *kErrorDomain = @"IJKAVMoviePlayer";
static NSString *kConst_listContent = @"IJKAVMoviePlayer";
//: static const NSInteger kEC_CurrentPlayerItemIsNil = 5001;
static const NSInteger kConst_backText = 5001;
//: static const NSInteger kEC_PlayerItemCancelled = 5002;
static const NSInteger kConst_boxName = 5002;

//: static const float kMaxHighWaterMarkMilli = 15 * 1000;
static const float kConst_makeContent = 15 * 1000;

//: static void *KVO_AVPlayer_rate = &KVO_AVPlayer_rate;
static void *kConst_completeData = &kConst_completeData;
//: static void *KVO_AVPlayer_currentItem = &KVO_AVPlayer_currentItem;
static void *kConst_transferData = &kConst_transferData;
//: static void *KVO_AVPlayerItem_state = &KVO_AVPlayerItem_state;
static void *kConst_memberName = &kConst_memberName;
//: static void *KVO_AVPlayerItem_loadedTimeRanges = &KVO_AVPlayerItem_loadedTimeRanges;
static void *kConst_nameText = &kConst_nameText;
//: static void *KVO_AVPlayerItem_playbackLikelyToKeepUp = &KVO_AVPlayerItem_playbackLikelyToKeepUp;
static void *kConst_upTitle = &kConst_upTitle;
//: static void *KVO_AVPlayerItem_playbackBufferFull = &KVO_AVPlayerItem_playbackBufferFull;
static void *kConst_makeOfTitle = &kConst_makeOfTitle;
//: static void *KVO_AVPlayerItem_playbackBufferEmpty = &KVO_AVPlayerItem_playbackBufferEmpty;
static void *kConst_buttonText = &kConst_buttonText;

//: NSString *const NTESAVMediaPlaybackIsPreparedToPlayDidChangeNotification =
NSString *const kConst_tapVersionTitle =
//: @"NTESAVMediaPlaybackIsPreparedToPlayDidChangeNotification";
@"NTESAVMediaPlaybackIsPreparedToPlayDidChangeNotification";
//: NSString *const NTESAVMoviePlayerPlaybackDidFinishNotification =
NSString *const kConst_applyTouchMakeText =
//: @"NTESAVMoviePlayerPlaybackDidFinishNotification";
@"NTESAVMoviePlayerPlaybackDidFinishNotification";
//: NSString *const NTESAVMoviePlayerPlaybackDidFinishReasonUserInfoKey =
NSString *const kConst_topTimeTitle =
//: @"NTESAVMoviePlayerPlaybackDidFinishReasonUserInfoKey";
@"NTESAVMoviePlayerPlaybackDidFinishReasonUserInfoKey";
//: NSString *const NTESAVMoviePlayerPlaybackStateDidChangeNotification =
NSString *const kConst_arrayTitle =
//: @"NTESAVMoviePlayerPlaybackStateDidChangeNotification";
@"NTESAVMoviePlayerPlaybackStateDidChangeNotification";
//: NSString *const NTESAVMoviePlayerLoadStateDidChangeNotification =
NSString *const kConst_marginTitle =
//: @"NTESAVMoviePlayerLoadStateDidChangeNotification";
@"NTESAVMoviePlayerLoadStateDidChangeNotification";

//: inline static BOOL isFloatZero(float value)
inline static BOOL isFloatZero(float value)
{
    //: return fabsf(value) <= 0.00001f;
    return fabsf(value) <= 0.00001f;
}

//: static dispatch_once_t _readyToPlayToken;
static dispatch_once_t kConst_crossSpaceText;

//: @interface ZZZAVMoivePlayerController ()
@interface ChangeController ()
{
    //: BOOL _isPrerolling;
    BOOL _isPrerolling;
    //: BOOL _isSeeking;
    BOOL _isSeeking;
    //: BOOL _isError;
    BOOL _isError;
    //: BOOL _isCompleted;
    BOOL _isCompleted;
    //: BOOL _isShutdown;
    BOOL _isShutdown;

    //: BOOL _playbackLikelyToKeeyUp;
    BOOL _playbackLikelyToKeeyUp;
    //: BOOL _playbackBufferEmpty;
    BOOL _playbackBufferEmpty;
    //: BOOL _playbackBufferFull;
    BOOL _playbackBufferFull;
    //: BOOL _playingBeforeInterruption;
    BOOL _playingBeforeInterruption;

    //: NSTimeInterval _seekingTime;
    NSTimeInterval _seekingTime;
}
//: @property (nonatomic, strong) NSURL *playUrl;
@property (nonatomic, strong) NSURL *playUrl;
//: @property (nonatomic, strong) AVURLAsset *playAsset;
@property (nonatomic, strong) AVURLAsset *playAsset;
//: @property (nonatomic, strong) AVPlayerItem *playerItem;
@property (nonatomic, strong) AVPlayerItem *playerItem;

//: @property (nonatomic, strong) id timeObserve; 
@property (nonatomic, strong) id timeObserve; //监听播放进度

//: @property (nonatomic, strong) NTESAVPlayerView *view;
@property (nonatomic, strong) CardPlayerQuantityView *view;
//: @property (nonatomic, assign) NSInteger bufferingProgress;
@property (nonatomic, assign) NSInteger bufferingProgress;
//: @property (nonatomic, assign) BOOL isPreparedToPlay;
@property (nonatomic, assign) BOOL isPreparedToPlay;
//: @property (nonatomic, assign) NSTimeInterval duration;
@property (nonatomic, assign) NSTimeInterval duration;
//: @property (nonatomic, assign) NSTimeInterval playableDuration;
@property (nonatomic, assign) NSTimeInterval playableDuration;
//: @property (nonatomic, assign) NTESAVMoviePlaybackState playbackState;
@property (nonatomic, assign) NTESAVMoviePlaybackState playbackState;
//: @property (nonatomic, assign) NTESAVMovieLoadState loadState;
@property (nonatomic, assign) NTESAVMovieLoadState loadState;

//: @end
@end

//: @implementation ZZZAVMoivePlayerController
@implementation ChangeController

//: @synthesize currentPlaybackTime = _currentPlaybackTime;
@synthesize currentPlaybackTime = _currentPlaybackTime;

//: - (void)dealloc {
- (void)dealloc {
    //: [self shutdown];
    [self of];
}

//: - (id)initWithContentURL:(NSURL *)aUrl {
- (id)initWithShow:(NSURL *)aUrl {
    //: if (self = [super init]) {
    if (self = [super init]) {
        //: _scalingMode = NTESAVMovieScalingModeAspectFit;
        _scalingMode = NTESAVMovieScalingModeAspectFit;
        //: _playUrl = aUrl;
        _playUrl = aUrl;
        //: _view = [[NTESAVPlayerView alloc] initWithFrame:[UIScreen mainScreen].bounds];
        _view = [[CardPlayerQuantityView alloc] initWithFrame:[UIScreen mainScreen].bounds];
        //: _isPrerolling = NO;
        _isPrerolling = NO;
        //: _isSeeking = NO;
        _isSeeking = NO;
        //: _isError = NO;
        _isError = NO;
        //: _isCompleted = NO;
        _isCompleted = NO;
        //: _bufferingProgress = 0;
        _bufferingProgress = 0;
        //: _playbackLikelyToKeeyUp = NO;
        _playbackLikelyToKeeyUp = NO;
        //: _playbackBufferEmpty = YES;
        _playbackBufferEmpty = YES;
        //: _playbackBufferFull = NO;
        _playbackBufferFull = NO;
        //: _playbackRate = 1.0f;
        _playbackRate = 1.0f;
        //: _playbackVolume = 1.0f;
        _playbackVolume = 1.0f;
        //: _shouldAutoplay = YES;
        _shouldAutoplay = YES;
        //: [self setScreenOn:YES];
        [self setInput:YES];
        //: [self registerApplicationObservers];
        [self registerApplicationView];
    }
    //: return self;
    return self;
}

//: - (void)prepareToPlay {
- (void)selectPlay {
    //: AVURLAsset *asset = [AVURLAsset URLAssetWithURL:_playUrl options:nil];
    AVURLAsset *asset = [AVURLAsset URLAssetWithURL:_playUrl options:nil];
    //: NSArray *requestedKeys = @[@"playable"];
    NSArray *requestedKeys = @[StringFromElectronicTextData(kStr_gageContent)];

    //: _playAsset = asset;
    _playAsset = asset;
    //: [asset loadValuesAsynchronouslyForKeys:requestedKeys
    [asset loadValuesAsynchronouslyForKeys:requestedKeys
                         //: completionHandler:^{
                         completionHandler:^{
                             //: dispatch_async( dispatch_get_main_queue(), ^{
                             dispatch_async( dispatch_get_main_queue(), ^{
                                 //: [self didPrepareToPlayAsset:asset withKeys:requestedKeys];
                                 [self header:asset maxSmart:requestedKeys];
                                 //: [self setPlaybackVolume:_playbackVolume];
                                 [self setPlaybackVolume:_playbackVolume];
                             //: });
                             });
                         //: }];
                         }];
}

//: - (void)play {
- (void)signal {
    //: if (_isCompleted)
    if (_isCompleted)
    {
        //: _isCompleted = NO;
        _isCompleted = NO;
        //: [_player seekToTime:kCMTimeZero];
        [_player seekToTime:kCMTimeZero];
    }
    //: [_player play];
    [_player play];
}

//: - (void)pause {
- (void)dimension {
    //: _isPrerolling = NO;
    _isPrerolling = NO;
    //: [_player pause];
    [_player pause];
}

//: - (void)stop {
- (void)show {
    //: [_player pause];
    [_player pause];
    //: [self setScreenOn:NO];
    [self setInput:NO];
    //: _isCompleted = YES;
    _isCompleted = YES;
}

//: - (BOOL)isPlaying
- (BOOL)bubble
{
    //: if (!isFloatZero(_player.rate)) {
    if (!isFloatZero(_player.rate)) {
        //: return YES;
        return YES;
    //: } else {
    } else {
        //: if (_isPrerolling) {
        if (_isPrerolling) {
            //: return YES;
            return YES;
        //: } else {
        } else {
            //: return NO;
            return NO;
        }
    }
}

//: - (void)shutdown {
- (void)of {
    //: _isShutdown = YES;
    _isShutdown = YES;
    //: [self stop];
    [self show];

    //: if (_playerItem != nil) {
    if (_playerItem != nil) {
        //: [_playerItem cancelPendingSeeks];
        [_playerItem cancelPendingSeeks];
    }
    //: if (self.timeObserve) {
    if (self.timeObserve) {
        //: [self.player removeTimeObserver:self.timeObserve];
        [self.player removeTimeObserver:self.timeObserve];
        //: self.timeObserve = nil;
        self.timeObserve = nil;
    }

    //: [self removeItemKeyValueObservers];
    [self withObservers];
    //: [self removePlayerKeyValueObservers];
    [self valueLab];
    //: [self unregisterApplicationObservers];
    [self team];

    //: [_view setPlayer:nil];
    [_view setPlayer:nil];
}

//: - (void)setCurrentPlaybackTime:(NSTimeInterval)aCurrentPlaybackTime
- (void)setCurrentPlaybackTime:(NSTimeInterval)aCurrentPlaybackTime
{
    //: if (!_player)
    if (!_player)
        //: return;
        return;

    //: _seekingTime = aCurrentPlaybackTime;
    _seekingTime = aCurrentPlaybackTime;
    //: _isSeeking = YES;
    _isSeeking = YES;
    //: _bufferingProgress = 0;
    _bufferingProgress = 0;
    //: [self didPlaybackStateChange];
    [self timeData];
    //: [self didLoadStateChange];
    [self sizeChange];
    //: if (_isPrerolling) {
    if (_isPrerolling) {
        //: [_player pause];
        [_player pause];
    }

    //: [_player seekToTime:CMTimeMakeWithSeconds(aCurrentPlaybackTime, 1000000000ull)
    [_player seekToTime:CMTimeMakeWithSeconds(aCurrentPlaybackTime, 1000000000ull)
      //: completionHandler:^(BOOL finished) {
      completionHandler:^(BOOL finished) {
          //: dispatch_async(dispatch_get_main_queue(), ^{
          dispatch_async(dispatch_get_main_queue(), ^{
              //: _isSeeking = NO;
              _isSeeking = NO;
              //: if (_isPrerolling) {
              if (_isPrerolling) {
                  //: [_player play];
                  [_player play];
              }
              //: [self didPlaybackStateChange];
              [self timeData];
              //: [self didLoadStateChange];
              [self sizeChange];
          //: });
          });
      //: }];
      }];
}

//: - (NSTimeInterval)currentPlaybackTime
- (NSTimeInterval)currentPlaybackTime
{
    //: if (!_player)
    if (!_player)
        //: return 0.0f;
        return 0.0f;

    //: if (_isSeeking)
    if (_isSeeking)
        //: return _seekingTime;
        return _seekingTime;

    //: return CMTimeGetSeconds([_player currentTime]);
    return CMTimeGetSeconds([_player currentTime]);
}

//: - (NTESAVMoviePlaybackState)playbackState
- (NTESAVMoviePlaybackState)playbackState
{
    //: if (!_player)
    if (!_player)
        //: return NTESAVMoviePlaybackStateStopped;
        return NTESAVMoviePlaybackStateStopped;

    //: NTESAVMoviePlaybackState mpState = NTESAVMoviePlaybackStateStopped;
    NTESAVMoviePlaybackState mpState = NTESAVMoviePlaybackStateStopped;
    //: if (_isCompleted) {
    if (_isCompleted) {
        //: mpState = NTESAVMoviePlaybackStateStopped;
        mpState = NTESAVMoviePlaybackStateStopped;
    //: } else if (_isSeeking) {
    } else if (_isSeeking) {
        //: mpState = NTESAVPMoviePlaybackStateSeekingForward;
        mpState = NTESAVPMoviePlaybackStateSeekingForward;
    //: } else if ([self isPlaying]) {
    } else if ([self bubble]) {
        //: mpState = NTESAVMoviePlaybackStatePlaying;
        mpState = NTESAVMoviePlaybackStatePlaying;
    //: } else {
    } else {
        //: mpState = NTESAVMoviePlaybackStatePaused;
        mpState = NTESAVMoviePlaybackStatePaused;
    }
    //: return mpState;
    return mpState;
}

//: - (NTESAVMovieLoadState)loadState
- (NTESAVMovieLoadState)loadState
{
    //: if (_player == nil)
    if (_player == nil)
        //: return NTESAVMovieLoadStateUnknown;
        return NTESAVMovieLoadStateUnknown;

    //: if (_isSeeking)
    if (_isSeeking)
        //: return NTESAVMovieLoadStateStalled;
        return NTESAVMovieLoadStateStalled;

    //: AVPlayerItem *playerItem = [_player currentItem];
    AVPlayerItem *playerItem = [_player currentItem];
    //: if (playerItem == nil)
    if (playerItem == nil)
        //: return NTESAVMovieLoadStateUnknown;
        return NTESAVMovieLoadStateUnknown;

    //: if (_player != nil && !isFloatZero(_player.rate)) {
    if (_player != nil && !isFloatZero(_player.rate)) {
        //: return NTESAVMovieLoadStatePlayable | NTESAVMovieLoadStatePlaythroughOK;
        return NTESAVMovieLoadStatePlayable | NTESAVMovieLoadStatePlaythroughOK;
    //: } else if ([playerItem isPlaybackBufferFull]) {
    } else if ([playerItem isPlaybackBufferFull]) {
        //: return NTESAVMovieLoadStatePlayable | NTESAVMovieLoadStatePlaythroughOK;
        return NTESAVMovieLoadStatePlayable | NTESAVMovieLoadStatePlaythroughOK;
    //: } else if ([playerItem isPlaybackLikelyToKeepUp]) {
    } else if ([playerItem isPlaybackLikelyToKeepUp]) {
        //: return NTESAVMovieLoadStatePlayable | NTESAVMovieLoadStatePlaythroughOK;
        return NTESAVMovieLoadStatePlayable | NTESAVMovieLoadStatePlaythroughOK;
    //: } else if ([playerItem isPlaybackBufferEmpty]) {
    } else if ([playerItem isPlaybackBufferEmpty]) {
        //: return NTESAVMovieLoadStateStalled;
        return NTESAVMovieLoadStateStalled;
    //: } else {
    } else {
        //: return NTESAVMovieLoadStateUnknown;
        return NTESAVMovieLoadStateUnknown;
    }
}

//: -(void)setPlaybackRate:(float)playbackRate
-(void)setPlaybackRate:(float)playbackRate
{
    //: _playbackRate = playbackRate;
    _playbackRate = playbackRate;
    //: if (_player != nil && !isFloatZero(_player.rate)) {
    if (_player != nil && !isFloatZero(_player.rate)) {
        //: _player.rate = _playbackRate;
        _player.rate = _playbackRate;
    }
}

//: -(void)setPlaybackVolume:(float)playbackVolume
-(void)setPlaybackVolume:(float)playbackVolume
{
    //: _playbackVolume = playbackVolume;
    _playbackVolume = playbackVolume;
    //: if (_player != nil && _player.volume != playbackVolume) {
    if (_player != nil && _player.volume != playbackVolume) {
        //: _player.volume = playbackVolume;
        _player.volume = playbackVolume;
    }
    //: BOOL muted = fabs(playbackVolume) < 1e-6;
    BOOL muted = fabs(playbackVolume) < 1e-6;
    //: if (_player != nil && _player.muted != muted) {
    if (_player != nil && _player.muted != muted) {
        //: _player.muted = muted;
        _player.muted = muted;
    }
}

//: - (void)setScalingMode: (NTESAVMovieScalingMode) aScalingMode
- (void)setScalingMode: (NTESAVMovieScalingMode) aScalingMode
{
    //: NTESAVMovieScalingMode newScalingMode = aScalingMode;
    NTESAVMovieScalingMode newScalingMode = aScalingMode;
    //: switch (aScalingMode) {
    switch (aScalingMode) {
        //: case NTESAVMovieScalingModeNone:
        case NTESAVMovieScalingModeNone:
            //: [_view setContentMode:UIViewContentModeCenter];
            [_view setContentMode:UIViewContentModeCenter];
            //: break;
            break;
        //: case NTESAVMovieScalingModeAspectFit:
        case NTESAVMovieScalingModeAspectFit:
            //: [_view setContentMode:UIViewContentModeScaleAspectFit];
            [_view setContentMode:UIViewContentModeScaleAspectFit];
            //: break;
            break;
        //: case NTESAVMovieScalingModeAspectFill:
        case NTESAVMovieScalingModeAspectFill:
            //: [_view setContentMode:UIViewContentModeScaleAspectFill];
            [_view setContentMode:UIViewContentModeScaleAspectFill];
            //: break;
            break;
        //: case NTESAVMovieScalingModeFill:
        case NTESAVMovieScalingModeFill:
            //: [_view setContentMode:UIViewContentModeScaleToFill];
            [_view setContentMode:UIViewContentModeScaleToFill];
            //: break;
            break;
        //: default:
        default:
            //: newScalingMode = _scalingMode;
            newScalingMode = _scalingMode;
    }
    //: _scalingMode = newScalingMode;
    _scalingMode = newScalingMode;
}

//: #pragma mark - Private
#pragma mark - Private
//: - (void)setScreenOn: (BOOL)on
- (void)setInput: (BOOL)on
{
    //: dispatch_async(dispatch_get_main_queue(), ^{
    dispatch_async(dispatch_get_main_queue(), ^{
        //: [UIApplication sharedApplication].idleTimerDisabled = YES;
        [UIApplication sharedApplication].idleTimerDisabled = YES;
    //: });
    });
}

//: - (void)didPrepareToPlayAsset:(AVURLAsset *)asset withKeys:(NSArray *)requestedKeys
- (void)header:(AVURLAsset *)asset maxSmart:(NSArray *)requestedKeys
{
    //: if (_isShutdown)
    if (_isShutdown)
        //: return;
        return;

    //: for (NSString *thisKey in requestedKeys)
    for (NSString *thisKey in requestedKeys)
    {
        //: NSError *error = nil;
        NSError *error = nil;
        //: AVKeyValueStatus keyStatus = [asset statusOfValueForKey:thisKey error:&error];
        AVKeyValueStatus keyStatus = [asset statusOfValueForKey:thisKey error:&error];
        //: if (keyStatus == AVKeyValueStatusFailed)
        if (keyStatus == AVKeyValueStatusFailed)
        {
            //: [self assetFailedToPrepareForPlayback:error];
            [self visualization:error];
            //: return;
            return;
        //: } else if (keyStatus == AVKeyValueStatusCancelled) {
        } else if (keyStatus == AVKeyValueStatusCancelled) {
            // TODO [AVAsset cancelLoading]
            //: error = [self createErrorWithCode:kEC_PlayerItemCancelled
            error = [self ting:kConst_boxName
                                  //: description:@"player item cancelled"
                                  random:StringFromElectronicTextData(kStr_midstValue)
                                       //: reason:nil];
                                       option:nil];
            //: [self assetFailedToPrepareForPlayback:error];
            [self visualization:error];
            //: return;
            return;
        }
    }

    //: if (!asset.playable)
    if (!asset.playable)
    {
        //: NSError *assetCannotBePlayedError = [NSError errorWithDomain:@"AVMoviePlayer"
        NSError *assetCannotBePlayedError = [NSError errorWithDomain:StringFromElectronicTextData(kStr_alongsideChronicSixTitle)
                                                                //: code:0
                                                                code:0
                                                            //: userInfo:nil];
                                                            userInfo:nil];

        //: [self assetFailedToPrepareForPlayback:assetCannotBePlayedError];
        [self visualization:assetCannotBePlayedError];
        //: return;
        return;
    }

    //player item
    //: [self setupPlayerItem:asset];
    [self tag:asset];

    //player
    //: [self setupPlayer];
    [self name];

    //: _isCompleted = NO;
    _isCompleted = NO;

    //: if (_player.currentItem != _playerItem){
    if (_player.currentItem != _playerItem){
        //: [_player replaceCurrentItemWithPlayerItem:_playerItem];
        [_player replaceCurrentItemWithPlayerItem:_playerItem];
    }
}

//: - (void)setupPlayerItem:(AVURLAsset *)asset {
- (void)tag:(AVURLAsset *)asset {
    //: [self unregisterPlayerItemNoticationObservers];
    [self observers];
    //: [self removeItemKeyValueObservers];
    [self withObservers];
    //: _playerItem = [AVPlayerItem playerItemWithAsset:asset];
    _playerItem = [AVPlayerItem playerItemWithAsset:asset];
    //: [self addItemKeyValueObservers];
    [self infoRequest];
    //: [self registerPlayerItemNoticationObservers];
    [self trap];
}

//: - (void)setupPlayer {
- (void)name {
    //: if (!_player) {
    if (!_player) {
        //: _player = [AVPlayer playerWithPlayerItem:_playerItem];
        _player = [AVPlayer playerWithPlayerItem:_playerItem];
        //: [self addPlayerKeyValueObservers];
        [self tinkle];

        //监听播放进度
        //: __weak typeof(self) weakSelf = self;
        __weak typeof(self) weakSelf = self;
        //: self.timeObserve = [weakSelf.player addPeriodicTimeObserverForInterval:CMTimeMake(1, 1) queue:dispatch_get_main_queue() usingBlock:^(CMTime time) {
        self.timeObserve = [weakSelf.player addPeriodicTimeObserverForInterval:CMTimeMake(1, 1) queue:dispatch_get_main_queue() usingBlock:^(CMTime time) {
            //: CGFloat current = CMTimeGetSeconds(time);
            CGFloat current = CMTimeGetSeconds(time);
            //: CGFloat total = CMTimeGetSeconds(weakSelf.playerItem.duration);
            CGFloat total = CMTimeGetSeconds(weakSelf.playerItem.duration);
            //: _duration = current;
            _duration = current;

            //: if (weakSelf.delegate && [weakSelf.delegate respondsToSelector:@selector(videoPlayertotalTime:)]) {
            if (weakSelf.delegate && [weakSelf.delegate respondsToSelector:@selector(ranges:)]) {
                //: [weakSelf.delegate videoPlayertotalTime:total];
                [weakSelf.delegate ranges:total];
            }

            //: if (weakSelf.delegate && [weakSelf.delegate respondsToSelector:@selector(videoPlayercurrentTime:)]) {
            if (weakSelf.delegate && [weakSelf.delegate respondsToSelector:@selector(telecasting:)]) {
                //: [weakSelf.delegate videoPlayercurrentTime:current];
                [weakSelf.delegate telecasting:current];
            }
    //
    ////        /***** 这里是比较蛋疼的，当拖动滑块到没有缓冲的地方并且没有开始播放时，也会走到这里 *************/
    ////        if (weakSelf.isCanToGetLocalTime) {
    ////            weakSelf.localTime = [weakSelf getLocalTime];
    ////        }
    //        NSInteger timeNow = [weakSelf getLocalTime];
    //        if (timeNow - weakSelf.localTime > 1.5) {
    //            [weakSelf delegateDidEndBuffer];
    //            weakSelf.isCanToGetLocalTime = YES;
    //        }
        //: }];
        }];
    }
}

//: - (void)assetFailedToPrepareForPlayback:(NSError *)error
- (void)visualization:(NSError *)error
{
    //: if (_isShutdown)
    if (_isShutdown)
        //: return;
        return;

    //: [self onError:error];
    [self sub:error];
}

//: - (void)didPlaybackStateChange
- (void)timeData
{
    //: if (_playbackState != self.playbackState) {
    if (_playbackState != self.playbackState) {
        //: _playbackState = self.playbackState;
        _playbackState = self.playbackState;
        //: [[NSNotificationCenter defaultCenter]
        [[NSNotificationCenter defaultCenter]
         //: postNotificationName:NTESAVMoviePlayerPlaybackStateDidChangeNotification
         postNotificationName:kConst_arrayTitle
         //: object:self];
         object:self];
    }
}

//: - (void)didLoadStateChange
- (void)sizeChange
{
    //: [[NSNotificationCenter defaultCenter]
    [[NSNotificationCenter defaultCenter]
     //: postNotificationName:NTESAVMoviePlayerLoadStateDidChangeNotification
     postNotificationName:kConst_marginTitle
     //: object:self];
     object:self];
}

//: - (void)fetchLoadStateFromItem:(AVPlayerItem*)playerItem
- (void)bringHome:(AVPlayerItem*)playerItem
{
    //: if (playerItem == nil)
    if (playerItem == nil)
        //: return;
        return;

    //: _playbackLikelyToKeeyUp = playerItem.isPlaybackLikelyToKeepUp;
    _playbackLikelyToKeeyUp = playerItem.isPlaybackLikelyToKeepUp;
    //: _playbackBufferEmpty = playerItem.isPlaybackBufferEmpty;
    _playbackBufferEmpty = playerItem.isPlaybackBufferEmpty;
    //: _playbackBufferFull = playerItem.isPlaybackBufferFull;
    _playbackBufferFull = playerItem.isPlaybackBufferFull;
}

//: - (void)didPlayableDurationUpdate
- (void)at
{
    //: NSTimeInterval currentPlaybackTime = self.currentPlaybackTime;
    NSTimeInterval currentPlaybackTime = self.currentPlaybackTime;
    //: int playableDurationMilli = (int)(self.playableDuration * 1000);
    int playableDurationMilli = (int)(self.playableDuration * 1000);
    //: int currentPlaybackTimeMilli = (int)(currentPlaybackTime * 1000);
    int currentPlaybackTimeMilli = (int)(currentPlaybackTime * 1000);

    //: int bufferedDurationMilli = playableDurationMilli - currentPlaybackTimeMilli;
    int bufferedDurationMilli = playableDurationMilli - currentPlaybackTimeMilli;
    //: if (bufferedDurationMilli > 0) {
    if (bufferedDurationMilli > 0) {
        //: self.bufferingProgress = bufferedDurationMilli * 100 / kMaxHighWaterMarkMilli;
        self.bufferingProgress = bufferedDurationMilli * 100 / kConst_makeContent;

        //: if (self.bufferingProgress > 100) {
        if (self.bufferingProgress > 100) {
            //: dispatch_async(dispatch_get_main_queue(), ^{
            dispatch_async(dispatch_get_main_queue(), ^{
                //: if (self.bufferingProgress > 100) {
                if (self.bufferingProgress > 100) {
                    //: if ([self isPlaying]) {
                    if ([self bubble]) {
                        //: _player.rate = _playbackRate;
                        _player.rate = _playbackRate;
                    }
                }
            //: });
            });
        }
    }
}

//拖动
//: - (void)seekToTimePlay:(float)toTime{
- (void)pin:(float)toTime{

    //: if (self.player) {
    if (self.player) {
//        [self.player pause];

        //: __weak typeof(self) weak_self = self;
        __weak typeof(self) weak_self = self;
        //: [self.player seekToTime:CMTimeMake(toTime, 1) completionHandler:^(BOOL finished) {
        [self.player seekToTime:CMTimeMake(toTime, 1) completionHandler:^(BOOL finished) {
            //: __strong typeof(weak_self) strong_self = weak_self;
            __strong typeof(weak_self) strong_self = weak_self;
            //: if (!strong_self) return;
            if (!strong_self) return;
//            [strong_self play];
        //: }];
        }];
    }
}

//: - (void)playerItemFailedToPlayToEndTime:(NSNotification *)notification
- (void)doingLinksman:(NSNotification *)notification
{
    //: if (_isShutdown)
    if (_isShutdown)
        //: return;
        return;

    //: [self onError:[notification.userInfo objectForKey:@"error"]];
    [self sub:[notification.userInfo objectForKey:StringFromElectronicTextData(kStr_vasName)]];
}

//: - (void)playerItemDidReachEnd:(NSNotification *)notification
- (void)toTextPop:(NSNotification *)notification
{
    //: if (_isShutdown)
    if (_isShutdown)
        //: return;
        return;

    //: _isCompleted = YES;
    _isCompleted = YES;

    //: dispatch_async(dispatch_get_main_queue(), ^{
    dispatch_async(dispatch_get_main_queue(), ^{
        //: [self didPlaybackStateChange];
        [self timeData];
        //: [self didLoadStateChange];
        [self sizeChange];
        //: [self setScreenOn:NO];
        [self setInput:NO];

        //: [[NSNotificationCenter defaultCenter]
        [[NSNotificationCenter defaultCenter]
         //: postNotificationName:NTESAVMoviePlayerPlaybackDidFinishNotification
         postNotificationName:kConst_applyTouchMakeText
         //: object:self
         object:self
         //: userInfo:@{
         userInfo:@{
                    //: NTESAVMoviePlayerPlaybackDidFinishReasonUserInfoKey: @(NTESAVMovieFinishReasonPlaybackEnded)
                    kConst_topTimeTitle: @(NTESAVMovieFinishReasonPlaybackEnded)
                    //: }];
                    }];
    //: });
    });
}


//: #pragma mark app state changed
#pragma mark app state changed

//: - (void)registerApplicationObservers
- (void)registerApplicationView
{
    //: NSNotificationCenter *notificationManager = [NSNotificationCenter defaultCenter];
    NSNotificationCenter *notificationManager = [NSNotificationCenter defaultCenter];
    //: [notificationManager addObserver:self
    [notificationManager addObserver:self
                             //: selector:@selector(audioSessionInterrupt:)
                             selector:@selector(valueing:)
                                 //: name:AVAudioSessionInterruptionNotification
                                 name:AVAudioSessionInterruptionNotification
                               //: object:nil];
                               object:nil];

    //: [notificationManager addObserver:self
    [notificationManager addObserver:self
                             //: selector:@selector(applicationDidBecomeActive)
                             selector:@selector(useProvider)
                                 //: name:UIApplicationDidBecomeActiveNotification
                                 name:UIApplicationDidBecomeActiveNotification
                               //: object:nil];
                               object:nil];

    //: [notificationManager addObserver:self
    [notificationManager addObserver:self
                             //: selector:@selector(applicationDidEnterBackground)
                             selector:@selector(toolMid)
                                 //: name:UIApplicationDidEnterBackgroundNotification
                                 name:UIApplicationDidEnterBackgroundNotification
                               //: object:nil];
                               object:nil];
}

//: - (void)unregisterApplicationObservers
- (void)team
{
    //: [[NSNotificationCenter defaultCenter] removeObserver:self];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

//: - (void)registerPlayerItemNoticationObservers {
- (void)trap {
    //: [[NSNotificationCenter defaultCenter] addObserver:self
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             //: selector:@selector(playerItemDidReachEnd:)
                                             selector:@selector(toTextPop:)
                                                 //: name:AVPlayerItemDidPlayToEndTimeNotification
                                                 name:AVPlayerItemDidPlayToEndTimeNotification
                                               //: object:_playerItem];
                                               object:_playerItem];

    //: [[NSNotificationCenter defaultCenter] addObserver:self
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             //: selector:@selector(playerItemFailedToPlayToEndTime:)
                                             selector:@selector(doingLinksman:)
                                                 //: name:AVPlayerItemFailedToPlayToEndTimeNotification
                                                 name:AVPlayerItemFailedToPlayToEndTimeNotification
                                               //: object:_playerItem];
                                               object:_playerItem];
}

//: - (void)unregisterPlayerItemNoticationObservers {
- (void)observers {
    //: [[NSNotificationCenter defaultCenter] removeObserver:self
    [[NSNotificationCenter defaultCenter] removeObserver:self
                                                    //: name:nil
                                                    name:nil
                                                  //: object:_playerItem];
                                                  object:_playerItem];
}

//: - (void)audioSessionInterrupt:(NSNotification *)notification
- (void)valueing:(NSNotification *)notification
{
    //: int reason = [[[notification userInfo] valueForKey:AVAudioSessionInterruptionTypeKey] intValue];
    int reason = [[[notification userInfo] valueForKey:AVAudioSessionInterruptionTypeKey] intValue];
    //: switch (reason) {
    switch (reason) {
        //: case AVAudioSessionInterruptionTypeBegan: {
        case AVAudioSessionInterruptionTypeBegan: {
            //: switch (self.playbackState) {
            switch (self.playbackState) {
                //: case NTESAVMoviePlaybackStatePaused:
                case NTESAVMoviePlaybackStatePaused:
                //: case NTESAVMoviePlaybackStateStopped:
                case NTESAVMoviePlaybackStateStopped:
                    //: _playingBeforeInterruption = NO;
                    _playingBeforeInterruption = NO;
                    //: break;
                    break;
                //: default:
                default:
                    //: _playingBeforeInterruption = YES;
                    _playingBeforeInterruption = YES;
                    //: break;
                    break;
            }
            //: [self pause];
            [self dimension];
            //: break;
            break;
        }
        //: case AVAudioSessionInterruptionTypeEnded: {
        case AVAudioSessionInterruptionTypeEnded: {
            //: if (_playingBeforeInterruption) {
            if (_playingBeforeInterruption) {
                //: [self play];
                [self signal];
            }
            //: break;
            break;
        }
    }
}

//: - (void)applicationDidBecomeActive
- (void)useProvider
{
    //: [_view setPlayer:_player];
    [_view setPlayer:_player];
}

//: - (void)applicationDidEnterBackground
- (void)toolMid
{
    //: [_view setPlayer:nil];
    [_view setPlayer:nil];
    //: if (([[[UIDevice currentDevice] systemVersion] compare:@"9.0" options:NSNumericSearch] != NSOrderedAscending)) {
    if (([[[UIDevice currentDevice] systemVersion] compare:@"9.0" options:NSNumericSearch] != NSOrderedAscending)) {
        //: if ([self isPlaying]) {
        if ([self bubble]) {
            //: dispatch_after(dispatch_time((0ull), (int64_t)(2 * 1000000000ull)), dispatch_get_main_queue(), ^{
            dispatch_after(dispatch_time((0ull), (int64_t)(2 * 1000000000ull)), dispatch_get_main_queue(), ^{
                //: [self play];
                [self signal];
            //: });
            });
        }
    }
}

//: #pragma mark KVO
#pragma mark KVO

//: - (void)addPlayerKeyValueObservers {
- (void)tinkle {
    //: [_player addObserver:self
    [_player addObserver:self
                  //: forKeyPath:@"currentItem"
                  forKeyPath:StringFromElectronicTextData(kStr_elderlyBotData)
                     //: options:NSKeyValueObservingOptionInitial | NSKeyValueObservingOptionNew
                     options:NSKeyValueObservingOptionInitial | NSKeyValueObservingOptionNew
                     //: context:KVO_AVPlayer_currentItem];
                     context:kConst_transferData];


    //: [_player addObserver:self
    [_player addObserver:self
              //: forKeyPath:@"rate"
              forKeyPath:StringFromElectronicTextData(kStr_billHopefulAddValue)
                 //: options:NSKeyValueObservingOptionInitial | NSKeyValueObservingOptionNew
                 options:NSKeyValueObservingOptionInitial | NSKeyValueObservingOptionNew
                 //: context:KVO_AVPlayer_rate];
                 context:kConst_completeData];
}

//: - (void)removePlayerKeyValueObservers {
- (void)valueLab {
    //: [_player removeObserver:self forKeyPath:@"currentItem" context:KVO_AVPlayer_currentItem];
    [_player removeObserver:self forKeyPath:StringFromElectronicTextData(kStr_elderlyBotData) context:kConst_transferData];
    //: [_player removeObserver:self forKeyPath:@"rate" context:KVO_AVPlayer_rate];
    [_player removeObserver:self forKeyPath:StringFromElectronicTextData(kStr_billHopefulAddValue) context:kConst_completeData];
}

//: - (void)addItemKeyValueObservers {
- (void)infoRequest {
    //: [_playerItem addObserver:self
    [_playerItem addObserver:self
                  //: forKeyPath:@"status"
                  forKeyPath:StringFromElectronicTextData(kStr_methodName)
                     //: options:NSKeyValueObservingOptionInitial | NSKeyValueObservingOptionNew
                     options:NSKeyValueObservingOptionInitial | NSKeyValueObservingOptionNew
                     //: context:KVO_AVPlayerItem_state];
                     context:kConst_memberName];

    //: [_playerItem addObserver:self
    [_playerItem addObserver:self
                  //: forKeyPath:@"loadedTimeRanges"
                  forKeyPath:StringFromElectronicTextData(kStr_carveTitle)
                     //: options:NSKeyValueObservingOptionInitial | NSKeyValueObservingOptionNew
                     options:NSKeyValueObservingOptionInitial | NSKeyValueObservingOptionNew
                     //: context:KVO_AVPlayerItem_loadedTimeRanges];
                     context:kConst_nameText];


    //: [_playerItem addObserver:self
    [_playerItem addObserver:self
                  //: forKeyPath:@"playbackLikelyToKeepUp"
                  forKeyPath:StringFromElectronicTextData(kStr_legislativeText)
                     //: options:NSKeyValueObservingOptionInitial | NSKeyValueObservingOptionNew
                     options:NSKeyValueObservingOptionInitial | NSKeyValueObservingOptionNew
                     //: context:KVO_AVPlayerItem_playbackLikelyToKeepUp];
                     context:kConst_upTitle];

    //: [_playerItem addObserver:self
    [_playerItem addObserver:self
                  //: forKeyPath:@"playbackBufferEmpty"
                  forKeyPath:StringFromElectronicTextData(kStr_adventureText)
                     //: options:NSKeyValueObservingOptionInitial | NSKeyValueObservingOptionNew
                     options:NSKeyValueObservingOptionInitial | NSKeyValueObservingOptionNew
                     //: context:KVO_AVPlayerItem_playbackBufferEmpty];
                     context:kConst_buttonText];

    //: [_playerItem addObserver:self
    [_playerItem addObserver:self
                  //: forKeyPath:@"playbackBufferFull"
                  forKeyPath:StringFromElectronicTextData(kStr_allowData)
                     //: options:NSKeyValueObservingOptionInitial | NSKeyValueObservingOptionNew
                     options:NSKeyValueObservingOptionInitial | NSKeyValueObservingOptionNew
                     //: context:KVO_AVPlayerItem_playbackBufferFull];
                     context:kConst_makeOfTitle];
}

//: - (void)removeItemKeyValueObservers {
- (void)withObservers {
    //: [_playerItem removeObserver:self forKeyPath:@"status" context:KVO_AVPlayerItem_state];
    [_playerItem removeObserver:self forKeyPath:StringFromElectronicTextData(kStr_methodName) context:kConst_memberName];
    //: [_playerItem removeObserver:self forKeyPath:@"loadedTimeRanges" context:KVO_AVPlayerItem_loadedTimeRanges];
    [_playerItem removeObserver:self forKeyPath:StringFromElectronicTextData(kStr_carveTitle) context:kConst_nameText];
    //: [_playerItem removeObserver:self forKeyPath:@"playbackLikelyToKeepUp" context:KVO_AVPlayerItem_playbackLikelyToKeepUp];
    [_playerItem removeObserver:self forKeyPath:StringFromElectronicTextData(kStr_legislativeText) context:kConst_upTitle];
    //: [_playerItem removeObserver:self forKeyPath:@"playbackBufferEmpty" context:KVO_AVPlayerItem_playbackBufferEmpty];
    [_playerItem removeObserver:self forKeyPath:StringFromElectronicTextData(kStr_adventureText) context:kConst_buttonText];
    //: [_playerItem removeObserver:self forKeyPath:@"playbackBufferFull" context:KVO_AVPlayerItem_playbackBufferFull];
    [_playerItem removeObserver:self forKeyPath:StringFromElectronicTextData(kStr_allowData) context:kConst_makeOfTitle];
}

//: - (void)observeValueForKeyPath:(NSString*)path
- (void)observeValueForKeyPath:(NSString*)path
                      //: ofObject:(id)object
                      ofObject:(id)object
                        //: change:(NSDictionary*)change
                        change:(NSDictionary*)change
                       //: context:(void*)context
                       context:(void*)context
{
    //: if (_isShutdown)
    if (_isShutdown)
        //: return;
        return;

    //: if (context == KVO_AVPlayerItem_state)
    if (context == kConst_memberName)
    {
        /* AVPlayerItem "status" property value observer. */
        //: AVPlayerItemStatus status = [[change objectForKey:NSKeyValueChangeNewKey] integerValue];
        AVPlayerItemStatus status = [[change objectForKey:NSKeyValueChangeNewKey] integerValue];
        //: switch (status)
        switch (status)
        {
            //: case AVPlayerItemStatusUnknown:
            case AVPlayerItemStatusUnknown:
            {
                /* Indicates that the status of the player is not yet known because
                 it has not tried to load new media resources for playback */
            }
                //: break;
                break;

            //: case AVPlayerItemStatusReadyToPlay:
            case AVPlayerItemStatusReadyToPlay:
            {
                /* Once the AVPlayerItem becomes ready to play, i.e.
                 [playerItem status] == AVPlayerItemStatusReadyToPlay,
                 its duration can be fetched from the item. */
                //: _dispatch_once(&_readyToPlayToken, ^{
                _dispatch_once(&kConst_crossSpaceText, ^{
                    //: [_view setPlayer:_player];
                    [_view setPlayer:_player];

                    //: self.isPreparedToPlay = YES;
                    self.isPreparedToPlay = YES;
                    //: AVPlayerItem *playerItem = (AVPlayerItem *)object;
                    AVPlayerItem *playerItem = (AVPlayerItem *)object;
                    //: NSTimeInterval duration = CMTimeGetSeconds(playerItem.duration);
                    NSTimeInterval duration = CMTimeGetSeconds(playerItem.duration);
                    //: if (duration <= 0)
                    if (duration <= 0)
                        //: self.duration = 0.0f;
                        self.duration = 0.0f;
                    //: else
                    else
                        //: self.duration = duration;
                        self.duration = duration;

                    //: [[NSNotificationCenter defaultCenter]
                    [[NSNotificationCenter defaultCenter]
                     //: postNotificationName:NTESAVMediaPlaybackIsPreparedToPlayDidChangeNotification
                     postNotificationName:kConst_tapVersionTitle
                     //: object:self];
                     object:self];

                    //: if (_shouldAutoplay)
                    if (_shouldAutoplay)
                        //: [_player play];
                        [_player play];
                //: });
                });
            }
                //: break;
                break;

            //: case AVPlayerItemStatusFailed:
            case AVPlayerItemStatusFailed:
            {
                //: AVPlayerItem *playerItem = (AVPlayerItem *)object;
                AVPlayerItem *playerItem = (AVPlayerItem *)object;
                //: [self assetFailedToPrepareForPlayback:playerItem.error];
                [self visualization:playerItem.error];
            }
                //: break;
                break;
        }

        //: [self didPlaybackStateChange];
        [self timeData];
    }
    //: else if (context == KVO_AVPlayerItem_loadedTimeRanges)
    else if (context == kConst_nameText)
    {
        //: AVPlayerItem *playerItem = (AVPlayerItem *)object;
        AVPlayerItem *playerItem = (AVPlayerItem *)object;
        //: if (_player != nil && playerItem.status == AVPlayerItemStatusReadyToPlay) {
        if (_player != nil && playerItem.status == AVPlayerItemStatusReadyToPlay) {
            //: NSArray *timeRangeArray = playerItem.loadedTimeRanges;
            NSArray *timeRangeArray = playerItem.loadedTimeRanges;
            //: CMTime currentTime = [_player currentTime];
            CMTime currentTime = [_player currentTime];

            //: BOOL foundRange = NO;
            BOOL foundRange = NO;
            //: CMTimeRange aTimeRange = {0};
            CMTimeRange aTimeRange = {0};

            //: if (timeRangeArray.count) {
            if (timeRangeArray.count) {
                //: aTimeRange = [[timeRangeArray objectAtIndex:0] CMTimeRangeValue];
                aTimeRange = [[timeRangeArray objectAtIndex:0] CMTimeRangeValue];
                //: if(CMTimeRangeContainsTime(aTimeRange, currentTime)) {
                if(CMTimeRangeContainsTime(aTimeRange, currentTime)) {
                    //: foundRange = YES;
                    foundRange = YES;
                }
            }

            //: if (foundRange) {
            if (foundRange) {
                //: CMTime maxTime = CMTimeRangeGetEnd(aTimeRange);
                CMTime maxTime = CMTimeRangeGetEnd(aTimeRange);
                //: NSTimeInterval playableDuration = CMTimeGetSeconds(maxTime);
                NSTimeInterval playableDuration = CMTimeGetSeconds(maxTime);
                //: if (playableDuration > 0) {
                if (playableDuration > 0) {
                    //: self.playableDuration = playableDuration;
                    self.playableDuration = playableDuration;
                    //: [self didPlayableDurationUpdate];
                    [self at];
                }
            }
        }
        //: else
        else
        {
            //: self.playableDuration = 0;
            self.playableDuration = 0;
        }
    }
    //: else if (context == KVO_AVPlayerItem_playbackLikelyToKeepUp) {
    else if (context == kConst_upTitle) {
        //: AVPlayerItem *playerItem = (AVPlayerItem *)object;
        AVPlayerItem *playerItem = (AVPlayerItem *)object;
        //: NSLog(@"KVO_AVPlayerItem_playbackLikelyToKeepUp: %@\n", playerItem.isPlaybackLikelyToKeepUp ? @"YES" : @"NO");
        //: [self fetchLoadStateFromItem:playerItem];
        [self bringHome:playerItem];
    }
    //: else if (context == KVO_AVPlayerItem_playbackBufferEmpty) {
    else if (context == kConst_buttonText) {
        //: AVPlayerItem *playerItem = (AVPlayerItem *)object;
        AVPlayerItem *playerItem = (AVPlayerItem *)object;
        //: BOOL isPlaybackBufferEmpty = playerItem.isPlaybackBufferEmpty;
        BOOL isPlaybackBufferEmpty = playerItem.isPlaybackBufferEmpty;
        //: NSLog(@"KVO_AVPlayerItem_playbackBufferEmpty: %@\n", isPlaybackBufferEmpty ? @"YES" : @"NO");
        //: if (isPlaybackBufferEmpty)
        if (isPlaybackBufferEmpty)
            //: _isPrerolling = YES;
            _isPrerolling = YES;
        //: [self fetchLoadStateFromItem:playerItem];
        [self bringHome:playerItem];
        //: [self didLoadStateChange];
        [self sizeChange];
    }
    //: else if (context == KVO_AVPlayerItem_playbackBufferFull) {
    else if (context == kConst_makeOfTitle) {
        //: AVPlayerItem *playerItem = (AVPlayerItem *)object;
        AVPlayerItem *playerItem = (AVPlayerItem *)object;
        //: NSLog(@"KVO_AVPlayerItem_playbackBufferFull: %@\n", playerItem.isPlaybackBufferFull ? @"YES" : @"NO");
        //: [self fetchLoadStateFromItem:playerItem];
        [self bringHome:playerItem];
        //: [self didLoadStateChange];
        [self sizeChange];
    }
    //: else if (context == KVO_AVPlayer_rate)
    else if (context == kConst_completeData)
    {
        //: if (_player != nil && !isFloatZero(_player.rate))
        if (_player != nil && !isFloatZero(_player.rate))
            //: _isPrerolling = NO;
            _isPrerolling = NO;
        /* AVPlayer "rate" property value observer. */
        //: [self didPlaybackStateChange];
        [self timeData];
        //: [self didLoadStateChange];
        [self sizeChange];
    }
    //: else if (context == KVO_AVPlayer_currentItem)
    else if (context == kConst_transferData)
    {
        //: _isPrerolling = NO;
        _isPrerolling = NO;
        /* AVPlayer "currentItem" property observer.
         Called when the AVPlayer replaceCurrentItemWithPlayerItem:
         replacement will/did occur. */
        //: AVPlayerItem *newPlayerItem = [change objectForKey:NSKeyValueChangeNewKey];
        AVPlayerItem *newPlayerItem = [change objectForKey:NSKeyValueChangeNewKey];

        /* Is the new player item null? */
        //: if (newPlayerItem == (id)[NSNull null])
        if (newPlayerItem == (id)[NSNull null])
        {
            //: NSError *error = [self createErrorWithCode:kEC_CurrentPlayerItemIsNil
            NSError *error = [self ting:kConst_backText
                                           //: description:@"current player item is nil"
                                           random:StringFromElectronicTextData(kStr_activityTitleCrowdedValue)
                                                //: reason:nil];
                                                option:nil];
            //: [self assetFailedToPrepareForPlayback:error];
            [self visualization:error];
        }
        //: else /|* Replacement of player currentItem has occurred *|/
        else /* Replacement of player currentItem has occurred */
        {
            //: [_view setPlayer:_player];
            [_view setPlayer:_player];

            //: [self didPlaybackStateChange];
            [self timeData];
            //: [self didLoadStateChange];
            [self sizeChange];
        }
    }
    //: else
    else
    {
        //: [super observeValueForKeyPath:path ofObject:object change:change context:context];
        [super observeValueForKeyPath:path ofObject:object change:change context:context];
    }
}


//: #pragma mark - Error
#pragma mark - Error
//: - (void)onError:(NSError *)error
- (void)sub:(NSError *)error
{
    //: _isError = YES;
    _isError = YES;

    //: __block NSError *blockError = error;
    __block NSError *blockError = error;

    //: NSLog(@"AVPlayer: onError\n");
    //: dispatch_async(dispatch_get_main_queue(), ^{
    dispatch_async(dispatch_get_main_queue(), ^{
        //: [self didPlaybackStateChange];
        [self timeData];
        //: [self didLoadStateChange];
        [self sizeChange];
        //: [self setScreenOn:NO];
        [self setInput:NO];

        //: if (blockError == nil) {
        if (blockError == nil) {
            //: blockError = [[NSError alloc] init];
            blockError = [[NSError alloc] init];
        }

        //: [[NSNotificationCenter defaultCenter]
        [[NSNotificationCenter defaultCenter]
         //: postNotificationName:NTESAVMoviePlayerPlaybackDidFinishNotification
         postNotificationName:kConst_applyTouchMakeText
         //: object:self
         object:self
         //: userInfo:@{
         userInfo:@{
                    //: NTESAVMoviePlayerPlaybackDidFinishReasonUserInfoKey: @(NTESAVMovieFinishReasonPlaybackError),
                    kConst_topTimeTitle: @(NTESAVMovieFinishReasonPlaybackError),
                    //: @"error": blockError
                    StringFromElectronicTextData(kStr_vasName): blockError
                    //: }];
                    }];
    //: });
    });
}

//: - (NSError*)createErrorWithCode: (NSInteger)code
- (NSError*)ting: (NSInteger)code
                    //: description: (NSString*)description
                    random: (NSString*)description
                         //: reason: (NSString*)reason
                         option: (NSString*)reason
{
    //: NSMutableDictionary *errorDict = [NSMutableDictionary dictionary];
    NSMutableDictionary *errorDict = [NSMutableDictionary dictionary];
    //: errorDict[NSLocalizedDescriptionKey] = description;
    errorDict[NSLocalizedDescriptionKey] = description;
    //: errorDict[NSLocalizedFailureReasonErrorKey] = reason;
    errorDict[NSLocalizedFailureReasonErrorKey] = reason;
    //: NSError *error = [NSError errorWithDomain:kErrorDomain
    NSError *error = [NSError errorWithDomain:kConst_listContent
                                         //: code:code
                                         code:code
                                     //: userInfo:errorDict];
                                     userInfo:errorDict];
    //: return error;
    return error;
}

//: @end
@end

Byte * ElectronicTextDataToCache(Byte *data) {
    int cur = data[0];
    int votingStock = data[1];
    Byte arm = data[2];
    int rageField = data[3];
    if (!cur) return data + rageField;
    for (int i = rageField; i < rageField + votingStock; i++) {
        int value = data[i] - arm;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[rageField + votingStock] = 0;
    return data + rageField;
}

NSString *StringFromElectronicTextData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)ElectronicTextDataToCache(data)];
}
