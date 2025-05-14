
#import <Foundation/Foundation.h>

NSString *StringFromAdditionData(Byte *data);


//: msg_view_4
Byte kStr_billText[] = {47, 10, 13, 43, 177, 220, 13, 92, 232, 100, 247, 39, 250, 52, 95, 119, 101, 105, 118, 95, 103, 115, 109, 193};


//: message_read_yes
Byte kStr_licenseData[] = {10, 16, 12, 106, 251, 54, 155, 149, 38, 40, 147, 125, 115, 101, 121, 95, 100, 97, 101, 114, 95, 101, 103, 97, 115, 115, 101, 109, 34};


//: can not init content view
Byte kStr_widelyTitle[] = {74, 25, 5, 84, 87, 119, 101, 105, 118, 32, 116, 110, 101, 116, 110, 111, 99, 32, 116, 105, 110, 105, 32, 116, 111, 110, 32, 110, 97, 99, 104};


//: icon_message_cell_error
Byte kStr_universeOughtCrowdedData[] = {94, 23, 4, 134, 114, 111, 114, 114, 101, 95, 108, 108, 101, 99, 95, 101, 103, 97, 115, 115, 101, 109, 95, 110, 111, 99, 105, 251};


//: %zd人未读
Byte kStr_importanceName[] = {93, 12, 13, 151, 144, 244, 15, 41, 44, 203, 100, 225, 219, 187, 175, 232, 170, 156, 230, 186, 186, 228, 100, 122, 37, 243};


//: should offer cell content class name
Byte kStr_nagValue[] = {41, 36, 6, 213, 166, 72, 101, 109, 97, 110, 32, 115, 115, 97, 108, 99, 32, 116, 110, 101, 116, 110, 111, 99, 32, 108, 108, 101, 99, 32, 114, 101, 102, 102, 111, 32, 100, 108, 117, 111, 104, 115, 197};


//: icon_accessory_normal
Byte kStr_exposeSpeciesTitle[] = {20, 21, 4, 19, 108, 97, 109, 114, 111, 110, 95, 121, 114, 111, 115, 115, 101, 99, 99, 97, 95, 110, 111, 99, 105, 208};


//: message_read_no
Byte kStr_rabbiValue[] = {15, 15, 6, 135, 36, 6, 111, 110, 95, 100, 97, 101, 114, 95, 101, 103, 97, 115, 115, 101, 109, 121};


//: icon_accessory_selected
Byte kStr_successMessageBlanketData[] = {39, 23, 9, 185, 230, 192, 237, 97, 121, 100, 101, 116, 99, 101, 108, 101, 115, 95, 121, 114, 111, 115, 115, 101, 99, 99, 97, 95, 110, 111, 99, 105, 164};

// __DEBUG__
// __CLOSE_PRINT__
//
//  CypherMediaCompartmentViewCell.m
// On
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZZZMessageCell.h"
#import "CypherMediaCompartmentViewCell.h"
//: #import "ZZZMessageModel.h"
#import "CollectionModel.h"
//: #import "ZZZAvatarImageView.h"
#import "ShankView.h"
//: #import "ZZZBadgeView.h"
#import "ChromaticView.h"
//: #import "ZZZSessionMessageContentView.h"
#import "ShouldControl.h"
//: #import "ZZZKitUtil.h"
#import "TingText.h"
//: #import "ZZZSessionAudioContentView.h"
#import "WithCommentNameView.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "DataKitDependency.h"
#import "DataKitDependency.h"
//: #import "M80AttributedLabel.h"
#import "GreenNameView.h"
//: #import "UIImage+AppleProjectKit.h"
#import "UIImage+On.h"
//: #import "ZZZSessionUnknowContentView.h"
#import "CountDisableControl.h"
//: #import "ZZZKitConfig.h"
#import "CaseConfig.h"
//: #import "AppleProjectKit.h"
#import "On.h"
//: #import "ZZZSessionTextContentView.h"
#import "ColorVersionTextView.h"

//: @interface ZZZMessageCell()<NIMPlayAudioUIDelegate,NIMMessageContentViewDelegate>
@interface CypherMediaCompartmentViewCell()<ValueUidelegate,NameDelegate>
{
    //: UILongPressGestureRecognizer *_longPressGesture;
    UILongPressGestureRecognizer *_longPressGesture;
    //: UIMenuController *_menuController;
    UIMenuController *_menuController;
}

//: @property (nonatomic,strong) ZZZMessageModel *model;
@property (nonatomic,strong) CollectionModel *model;

//: @property (nonatomic,copy) NSArray *customViews;
@property (nonatomic,copy) NSArray *customViews;

//: @end
@end



//: @implementation ZZZMessageCell
@implementation CypherMediaCompartmentViewCell

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    //: if (self = [super initWithStyle:UITableViewCellStyleDefault reuseIdentifier:reuseIdentifier]) {
    if (self = [super initWithStyle:UITableViewCellStyleDefault reuseIdentifier:reuseIdentifier]) {
        //: self.selectionStyle = UITableViewCellSelectionStyleNone;
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        //: [self makeComponents];
        [self disableOf];
        //: [self makeGesture];
        [self value];

    }
    //: return self;
    return self;
}

//: - (void)dealloc
- (void)dealloc
{
    //: [self removeGestureRecognizer:_longPressGesture];
    [self removeGestureRecognizer:_longPressGesture];
}

//: - (void)makeComponents
- (void)disableOf
{
    //: static UIImage *NIMRetryButtonImage;
    static UIImage *NIMRetryButtonImage;
    //: static UIImage *NIMSelectButtonNormalImage;
    static UIImage *NIMSelectButtonNormalImage;
    //: static UIImage *NIMSelectButtonHighImage;
    static UIImage *NIMSelectButtonHighImage;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: NIMRetryButtonImage = [UIImage imageNamed:@"icon_message_cell_error"];
        NIMRetryButtonImage = [UIImage imageNamed:StringFromAdditionData(kStr_universeOughtCrowdedData)];
        //: NIMSelectButtonNormalImage = [UIImage imageNamed:@"icon_accessory_normal"];
        NIMSelectButtonNormalImage = [UIImage imageNamed:StringFromAdditionData(kStr_exposeSpeciesTitle)];
        //: NIMSelectButtonHighImage = [UIImage imageNamed:@"icon_accessory_selected"];
        NIMSelectButtonHighImage = [UIImage imageNamed:StringFromAdditionData(kStr_successMessageBlanketData)];
    //: });
    });
    //retyrBtn
    //: _retryButton = [UIButton buttonWithType:UIButtonTypeCustom];
    _retryButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: [_retryButton setImage:NIMRetryButtonImage forState:UIControlStateNormal];
    [_retryButton setImage:NIMRetryButtonImage forState:UIControlStateNormal];
    //: [_retryButton setImage:NIMRetryButtonImage forState:UIControlStateHighlighted];
    [_retryButton setImage:NIMRetryButtonImage forState:UIControlStateHighlighted];
    //: [_retryButton setFrame:CGRectMake(0, 0, 20, 20)];
    [_retryButton setFrame:CGRectMake(0, 0, 20, 20)];
    //: [_retryButton addTarget:self action:@selector(onRetryMessage:) forControlEvents:UIControlEventTouchUpInside];
    [_retryButton addTarget:self action:@selector(alongMaxMessageShould:) forControlEvents:UIControlEventTouchUpInside];
    //: [self.contentView addSubview:_retryButton];
    [self.contentView addSubview:_retryButton];

    //audioPlayedIcon
    //: _audioPlayedIcon = [ZZZBadgeView viewWithBadgeTip:@""];
    _audioPlayedIcon = [ChromaticView to:@""];
//    _audioPlayedIcon.badgeBackgroundColor = RGB_COLOR_String(@"#612CF9");
//    [self.contentView addSubview:_audioPlayedIcon];

    //traningActivityIndicator
    //: _traningActivityIndicator = [[UIActivityIndicatorView alloc] initWithFrame:CGRectMake(0,0,20,20)];
    _traningActivityIndicator = [[UIActivityIndicatorView alloc] initWithFrame:CGRectMake(0,0,20,20)];
    //: [self.contentView addSubview:_traningActivityIndicator];
    [self.contentView addSubview:_traningActivityIndicator];

    //headerView
    //: _headImageView = [[ZZZAvatarImageView alloc] initWithFrame:CGRectMake(0, 0, 40, 40)];
    _headImageView = [[ShankView alloc] initWithFrame:CGRectMake(0, 0, 40, 40)];
    //: [_headImageView addTarget:self action:@selector(onTapAvatar:) forControlEvents:UIControlEventTouchUpInside];
    [_headImageView addTarget:self action:@selector(endBottom:) forControlEvents:UIControlEventTouchUpInside];
    //: UILongPressGestureRecognizer *gesture = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(onLongPressAvatar:)];
    UILongPressGestureRecognizer *gesture = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(barsed:)];
    //: [_headImageView addGestureRecognizer:gesture];
    [_headImageView addGestureRecognizer:gesture];
    //: [self.contentView addSubview:_headImageView];
    [self.contentView addSubview:_headImageView];

    //nicknamel
    //: _nameLabel = [[UILabel alloc] init];
    _nameLabel = [[UILabel alloc] init];
    //: _nameLabel.backgroundColor = [UIColor clearColor];
    _nameLabel.backgroundColor = [UIColor clearColor];
    //: _nameLabel.opaque = YES;
    _nameLabel.opaque = YES;
    //: _nameLabel.font = [AppleProjectKit sharedKit].config.nickFont;
    _nameLabel.font = [On along].config.nickFont;
    //: _nameLabel.textColor = [AppleProjectKit sharedKit].config.nickColor;
    _nameLabel.textColor = [On along].config.nickColor;
    //: [_nameLabel setHidden:YES];
    [_nameLabel setHidden:YES];
    //: [self.contentView addSubview:_nameLabel];
    [self.contentView addSubview:_nameLabel];

    //readlabel
    //: _readButton = [UIButton buttonWithType:UIButtonTypeCustom];
    _readButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: _readButton.opaque = YES;
    _readButton.opaque = YES;
    //: _readButton.titleLabel.font = [AppleProjectKit sharedKit].config.receiptFont;
    _readButton.titleLabel.font = [On along].config.receiptFont;
    //: [_readButton setTitleColor:[AppleProjectKit sharedKit].config.receiptColor forState:UIControlStateNormal];
    [_readButton setTitleColor:[On along].config.receiptColor forState:UIControlStateNormal];
    //: [_readButton setTitleColor:[AppleProjectKit sharedKit].config.receiptColor forState:UIControlStateHighlighted];
    [_readButton setTitleColor:[On along].config.receiptColor forState:UIControlStateHighlighted];
    //: [_readButton setHidden:YES];
    [_readButton setHidden:YES];
    //: [_readButton addTarget:self action:@selector(onPressReadButton:) forControlEvents:UIControlEventTouchUpInside];
    [_readButton addTarget:self action:@selector(withInfo:) forControlEvents:UIControlEventTouchUpInside];
    //: [self.contentView addSubview:_readButton];
    [self.contentView addSubview:_readButton];

    //selectButton
    //: _selectButton = [UIButton buttonWithType:UIButtonTypeCustom];
    _selectButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: [_selectButton setImage:NIMSelectButtonNormalImage forState:UIControlStateNormal];
    [_selectButton setImage:NIMSelectButtonNormalImage forState:UIControlStateNormal];
    //: [_selectButton setImage:NIMSelectButtonHighImage forState:UIControlStateSelected];
    [_selectButton setImage:NIMSelectButtonHighImage forState:UIControlStateSelected];
    //: [_selectButton sizeToFit];
    [_selectButton sizeToFit];
    //: [self.contentView addSubview:_selectButton];
    [self.contentView addSubview:_selectButton];
    //: _selectButton.hidden = YES;
    _selectButton.hidden = YES;

    //bubblesBackgroundView
    //: _bubblesBackgroundView = [[UIImageView alloc] init];
    _bubblesBackgroundView = [[UIImageView alloc] init];

    //: [self.contentView addSubview:_bubblesBackgroundView];
    [self.contentView addSubview:_bubblesBackgroundView];

    //selectButtonMask
    //: _selectButtonMask = [UIButton buttonWithType:UIButtonTypeCustom];
    _selectButtonMask = [UIButton buttonWithType:UIButtonTypeCustom];
    //: [_selectButtonMask setBackgroundColor:[UIColor clearColor]];
    [_selectButtonMask setBackgroundColor:[UIColor clearColor]];
    //: [_selectButtonMask addTarget:self action:@selector(onTapSelectedButton:) forControlEvents:UIControlEventTouchUpInside];
    [_selectButtonMask addTarget:self action:@selector(messaged:) forControlEvents:UIControlEventTouchUpInside];
    //: [self.contentView addSubview:_selectButtonMask];
    [self.contentView addSubview:_selectButtonMask];
    //: _selectButtonMask.hidden = YES;
    _selectButtonMask.hidden = YES;


}

//: - (void)makeGesture{
- (void)value{
    //: _longPressGesture = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(longGesturePress:)];
    _longPressGesture = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(sessionned:)];
    //: [self addGestureRecognizer:_longPressGesture];
    [self addGestureRecognizer:_longPressGesture];
}

//: - (void)refreshData:(ZZZMessageModel *)data
- (void)upgradeRecord:(CollectionModel *)data
{
    //: self.model = data;
    self.model = data;
    //: if ([self checkData])
    if ([self blue])
    {
        //: [self.model updateLayoutConfig];
        [self.model optionOffConfig];
        //: [self refresh];
        [self backgroundSendState];
    }
}

//: - (BOOL)checkData{
- (BOOL)blue{
    //: return [self.model isKindOfClass:[ZZZMessageModel class]];
    return [self.model isKindOfClass:[CollectionModel class]];
}

//: - (void)refresh
- (void)backgroundSendState
{
    //: self.contentView.hidden = NO;
    self.contentView.hidden = NO;

    // 撤回的消息 发送自定义消息
    //: if (self.model.message.messageType == NIMMessageTypeCustom && self.model.message.messageSubType == 20) {
    if (self.model.message.messageType == NIMMessageTypeCustom && self.model.message.messageSubType == 20) {
        //: self.contentView.hidden = YES;
        self.contentView.hidden = YES;
    }

    //: NIMNotificationObject *object = self.model.message.messageObject;
    NIMNotificationObject *object = self.model.message.messageObject;
    //: if (object && [object isKindOfClass:NIMNotificationObject.class] && object.notificationType == NIMNotificationTypeTeam)
    if (object && [object isKindOfClass:NIMNotificationObject.class] && object.notificationType == NIMNotificationTypeTeam)
    {
        //: self.contentView.hidden = YES;
        self.contentView.hidden = YES;
    }

    //: if(!self.model.shouldShowLeft){
    if(!self.model.shouldShowLeft){
        //: self.model.shouldShowAvatar = NO;
        self.model.shouldShowAvatar = NO;
    //: }else{
    }else{
        //: self.model.shouldShowAvatar = YES;
        self.model.shouldShowAvatar = YES;
    }


    //: [self refreshBubblesBackgroundView];
    [self view];
    //: [self addReplyedContentViewIfNotExist];
    [self ting];
    //: [self addContentViewIfNotExist];
    [self promotion];
    //: [self addUserCustomViews];
    [self sub];

//    self.backgroundColor = [On sharedKit].config.cellBackgroundColor;
    //: self.backgroundColor = [UIColor clearColor];
    self.backgroundColor = [UIColor clearColor];

    //: if ([self needShowSelectButton]) {
    if ([self listing]) {
        //: _selectButton.selected = self.model.selected;
        _selectButton.selected = self.model.selected;
        //: _selectButtonMask.hidden = NO;
        _selectButtonMask.hidden = NO;
    }
    //: if ([self needShowAvatar])
    if ([self downright])
    {
        //: [_headImageView setAvatarByMessage:self.model.message];
        [_headImageView setEvent:self.model.message];
    }

    //: if([self needShowNickName])
    if([self table])
    {
        //: NSString *nick = [ZZZKitUtil showNick:self.model.message.from inMessage:self.model.message];
        NSString *nick = [TingText max:self.model.message.from team:self.model.message];
        //: [self.nameLabel setText:nick];
        [self.nameLabel setText:nick];
    }
    //: [_nameLabel setHidden:![self needShowNickName]];
    [_nameLabel setHidden:![self table]];


    //: BOOL isActivityIndicatorHidden = [self activityIndicatorHidden];
    BOOL isActivityIndicatorHidden = [self content];
    //: if (isActivityIndicatorHidden)
    if (isActivityIndicatorHidden)
    {
        //: [_traningActivityIndicator stopAnimating];
        [_traningActivityIndicator stopAnimating];
    }
    //: else
    else
    {
        //: [_traningActivityIndicator startAnimating];
        [_traningActivityIndicator startAnimating];
    }
//    [_traningActivityIndicator setHidden:isActivityIndicatorHidden];
    //: [_traningActivityIndicator setHidden:YES];
    [_traningActivityIndicator setHidden:YES];
    //: [_retryButton setHidden:[self retryButtonHidden]];
    [_retryButton setHidden:[self imageRandom]];
    //: [_audioPlayedIcon setHidden:[self unreadHidden]];
    [_audioPlayedIcon setHidden:[self push]];

    //: [self refreshReadButton];
    [self show];

    //: if ([_bubbleView isKindOfClass:[ZZZSessionTextContentView class]]) {
    if ([_bubbleView isKindOfClass:[ColorVersionTextView class]]) {
        //: [self disableLongPress:YES];
        [self semipermanentPress:YES];
    //: } else {
    } else {
        //: [self disableLongPress:NO];
        [self semipermanentPress:NO];
    }

    //: [self setNeedsLayout];
    [self setNeedsLayout];
}

//: - (void)refreshBubblesBackgroundView
- (void)view
{
    //: if (self.model.message.messageType == 1) {
    if (self.model.message.messageType == 1) {
//    if (self.model.message.messageSubType == 77) {
        //: _bubblesBackgroundView.hidden = YES;
        _bubblesBackgroundView.hidden = YES;
    //: }else{
    }else{
        //: _bubblesBackgroundView.hidden = ![[AppleProjectKit sharedKit].layoutConfig shouldDisplayBubbleBackground:self.model];;
        _bubblesBackgroundView.hidden = ![[On along].layoutConfig touch:self.model];;
        //: [_bubblesBackgroundView setImage:[self chatBubbleImageForState:UIControlStateNormal]];
        [_bubblesBackgroundView setImage:[self quickState:UIControlStateNormal]];
        //: [_bubblesBackgroundView setHighlightedImage:[self chatBubbleImageForState:UIControlStateHighlighted]];
        [_bubblesBackgroundView setHighlightedImage:[self quickState:UIControlStateHighlighted]];
    }
}


//: -(void)refreshReadButton{
-(void)show{
    //: BOOL isreade = self.model.message.isRemoteRead;
    BOOL isreade = self.model.message.isRemoteRead;
    //: BOOL showMessageRead = [[NIMUserDefaults standardUserDefaults].showMessageRead boolValue];
    BOOL showMessageRead = [[AlongDefaults off].showMessageRead boolValue];
    //: if (self.model.message.isOutgoingMsg && showMessageRead) {
    if (self.model.message.isOutgoingMsg && showMessageRead) {
//        if (self.model.message.isOutgoingMsg) {
        //: [_readButton setHidden:NO];
        [_readButton setHidden:NO];
        //: [_readButton setImage:[UIImage imageNamed:@"message_read_yes"] forState:UIControlStateNormal];
        [_readButton setImage:[UIImage imageNamed:StringFromAdditionData(kStr_licenseData)] forState:UIControlStateNormal];

        //: if (self.model.message.session.sessionType == NIMSessionTypeP2P)
        if (self.model.message.session.sessionType == NIMSessionTypeP2P)
        {
            //: if (isreade == NO) {
            if (isreade == NO) {
                //: [_readButton setImage:[UIImage imageNamed:@"message_read_no"] forState:UIControlStateNormal];
                [_readButton setImage:[UIImage imageNamed:StringFromAdditionData(kStr_rabbiValue)] forState:UIControlStateNormal];//@"已读".nim_localized
            }
            //: [_readButton sizeToFit];
            [_readButton sizeToFit];
        }
        //: else if(self.model.message.session.sessionType == NIMSessionTypeTeam)
        else if(self.model.message.session.sessionType == NIMSessionTypeTeam)
        {
            //: [_readButton setTitle:[NSString stringWithFormat:@"%zd%@",self.model.message.teamReceiptInfo.unreadCount,[NTESLanguageManager getTextWithKey:@"msg_view_4"]] forState:UIControlStateNormal];
            [_readButton setTitle:[NSString stringWithFormat:@"%zd%@",self.model.message.teamReceiptInfo.unreadCount,[LabelCell tinkleKey:StringFromAdditionData(kStr_billText)]] forState:UIControlStateNormal];//人未读".nim_localized
            //: [_readButton sizeToFit];
            [_readButton sizeToFit];
            //: [_readButton layoutButtonWithEdgeInsetsStyle:(MKButtonEdgeInsetsStyleLeft) imageTitleSpace:3];
            [_readButton holder:(MKButtonEdgeInsetsStyleLeft) number:3];
            //: [_readButton setHidden:YES];
            [_readButton setHidden:YES];
        }
    //: }else{
    }else{
        //: [_readButton setHidden:YES];
        [_readButton setHidden:YES];
    }
}

//: - (void)refreshReadButton_2
- (void)move
{
    //: BOOL hidden = [self readLabelHidden];
    BOOL hidden = [self with];
    //: [_readButton setHidden:hidden];
    [_readButton setHidden:hidden];
    //: if (!hidden)
    if (!hidden)
    {
        //: if (self.model.message.session.sessionType == NIMSessionTypeP2P)
        if (self.model.message.session.sessionType == NIMSessionTypeP2P)
        {
            //: [_readButton setTitle:@"已读" forState:UIControlStateNormal];
            [_readButton setTitle:@"已读" forState:UIControlStateNormal];//@"已读".nim_localized
            //: [_readButton sizeToFit];
            [_readButton sizeToFit];
        }
        //: else if(self.model.message.session.sessionType == NIMSessionTypeTeam)
        else if(self.model.message.session.sessionType == NIMSessionTypeTeam)
        {
            //: [_readButton setTitle:[NSString stringWithFormat:@"%zd人未读".nim_localized,self.model.message.teamReceiptInfo.unreadCount] forState:UIControlStateNormal];
            [_readButton setTitle:[NSString stringWithFormat:StringFromAdditionData(kStr_importanceName).start,self.model.message.teamReceiptInfo.unreadCount] forState:UIControlStateNormal];
            //: [_readButton sizeToFit];
            [_readButton sizeToFit];
        }
    }
}

//: - (void)addReplyedContentViewIfNotExist
- (void)ting
{
    //: if ([self.model needShowRepliedContent])
    if ([self.model tapTitle])
    {
        //: if (!_replyedBubbleView)
        if (!_replyedBubbleView)
        {
            //: id<ZZZCellLayoutConfig> layoutConfig = [[AppleProjectKit sharedKit] layoutConfig];
            id<SumConfig> layoutConfig = [[On along] layoutConfig];
            //: NSString *contentStr = [layoutConfig replyContent:self.model];
            NSString *contentStr = [layoutConfig exhibit:self.model];
            //: NSAssert([contentStr length] > 0, @"should offer cell content class name");
            NSAssert([contentStr length] > 0, StringFromAdditionData(kStr_nagValue));
            //: Class clazz = NSClassFromString(contentStr);
            Class clazz = NSClassFromString(contentStr);
            //: ZZZSessionMessageContentView *contentView = [[clazz alloc] initSessionMessageContentView];
            ShouldControl *contentView = [[clazz alloc] initDistance];
            //: NSAssert(contentView, @"can not init content view");
            NSAssert(contentView, StringFromAdditionData(kStr_widelyTitle));
            //: _replyedBubbleView = contentView;
            _replyedBubbleView = contentView;
            //: _replyedBubbleView.delegate = self;
            _replyedBubbleView.delegate = self;
            //: [self.contentView insertSubview:_replyedBubbleView belowSubview:_selectButtonMask];
            [self.contentView insertSubview:_replyedBubbleView belowSubview:_selectButtonMask];
        }
        //: [_replyedBubbleView refresh:self.model];
        [_replyedBubbleView text:self.model];
        //: [_replyedBubbleView setNeedsLayout];
        [_replyedBubbleView setNeedsLayout];
    }
    //: else if (_replyedBubbleView)
    else if (_replyedBubbleView)
    {
        //: [_replyedBubbleView removeFromSuperview];
        [_replyedBubbleView removeFromSuperview];
        //: _replyedBubbleView = nil;
        _replyedBubbleView = nil;
    }
}

//: - (void)addContentViewIfNotExist
- (void)promotion
{
    //: if (_bubbleView == nil)
    if (_bubbleView == nil)
    {
        //: id<ZZZCellLayoutConfig> layoutConfig = [[AppleProjectKit sharedKit] layoutConfig];
        id<SumConfig> layoutConfig = [[On along] layoutConfig];
        //: NSString *contentStr = [layoutConfig cellContent:self.model];
        NSString *contentStr = [layoutConfig image:self.model];
        //: NSAssert([contentStr length] > 0, @"should offer cell content class name");
        NSAssert([contentStr length] > 0, StringFromAdditionData(kStr_nagValue));
        //: Class clazz = NSClassFromString(contentStr);
        Class clazz = NSClassFromString(contentStr);
        //: ZZZSessionMessageContentView *contentView = [[clazz alloc] initSessionMessageContentView];
        ShouldControl *contentView = [[clazz alloc] initDistance];
        //: NSAssert(contentView, @"can not init content view");
        NSAssert(contentView, StringFromAdditionData(kStr_widelyTitle));
        //: _bubbleView = contentView;
        _bubbleView = contentView;
        //: _bubbleView.delegate = self;
        _bubbleView.delegate = self;
        //: NIMMessageType messageType = self.model.message.messageType;
        NIMMessageType messageType = self.model.message.messageType;
        //: if (messageType == NIMMessageTypeAudio) {
        if (messageType == NIMMessageTypeAudio) {
            //: ((ZZZSessionAudioContentView *)_bubbleView).audioUIDelegate = self;
            ((WithCommentNameView *)_bubbleView).audioUIDelegate = self;
        }
        //: [self.contentView insertSubview:_bubbleView belowSubview:_selectButtonMask];
        [self.contentView insertSubview:_bubbleView belowSubview:_selectButtonMask];
    }

    //: [_bubbleView refresh:self.model];
    [_bubbleView text:self.model];
    //: [_bubbleView setNeedsLayout];
    [_bubbleView setNeedsLayout];
}

//: - (void)addUserCustomViews
- (void)sub
{
    //: for (UIView *view in self.customViews) {
    for (UIView *view in self.customViews) {
        //: [view removeFromSuperview];
        [view removeFromSuperview];
    }
    //: id<ZZZCellLayoutConfig> layoutConfig = [[AppleProjectKit sharedKit] layoutConfig];
    id<SumConfig> layoutConfig = [[On along] layoutConfig];
    //: self.customViews = [layoutConfig customViews:self.model];
    self.customViews = [layoutConfig topImage:self.model];

    //: for (UIView *view in self.customViews) {
    for (UIView *view in self.customViews) {
        //: [self.contentView addSubview:view];
        [self.contentView addSubview:view];
    }
}

//: - (void)layoutSubviews
- (void)layoutSubviews
{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: [self layoutSelectButton];
    [self cityCenter];
    //: [self layoutAvatar];
    [self background];
    //: [self layoutNameLabel];
    [self greenLabel];
    //: [self layoutReplyBubbleView];
    [self recent];
    //: [self layoutBubbleView];
    [self panoramicView];
    //: [self fixReplyBubbleAndBubbleLeft];
    [self tab];
    //: [self layoutBubblesBackgroundView];
    [self recording];
    //: [self layoutRetryButton];
    [self withShadow];
    //: [self layoutAudioPlayedIcon];
    [self itemFind];
    //: [self layoutActivityIndicator];
    [self showClear];
    //: [self layoutReadButton];
    [self handle];
}

//: - (void)layoutSelectButton {
- (void)cityCenter {
    //: BOOL needShow = [self needShowSelectButton];
    BOOL needShow = [self listing];
    //: if (needShow) {
    if (needShow) {
        //: _selectButton.hidden = self.model.disableSelected;
        _selectButton.hidden = self.model.disableSelected;
        //: _selectButtonMask.hidden = NO;
        _selectButtonMask.hidden = NO;
        //: _selectButtonMask.userInteractionEnabled = !self.model.disableSelected;
        _selectButtonMask.userInteractionEnabled = !self.model.disableSelected;
        //: _selectButton.frame = [self selectButtonRect];
        _selectButton.frame = [self extra];
        //: _selectButtonMask.frame = self.contentView.bounds;
        _selectButtonMask.frame = self.contentView.bounds;
    //: } else {
    } else {
        //: _selectButton.hidden = YES;
        _selectButton.hidden = YES;
        //: _selectButtonMask.hidden = YES;
        _selectButtonMask.hidden = YES;
    }
}

//: - (void)layoutAvatar
- (void)background
{
    //: BOOL needShow = [self needShowAvatar];
    BOOL needShow = [self downright];
    //: _headImageView.hidden = !needShow;
    _headImageView.hidden = !needShow;
    //: if (needShow) {
    if (needShow) {
        //: _headImageView.frame = [self avatarViewRect];
        _headImageView.frame = [self quickSelected];
    }
}

//: - (void)layoutNameLabel
- (void)greenLabel
{
    //: if ([self needShowNickName]) {
    if ([self table]) {
        //: CGFloat otherBubbleOriginX = ![self needShowSelectButton] ? self.cellPaddingToNick.x : _selectButton.nim_right + self.cellPaddingToNick.x;
        CGFloat otherBubbleOriginX = ![self listing] ? self.assemblageNick.x : _selectButton.nim_right + self.assemblageNick.x;
        //: CGFloat otherBubbleOriginy = self.cellPaddingToNick.y;
        CGFloat otherBubbleOriginy = self.assemblageNick.y;
        //: CGFloat otherNickNameWidth = 200.f;
        CGFloat otherNickNameWidth = 200.f;
        //: CGFloat otherNickNameHeight = 20.f;
        CGFloat otherNickNameHeight = 20.f;
        //: CGFloat cellPaddingToProtrait = self.cellPaddingToAvatar.x;
        CGFloat cellPaddingToProtrait = self.anKeyImage.x;
        //: CGFloat avatarWidth = self.headImageView.nim_width;
        CGFloat avatarWidth = self.headImageView.nim_width;
        //: CGFloat myBubbleOriginX = self.nim_width - cellPaddingToProtrait - avatarWidth - self.cellPaddingToNick.x;
        CGFloat myBubbleOriginX = self.nim_width - cellPaddingToProtrait - avatarWidth - self.assemblageNick.x;
        //: _nameLabel.frame = self.model.shouldShowLeft ? CGRectMake(otherBubbleOriginX,otherBubbleOriginy,
        _nameLabel.frame = self.model.shouldShowLeft ? CGRectMake(otherBubbleOriginX,otherBubbleOriginy,
                                                                  //: otherNickNameWidth, otherNickNameHeight) : CGRectMake(myBubbleOriginX,otherBubbleOriginy, otherNickNameWidth,otherNickNameHeight) ;
                                                                  otherNickNameWidth, otherNickNameHeight) : CGRectMake(myBubbleOriginX,otherBubbleOriginy, otherNickNameWidth,otherNickNameHeight) ;
    }
}

//: - (void)layoutReplyBubbleView
- (void)recent
{
    //: if (!_replyedBubbleView)
    if (!_replyedBubbleView)
    {
        //: return;
        return;
    }

    //: CGSize size = [self.model replyContentSize:self.nim_width];
    CGSize size = [self.model time:self.nim_width];
    //: UIEdgeInsets insets = self.model.replyContentViewInsets;
    UIEdgeInsets insets = self.model.replyContentViewInsets;
    //: size.width = size.width + insets.left * 2 + insets.right;
    size.width = size.width + insets.left * 2 + insets.right;
    //: size.height = size.height + insets.top + insets.bottom;
    size.height = size.height + insets.top + insets.bottom;
    //: _replyedBubbleView.nim_size = size;
    _replyedBubbleView.nim_size = size;

    //: UIEdgeInsets contentInsets = self.model.replyBubbleViewInsets;
    UIEdgeInsets contentInsets = self.model.replyBubbleViewInsets;
    //: CGFloat left = 0;
    CGFloat left = 0;
    //: CGFloat protraitRightToBubble = 5.f;
    CGFloat protraitRightToBubble = 5.f;
    //: if (!self.model.shouldShowLeft)
    if (!self.model.shouldShowLeft)
    {
        //: CGFloat right = self.model.shouldShowAvatar? CGRectGetMinX(self.headImageView.frame) - protraitRightToBubble : self.nim_width;
        CGFloat right = self.model.shouldShowAvatar? CGRectGetMinX(self.headImageView.frame) - protraitRightToBubble : self.nim_width;
        //: left = right - CGRectGetWidth(self.replyedBubbleView.bounds);
        left = right - CGRectGetWidth(self.replyedBubbleView.bounds);
    //: } else {
    } else {
        //: if (![self needShowSelectButton]) {
        if (![self listing]) {
            //: left = contentInsets.left;
            left = contentInsets.left;
        //: } else {
        } else {
            //: left = contentInsets.left + _selectButton.nim_right + protraitRightToBubble;
            left = contentInsets.left + _selectButton.nim_right + protraitRightToBubble;
        }
    }

    //: _replyedBubbleView.nim_left = left;
    _replyedBubbleView.nim_left = left;
    //: _replyedBubbleView.nim_top = contentInsets.top;
    _replyedBubbleView.nim_top = contentInsets.top;
}

//: - (void)layoutBubbleView
- (void)panoramicView
{
    //: CGSize size = [self.model contentSize:self.nim_width];
    CGSize size = [self.model info:self.nim_width];
    //: UIEdgeInsets insets = self.model.contentViewInsets;
    UIEdgeInsets insets = self.model.contentViewInsets;
    //: size.width = size.width + insets.left + insets.right;
    size.width = size.width + insets.left + insets.right;
    //: size.height = size.height + insets.top + insets.bottom;
    size.height = size.height + insets.top + insets.bottom;
    //: _bubbleView.nim_size = size;
    _bubbleView.nim_size = size;

    //: UIEdgeInsets contentInsets = self.model.bubbleViewInsets;
    UIEdgeInsets contentInsets = self.model.bubbleViewInsets;
    //: CGFloat left = 0;
    CGFloat left = 0;
    //: CGFloat protraitRightToBubble = 5.f;
    CGFloat protraitRightToBubble = 5.f;
    //: if (!self.model.shouldShowLeft)
    if (!self.model.shouldShowLeft)
    {
        //: CGFloat right = self.model.shouldShowAvatar? CGRectGetMinX(self.headImageView.frame) - protraitRightToBubble : self.nim_width;
        CGFloat right = self.model.shouldShowAvatar? CGRectGetMinX(self.headImageView.frame) - protraitRightToBubble : self.nim_width;
        //: left = right - CGRectGetWidth(self.bubbleView.bounds);
        left = right - CGRectGetWidth(self.bubbleView.bounds);
    //: } else {
    } else {
        //: if (![self needShowSelectButton]) {
        if (![self listing]) {
            //: left = contentInsets.left;
            left = contentInsets.left;
        //: } else {
        } else {
            //: left = contentInsets.left + _selectButton.nim_right + protraitRightToBubble;
            left = contentInsets.left + _selectButton.nim_right + protraitRightToBubble;
        }
    }

    //: _bubbleView.nim_left = left;
    _bubbleView.nim_left = left;
    //: if (_replyedBubbleView)
    if (_replyedBubbleView)
    {
        //: _bubbleView.nim_top = self.replyedBubbleView.nim_bottom;
        _bubbleView.nim_top = self.replyedBubbleView.nim_bottom;
    }
    //: else
    else
    {
        //: _bubbleView.nim_top = contentInsets.top;
        _bubbleView.nim_top = contentInsets.top;
    }

}

//: - (void)fixReplyBubbleAndBubbleLeft
- (void)tab
{
    //: if (!self.replyedBubbleView)
    if (!self.replyedBubbleView)
    {
        //: return;
        return;
    }

    //: CGFloat left = 0;
    CGFloat left = 0;
    //: if (!self.model.shouldShowLeft)
    if (!self.model.shouldShowLeft)
    {

        //: left = self.replyedBubbleView.nim_left < self.bubbleView.nim_left ? self.replyedBubbleView.nim_left : self.bubbleView.nim_left;
        left = self.replyedBubbleView.nim_left < self.bubbleView.nim_left ? self.replyedBubbleView.nim_left : self.bubbleView.nim_left;
    }
    //: else
    else
    {
        //: left = self.replyedBubbleView.nim_left > self.bubbleView.nim_left ? self.replyedBubbleView.nim_left : self.bubbleView.nim_left;
        left = self.replyedBubbleView.nim_left > self.bubbleView.nim_left ? self.replyedBubbleView.nim_left : self.bubbleView.nim_left;
    }

    //: self.replyedBubbleView.nim_left = left;
    self.replyedBubbleView.nim_left = left;
    //: self.bubbleView.nim_left = left;
    self.bubbleView.nim_left = left;
}

//: - (void)layoutBubblesBackgroundView
- (void)recording
{
    //: CGFloat height = self.replyedBubbleView.nim_height + self.bubbleView.nim_height;
    CGFloat height = self.replyedBubbleView.nim_height + self.bubbleView.nim_height;
    //: CGFloat width = self.replyedBubbleView.nim_width > self.bubbleView.nim_width ? self.replyedBubbleView.nim_width : self.bubbleView.nim_width;
    CGFloat width = self.replyedBubbleView.nim_width > self.bubbleView.nim_width ? self.replyedBubbleView.nim_width : self.bubbleView.nim_width;
    //: self.bubblesBackgroundView.nim_size = CGSizeMake(width, height);
    self.bubblesBackgroundView.nim_size = CGSizeMake(width, height);
    //: self.bubblesBackgroundView.nim_left = self.bubbleView.nim_left;
    self.bubblesBackgroundView.nim_left = self.bubbleView.nim_left;

    //: if (self.replyedBubbleView)
    if (self.replyedBubbleView)
    {
        //: self.bubblesBackgroundView.nim_top = self.replyedBubbleView.nim_top;
        self.bubblesBackgroundView.nim_top = self.replyedBubbleView.nim_top;
    }
    //: else
    else
    {
        //: self.bubblesBackgroundView.nim_top = self.bubbleView.nim_top;
        self.bubblesBackgroundView.nim_top = self.bubbleView.nim_top;
    }
}


//: - (void)layoutActivityIndicator
- (void)showClear
{
    //: if (_traningActivityIndicator.isAnimating) {
    if (_traningActivityIndicator.isAnimating) {
        //: CGFloat centerX = 0;
        CGFloat centerX = 0;
        //: if (!self.model.shouldShowLeft)
        if (!self.model.shouldShowLeft)
        {
            //: centerX = CGRectGetMinX(_bubblesBackgroundView.frame) - [self retryButtonBubblePadding] - CGRectGetWidth(_traningActivityIndicator.bounds)/2;;
            centerX = CGRectGetMinX(_bubblesBackgroundView.frame) - [self video] - CGRectGetWidth(_traningActivityIndicator.bounds)/2;;
        }
        //: else
        else
        {
            //: centerX = CGRectGetMaxX(_bubblesBackgroundView.frame) + [self retryButtonBubblePadding] + CGRectGetWidth(_traningActivityIndicator.bounds)/2;
            centerX = CGRectGetMaxX(_bubblesBackgroundView.frame) + [self video] + CGRectGetWidth(_traningActivityIndicator.bounds)/2;
        }
        //: self.traningActivityIndicator.center = CGPointMake(centerX,
        self.traningActivityIndicator.center = CGPointMake(centerX,
                                                           //: _bubblesBackgroundView.center.y);
                                                           _bubblesBackgroundView.center.y);
    }
}

//: - (void)layoutRetryButton
- (void)withShadow
{
    //: if (!_retryButton.isHidden) {
    if (!_retryButton.isHidden) {
        //: CGFloat centerX = 0;
        CGFloat centerX = 0;
        //: if (self.model.shouldShowLeft)
        if (self.model.shouldShowLeft)
        {
            //: centerX = CGRectGetMaxX(_bubblesBackgroundView.frame) + [self retryButtonBubblePadding] +CGRectGetWidth(_retryButton.bounds)/2;
            centerX = CGRectGetMaxX(_bubblesBackgroundView.frame) + [self video] +CGRectGetWidth(_retryButton.bounds)/2;
        }
        //: else
        else
        {
            //: centerX = CGRectGetMinX(_bubblesBackgroundView.frame) - [self retryButtonBubblePadding] - CGRectGetWidth(_retryButton.bounds)/2;
            centerX = CGRectGetMinX(_bubblesBackgroundView.frame) - [self video] - CGRectGetWidth(_retryButton.bounds)/2;
        }

        //: _retryButton.center = CGPointMake(centerX, _bubblesBackgroundView.center.y);
        _retryButton.center = CGPointMake(centerX, _bubblesBackgroundView.center.y);
    }
}

//: - (void)layoutAudioPlayedIcon{
- (void)itemFind{
    //: if (!_audioPlayedIcon.hidden) {
    if (!_audioPlayedIcon.hidden) {
        //: CGFloat padding = [self audioPlayedIconBubblePadding];
        CGFloat padding = [self changeContent];
        //: if (self.model.shouldShowLeft)
        if (self.model.shouldShowLeft)
        {
            //: _audioPlayedIcon.nim_left = _bubblesBackgroundView.nim_right + padding;
            _audioPlayedIcon.nim_left = _bubblesBackgroundView.nim_right + padding;
        }
        //: else
        else
        {
            //: _audioPlayedIcon.nim_right = _bubblesBackgroundView.nim_left - padding;
            _audioPlayedIcon.nim_right = _bubblesBackgroundView.nim_left - padding;
        }
//        _audioPlayedIcon.nim_top = _bubblesBackgroundView.nim_top;
        //: _audioPlayedIcon.nim_centerY = _bubblesBackgroundView.nim_centerY;
        _audioPlayedIcon.nim_centerY = _bubblesBackgroundView.nim_centerY;
    }
}

//: - (void)layoutReadButton{
- (void)handle{

    //: if (!_readButton.isHidden) {
    if (!_readButton.isHidden) {

        //: CGFloat left = _bubblesBackgroundView.nim_left;
        CGFloat left = _bubblesBackgroundView.nim_left;
        //: CGFloat bottom = _bubblesBackgroundView.nim_bottom;
        CGFloat bottom = _bubblesBackgroundView.nim_bottom;

        //: _readButton.nim_left = left - CGRectGetWidth(_readButton.bounds) - [self readButtonBubblePadding];
        _readButton.nim_left = left - CGRectGetWidth(_readButton.bounds) - [self writtenRecord];
//        _readButton.nim_bottom = bottom;
        //: _readButton.nim_centerY = _bubblesBackgroundView.nim_centerY;
        _readButton.nim_centerY = _bubblesBackgroundView.nim_centerY;

    }
}

//: #pragma mark - NIMMessageContentViewDelegate
#pragma mark - NameDelegate
//: - (void)onCatchEvent:(ZZZKitEvent *)event{
- (void)inputStop:(ItemTap *)event{
    //: if ([self.delegate respondsToSelector:@selector(onTapCell:)]) {
    if ([self.delegate respondsToSelector:@selector(iconned:)]) {
        //: [self.delegate onTapCell:event];
        [self.delegate iconned:event];
    }
}

//: - (void)disableLongPress:(BOOL)disable {
- (void)semipermanentPress:(BOOL)disable {
    //: _longPressGesture.enabled = !disable;
    _longPressGesture.enabled = !disable;
}

//: - (BOOL)onLongTap:(NIMMessage *)message complete:(void(^)(id data))complete; {
- (BOOL)longLastingLoadComplete:(NIMMessage *)message image:(void(^)(id data))complete; {
    //: if ([self.delegate respondsToSelector:@selector(onLongPressCell:complete:)]) {
    if ([self.delegate respondsToSelector:@selector(exceptView:clinicMessage:)]) {
        //: return [self.delegate onLongPressCell:message complete:complete];
        return [self.delegate exceptView:message clinicMessage:complete];
    }
    //: return NO;
    return NO;
}

//: - (BOOL)onLongTap:(NIMMessage *)message; {
- (BOOL)dates:(NIMMessage *)message; {
    //: if ([self.delegate respondsToSelector:@selector(onLongPressCell:)]) {
    if ([self.delegate respondsToSelector:@selector(buttonned:)]) {
        //: return [self.delegate onLongPressCell:message];
        return [self.delegate buttonned:message];
    }
    //: return NO;
    return NO;
}



//: #pragma mark - Action
#pragma mark - Action
//: - (void)onRetryMessage:(id)sender
- (void)alongMaxMessageShould:(id)sender
{
    //: if (self.delegate && [self.delegate respondsToSelector:@selector(onRetryMessage:)]) {
    if (self.delegate && [self.delegate respondsToSelector:@selector(alongMaxMessageShould:)]) {
        //: [self.delegate onRetryMessage:self.model.message];
        [self.delegate alongMaxMessageShould:self.model.message];
    }
}

//: - (void)longGesturePress:(UIGestureRecognizer *)gestureRecognizer
- (void)sessionned:(UIGestureRecognizer *)gestureRecognizer
{
    //: if ([gestureRecognizer isKindOfClass:[UILongPressGestureRecognizer class]] &&
    if ([gestureRecognizer isKindOfClass:[UILongPressGestureRecognizer class]] &&
        //: gestureRecognizer.state == UIGestureRecognizerStateBegan) {
        gestureRecognizer.state == UIGestureRecognizerStateBegan) {
        //: if (self.delegate && [self.delegate respondsToSelector:@selector(onLongPressCell:inView:)]) {
        if (self.delegate && [self.delegate respondsToSelector:@selector(longInput:old:)]) {
            //: [self.delegate onLongPressCell:self.model.message
            [self.delegate longInput:self.model.message
                                       //: inView:_bubbleView];
                                       old:_bubbleView];
        }
    }
}

//: #pragma mark - NIMPlayAudioUIDelegate
#pragma mark - ValueUidelegate
//: - (void)startPlayingAudioUI
- (void)colorUi
{
    //: [self refreshData:self.model];
    [self upgradeRecord:self.model];
}

//: - (void)retryDownloadMsg
- (void)can
{
    //: [self onRetryMessage:nil];
    [self alongMaxMessageShould:nil];
}

//: #pragma mark - Private
#pragma mark - Private

//: - (UIImage *)chatBubbleImageForState:(UIControlState)state
- (UIImage *)quickState:(UIControlState)state
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

//: - (CGRect)selectButtonRect {
- (CGRect)extra {
    //: CGSize size = _selectButton.nim_size;
    CGSize size = _selectButton.nim_size;
    //: CGRect avatarRect = [self avatarViewRect];
    CGRect avatarRect = [self quickSelected];
    //: CGFloat y = (avatarRect.size.height - size.height)/2 + avatarRect.origin.y;
    CGFloat y = (avatarRect.size.height - size.height)/2 + avatarRect.origin.y;
    //: CGFloat x = [self selectButtonPadding];
    CGFloat x = [self scheme];
    //: return CGRectMake(x, y, size.width, size.height);
    return CGRectMake(x, y, size.width, size.height);
}

//: - (CGRect)avatarViewRect
- (CGRect)quickSelected
{
    //: CGFloat cellWidth = self.bounds.size.width;
    CGFloat cellWidth = self.bounds.size.width;
    //: CGFloat protraitImageWidth = [self avatarSize].width;
    CGFloat protraitImageWidth = [self ofAt].width;
    //: CGFloat protraitImageHeight = [self avatarSize].height;
    CGFloat protraitImageHeight = [self ofAt].height;
    //: CGFloat selfProtraitOriginX = 0;
    CGFloat selfProtraitOriginX = 0;

    //: if (self.model.shouldShowLeft) {
    if (self.model.shouldShowLeft) {
        //: if (![self needShowSelectButton]) {
        if (![self listing]) {
            //: selfProtraitOriginX = self.cellPaddingToAvatar.x;
            selfProtraitOriginX = self.anKeyImage.x;
        //: } else {
        } else {
            //: selfProtraitOriginX = self.cellPaddingToAvatar.x + _selectButton.nim_right;
            selfProtraitOriginX = self.anKeyImage.x + _selectButton.nim_right;
        }
    //: } else {
    } else {
        //: selfProtraitOriginX = cellWidth - self.cellPaddingToAvatar.x - protraitImageWidth;
        selfProtraitOriginX = cellWidth - self.anKeyImage.x - protraitImageWidth;
    }
    //: return CGRectMake(selfProtraitOriginX, self.cellPaddingToAvatar.y,protraitImageWidth,protraitImageHeight);
    return CGRectMake(selfProtraitOriginX, self.anKeyImage.y,protraitImageWidth,protraitImageHeight);
}

//: - (BOOL)needShowSelectButton {
- (BOOL)listing {
    //: return self.model.shouldShowSelect;
    return self.model.shouldShowSelect;
}

//: - (BOOL)needShowAvatar
- (BOOL)downright
{
    //: return self.model.shouldShowAvatar;
    return self.model.shouldShowAvatar;
}

//: - (BOOL)needShowNickName
- (BOOL)table
{
    //: return self.model.shouldShowNickName;
    return self.model.shouldShowNickName;
}


//: - (BOOL)retryButtonHidden
- (BOOL)imageRandom
{
    //: id<ZZZCellLayoutConfig> layoutConfig = [[AppleProjectKit sharedKit] layoutConfig];
    id<SumConfig> layoutConfig = [[On along] layoutConfig];
    //: BOOL disable = NO;
    BOOL disable = NO;
    //: if ([layoutConfig respondsToSelector:@selector(disableRetryButton:)])
    if ([layoutConfig respondsToSelector:@selector(keying:)])
    {
        //: disable = [layoutConfig disableRetryButton:self.model];
        disable = [layoutConfig keying:self.model];
    }
    //: return disable;
    return disable;
}

//: - (CGFloat)retryButtonBubblePadding {
- (CGFloat)video {
    //: BOOL isFromMe = !self.model.shouldShowLeft;
    BOOL isFromMe = !self.model.shouldShowLeft;
    //: if (self.model.message.messageType == NIMMessageTypeAudio) {
    if (self.model.message.messageType == NIMMessageTypeAudio) {
        //: return isFromMe ? 15 : 13;
        return isFromMe ? 15 : 13;
    }
    //: return isFromMe ? 8 : 10;
    return isFromMe ? 8 : 10;
}

//: - (BOOL)activityIndicatorHidden
- (BOOL)content
{
    //: if (!self.model.message.isReceivedMsg)
    if (!self.model.message.isReceivedMsg)
    {
        //: return self.model.message.deliveryState != NIMMessageDeliveryStateDelivering;
        return self.model.message.deliveryState != NIMMessageDeliveryStateDelivering;
    }
    //: else
    else
    {
        //: return self.model.message.attachmentDownloadState != NIMMessageAttachmentDownloadStateDownloading;
        return self.model.message.attachmentDownloadState != NIMMessageAttachmentDownloadStateDownloading;
    }
}


//: - (BOOL)unreadHidden {
- (BOOL)push {
    //: if (self.model.message.messageType == NIMMessageTypeAudio)
    if (self.model.message.messageType == NIMMessageTypeAudio)
    //: { 
    { //音频
        //: BOOL disable = NO;
        BOOL disable = NO;
        //: if ([self.delegate respondsToSelector:@selector(disableAudioPlayedStatusIcon:)]) {
        if ([self.delegate respondsToSelector:@selector(titles:)]) {
            //: disable = [self.delegate disableAudioPlayedStatusIcon:self.model.message];
            disable = [self.delegate titles:self.model.message];
        }

        //BOOL hideIcon = self.model.message.attachmentDownloadState != NIMMessageAttachmentDownloadStateDownloaded || disable;

        //: return (disable || self.model.message.isOutgoingMsg || [self.model.message isPlayed]);
        return (disable || self.model.message.isOutgoingMsg || [self.model.message isPlayed]);
    }
    //: return YES;
    return YES;
}

//: - (BOOL)readLabelHidden
- (BOOL)with
{
    //: if (self.model.shouldShowReadLabel &&
    if (self.model.shouldShowReadLabel &&
        //: [self activityIndicatorHidden] &&
        [self content] &&
        //: [self retryButtonHidden] &&
        [self imageRandom] &&
        //: [self unreadHidden] &&
        [self push] &&
        //: [[NIMUserDefaults standardUserDefaults].showMessageRead boolValue])
        [[AlongDefaults off].showMessageRead boolValue])
    {
        //: return NO;
        return NO;
    }
    //: return YES;
    return YES;
}


//: - (CGFloat)audioPlayedIconBubblePadding{
- (CGFloat)changeContent{
    //: return 10.0;
    return 10.0;
}

//: - (CGFloat)readButtonBubblePadding{
- (CGFloat)writtenRecord{
    //: return 2.0;
    return 2.0;
}

//: - (CGFloat)selectButtonPadding{
- (CGFloat)scheme{
    //: return 8.0;
    return 8.0;
}

//: - (CGPoint)cellPaddingToAvatar
- (CGPoint)anKeyImage
{
    //: return self.model.avatarMargin;
    return self.model.avatarMargin;
}

//: - (CGPoint)cellPaddingToNick
- (CGPoint)assemblageNick
{
    //: return self.model.nickNameMargin;
    return self.model.nickNameMargin;
}

//: - (CGSize)avatarSize {
- (CGSize)ofAt {
    //: return self.model.avatarSize;
    return self.model.avatarSize;
}

//: - (void)onTapAvatar:(id)sender{
- (void)endBottom:(id)sender{
    //: if ([self.delegate respondsToSelector:@selector(onTapAvatar:)])
    if ([self.delegate respondsToSelector:@selector(endBottom:)])
    {
        //: [self.delegate onTapAvatar:self.model.message];
        [self.delegate endBottom:self.model.message];
    }
}

//: - (void)onLongPressAvatar:(UIGestureRecognizer *)gestureRecognizer
- (void)barsed:(UIGestureRecognizer *)gestureRecognizer
{
    //: if ([gestureRecognizer isKindOfClass:[UILongPressGestureRecognizer class]] &&
    if ([gestureRecognizer isKindOfClass:[UILongPressGestureRecognizer class]] &&
        //: gestureRecognizer.state == UIGestureRecognizerStateBegan)
        gestureRecognizer.state == UIGestureRecognizerStateBegan)
    {
        //: if ([self.delegate respondsToSelector:@selector(onLongPressAvatar:)])
        if ([self.delegate respondsToSelector:@selector(barsed:)])
        {
            //: [self.delegate onLongPressAvatar:self.model.message];
            [self.delegate barsed:self.model.message];
        }
    }
}

//: - (void)onPressReadButton:(id)sender
- (void)withInfo:(id)sender
{
    //: if ([self.delegate respondsToSelector:@selector(onPressReadLabel:)])
    if ([self.delegate respondsToSelector:@selector(nameColor:)])
    {
        //: [self.delegate onPressReadLabel:self.model.message];
        [self.delegate nameColor:self.model.message];
    }
}

//: - (void)onTapSelectedButton:(id)sender
- (void)messaged:(id)sender
{
    //: _selectButton.selected = !_selectButton.selected;
    _selectButton.selected = !_selectButton.selected;
    //: self.model.selected = _selectButton.selected;
    self.model.selected = _selectButton.selected;
    //: if ([self.delegate respondsToSelector:@selector(onSelectedMessage:message:)]) {
    if ([self.delegate respondsToSelector:@selector(sub:toAGreaterExtent:)]) {
        //: [self.delegate onSelectedMessage:self.model.selected message:self.model.message];
        [self.delegate sub:self.model.selected toAGreaterExtent:self.model.message];
    }
}


//: @end
@end

Byte * AdditionDataToCache(Byte *data) {
    int barMessage = data[0];
    int probe = data[1];
    int expertLunge = data[2];
    if (!barMessage) return data + expertLunge;
    for (int i = 0; i < probe / 2; i++) {
        int begin = expertLunge + i;
        int end = expertLunge + probe - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[expertLunge + probe] = 0;
    return data + expertLunge;
}

NSString *StringFromAdditionData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)AdditionDataToCache(data)];
}  
