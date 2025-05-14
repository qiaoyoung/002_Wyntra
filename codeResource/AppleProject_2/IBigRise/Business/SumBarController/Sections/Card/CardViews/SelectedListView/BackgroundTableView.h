// __DEBUG__
// __CLOSE_PRINT__
//
//  BackgroundTableView.h
//  LEEAlertDemo
//
//  Created by 李响 on 2017/6/4.
//  Copyright © 2017年 lee. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "SelectedListModel.h"
#import "CellSuggest.h"

//: @interface SelectedListView : UITableView
@interface BackgroundTableView : UITableView

//: @property (nonatomic , strong ) NSArray<SelectedListModel *>* array;
@property (nonatomic , strong ) NSArray<CellSuggest *>* array;

/**
 已选中Block
 */
//: @property (nonatomic , copy ) void (^selectedBlock)(NSArray <SelectedListModel *>*);
@property (nonatomic , copy ) void (^selectedBlock)(NSArray <CellSuggest *>*);

/**
 选择改变Block (多选情况 当选择改变时调用)
 */
//: @property (nonatomic , copy ) void (^changedBlock)(NSArray <SelectedListModel *>*);
@property (nonatomic , copy ) void (^changedBlock)(NSArray <CellSuggest *>*);

/**
 是否单选
 */
//: @property (nonatomic , assign ) BOOL isSingle;
@property (nonatomic , assign ) BOOL isSingle;

/**
 完成选择 (多选会调用selectedBlock回调所选结果)
 */
//: - (void)finish;
- (void)item;

//: @end
@end