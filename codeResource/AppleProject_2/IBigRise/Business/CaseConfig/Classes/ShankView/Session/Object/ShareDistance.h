// __DEBUG__
// __CLOSE_PRINT__
//
//  NIMSessionTableData.h
// On
//
//  Created by chris on 2016/11/7.
//  Copyright © 2016年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import "DataSessionConfigurateProtocol.h"
#import "DataSessionConfigurateProtocol.h"
//: #import "DataSessionPrivateProtocol.h"
#import "DataSessionPrivateProtocol.h"
//: #import "ZZZSessionConfig.h"
#import "PastConfig.h"

//: @interface ZZZSessionDataSourceImpl : NSObject<NIMSessionDataSource>
@interface ShareDistance : NSObject<PointSourceTing>

//: - (instancetype)initWithSession:(NIMSession *)session
- (instancetype)initWithCord:(NIMSession *)session
                         //: config:(id<ZZZSessionConfig>)sessionConfig;
                         configIndex:(id<PastConfig>)sessionConfig;

//: @end
@end
