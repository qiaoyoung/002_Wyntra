//
//  NIMListCollectionCell.h
// AppleProjectKit
//
//  Created by He on 2020/4/13.
//  Copyright © 2020 NetEase. All rights reserved.
//

#import <UIKit/UIKit.h>

@class NIMQuickComment;
@class ZZZMessageModel;
NS_ASSUME_NONNULL_BEGIN

@interface ZZZQuickCommentCell : UICollectionViewCell

- (void)refreshWithData:(NSArray *)comment model:(ZZZMessageModel *)data;

@end

NS_ASSUME_NONNULL_END
