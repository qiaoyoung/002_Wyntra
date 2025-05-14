//
//  ZOMNForwardViewController.h
//  Lemon
//
//  Created by Yan Wang on 2025/2/8.
//  Copyright © 2025 Lemon. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ZOMNForwardViewController : UIViewController

@property (nonatomic,strong) NIMMessage *message;
@property (nonatomic,strong) NIMSession *session;

@end

NS_ASSUME_NONNULL_END
