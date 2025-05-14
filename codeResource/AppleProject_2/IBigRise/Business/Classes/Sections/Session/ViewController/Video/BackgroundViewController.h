// __DEBUG__
// __CLOSE_PRINT__
//
//  BackgroundViewController.h
//  NIM
//
//  Created by chris on 15/4/12.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "ZZZAVMoivePlayerController.h"
#import "ChangeController.h"

//: @interface NTESVideoViewItem : NSObject
@interface MarginNameInput : NSObject

//: @property (nonatomic,copy) NSString *itemId;
@property (nonatomic,copy) NSString *itemId;//message Id

//: @property (nonatomic,copy) NSString *path;
@property (nonatomic,copy) NSString *path;

//: @property (nonatomic,copy) NSString *url;
@property (nonatomic,copy) NSString *url;

//: @property (nonatomic,strong) NIMSession *session;
@property (nonatomic,strong) NIMSession *session;

//: @end
@end

//: @interface ZZZVideoViewController : UIViewController
@interface BackgroundViewController : UIViewController

//: - (instancetype)initWithVideoViewItem:(NTESVideoViewItem *)item;
- (instancetype)initWithImage:(MarginNameInput *)item;

//: @property (nonatomic, readonly) ZZZAVMoivePlayerController *avPlayer;
@property (nonatomic, readonly) ChangeController *avPlayer;

//: @end
@end