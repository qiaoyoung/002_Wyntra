//
//  ZZZVideoViewController.h
//  NIM
//
//  Created by chris on 15/4/12.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ZZZAVMoivePlayerController.h"

@interface NTESVideoViewItem : NSObject

@property (nonatomic,copy) NSString *itemId;//message Id

@property (nonatomic,copy) NSString *path;

@property (nonatomic,copy) NSString *url;

@property (nonatomic,strong) NIMSession *session;

@end

@interface ZZZVideoViewController : UIViewController

- (instancetype)initWithVideoViewItem:(NTESVideoViewItem *)item;

@property (nonatomic, readonly) ZZZAVMoivePlayerController *avPlayer;

@end
