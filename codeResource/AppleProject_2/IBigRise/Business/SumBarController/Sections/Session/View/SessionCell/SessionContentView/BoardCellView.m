
#import <Foundation/Foundation.h>

NSString *StringFromAliyahData(Byte *data);        


//: icon_whiteboard_session_msg
Byte kStr_totalData[] = {33, 27, 24, 7, 235, 142, 193, 81, 75, 87, 86, 71, 95, 80, 81, 92, 77, 74, 87, 73, 90, 76, 71, 91, 77, 91, 91, 81, 87, 86, 71, 85, 91, 79, 162};

// __DEBUG__
// __CLOSE_PRINT__
//
//  BoardCellView.m
//  NIM
//
//  Created by chris on 15/8/3.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESSessionWhiteBoardContentView.h"
#import "BoardCellView.h"
//: #import "NTESSessionUtil.h"
#import "ComponentUtil.h"
//: #import "UIView+NTES.h"
#import "UIView+Item.h"
//: #import "M80AttributedLabel.h"
#import "GreenNameView.h"
//: #import "ZZZKitUtil.h"
#import "TingText.h"
//: #import "NTESWhiteboardAttachment.h"
#import "InsertShare.h"

//: @interface NTESSessionWhiteBoardContentView()
@interface BoardCellView()

//: @property (nonatomic,strong) UIImageView *imageView;
@property (nonatomic,strong) UIImageView *imageView;

//: @end
@end

//: @implementation NTESSessionWhiteBoardContentView
@implementation BoardCellView

//: -(instancetype)initSessionMessageContentView
-(instancetype)initDistance
{
    //: if (self = [super initSessionMessageContentView]) {
    if (self = [super initDistance]) {
        //: _textLabel = [[M80AttributedLabel alloc] initWithFrame:CGRectZero];
        _textLabel = [[GreenNameView alloc] initWithFrame:CGRectZero];
        //: _textLabel.autoDetectLinks = NO;
        _textLabel.autoDetectLinks = NO;
        //: _textLabel.numberOfLines = 0;
        _textLabel.numberOfLines = 0;
        //: _textLabel.lineBreakMode = NSLineBreakByWordWrapping;
        _textLabel.lineBreakMode = NSLineBreakByWordWrapping;
        //: _textLabel.font = [UIFont systemFontOfSize:14.f];
        _textLabel.font = [UIFont systemFontOfSize:14.f];
        //: _textLabel.backgroundColor = [UIColor clearColor];
        _textLabel.backgroundColor = [UIColor clearColor];
        //: [self addSubview:_textLabel];
        [self addSubview:_textLabel];

        //: _imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"icon_whiteboard_session_msg"]];
        _imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:StringFromAliyahData(kStr_totalData)]];
        //: [self addSubview:_imageView];
        [self addSubview:_imageView];
    }
    //: return self;
    return self;
}

//: - (void)refresh:(ZZZMessageModel *)data{
- (void)text:(CollectionModel *)data{
    //: [super refresh:data];
    [super text:data];
    //: NIMCustomObject *object = (NIMCustomObject *)data.message.messageObject;
    NIMCustomObject *object = (NIMCustomObject *)data.message.messageObject;
    //: NTESWhiteboardAttachment *attach = (NTESWhiteboardAttachment *)object.attachment;
    InsertShare *attach = (InsertShare *)object.attachment;
    //: NSString *text = attach.formatedMessage;
    NSString *text = attach.withLabel;

    //: [_textLabel setText:text];
    [_textLabel setText:text];
    //: if (!data.message.isOutgoingMsg) {
    if (!data.message.isOutgoingMsg) {
        //: _textLabel.textColor = [UIColor blackColor];
        _textLabel.textColor = [UIColor blackColor];
    //: }else{
    }else{
        //: _textLabel.textColor = [UIColor whiteColor];
        _textLabel.textColor = [UIColor whiteColor];
    }

    //: self.bubbleImageView.hidden = NO;
    self.bubbleImageView.hidden = NO;
}

//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: UIEdgeInsets contentInsets = self.model.contentViewInsets;
    UIEdgeInsets contentInsets = self.model.contentViewInsets;
    //: CGFloat tableViewWidth = self.superview.width;
    CGFloat tableViewWidth = self.superview.width;
    //: CGSize contentSize = [self.model contentSize:tableViewWidth];
    CGSize contentSize = [self.model info:tableViewWidth];
    //: self.imageView.left = contentInsets.left;
    self.imageView.left = contentInsets.left;
    //: self.imageView.centerY = self.height * .5f;
    self.imageView.centerY = self.height * .5f;
    //: CGFloat customWhiteBorardMessageImageRightToText = 5.f;
    CGFloat customWhiteBorardMessageImageRightToText = 5.f;
    //: CGRect labelFrame = CGRectMake(self.imageView.right + customWhiteBorardMessageImageRightToText, contentInsets.top, contentSize.width, contentSize.height);
    CGRect labelFrame = CGRectMake(self.imageView.right + customWhiteBorardMessageImageRightToText, contentInsets.top, contentSize.width, contentSize.height);
    //: self.textLabel.frame = labelFrame;
    self.textLabel.frame = labelFrame;
}
//: @end
@end

Byte * AliyahDataToCache(Byte *data) {
    int aggressiveLatter = data[0];
    int awayCur = data[1];
    Byte furtherance = data[2];
    int bureauBy = data[3];
    if (!aggressiveLatter) return data + bureauBy;
    for (int i = bureauBy; i < bureauBy + awayCur; i++) {
        int value = data[i] + furtherance;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[bureauBy + awayCur] = 0;
    return data + bureauBy;
}

NSString *StringFromAliyahData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)AliyahDataToCache(data)];
}
