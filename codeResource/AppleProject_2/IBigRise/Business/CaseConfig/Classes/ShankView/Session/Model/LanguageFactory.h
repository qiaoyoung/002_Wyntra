// __DEBUG__
// __CLOSE_PRINT__
//
//  ZZZMessageCellMaker.h
// On
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import "ZZZMessageCell.h"
#import "CypherMediaCompartmentViewCell.h"
//: #import "ZZZSessionTimestampCell.h"
#import "InputView.h"
//: #import "DataCellConfig.h"
#import "DataCellConfig.h"
//: #import "DataMessageCellProtocol.h"
#import "DataMessageCellProtocol.h"

//: @interface ZZZMessageCellFactory : NSObject
@interface LanguageFactory : NSObject

//: - (ZZZMessageCell *)cellInTable:(UITableView*)tableView
- (CypherMediaCompartmentViewCell *)imageMode:(UITableView*)tableView
                 //: forMessageMode:(ZZZMessageModel *)model;
                 cell:(CollectionModel *)model;

//: - (ZZZSessionTimestampCell *)cellInTable:(UITableView *)tableView
- (InputView *)someSearchedDomain:(UITableView *)tableView
                            //: forTimeModel:(ZZZTimestampModel *)model;
                            dismissModel:(GreenTingLanguage *)model;

//: @end
@end
