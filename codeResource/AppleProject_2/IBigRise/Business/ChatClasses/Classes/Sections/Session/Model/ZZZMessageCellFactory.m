//
//  ZZZMessageCellMaker.m
// AppleProjectKit
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

#import "ZZZMessageCellFactory.h"
#import "ZZZMessageModel.h"
#import "ZZZTimestampModel.h"
#import "ZZZSessionAudioContentView.h"
#import "AppleProjectKit.h"
#import "ZZZKitAudioCenter.h"
#import "UIViewNimKit.h"

@interface ZZZMessageCellFactory()

@end

@implementation ZZZMessageCellFactory

- (instancetype)init
{
    self = [super init];
    if (self) {
    }
    return self;
}

- (void)dealloc
{
    
}

- (ZZZMessageCell *)cellInTable:(UITableView*)tableView
                 forMessageMode:(ZZZMessageModel *)model
{
    id<ZZZCellLayoutConfig> layoutConfig = [[AppleProjectKit sharedKit] layoutConfig];
    NSString *identity = [layoutConfig cellContent:model];
    ZZZMessageCell *cell = [tableView dequeueReusableCellWithIdentifier:identity];
    if (!cell) {
        NSString *clz = @"ZZZAdvancedMessageCell";
        [tableView registerClass:NSClassFromString(clz) forCellReuseIdentifier:identity];
        cell = [tableView dequeueReusableCellWithIdentifier:identity];
    }    
    return (ZZZMessageCell *)cell;
}

- (ZZZSessionTimestampCell *)cellInTable:(UITableView *)tableView
                            forTimeModel:(ZZZTimestampModel *)model
{
    NSString *identity = @"time";
    ZZZSessionTimestampCell *cell = [tableView dequeueReusableCellWithIdentifier:identity];
    if (!cell) {
        NSString *clz = @"ZZZSessionTimestampCell";
        [tableView registerClass:NSClassFromString(clz) forCellReuseIdentifier:identity];
        cell = [tableView dequeueReusableCellWithIdentifier:identity];
    }
    [cell refreshData:model];
    return (ZZZSessionTimestampCell *)cell;
}

@end
