// __DEBUG__
// __CLOSE_PRINT__
//
//  ShouldView.h
//  NIM
//
//  Created by chris on 15/3/11.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "ZZZCommonTableViewCell.h"
#import "CountCell.h"

//: typedef NS_ENUM(NSInteger, ColorButtonCellStyle){
typedef NS_ENUM(NSInteger, ColorButtonCellStyle){
    //: ColorButtonCellStyleRed,
    ColorButtonCellStyleRed,
    //: ColorButtonCellStyleBlue,
    ColorButtonCellStyleBlue,
//: };
};

//: @class NTESColorButton;
@class PositionButton;

//: @interface NTESColorButtonCell : UITableViewCell<ZZZCommonTableViewCell>
@interface ShouldView : UITableViewCell<CountCell>

//: @property (nonatomic,strong) NTESColorButton *button;
@property (nonatomic,strong) PositionButton *button;

//: @end
@end



//: @interface NTESColorButton : UIButton
@interface PositionButton : UIButton

//: @property (nonatomic,assign) ColorButtonCellStyle style;
@property (nonatomic,assign) ColorButtonCellStyle style;

//: @end
@end