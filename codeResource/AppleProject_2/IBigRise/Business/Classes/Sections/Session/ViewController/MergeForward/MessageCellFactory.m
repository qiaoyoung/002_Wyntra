
#import <Foundation/Foundation.h>

NSString *StringFromScanObjectData(Byte *data);        


//: _ntes
Byte kStr_successFieldData[] = {48, 5, 58, 6, 192, 215, 37, 52, 58, 43, 57, 153};


//: time_ntes
Byte kStr_inventAccountSixValue[] = {36, 9, 40, 14, 161, 137, 110, 22, 122, 77, 60, 78, 64, 70, 76, 65, 69, 61, 55, 70, 76, 61, 75, 111};

// __DEBUG__
// __CLOSE_PRINT__
//
//  MessageCellFactory.m
//  NIM
//
//  Created by zhanggenning on 2019/10/18.
//  Copyright © 2019 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESMessageCellFactory.h"
#import "MessageCellFactory.h"

//: @implementation NTESMessageCellFactory
@implementation MessageCellFactory

//: - (NTESMergeMessageCell *)ntesCellInTable:(UITableView*)tableView
- (MergeView *)messageDate:(UITableView*)tableView
                         //: forMessageMode:(ZZZMessageModel *)model {
                         message:(CollectionModel *)model {
    //: id<ZZZCellLayoutConfig> layoutConfig = [[AppleProjectKit sharedKit] layoutConfig];
    id<SumConfig> layoutConfig = [[On along] layoutConfig];
    //: NSString *identity = [[layoutConfig cellContent:model] stringByAppendingString:@"_ntes"];
    NSString *identity = [[layoutConfig image:model] stringByAppendingString:StringFromScanObjectData(kStr_successFieldData)];
    //: ZZZMessageCell *cell = [tableView dequeueReusableCellWithIdentifier:identity];
    CypherMediaCompartmentViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identity];
    //: if (!cell) {
    if (!cell) {
        //: NSString *clz = @"NTESMergeMessageCell";
        NSString *clz = @"MergeView";
        //: [tableView registerClass:NSClassFromString(clz) forCellReuseIdentifier:identity];
        [tableView registerClass:NSClassFromString(clz) forCellReuseIdentifier:identity];
        //: cell = [tableView dequeueReusableCellWithIdentifier:identity];
        cell = [tableView dequeueReusableCellWithIdentifier:identity];
    }
    //: return (NTESMergeMessageCell *)cell;
    return (MergeView *)cell;
}

//: - (NTESTimestampCell *)ntesCellInTable:(UITableView *)tableView
- (MaxTimestampCell *)quick:(UITableView *)tableView
                            //: forTimeModel:(ZZZTimestampModel *)model {
                            cellBackground:(GreenTingLanguage *)model {
    //: NSString *identity = @"time_ntes";
    NSString *identity = StringFromScanObjectData(kStr_inventAccountSixValue);
    //: NTESTimestampCell *cell = [tableView dequeueReusableCellWithIdentifier:identity];
    MaxTimestampCell *cell = [tableView dequeueReusableCellWithIdentifier:identity];
    //: if (!cell) {
    if (!cell) {
        //: NSString *clz = @"NTESTimestampCell";
        NSString *clz = @"MaxTimestampCell";
        //: [tableView registerClass:NSClassFromString(clz) forCellReuseIdentifier:identity];
        [tableView registerClass:NSClassFromString(clz) forCellReuseIdentifier:identity];
        //: cell = [tableView dequeueReusableCellWithIdentifier:identity];
        cell = [tableView dequeueReusableCellWithIdentifier:identity];
    }
    //: [cell refreshData:model];
    [cell beginValueData:model];
    //: return (NTESTimestampCell *)cell;
    return (MaxTimestampCell *)cell;
}

//: @end
@end

Byte * ScanObjectDataToCache(Byte *data) {
    int curRed = data[0];
    int shortfall = data[1];
    Byte conscience = data[2];
    int quantityentionSuccess = data[3];
    if (!curRed) return data + quantityentionSuccess;
    for (int i = quantityentionSuccess; i < quantityentionSuccess + shortfall; i++) {
        int value = data[i] + conscience;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[quantityentionSuccess + shortfall] = 0;
    return data + quantityentionSuccess;
}

NSString *StringFromScanObjectData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)ScanObjectDataToCache(data)];
}
