
#import <Foundation/Foundation.h>
typedef struct {
    Byte thereEaster;
    Byte *fishing;
    unsigned int scurrying;
    bool haulName;
} PowerfulData;

NSString *StringFromPowerfulData(PowerfulData *data);


//: detailTitle
PowerfulData kStr_landData = (PowerfulData){22, (Byte []){114, 115, 98, 119, 127, 122, 66, 127, 98, 122, 115, 56}, 11, false};


//: row
PowerfulData kStr_menuReputationName = (PowerfulData){231, (Byte []){149, 136, 144, 195}, 3, false};


//: extraInfo
PowerfulData kStr_maxValue = (PowerfulData){236, (Byte []){137, 148, 152, 158, 141, 165, 130, 138, 131, 110}, 9, false};


//: disable
PowerfulData kStr_thereIdealValue = (PowerfulData){83, (Byte []){55, 58, 32, 50, 49, 63, 54, 148}, 7, false};


//: footerTitle
PowerfulData kStr_cruiseContent = (PowerfulData){204, (Byte []){170, 163, 163, 184, 169, 190, 152, 165, 184, 160, 169, 37}, 11, false};


//: headerTitle
PowerfulData kStr_impulseContent = (PowerfulData){177, (Byte []){217, 212, 208, 213, 212, 195, 229, 216, 197, 221, 212, 46}, 11, false};


//: rowHeight
PowerfulData kStr_combineLayerData = (PowerfulData){247, (Byte []){133, 152, 128, 191, 146, 158, 144, 159, 131, 196}, 9, false};


//: forbidSelect
PowerfulData kStr_physicallyContent = (PowerfulData){215, (Byte []){177, 184, 165, 181, 190, 179, 132, 178, 187, 178, 180, 163, 95}, 12, false};


//: leftEdge
PowerfulData kStr_untilBankingData = (PowerfulData){59, (Byte []){87, 94, 93, 79, 126, 95, 92, 94, 175}, 8, false};


//: disableUserInteraction
PowerfulData kStr_rebuildCommentName = (PowerfulData){160, (Byte []){196, 201, 211, 193, 194, 204, 197, 245, 211, 197, 210, 233, 206, 212, 197, 210, 193, 195, 212, 201, 207, 206, 85}, 22, false};


//: language
PowerfulData kStr_nonprofitTitle = (PowerfulData){194, (Byte []){174, 163, 172, 165, 183, 163, 165, 167, 160}, 8, false};


//: footerHeight
PowerfulData kStr_performTitle = (PowerfulData){142, (Byte []){232, 225, 225, 250, 235, 252, 198, 235, 231, 233, 230, 250, 191}, 12, false};


//: accessory
PowerfulData kStr_commendYeName = (PowerfulData){118, (Byte []){23, 21, 21, 19, 5, 5, 25, 4, 15, 252}, 9, false};


//: title
PowerfulData kStr_viaText = (PowerfulData){35, (Byte []){87, 74, 87, 79, 70, 158}, 5, false};


//: headerHeight
PowerfulData kStr_eighthTitle = (PowerfulData){60, (Byte []){84, 89, 93, 88, 89, 78, 116, 89, 85, 91, 84, 72, 170}, 12, false};


//: cellClass
PowerfulData kStr_oughtCarefulLeftTitle = (PowerfulData){67, (Byte []){32, 38, 47, 47, 0, 47, 34, 48, 48, 195}, 9, false};


//: action
PowerfulData kStr_reminderTitle = (PowerfulData){140, (Byte []){237, 239, 248, 229, 227, 226, 154}, 6, false};

// __DEBUG__
// __CLOSE_PRINT__
//
//  DataCommonTableData.m
//  NIM
//
//  Created by chris on 15/6/26.
//  Copyright © 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "DataCommonTableData.h"
#import "DataCommonTableData.h"

//: @implementation NIMCommonTableSection
@implementation CellItem

//: - (instancetype) initWithDict:(NSDictionary *)dict{
- (instancetype) initWithContainer:(NSDictionary *)dict{
    //: if ([dict[@"disable"] boolValue]) {
    if ([dict[StringFromPowerfulData(&kStr_thereIdealValue)] boolValue]) {
        //: return nil;
        return nil;
    }
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: _headerTitle = dict[@"headerTitle"];
        _headerTitle = dict[StringFromPowerfulData(&kStr_impulseContent)];
        //: _footerTitle = dict[@"footerTitle"];
        _footerTitle = dict[StringFromPowerfulData(&kStr_cruiseContent)];
        //: _uiFooterHeight = [dict[@"footerHeight"] floatValue];
        _uiFooterHeight = [dict[StringFromPowerfulData(&kStr_performTitle)] floatValue];
        //: _uiHeaderHeight = [dict[@"headerHeight"] floatValue];
        _uiHeaderHeight = [dict[StringFromPowerfulData(&kStr_eighthTitle)] floatValue];
        //: _uiHeaderHeight = _uiHeaderHeight ? _uiHeaderHeight : 44.f;
        _uiHeaderHeight = _uiHeaderHeight ? _uiHeaderHeight : 44.f;
        //: _uiFooterHeight = _uiFooterHeight ? _uiFooterHeight : 44.f;
        _uiFooterHeight = _uiFooterHeight ? _uiFooterHeight : 44.f;
        //: _rows = [NIMCommonTableRow rowsWithData:dict[@"row"]];
        _rows = [TextTap value:dict[StringFromPowerfulData(&kStr_menuReputationName)]];
    }
    //: return self;
    return self;
}

//: + (NSArray *)sectionsWithData:(NSArray *)data{
+ (NSArray *)detectData:(NSArray *)data{
    //: NSMutableArray *array = [[NSMutableArray alloc] initWithCapacity:data.count];
    NSMutableArray *array = [[NSMutableArray alloc] initWithCapacity:data.count];
    //: for (NSDictionary *dict in data) {
    for (NSDictionary *dict in data) {
        //: if ([dict isKindOfClass:[NSDictionary class]]) {
        if ([dict isKindOfClass:[NSDictionary class]]) {
            //: NIMCommonTableSection * section = [[NIMCommonTableSection alloc] initWithDict:dict];
            CellItem * section = [[CellItem alloc] initWithContainer:dict];
            //: if (section) {
            if (section) {
                //: [array addObject:section];
                [array addObject:section];
            }
        }
    }
    //: return array;
    return array;
}


//: @end
@end



//: @implementation NIMCommonTableRow
@implementation TextTap

//: - (instancetype) initWithDict:(NSDictionary *)dict{
- (instancetype) initWithTag:(NSDictionary *)dict{
    //: if ([dict[@"disable"] boolValue]) {
    if ([dict[StringFromPowerfulData(&kStr_thereIdealValue)] boolValue]) {
        //: return nil;
        return nil;
    }
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: _title = dict[@"title"];
        _title = dict[StringFromPowerfulData(&kStr_viaText)];
        //: _detailTitle = dict[@"detailTitle"];
        _detailTitle = dict[StringFromPowerfulData(&kStr_landData)];
        //: _cellClassName = dict[@"cellClass"];
        _cellClassName = dict[StringFromPowerfulData(&kStr_oughtCarefulLeftTitle)];
        //: _cellActionName = dict[@"action"];
        _cellActionName = dict[StringFromPowerfulData(&kStr_reminderTitle)];
        //: _uiRowHeight = dict[@"rowHeight"] ? [dict[@"rowHeight"] floatValue] : 50.f;
        _uiRowHeight = dict[StringFromPowerfulData(&kStr_combineLayerData)] ? [dict[StringFromPowerfulData(&kStr_combineLayerData)] floatValue] : 50.f;
        //: _extraInfo = dict[@"extraInfo"];
        _extraInfo = dict[StringFromPowerfulData(&kStr_maxValue)];
        //: _sepLeftEdge = [dict[@"leftEdge"] floatValue];
        _sepLeftEdge = [dict[StringFromPowerfulData(&kStr_untilBankingData)] floatValue];
        //: _showAccessory = [dict[@"accessory"] boolValue];
        _showAccessory = [dict[StringFromPowerfulData(&kStr_commendYeName)] boolValue];
        //: _forbidSelect = [dict[@"forbidSelect"] boolValue];
        _forbidSelect = [dict[StringFromPowerfulData(&kStr_physicallyContent)] boolValue];
        //: _userInteractionDisable = [dict[@"disableUserInteraction"] boolValue];
        _userInteractionDisable = [dict[StringFromPowerfulData(&kStr_rebuildCommentName)] boolValue];
        //: _language = dict[@"language"];
        _language = dict[StringFromPowerfulData(&kStr_nonprofitTitle)];
    }
    //: return self;
    return self;
}

//: + (NSArray *)rowsWithData:(NSArray *)data{
+ (NSArray *)value:(NSArray *)data{
    //: NSMutableArray *array = [[NSMutableArray alloc] initWithCapacity:data.count];
    NSMutableArray *array = [[NSMutableArray alloc] initWithCapacity:data.count];
    //: for (NSDictionary *dict in data) {
    for (NSDictionary *dict in data) {
        //: if ([dict isKindOfClass:[NSDictionary class]]) {
        if ([dict isKindOfClass:[NSDictionary class]]) {
            //: NIMCommonTableRow * row = [[NIMCommonTableRow alloc] initWithDict:dict];
            TextTap * row = [[TextTap alloc] initWithTag:dict];
            //: if (row) {
            if (row) {
                //: [array addObject:row];
                [array addObject:row];
            }
        }
    }
    //: return array;
    return array;
}


//: @end
@end

Byte *PowerfulDataToByte(PowerfulData *data) {
    if (data->haulName) return data->fishing;
    for (int i = 0; i < data->scurrying; i++) {
        data->fishing[i] ^= data->thereEaster;
    }
    data->fishing[data->scurrying] = 0;
    data->haulName = true;
    return data->fishing;
}

NSString *StringFromPowerfulData(PowerfulData *data) {
    return [NSString stringWithUTF8String:(char *)PowerfulDataToByte(data)];
}
