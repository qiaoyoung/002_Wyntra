//
//  NTESMessageCellFactory.h
//  NIM
//
//  Created by zhanggenning on 2019/10/18.
//  Copyright © 2019 Netease. All rights reserved.
//

#import "ZZZMessageCellFactory.h"
#import "NTESTimestampCell.h"
#import "NTESMergeMessageCell.h"

NS_ASSUME_NONNULL_BEGIN

@interface NTESMessageCellFactory : ZZZMessageCellFactory

- (NTESMergeMessageCell *)ntesCellInTable:(UITableView*)tableView
                           forMessageMode:(ZZZMessageModel *)model;

- (NTESTimestampCell *)ntesCellInTable:(UITableView *)tableView
                          forTimeModel:(ZZZTimestampModel *)model;

@end

NS_ASSUME_NONNULL_END
