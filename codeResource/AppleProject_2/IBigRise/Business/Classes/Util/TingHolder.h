// __DEBUG__
// __CLOSE_PRINT__
//
//  TingHolder.h
//  NIM
//
//  Created by Netease on 15/8/27.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @class NTESCADisplayLinkHolder;
@class TingHolder;

//: @protocol NTESCADisplayLinkHolderDelegate <NSObject>
@protocol ChangeDelegateTitle <NSObject>

//: - (void)onDisplayLinkFire:(NTESCADisplayLinkHolder *)holder
- (void)belowManager:(TingHolder *)holder
                 //: duration:(NSTimeInterval)duration
                 outputLink:(NSTimeInterval)duration
              //: displayLink:(CADisplayLink *)displayLink;
              name_strong:(CADisplayLink *)displayLink;

//: @end
@end


//: @interface NTESCADisplayLinkHolder : NSObject
@interface TingHolder : NSObject

//: @property (nonatomic,weak ) id<NTESCADisplayLinkHolderDelegate> delegate;
@property (nonatomic,weak ) id<ChangeDelegateTitle> delegate;
//: @property (nonatomic,assign) NSInteger frameInterval;
@property (nonatomic,assign) NSInteger frameInterval;

//: - (void)startCADisplayLinkWithDelegate: (id<NTESCADisplayLinkHolderDelegate>)delegate;
- (void)digitizer: (id<ChangeDelegateTitle>)delegate;

//: - (void)stop;
- (void)sinceCell;

//: @end
@end