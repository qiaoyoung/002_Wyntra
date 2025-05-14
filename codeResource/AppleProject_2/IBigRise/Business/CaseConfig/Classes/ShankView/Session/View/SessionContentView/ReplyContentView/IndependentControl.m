// __DEBUG__
// __CLOSE_PRINT__
//
//  IndependentControl.m
// On
//
//  Created by He on 2020/3/25.
//  Copyright © 2020 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZZZReplyedTextContentView.h"
#import "IndependentControl.h"
//: #import "M80AttributedLabel+AppleProjectKit.h"
#import "GreenNameView+On.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "AppleProjectKit.h"
#import "On.h"

//: @interface ZZZReplyedTextContentView ()<M80AttributedLabelDelegate>
@interface IndependentControl ()<EdgeDisable>
//: @end
@end

//: @implementation ZZZReplyedTextContentView
@implementation IndependentControl

//: - (instancetype)initSessionMessageContentView {
- (instancetype)initDistance {
    //: self = [super initSessionMessageContentView];
    self = [super initDistance];
    //: return self;
    return self;
}

//: - (void)refresh:(ZZZMessageModel *)data {
- (void)text:(CollectionModel *)data {
    //: [super refresh:data];
    [super text:data];
    //: NSString *text = [[AppleProjectKit sharedKit] replyedContentWithMessage:data.repliedMessage];
    NSString *text = [[On along] modes:data.repliedMessage];
    //: [self.textLabel nim_setText:text];
    [self.textLabel sourceSet:text];

    //: ZZZKitSetting *setting = [[AppleProjectKit sharedKit].config repliedSetting:data.message];
    CaseSetting *setting = [[On along].config shouldPath:data.message];
    //: self.textLabel.textColor = setting.replyedTextColor;
    self.textLabel.textColor = setting.replyedTextColor;
    //: self.textLabel.font = setting.replyedFont;
    self.textLabel.font = setting.replyedFont;
    //: [self setNeedsLayout];
    [self setNeedsLayout];
}

//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: UIEdgeInsets contentInsets = self.model.replyContentViewInsets;
    UIEdgeInsets contentInsets = self.model.replyContentViewInsets;

    //: CGFloat tableViewWidth = self.superview.nim_width;
    CGFloat tableViewWidth = self.superview.nim_width;
    //: CGSize contentsize = [self.model replyContentSize:tableViewWidth];
    CGSize contentsize = [self.model time:tableViewWidth];
    //: CGRect labelFrame = CGRectMake(contentInsets.left, contentInsets.top, contentsize.width, contentsize.height);
    CGRect labelFrame = CGRectMake(contentInsets.left, contentInsets.top, contentsize.width, contentsize.height);
    //: self.textLabel.frame = labelFrame;
    self.textLabel.frame = labelFrame;
}

//: - (M80AttributedLabel *)textLabel
- (GreenNameView *)textLabel
{
    //: if (!_textLabel)
    if (!_textLabel)
    {
        //: _textLabel = [[M80AttributedLabel alloc] initWithFrame:CGRectZero];
        _textLabel = [[GreenNameView alloc] initWithFrame:CGRectZero];
        //: _textLabel.M80delegate = self;
        _textLabel.M80delegate = self;
        //: _textLabel.numberOfLines = 0;
        _textLabel.numberOfLines = 0;
        //: _textLabel.autoDetectLinks = NO;
        _textLabel.autoDetectLinks = NO;
        //: _textLabel.lineBreakMode = NSLineBreakByWordWrapping;
        _textLabel.lineBreakMode = NSLineBreakByWordWrapping;
        //: _textLabel.backgroundColor = [UIColor clearColor];
        _textLabel.backgroundColor = [UIColor clearColor];
        //: _textLabel.textColor = [UIColor grayColor];
        _textLabel.textColor = [UIColor grayColor];
        //: [self addSubview:_textLabel];
        [self addSubview:_textLabel];
    }

    //: return _textLabel;
    return _textLabel;
}

//: #pragma mark - M80AttributedLabelDelegate
#pragma mark - EdgeDisable
//: - (void)m80AttributedLabel:(M80AttributedLabel *)label
- (void)mark:(GreenNameView *)label
             //: clickedOnLink:(id)linkData{
             digitizerLink:(id)linkData{
    //: ZZZKitEvent *event = [[ZZZKitEvent alloc] init];
    ItemTap *event = [[ItemTap alloc] init];
    //: event.eventName = ZZZKitEventNameTapLabelLink;
    event.eventName = kConst_maxData;
    //: event.messageModel = self.model;
    event.messageModel = self.model;
    //: event.data = linkData;
    event.data = linkData;
    //: [self.delegate onCatchEvent:event];
    [self.delegate inputStop:event];
}


//: - (void)onTouchUpInside:(id)sender
- (void)directed:(id)sender
{
    //: ZZZKitEvent *event = [[ZZZKitEvent alloc] init];
    ItemTap *event = [[ItemTap alloc] init];
    //: event.eventName = ZZZKitEventNameTapRepliedContent;
    event.eventName = kConst_contentMakeTitle;
    //: event.messageModel = self.model;
    event.messageModel = self.model;
    //: [self.delegate onCatchEvent:event];
    [self.delegate inputStop:event];
}

//: - (void)onTouchDown:(id)sender
- (void)upDown:(id)sender
{

}

//: - (void)onTouchUpOutside:(id)sender{
- (void)dueDate:(id)sender{

}
//: @end
@end