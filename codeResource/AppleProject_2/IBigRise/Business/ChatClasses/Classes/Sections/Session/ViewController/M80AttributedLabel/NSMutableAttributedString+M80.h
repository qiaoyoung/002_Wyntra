// __DEBUG__
// __CLOSE_PRINT__
//
//  NSMutableAttributedString+M80.h
//  GreenNameView
//
//  Created by amao on 13-8-31.
//  Copyright (c) 2013年 www.xiangwangfeng.com. All rights reserved.
//

// __M_A_C_R_O__
//: #import "M80AttributedLabelDefines.h"
#import "M80AttributedLabelDefines.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface NSMutableAttributedString (M80)
@interface NSMutableAttributedString (M80)

//: - (void)m80_setTextColor:(UIColor*)color;
- (void)powerButton:(UIColor*)color;
//: - (void)m80_setTextColor:(UIColor*)color range:(NSRange)range;
- (void)color:(UIColor*)color sendRange:(NSRange)range;

//: - (void)m80_setFont:(UIFont*)font;
- (void)input:(UIFont*)font;
//: - (void)m80_setFont:(UIFont*)font range:(NSRange)range;
- (void)restAndLatitude:(UIFont*)font fontRange:(NSRange)range;

//: - (void)m80_setUnderlineStyle:(CTUnderlineStyle)style
- (void)text:(CTUnderlineStyle)style
                 //: modifier:(CTUnderlineStyleModifiers)modifier;
                 disable:(CTUnderlineStyleModifiers)modifier;
//: - (void)m80_setUnderlineStyle:(CTUnderlineStyle)style
- (void)orientationRange:(CTUnderlineStyle)style
                 //: modifier:(CTUnderlineStyleModifiers)modifier
                 account:(CTUnderlineStyleModifiers)modifier
                    //: range:(NSRange)range;
                    show:(NSRange)range;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END