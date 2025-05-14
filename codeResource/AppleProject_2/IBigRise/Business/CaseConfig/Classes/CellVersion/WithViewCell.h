// __DEBUG__
// __CLOSE_PRINT__
//
//  WithViewCell.h
//  NIM
//
//  Created by chris on 15/3/11.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: typedef NS_ENUM(NSInteger, ZZZKitColorButtonCellStyle){
typedef NS_ENUM(NSInteger, ZZZKitColorButtonCellStyle){
    //: ZZZKitColorButtonCellStyleRed,
    ZZZKitColorButtonCellStyleRed,
    //: ZZZKitColorButtonCellStyleBlue,
    ZZZKitColorButtonCellStyleBlue,
//: };
};

//: @class NIMKitColorButton;
@class SuggestButton;

//: @interface ZZZKitColorButtonCell : UITableViewCell
@interface WithViewCell : UITableViewCell

//: @property (nonatomic,strong) NIMKitColorButton *button;
@property (nonatomic,strong) SuggestButton *button;

//: @end
@end



//: @interface NIMKitColorButton : UIButton
@interface SuggestButton : UIButton

//: @property (nonatomic,assign) ZZZKitColorButtonCellStyle style;
@property (nonatomic,assign) ZZZKitColorButtonCellStyle style;

//: @end
@end