//
//  ZZZSessionLocationContentView.m
// AppleProjectKit
//
//  Created by chris on 15/2/28.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

#import "ZZZSessionLocationContentView.h"
#import "ZZZMessageModel.h"
#import "UIViewNimKit.h"
#import "UIImage+AppleProjectKit.h"
#import "AppleProjectKit.h"

@interface ZZZSessionLocationContentView()

@property (nonatomic,strong) UIImageView * imageView;

@property (nonatomic,strong) UILabel * titleLabel;

@end

@implementation ZZZSessionLocationContentView

- (instancetype)initSessionMessageContentView{
    self = [super initSessionMessageContentView];
    if (self) {
        self.opaque = YES;
        UIImage *image = [UIImage imageNamed:@"icon_map"];
        _imageView  = [[UIImageView alloc] initWithImage:image];
        
        CALayer *maskLayer = [CALayer layer];
        maskLayer.cornerRadius = 13.0;
        maskLayer.backgroundColor = [UIColor blackColor].CGColor;
        maskLayer.frame = _imageView.bounds;
        _imageView.layer.mask = maskLayer;

        [self addSubview:_imageView];
        
        _titleLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _titleLabel.textAlignment = NSTextAlignmentCenter;
        _titleLabel.numberOfLines = 0;
        [self addSubview:_titleLabel];
        
    }
    return self;
}

- (void)refresh:(ZZZMessageModel *)data
{
    [super refresh:data];
    NIMLocationObject * locationObject = (NIMLocationObject*)self.model.message.messageObject;
    self.titleLabel.text = locationObject.title;
    
    ZZZKitSetting *setting = [[AppleProjectKit sharedKit].config setting:data.message];

    self.titleLabel.textColor  = setting.textColor;
    self.titleLabel.font       = setting.font;
}

- (void)onTouchUpInside:(id)sender
{
    ZZZKitEvent *event = [[ZZZKitEvent alloc] init];
    event.eventName = ZZZKitEventNameTapContent;
    event.messageModel = self.model;
    [self.delegate onCatchEvent:event];
}

- (void)layoutSubviews{
    [super layoutSubviews];
    _titleLabel.nim_width = self.nim_width - 20;
    _titleLabel.nim_height= 35.f;
    self.titleLabel.nim_centerY = 90.f;
    self.titleLabel.nim_centerX = self.nim_width * .5f;
    UIEdgeInsets contentInsets  = self.model.contentViewInsets;
    
    CGFloat tableViewWidth = self.superview.nim_width;
    CGSize contentsize          = [self.model contentSize:tableViewWidth];
    
    CGRect imageViewFrame = CGRectMake(contentInsets.left, contentInsets.top, contentsize.width, contentsize.height);
    self.imageView.frame  = imageViewFrame;
}


@end
