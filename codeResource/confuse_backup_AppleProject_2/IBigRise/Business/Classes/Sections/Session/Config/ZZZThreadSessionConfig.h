//
//  ZZZThreadSessionConfig.h
//  NIM
//
//  Created by He on 2020/4/12.
//  Copyright © 2020 Netease. All rights reserved.
//

#import "ZZZSessionConfigBase.h"

@class NIMMessage;
NS_ASSUME_NONNULL_BEGIN

@interface ZZZThreadSessionConfig : ZZZSessionConfigBase

- (instancetype)initWithMessage:(NIMMessage *)message;

@end

@interface NTESThreadDataSourceProvider : NSObject <ZZZKitMessageProvider>

@property (nonatomic,strong) NIMMessage *threadMessage;

@end

NS_ASSUME_NONNULL_END
