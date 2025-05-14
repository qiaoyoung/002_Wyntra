//
//  ZZZKitColorButtonCell.h
//  NIM
//
//  Created by chris on 15/3/11.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, ZZZKitColorButtonCellStyle){
    ZZZKitColorButtonCellStyleRed,
    ZZZKitColorButtonCellStyleBlue,
};

@class NIMKitColorButton;

@interface ZZZKitColorButtonCell : UITableViewCell

@property (nonatomic,strong) NIMKitColorButton *button;

@end



@interface NIMKitColorButton : UIButton

@property (nonatomic,assign) ZZZKitColorButtonCellStyle style;

@end
