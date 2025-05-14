// __DEBUG__
// __CLOSE_PRINT__
//
//  CellSuggest.m
//  LEEAlertDemo
//
//  Created by 李响 on 2017/6/4.
//  Copyright © 2017年 lee. All rights reserved.
//

// __M_A_C_R_O__
//: #import "SelectedListModel.h"
#import "CellSuggest.h"

//: @implementation SelectedListModel
@implementation CellSuggest

//: - (instancetype)initWithSid:(NSInteger)sid
- (instancetype)initWithBookSession:(NSInteger)sid
                      //: Title:(NSString *)title{
                      thoughtImage:(NSString *)title{

    //: return [[SelectedListModel alloc] initWithSid:sid Title:title Context:nil];
    return [[CellSuggest alloc] initWithVerticalShowMethod:sid arrayScreen:title contentTable:nil];
}

//: - (instancetype)initWithSid:(NSInteger)sid
- (instancetype)initWithVerticalShowMethod:(NSInteger)sid
                      //: Title:(NSString *)title
                      arrayScreen:(NSString *)title
                    //: Context:(id)context{
                    contentTable:(id)context{

    //: self = [super init];
    self = [super init];

    //: if (self) {
    if (self) {

        //: _sid = sid;
        _sid = sid;

        //: _title = title;
        _title = title;

        //: _context = context;
        _context = context;
    }

    //: return self;
    return self;
}

//: @end
@end