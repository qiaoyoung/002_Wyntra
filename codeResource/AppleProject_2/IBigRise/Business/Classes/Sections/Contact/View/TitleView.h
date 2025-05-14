// __DEBUG__
// __CLOSE_PRINT__
//
//  TitleView.h
//  NIM
//
//  Created by chris on 15/2/26.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "NTESContactDefines.h"
#import "NTESContactDefines.h"

//: @protocol NTESContactUtilCellDelegate <NSObject>
@protocol ColorSelected <NSObject>

//: - (void)onPressUtilImage:(NSString *)content;
- (void)ranged:(NSString *)content;

//: @end
@end

//: @interface NTESContactUtilCell : UITableViewCell
@interface TitleView : UITableViewCell

//: @property (nonatomic,weak) id<NTESContactUtilCellDelegate> delegate;
@property (nonatomic,weak) id<ColorSelected> delegate;

//: - (void)refreshWithContactItem:(id<NTESContactItem>)item;
- (void)inputWith:(id<MediaItem>)item;

//: @end
@end