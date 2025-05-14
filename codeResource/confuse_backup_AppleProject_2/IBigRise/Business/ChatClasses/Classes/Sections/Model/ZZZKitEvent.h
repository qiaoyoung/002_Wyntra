//
//  ZZZKitEvent.h
// AppleProjectKit
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <NIMSDK/NIMSDK.h>
#import "ZZZMessageModel.h"

@interface ZZZKitEvent : NSObject

@property (nonatomic,copy) NSString *eventName;

@property (nonatomic,strong) ZZZMessageModel *messageModel;

@property (nonatomic,strong) id data;

@end




extern NSString *const ZZZKitEventNameTapContent;
extern NSString *const ZZZKitEventNameTapLabelLink;
extern NSString *const ZZZKitEventNameTapAudio;

extern NSString *const ZZZKitEventNameTapRepliedContent;

