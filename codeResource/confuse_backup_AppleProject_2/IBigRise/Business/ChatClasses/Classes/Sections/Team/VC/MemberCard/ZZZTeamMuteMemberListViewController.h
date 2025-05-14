//
//  ZZZTeamMuteMemberListViewController.h
// AppleProjectKit
//
//  Created by Genning-Work on 2019/12/13.
//  Copyright © 2019 NetEase. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ZZZTeamMemberListDataSource.h"

NS_ASSUME_NONNULL_BEGIN

@interface ZZZTeamMuteMemberListViewController : UIViewController

- (instancetype)initWithDataSource:(id<ZZZTeamMemberListDataSource>)dataSource;

@end

NS_ASSUME_NONNULL_END
