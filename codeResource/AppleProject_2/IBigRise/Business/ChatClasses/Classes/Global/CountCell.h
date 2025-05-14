// __DEBUG__
// __CLOSE_PRINT__
//
//  CountCell.h
//  NIM
//
//  Created by chris on 15/6/29.
//  Copyright (c) 2015年 Netease. All rights reserved.
//
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

// __M_A_C_R_O__

//: @class NIMCommonTableRow;
@class TextTap;

//: @protocol ZZZCommonTableViewCell <NSObject>
@protocol CountCell <NSObject>

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier;
- (instancetype)initWithFitRefer:(UITableViewCellStyle)style place:(NSString *)reuseIdentifier;

//: @optional
@optional
//: - (void)refreshData:(NIMCommonTableRow *)rowData tableView:(UITableView *)tableView;
- (void)input:(TextTap *)rowData metadata:(UITableView *)tableView;

//: @end
@end