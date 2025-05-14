//
//  ZZZInputAudioRecordIndicatorView.h
// AppleProjectKit
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

#import "ZZZInputView.h"

@interface ZZZInputAudioRecordIndicatorView : UIView

@property (nonatomic, assign) NIMAudioRecordPhase phase;

@property (nonatomic, assign) NSTimeInterval recordTime;

@end
