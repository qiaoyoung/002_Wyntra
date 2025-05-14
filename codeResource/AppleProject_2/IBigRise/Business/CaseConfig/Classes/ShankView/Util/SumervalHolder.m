// __DEBUG__
// __CLOSE_PRINT__
//
//  SumervalHolder.m
//  NIM
//
//  Created by amao on 5/16/14.
//  Copyright (c) 2014 amao. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZZZKitTimerHolder.h"
#import "SumervalHolder.h"

//: @interface ZZZKitTimerHolder ()
@interface SumervalHolder ()
{
    //: NSTimer *_timer;
    NSTimer *_timer;
    //: BOOL _repeats;
    BOOL _repeats;
}
//: - (void)onTimer: (NSTimer *)timer;
- (void)recentLength: (NSTimer *)timer;
//: @end
@end

//: @implementation ZZZKitTimerHolder
@implementation SumervalHolder

//: - (void)dealloc
- (void)dealloc
{
    //: [self stopTimer];
    [self providerDoing];
}

//: - (void)startTimer: (NSTimeInterval)seconds
- (void)window: (NSTimeInterval)seconds
          //: delegate: (id<ZZZKitTimerHolderDelegate>)delegate
          smallFryOpen: (id<TitleModel>)delegate
           //: repeats: (BOOL)repeats
           blue: (BOOL)repeats
{
    //: _timerDelegate = delegate;
    _timerDelegate = delegate;
    //: _repeats = repeats;
    _repeats = repeats;
    //: if (_timer)
    if (_timer)
    {
        //: [_timer invalidate];
        [_timer invalidate];
        //: _timer = nil;
        _timer = nil;
    }
    //: _timer = [NSTimer scheduledTimerWithTimeInterval:seconds
    _timer = [NSTimer scheduledTimerWithTimeInterval:seconds
                                              //: target:self
                                              target:self
                                            //: selector:@selector(onTimer:)
                                            selector:@selector(recentLength:)
                                            //: userInfo:nil
                                            userInfo:nil
                                             //: repeats:repeats];
                                             repeats:repeats];
}

//: - (void)stopTimer
- (void)providerDoing
{
    //: [_timer invalidate];
    [_timer invalidate];
    //: _timer = nil;
    _timer = nil;
    //: _timerDelegate = nil;
    _timerDelegate = nil;
}

//: - (void)onTimer: (NSTimer *)timer
- (void)recentLength: (NSTimer *)timer
{
    //: if (!_repeats)
    if (!_repeats)
    {
        //: _timer = nil;
        _timer = nil;
    }
    //: if (_timerDelegate && [_timerDelegate respondsToSelector:@selector(onNIMKitTimerFired:)])
    if (_timerDelegate && [_timerDelegate respondsToSelector:@selector(lengthing:)])
    {
        //: [_timerDelegate onNIMKitTimerFired:self];
        [_timerDelegate lengthing:self];
    }
}

//: @end
@end