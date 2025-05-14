// __DEBUG__
// __CLOSE_PRINT__
//
//  TingDisableView.m
//  NIM
//
//  Created by chris on 2017/4/7.
//  Copyright © 2017年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESContactDataCell.h"
#import "TingDisableView.h"
//: #import "NTESSessionUtil.h"
#import "ComponentUtil.h"

//: @implementation NTESContactDataCell
@implementation TingDisableView

//: - (void)refreshUser:(id<NIMGroupMemberProtocol>)member
- (void)name:(id<ModelValue>)member
{
    //: [super refreshUser:member];
    [super name:member];
    //: NSString *state = [NTESSessionUtil onlineState:self.memberId detail:NO];
    NSString *state = [ComponentUtil baseballTeam:self.memberId location:NO];
    //: NSString *title = @"";
    NSString *title = @"";
//    if (state.length)
//    {
//        title = [NSString stringWithFormat:@"[%@] %@",state,member.showName];
//    }
//    else
//    {
        //: title = [NSString stringWithFormat:@"%@",member.showName];
        title = [NSString stringWithFormat:@"%@",member.max];
//    }

    //: self.textLabel.text = title;
    self.textLabel.text = title;
}


//: @end
@end