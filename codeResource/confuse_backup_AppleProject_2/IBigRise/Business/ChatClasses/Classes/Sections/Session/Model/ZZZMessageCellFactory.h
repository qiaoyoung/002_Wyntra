//
//  ZZZMessageCellMaker.h
// AppleProjectKit
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ZZZMessageCell.h"
#import "ZZZSessionTimestampCell.h"
#import "ZZZCellConfig.h"
#import "ZZZMessageCellProtocol.h"

@interface ZZZMessageCellFactory : NSObject

- (ZZZMessageCell *)cellInTable:(UITableView*)tableView
                 forMessageMode:(ZZZMessageModel *)model;

- (ZZZSessionTimestampCell *)cellInTable:(UITableView *)tableView
                            forTimeModel:(ZZZTimestampModel *)model;

@end
