//
//  ZZZReplyedTextContentView.h
// AppleProjectKit
//
//  Created by He on 2020/3/25.
//  Copyright © 2020 NetEase. All rights reserved.
//

#import "ZZZSessionMessageContentView.h"

@class M80AttributedLabel;
NS_ASSUME_NONNULL_BEGIN

@interface ZZZReplyedTextContentView : ZZZSessionMessageContentView

@property (nonatomic, strong) M80AttributedLabel *textLabel;

@end

NS_ASSUME_NONNULL_END
