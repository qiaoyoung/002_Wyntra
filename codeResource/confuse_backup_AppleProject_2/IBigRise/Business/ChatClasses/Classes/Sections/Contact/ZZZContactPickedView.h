//
//  ContactPickedView.h
//  NIM
//
//  Created by ios on 10/23/13.
//  Copyright (c) 2013 Netease. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ZZZKitInfo;

@protocol ZZZContactPickedViewDelegate <NSObject>

- (void)removeUser:(NSString *)userId;

@end

@interface ZZZContactPickedView : UIView <UIScrollViewDelegate>

@property (nonatomic, weak) id<ZZZContactPickedViewDelegate> delegate;

- (void)removeMemberInfo:(ZZZKitInfo *)info;

- (void)addMemberInfo:(ZZZKitInfo *)info;

@end
