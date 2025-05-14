// __DEBUG__
// __CLOSE_PRINT__
//
//  MessageCellFactory.h
//  NIM
//
//  Created by zhanggenning on 2019/10/18.
//  Copyright © 2019 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZZZMessageCellFactory.h"
#import "LanguageFactory.h"
//: #import "NTESTimestampCell.h"
#import "MaxTimestampCell.h"
//: #import "NTESMergeMessageCell.h"
#import "MergeView.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface NTESMessageCellFactory : ZZZMessageCellFactory
@interface MessageCellFactory : LanguageFactory

//: - (NTESMergeMessageCell *)ntesCellInTable:(UITableView*)tableView
- (MergeView *)messageDate:(UITableView*)tableView
                           //: forMessageMode:(ZZZMessageModel *)model;
                           message:(CollectionModel *)model;

//: - (NTESTimestampCell *)ntesCellInTable:(UITableView *)tableView
- (MaxTimestampCell *)quick:(UITableView *)tableView
                          //: forTimeModel:(ZZZTimestampModel *)model;
                          cellBackground:(GreenTingLanguage *)model;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END