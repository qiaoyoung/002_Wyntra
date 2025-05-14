// __DEBUG__
// __CLOSE_PRINT__
//
//  TeamAnnouncementListCell.h
//  NIM
//
//  Created by Xuhui on 15/3/31.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>

//: @interface ZZZTeamAnnouncementListCell : UITableViewCell
@interface TeamViewCell : UITableViewCell

//: - (void)refreshData:(NSDictionary *)data nick:(NSString *)nick;
- (void)lengthYear:(NSDictionary *)data message:(NSString *)nick;

//: + (CGFloat)cellHeight:(NSString *)title;
+ (CGFloat)sessionOf:(NSString *)title;

//: @end
@end