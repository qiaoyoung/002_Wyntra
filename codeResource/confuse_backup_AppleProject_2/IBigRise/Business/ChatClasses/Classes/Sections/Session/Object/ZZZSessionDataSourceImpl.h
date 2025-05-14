//
//  NIMSessionTableData.h
// AppleProjectKit
//
//  Created by chris on 2016/11/7.
//  Copyright © 2016年 NetEase. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ZZZSessionConfigurateProtocol.h"
#import "ZZZSessionPrivateProtocol.h"
#import "ZZZSessionConfig.h"

@interface ZZZSessionDataSourceImpl : NSObject<NIMSessionDataSource>

- (instancetype)initWithSession:(NIMSession *)session
                         config:(id<ZZZSessionConfig>)sessionConfig;

@end
