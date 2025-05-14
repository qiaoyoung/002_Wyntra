//
//  NIMSessionLayout.h
// AppleProjectKit
//
//  Created by chris on 2016/11/8.
//  Copyright © 2016年 NetEase. All rights reserved.
//

#import "ZZZSessionConfigurator.h"
#import "ZZZSessionPrivateProtocol.h"

@interface ZZZSessionLayoutImpl : NSObject<NIMSessionLayout>

@property (nonatomic,strong)  UITableView *tableView;

@property (nonatomic,strong)  ZZZInputView *inputView;

- (instancetype)initWithSession:(NIMSession *)session
                         config:(id<ZZZSessionConfig>)sessionConfig;

@end
