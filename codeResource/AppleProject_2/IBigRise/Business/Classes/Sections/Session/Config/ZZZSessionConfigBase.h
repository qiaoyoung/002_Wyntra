//
//  ZZZSessionConfig.h
//  NIM
//
//  Created by amao on 8/11/15.
//  Copyright (c) 2015 Netease. All rights reserved.
//

#import <Foundation/Foundation.h>

@class ZZZSessionConfig;
@interface ZZZSessionConfigBase : NSObject<ZZZSessionConfig>
@property (nonatomic,strong)    NIMSession *session;

@end
