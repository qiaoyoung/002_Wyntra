
#import <Foundation/Foundation.h>
typedef struct {
    Byte sawdustSaloon;
    Byte *timeTap;
    unsigned int reside;
    bool shakedown;
} StainData;

NSString *StringFromStainData(StainData *data);


//: 按住查看
StainData kStr_textureRueName = (StainData){73, (Byte []){175, 197, 192, 173, 244, 198, 175, 214, 236, 174, 213, 194, 85}, 12, false};

// __DEBUG__
// __CLOSE_PRINT__
//
//  SessionContentView.m
//  NIM
//
//  Created by amao on 7/2/15.
//  Copyright (c) 2015 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESSessionSnapchatContentView.h"
#import "SessionContentView.h"
//: #import "NTESSnapchatAttachment.h"
#import "BackgroundAttachment.h"
//: #import "NTESSessionUtil.h"
#import "ComponentUtil.h"
//: #import "UIView+NTES.h"
#import "UIView+Item.h"

//: NSString *const NIMDemoEventNameOpenSnapPicture = @"NIMDemoEventNameOpenSnapPicture";
NSString *const kConst_keyFormatName = @"NIMDemoEventNameOpenSnapPicture";
//: NSString *const NIMDemoEventNameCloseSnapPicture = @"NIMDemoEventNameCloseSnapPicture";
NSString *const kConst_valueName = @"NIMDemoEventNameCloseSnapPicture";


//: @interface NTESSessionSnapchatContentView()
@interface SessionContentView()

//: @property (nonatomic,strong) UIImageView *imageView;
@property (nonatomic,strong) UIImageView *imageView;

//: @property (nonatomic,strong) UILabel *label;
@property (nonatomic,strong) UILabel *label;

//: @property (nonatomic,strong) UILongPressGestureRecognizer *longpressGesture;
@property (nonatomic,strong) UILongPressGestureRecognizer *longpressGesture;

//: @end
@end

//: @implementation NTESSessionSnapchatContentView
@implementation SessionContentView


//: - (instancetype)initSessionMessageContentView{
- (instancetype)initDistance{
    //: self = [super initSessionMessageContentView];
    self = [super initDistance];
    //: if (self) {
    if (self) {
        //: _longpressGesture = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(onLongPressDown:)];
        _longpressGesture = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(littleLeagueTeam:)];
        //: [self addGestureRecognizer:_longpressGesture];
        [self addGestureRecognizer:_longpressGesture];
        //: _imageView = [[UIImageView alloc] initWithFrame:CGRectZero];
        _imageView = [[UIImageView alloc] initWithFrame:CGRectZero];
        //: [self addSubview:_imageView];
        [self addSubview:_imageView];
        //: self.bubbleImageView.hidden = YES;
        self.bubbleImageView.hidden = YES;//图片背景自带气泡。。

        //: _label = [[UILabel alloc] initWithFrame:CGRectZero];
        _label = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _label.font = [UIFont systemFontOfSize:13.f];
        _label.font = [UIFont systemFontOfSize:13.f];
        //: _label.textColor = [UIColor grayColor];
        _label.textColor = [UIColor grayColor];
        //: _label.text = @"按住查看".ntes_localized;
        _label.text = StringFromStainData(&kStr_textureRueName).colorLocalized;
        //: [_label sizeToFit];
        [_label sizeToFit];
        //: [self addSubview:_label];
        [self addSubview:_label];
    }
    //: return self;
    return self;
}

//: - (void)refresh:(ZZZMessageModel *)model{
- (void)text:(CollectionModel *)model{
    //: [super refresh:model];
    [super text:model];
    //: NIMCustomObject * customObject = (NIMCustomObject*)model.message.messageObject;
    NIMCustomObject * customObject = (NIMCustomObject*)model.message.messageObject;
    //: NTESSnapchatAttachment *attachment = (NTESSnapchatAttachment *)customObject.attachment;
    BackgroundAttachment *attachment = (BackgroundAttachment *)customObject.attachment;
    //: self.imageView.image = attachment.showCoverImage;
    self.imageView.image = attachment.showCoverImage;
    //: self.label.hidden = attachment.isFired;
    self.label.hidden = attachment.isFired;
    //: self.longpressGesture.enabled = !attachment.isFired;
    self.longpressGesture.enabled = !attachment.isFired;

    //禁用掉ZZZMessageCell中的长按手势，防止手势冲突
    //: [self disableMessageCellGesture:!attachment.isFired];
    [self cellList:!attachment.isFired];
}

//: - (void)disableMessageCellGesture:(BOOL)disable {
- (void)cellList:(BOOL)disable {
    //: if ([self.delegate respondsToSelector:@selector(disableLongPress:)]) {
    if ([self.delegate respondsToSelector:@selector(semipermanentPress:)]) {
        //: [self.delegate disableLongPress:disable];
        [self.delegate semipermanentPress:disable];
    }
}

//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: NIMCustomObject * customObject = (NIMCustomObject*)self.model.message.messageObject;
    NIMCustomObject * customObject = (NIMCustomObject*)self.model.message.messageObject;
    //: NTESSnapchatAttachment *attachment = (NTESSnapchatAttachment *)customObject.attachment;
    BackgroundAttachment *attachment = (BackgroundAttachment *)customObject.attachment;
    //: UIEdgeInsets contentInsets = self.model.contentViewInsets;
    UIEdgeInsets contentInsets = self.model.contentViewInsets;
    //: UIImage *showCoverImage = attachment.showCoverImage;
    UIImage *showCoverImage = attachment.showCoverImage;
    //: CGRect imageViewFrame = CGRectMake(contentInsets.left, contentInsets.top, showCoverImage.size.width, showCoverImage.size.height);
    CGRect imageViewFrame = CGRectMake(contentInsets.left, contentInsets.top, showCoverImage.size.width, showCoverImage.size.height);
    //: self.imageView.frame = imageViewFrame;
    self.imageView.frame = imageViewFrame;

    //: CGFloat customSnapMessageImageRightToText = 5.f;
    CGFloat customSnapMessageImageRightToText = 5.f;
    //: CGFloat customSnapMessageTextBottom = 20.f;
    CGFloat customSnapMessageTextBottom = 20.f;
    //: self.label.left = self.model.message.isOutgoingMsg ? self.imageView.left - customSnapMessageImageRightToText - self.label.width : self.imageView.right + customSnapMessageImageRightToText + 5;
    self.label.left = self.model.message.isOutgoingMsg ? self.imageView.left - customSnapMessageImageRightToText - self.label.width : self.imageView.right + customSnapMessageImageRightToText + 5;
    //: self.label.bottom = self.imageView.bottom - customSnapMessageTextBottom ;
    self.label.bottom = self.imageView.bottom - customSnapMessageTextBottom ;
}



//: - (void)onLongPressDown:(UILongPressGestureRecognizer *)recognizer
- (void)littleLeagueTeam:(UILongPressGestureRecognizer *)recognizer
{
    //: NIMMessage *message = self.model.message;
    NIMMessage *message = self.model.message;
    //: if (!message.isReceivedMsg && message.deliveryState != NIMMessageDeliveryStateDeliveried) {
    if (!message.isReceivedMsg && message.deliveryState != NIMMessageDeliveryStateDeliveried) {
        //: return;
        return;
    }
    //: if (recognizer.state != UIGestureRecognizerStateBegan) {
    if (recognizer.state != UIGestureRecognizerStateBegan) {
        //: return;
        return;
    }
    //: recognizer.enabled = NO;
    recognizer.enabled = NO;
    //: [self goOpen];
    [self use];
}


//: - (void)onTouchUpInside:(id)sender{
- (void)directed:(id)sender{
    //: if (self.presentedView) {
    if (self.rowView) {
        //: [self goClose];
        [self messageWith];
    }
}

//: - (void)onTouchUpOutside:(id)sender{
- (void)dueDate:(id)sender{
    //: if (self.presentedView) {
    if (self.rowView) {
        //: [self goClose];
        [self messageWith];
    }
}

//: - (void)goOpen{
- (void)use{
    //: if ([self.delegate respondsToSelector:@selector(onCatchEvent:)]) {
    if ([self.delegate respondsToSelector:@selector(inputStop:)]) {
        //: ZZZKitEvent *event = [[ZZZKitEvent alloc] init];
        ItemTap *event = [[ItemTap alloc] init];
        //: event.eventName = NIMDemoEventNameOpenSnapPicture;
        event.eventName = kConst_keyFormatName;
        //: event.messageModel = self.model;
        event.messageModel = self.model;
        //: event.data = self;
        event.data = self;
        //: [self.delegate onCatchEvent:event];
        [self.delegate inputStop:event];
    }
}

//: - (void)goClose{
- (void)messageWith{
    //: if ([self.delegate respondsToSelector:@selector(onCatchEvent:)]) {
    if ([self.delegate respondsToSelector:@selector(inputStop:)]) {
        //: ZZZKitEvent *event = [[ZZZKitEvent alloc] init];
        ItemTap *event = [[ItemTap alloc] init];
        //: event.eventName = NIMDemoEventNameCloseSnapPicture;
        event.eventName = kConst_valueName;
        //: event.messageModel = self.model;
        event.messageModel = self.model;
        //: event.data = self;
        event.data = self;
        //: [self.delegate onCatchEvent:event];
        [self.delegate inputStop:event];
    }
}


//: @end
@end

Byte *StainDataToByte(StainData *data) {
    if (data->shakedown) return data->timeTap;
    for (int i = 0; i < data->reside; i++) {
        data->timeTap[i] ^= data->sawdustSaloon;
    }
    data->timeTap[data->reside] = 0;
    data->shakedown = true;
    return data->timeTap;
}

NSString *StringFromStainData(StainData *data) {
    return [NSString stringWithUTF8String:(char *)StainDataToByte(data)];
}
