//
//  ZZZTeamCardHeaderView.h
// AppleProjectKit
//
//  Created by Netease on 2019/6/10.
//  Copyright © 2019 NetEase. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <NIMSDK/NIMSDK.h>

NS_ASSUME_NONNULL_BEGIN

@protocol ZZZTeamCardHeaderViewDelegate <NSObject>

- (void)onTouchAvatar:(id)sender;

@end

@interface ZZZTeamCardHeaderView : UIView

@property (nonatomic, weak) id<ZZZTeamCardHeaderViewDelegate> delegate;

@property (nonatomic, strong) NIMTeam *team;

@end

NS_ASSUME_NONNULL_END
