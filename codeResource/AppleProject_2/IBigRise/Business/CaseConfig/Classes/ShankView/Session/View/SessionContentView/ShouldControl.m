// __DEBUG__
// __CLOSE_PRINT__
//
//  ShouldControl.m
// On
//
//  Created by chris.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZZZSessionMessageContentView.h"
#import "ShouldControl.h"
//: #import "ZZZMessageModel.h"
#import "CollectionModel.h"
//: #import "UIImage+AppleProjectKit.h"
#import "UIImage+On.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "AppleProjectKit.h"
#import "On.h"

//: @interface ZZZSessionMessageContentView()
@interface ShouldControl()

//: @end
@end

//: @implementation ZZZSessionMessageContentView
@implementation ShouldControl

//: - (instancetype)initSessionMessageContentView
- (instancetype)initDistance
{
    //: CGSize defaultBubbleSize = CGSizeMake(60, 35);
    CGSize defaultBubbleSize = CGSizeMake(60, 35);
    //: if (self = [self initWithFrame:CGRectMake(0, 0, defaultBubbleSize.width, defaultBubbleSize.height)]) {
    if (self = [self initWithFrame:CGRectMake(0, 0, defaultBubbleSize.width, defaultBubbleSize.height)]) {

        //: [self addTarget:self action:@selector(onTouchDown:) forControlEvents:UIControlEventTouchDown];
        [self addTarget:self action:@selector(upDown:) forControlEvents:UIControlEventTouchDown];
        //: [self addTarget:self action:@selector(onTouchUpInside:) forControlEvents:UIControlEventTouchUpInside];
        [self addTarget:self action:@selector(directed:) forControlEvents:UIControlEventTouchUpInside];
        //: [self addTarget:self action:@selector(onTouchUpOutside:) forControlEvents:UIControlEventTouchUpOutside];
        [self addTarget:self action:@selector(dueDate:) forControlEvents:UIControlEventTouchUpOutside];
        //: _bubbleImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0,0,defaultBubbleSize.width,defaultBubbleSize.height)];
        _bubbleImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0,0,defaultBubbleSize.width,defaultBubbleSize.height)];
        //: _bubbleImageView.autoresizingMask = UIViewAutoresizingFlexibleWidth;
        _bubbleImageView.autoresizingMask = UIViewAutoresizingFlexibleWidth;
        //: _bubbleImageView.hidden = YES;
        _bubbleImageView.hidden = YES;
        //: [self addSubview:_bubbleImageView];
        [self addSubview:_bubbleImageView];
    }
    //: return self;
    return self;
}

//: - (void)refresh:(ZZZMessageModel*)data
- (void)text:(CollectionModel*)data
{
    //: _model = data;
    _model = data;
    //: [_bubbleImageView setImage:[self chatBubbleImageForState:UIControlStateNormal
    [_bubbleImageView setImage:[self withCell:UIControlStateNormal
                                                    //: outgoing:data.message.isOutgoingMsg]];
                                                    colorUnwantedVisualizationStateGestureBubble:data.message.isOutgoingMsg]];
    //: [_bubbleImageView setHighlightedImage:[self chatBubbleImageForState:UIControlStateHighlighted
    [_bubbleImageView setHighlightedImage:[self withCell:UIControlStateHighlighted
                                                               //: outgoing:data.message.isOutgoingMsg]];
                                                               colorUnwantedVisualizationStateGestureBubble:data.message.isOutgoingMsg]];
}


//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: _bubbleImageView.frame = self.bounds;
    _bubbleImageView.frame = self.bounds;
}


//: - (void)updateProgress:(float)progress
- (void)scale:(float)progress
{

}

//: - (void)onTouchDown:(id)sender
- (void)upDown:(id)sender
{

}

//: - (void)onTouchUpInside:(id)sender
- (void)directed:(id)sender
{

}

//: - (void)onTouchUpOutside:(id)sender{
- (void)dueDate:(id)sender{

}


//: #pragma mark - Private
#pragma mark - Private
//: - (UIImage *)chatBubbleImageForState:(UIControlState)state outgoing:(BOOL)outgoing
- (UIImage *)withCell:(UIControlState)state colorUnwantedVisualizationStateGestureBubble:(BOOL)outgoing
{

    //: ZZZKitSetting *setting = [[AppleProjectKit sharedKit].config setting:self.model.message];
    CaseSetting *setting = [[On along].config style:self.model.message];
    //: if (state == UIControlStateNormal)
    if (state == UIControlStateNormal)
    {
        //: return setting.normalBackgroundImage;
        return setting.normalBackgroundImage;
    }
    //: else
    else
    {
        //: return setting.highLightBackgroundImage;
        return setting.highLightBackgroundImage;
    }
}


//: - (void)setHighlighted:(BOOL)highlighted{
- (void)setHighlighted:(BOOL)highlighted{
    //: [super setHighlighted:highlighted];
    [super setHighlighted:highlighted];
    //: _bubbleImageView.highlighted = highlighted;
    _bubbleImageView.highlighted = highlighted;
}

//: @end
@end