
#import <Foundation/Foundation.h>
typedef struct {
    Byte sleigh;
    Byte *proceed;
    unsigned int goDownProgress;
    bool hardAdditional;
	int porter;
} HellRoosterData;

NSString *StringFromHellRoosterData(HellRoosterData *data);


//: #A148FF
HellRoosterData kStr_inventConcernedValue = (HellRoosterData){223, (Byte []){252, 158, 238, 235, 231, 153, 153, 183}, 7, false, 204};

// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESSettingPushNotifySwitcherCell.m
//  NIM
//
//  Created by chris on 15/6/26.
//  Copyright © 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZZZKitSwitcherCell.h"
#import "LabelView.h"
//: #import "DataCommonTableData.h"
#import "DataCommonTableData.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"

//: @interface ZZZKitSwitcherCell ()
@interface LabelView ()

//: @end
@end

//: @implementation ZZZKitSwitcherCell
@implementation LabelView

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {
        //: _switcher = [[UISwitch alloc] initWithFrame:CGRectZero];
        _switcher = [[UISwitch alloc] initWithFrame:CGRectZero];
        //: _switcher.onTintColor = [UIColor colorWithHexString:@"#A148FF"];
        _switcher.onTintColor = [UIColor box:StringFromHellRoosterData(&kStr_inventConcernedValue)];
        //: [self.contentView addSubview:_switcher];
        [self.contentView addSubview:_switcher];
    }
    //: return self;
    return self;
}


//: - (void)refreshData:(NIMCommonTableRow *)rowData tableView:(UITableView *)tableView{
- (void)input:(TextTap *)rowData metadata:(UITableView *)tableView{
    //: self.textLabel.text = rowData.title;
    self.textLabel.text = rowData.title;
    //: self.detailTextLabel.text = rowData.detailTitle;
    self.detailTextLabel.text = rowData.detailTitle;
    //: NSString *actionName = rowData.cellActionName;
    NSString *actionName = rowData.cellActionName;
    //: [self.switcher setOn:[rowData.extraInfo boolValue] animated:NO];
    [self.switcher setOn:[rowData.extraInfo boolValue] animated:NO];
    //: [self.switcher removeTarget:self.nim_viewController action:NULL forControlEvents:UIControlEventValueChanged];
    [self.switcher removeTarget:self.towardSend action:NULL forControlEvents:UIControlEventValueChanged];
    //: if (actionName.length) {
    if (actionName.length) {
        //: SEL sel = NSSelectorFromString(actionName);
        SEL sel = NSSelectorFromString(actionName);
        //: [self.switcher addTarget:tableView.nim_viewController action:sel forControlEvents:UIControlEventValueChanged];
        [self.switcher addTarget:tableView.towardSend action:sel forControlEvents:UIControlEventValueChanged];
    }
}




//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: self.switcher.nim_right = self.nim_width - 15;
    self.switcher.nim_right = self.nim_width - 15;
    //: self.switcher.nim_centerY = self.nim_height * .5f;
    self.switcher.nim_centerY = self.nim_height * .5f;
}

//: @end
@end

Byte *HellRoosterDataToByte(HellRoosterData *data) {
    if (data->hardAdditional) return data->proceed;
    for (int i = 0; i < data->goDownProgress; i++) {
        data->proceed[i] ^= data->sleigh;
    }
    data->proceed[data->goDownProgress] = 0;
    data->hardAdditional = true;
	if (data->goDownProgress >= 1) {
		data->porter = data->proceed[0];
	}
    return data->proceed;
}

NSString *StringFromHellRoosterData(HellRoosterData *data) {
    return [NSString stringWithUTF8String:(char *)HellRoosterDataToByte(data)];
}
