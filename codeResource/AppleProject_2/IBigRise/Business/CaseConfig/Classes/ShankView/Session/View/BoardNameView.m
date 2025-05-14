
#import <Foundation/Foundation.h>

NSString *StringFromProfessionData(Byte *data);


//: ffffff
Byte kStr_judgeTitle[] = {89, 6, 37, 6, 239, 131, 139, 139, 139, 139, 139, 139, 156};


//: #333333
Byte kStr_dentedBillName[] = {82, 7, 33, 5, 231, 68, 84, 84, 84, 84, 84, 84, 92};


//: 1条回复
Byte kStr_wheatHugText[] = {19, 10, 86, 9, 212, 252, 175, 152, 130, 135, 60, 243, 247, 59, 241, 244, 59, 250, 227, 210};


//: #999999
Byte kStr_operateMysteryText[] = {37, 7, 75, 6, 47, 181, 110, 132, 132, 132, 132, 132, 132, 218};


//: %zd条回复
Byte kStr_documentaryTitle[] = {96, 12, 61, 13, 37, 130, 101, 253, 226, 242, 209, 135, 4, 98, 183, 161, 35, 218, 222, 34, 216, 219, 34, 225, 202, 31};


//: icon_reply
Byte kStr_cruiseCourseTitle[] = {92, 10, 63, 6, 162, 141, 168, 162, 174, 173, 158, 177, 164, 175, 171, 184, 38};


//: icon_pin
Byte kStr_messageGalaxyValue[] = {37, 8, 57, 6, 16, 34, 162, 156, 168, 167, 152, 169, 162, 167, 60};


//: %@标记了这条消息
Byte kStr_furnitureTherapyName[] = {92, 23, 3, 12, 59, 69, 103, 75, 36, 186, 92, 70, 40, 67, 233, 163, 138, 235, 177, 179, 231, 189, 137, 235, 194, 156, 233, 160, 164, 233, 185, 139, 233, 132, 178, 126};


//: NTESMessageTranslate
Byte kStr_shortageText[] = {29, 20, 1, 12, 199, 83, 26, 38, 14, 40, 224, 174, 79, 85, 70, 84, 78, 102, 116, 116, 98, 104, 102, 85, 115, 98, 111, 116, 109, 98, 117, 102, 74};

// __DEBUG__
// __CLOSE_PRINT__
//
//  BoardNameView.m
// On
//
//  Created by He on 2020/4/10.
//  Copyright © 2020 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZZZAdvancedMessageCell.h"
#import "BoardNameView.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "ZZZMessageModel.h"
#import "CollectionModel.h"
//: #import "NSString+AppleProjectKit.h"
#import "NSString+On.h"
//: #import "ZZZQuickCommentCell.h"
#import "ObserveViewCell.h"
//: #import "ZZZSessionMessageContentView.h"
#import "ShouldControl.h"
//: #import "ZZZAvatarImageView.h"
#import "ShankView.h"
//: #import "M80AttributedLabel.h"
#import "GreenNameView.h"
//: #import "ZZZKitUtil.h"
#import "TingText.h"
//: #import "ZZZKitQuickCommentUtil.h"
#import "SizeUtil.h"
//: #import "UIColor+AppleProjectKit.h"
#import "UIColor+On.h"
//: #import "UIImage+AppleProjectKit.h"
#import "UIImage+On.h"
//: #import "ZZZCollectionViewLeftAlignedLayout.h"
#import "PseudonymFlowLayout.h"
//: #import "M80AttributedLabel.h"
#import "GreenNameView.h"
//: #import "M80AttributedLabel+AppleProjectKit.h"
#import "GreenNameView+On.h"

//: static NSString * const kNIMListCellReuseID = @"ZZZQuickCommentCell";
static NSString * const kConst_plainText = @"ObserveViewCell";
//: static const CGFloat kNIMAdvancedBackgroundPadding = 5;
static const CGFloat kConst_fullName = 5;

//: @interface ZZZAdvancedMessageCell () <UICollectionViewDelegateFlowLayout, UICollectionViewDataSource>
@interface BoardNameView () <UICollectionViewDelegateFlowLayout, UICollectionViewDataSource>

//: @property (nonatomic,strong) NSArray *objects;
@property (nonatomic,strong) NSArray *objects;

//: @property (nonatomic,strong) NSMapTable *map;
@property (nonatomic,strong) NSMapTable *map;

//: @end
@end

//: @implementation ZZZAdvancedMessageCell
@implementation BoardNameView

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self)
    if (self)
    {
        //: _replyButton = [UIButton buttonWithType:UIButtonTypeCustom];
        _replyButton = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_replyButton setImage:[UIImage imageNamed:@"icon_reply"] forState:UIControlStateNormal];
        [_replyButton setImage:[UIImage imageNamed:StringFromProfessionData(kStr_cruiseCourseTitle)] forState:UIControlStateNormal];
        //: UIColor *titleColor = [UIColor colorWithHex:0x337EFF alpha:1];
        UIColor *titleColor = [UIColor ditheredColour:0x337EFF colorMessageAlpha:1];
        //: [_replyButton setTitleColor:titleColor forState:UIControlStateNormal];
        [_replyButton setTitleColor:titleColor forState:UIControlStateNormal];
        //: _replyButton.titleLabel.font = [UIFont systemFontOfSize:14];
        _replyButton.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [_replyButton addTarget:self action:@selector(onReplyClicked:) forControlEvents:UIControlEventTouchUpInside];
        [_replyButton addTarget:self action:@selector(colors:) forControlEvents:UIControlEventTouchUpInside];
        //: _replyButton.titleEdgeInsets = UIEdgeInsetsMake(0, 3, 0, 0);
        _replyButton.titleEdgeInsets = UIEdgeInsetsMake(0, 3, 0, 0);
        //: _replyButton.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 3);
        _replyButton.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 3);
        //: [self.contentView addSubview:_replyButton];
        [self.contentView addSubview:_replyButton];

        //: _pinView = [UIButton buttonWithType:UIButtonTypeCustom];
        _pinView = [UIButton buttonWithType:UIButtonTypeCustom];
        //: _pinView.enabled = NO;
        _pinView.enabled = NO;
        //: _pinView.adjustsImageWhenDisabled = NO;
        _pinView.adjustsImageWhenDisabled = NO;
        //: [_pinView setImage:[UIImage imageNamed:@"icon_pin"] forState:UIControlStateNormal];
        [_pinView setImage:[UIImage imageNamed:StringFromProfessionData(kStr_messageGalaxyValue)] forState:UIControlStateNormal];
        //: [_pinView setTitleColor:[UIColor colorWithRed:0 green:165/255.0 blue:85/255.0 alpha:1.0] forState:UIControlStateNormal];
        [_pinView setTitleColor:[UIColor colorWithRed:0 green:165/255.0 blue:85/255.0 alpha:1.0] forState:UIControlStateNormal];
        //: _pinView.titleLabel.font = [UIFont systemFontOfSize:14];
        _pinView.titleLabel.font = [UIFont systemFontOfSize:14];
        //: _pinView.titleEdgeInsets = UIEdgeInsetsMake(0, 3, 0, 0);
        _pinView.titleEdgeInsets = UIEdgeInsetsMake(0, 3, 0, 0);
        //: _pinView.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 3);
        _pinView.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 3);
        //: _pinView.titleLabel.adjustsFontSizeToFitWidth = YES;
        _pinView.titleLabel.adjustsFontSizeToFitWidth = YES;
        //: _pinView.titleLabel.minimumScaleFactor = 0.7;
        _pinView.titleLabel.minimumScaleFactor = 0.7;
        //: [self.contentView addSubview:_pinView];
        [self.contentView addSubview:_pinView];

        //: _translationView = [[UIView alloc]init];
        _translationView = [[UIView alloc]init];
        //: _translationView.backgroundColor = [UIColor colorWithHexString:@"ffffff"];
        _translationView.backgroundColor = [UIColor box:StringFromProfessionData(kStr_judgeTitle)];
        //: _translationView.layer.cornerRadius = 8;
        _translationView.layer.cornerRadius = 8;
        //: [self.contentView addSubview:_translationView];
        [self.contentView addSubview:_translationView];

    }
    //: return self;
    return self;
}

//: - (void)refreshData:(ZZZMessageModel *)data
- (void)upgradeRecord:(CollectionModel *)data
{

    //: [super refreshData:data];
    [super upgradeRecord:data];
    //: [self refreshPinView:data];
    [self name:data];
    //: [self refreshReplyCountView:data];
    [self search:data];
    //: [self refreshEmoticonsView:data];
    [self windowpaneView:data];

    //: [self refreshtranslationView:data];
    [self model:data];

    //: [self setNeedsLayout];
    [self setNeedsLayout];
}

//: - (void)layoutSubviews
- (void)layoutSubviews
{
    //: [self layoutEmoticonsContainerViewSize];
    [self littleLeagueTeam];

    //: [super layoutSubviews];
    [super layoutSubviews];

    //: [self layoutPinView];
    [self length];
    //: [self layoutReplyCountView];
    [self end];

    //: [self layouttranslationView];
    [self layouttranslationNimFuturism];
}

//: #pragma mark - View
#pragma mark - View

//: - (void)layouttranslationView
- (void)layouttranslationNimFuturism
{
    //: if (self.translationView.hidden)
    if (self.translationView.hidden)
    {
        //: self.translationView.frame = CGRectZero;
        self.translationView.frame = CGRectZero;
    }
    //: else
    else
    {

        //: NSString *aString = [self.model.message.localExt objectForKey:@"NTESMessageTranslate"];
        NSString *aString = [self.model.message.localExt objectForKey:StringFromProfessionData(kStr_shortageText)];
        //: M80AttributedLabel *labtran = [[M80AttributedLabel alloc]initWithFrame:CGRectZero];
        GreenNameView *labtran = [[GreenNameView alloc]initWithFrame:CGRectZero];
        //: [labtran nim_setText:aString];
        [labtran sourceSet:aString];
        //: labtran.textColor = [UIColor colorWithHexString:@"#999999"];
        labtran.textColor = [UIColor box:StringFromProfessionData(kStr_operateMysteryText)];
        //: labtran.font = [UIFont systemFontOfSize:13];
        labtran.font = [UIFont systemFontOfSize:13];

//        CGFloat msgBubbleMaxWidth    = self.bubbleView.nim_width;
        //: CGFloat msgBubbleMaxWidth = (self.nim_width - 130);
        CGFloat msgBubbleMaxWidth = (self.nim_width - 130);
        //: CGFloat bubbleLeftToContent = 5;
        CGFloat bubbleLeftToContent = 5;
        //: CGFloat contentRightToBubble = 5;
        CGFloat contentRightToBubble = 5;
        //: CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - contentRightToBubble - bubbleLeftToContent);
        CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - contentRightToBubble - bubbleLeftToContent);

        //: CGSize replySize = [labtran sizeThatFits:CGSizeMake(msgContentMaxWidth, 1.7976931348623157e+308)];
        CGSize replySize = [labtran sizeThatFits:CGSizeMake(msgContentMaxWidth, 1.7976931348623157e+308)];

        //: self.translationView.height = replySize.height;
        self.translationView.height = replySize.height;
        //: self.translationView.width = replySize.width+10;
        self.translationView.width = replySize.width+10;
        //: self.translationView.top = self.bubbleView.bottom+5;
        self.translationView.top = self.bubbleView.bottom+5;

        //: if (self.model.shouldShowLeft) {
        if (self.model.shouldShowLeft) {
//            self.pinView.nim_left = self.bubblesBackgroundView.nim_left;
//            self.pinView.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
            //: self.translationView.left = self.bubbleView.left;
            self.translationView.left = self.bubbleView.left;
        //: } else {
        } else {
            //: self.translationView.nim_right = self.bubbleView.nim_right;
            self.translationView.nim_right = self.bubbleView.nim_right;
//            self.pinView.nim_right = self.bubblesBackgroundView.nim_right;
//            self.pinView.contentHorizontalAlignment = UIControlContentHorizontalAlignmentRight;
        }



//        self.translationView.left = self.bubbleView.left;

    }
}
//: - (void)refreshtranslationView:(ZZZMessageModel *)data
- (void)model:(CollectionModel *)data
{
    //: if([data.message.localExt.allKeys containsObject:@"NTESMessageTranslate"])
    if([data.message.localExt.allKeys containsObject:StringFromProfessionData(kStr_shortageText)])
    {
        //: NSArray *viewsArray = self.translationView.subviews;
        NSArray *viewsArray = self.translationView.subviews;
        //: for (int i = 0; i < viewsArray.count; i ++) {
        for (int i = 0; i < viewsArray.count; i ++) {
            //: UIView *subview = viewsArray[i];
            UIView *subview = viewsArray[i];
            //: [subview removeFromSuperview];
            [subview removeFromSuperview];
        }

        //: M80AttributedLabel *labtran = [[M80AttributedLabel alloc]initWithFrame:CGRectZero];
        GreenNameView *labtran = [[GreenNameView alloc]initWithFrame:CGRectZero];
        //: [labtran nim_setText:[self.model.message.localExt objectForKey:@"NTESMessageTranslate"]];
        [labtran sourceSet:[self.model.message.localExt objectForKey:StringFromProfessionData(kStr_shortageText)]];
        //: labtran.textColor = [UIColor colorWithHexString:@"#333333"];
        labtran.textColor = [UIColor box:StringFromProfessionData(kStr_dentedBillName)];
        //: labtran.font = [UIFont systemFontOfSize:13];
        labtran.font = [UIFont systemFontOfSize:13];
        //: labtran.numberOfLines = 0;
        labtran.numberOfLines = 0;
        //: [_translationView addSubview:labtran];
        [_translationView addSubview:labtran];
//        [labtran sizeToFit];

        //: CGFloat msgBubbleMaxWidth = (self.nim_width - 130);
        CGFloat msgBubbleMaxWidth = (self.nim_width - 130);
        //: CGFloat bubbleLeftToContent = 5;
        CGFloat bubbleLeftToContent = 5;
        //: CGFloat contentRightToBubble = 5;
        CGFloat contentRightToBubble = 5;
        //: CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - contentRightToBubble - bubbleLeftToContent);
        CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - contentRightToBubble - bubbleLeftToContent);
        //: CGSize replySize = [labtran sizeThatFits:CGSizeMake(msgContentMaxWidth, 1.7976931348623157e+308)];
        CGSize replySize = [labtran sizeThatFits:CGSizeMake(msgContentMaxWidth, 1.7976931348623157e+308)];
        //: labtran.frame = CGRectMake(5, 0, replySize.width, replySize.height);
        labtran.frame = CGRectMake(5, 0, replySize.width, replySize.height);

//        UILabel *labtran = [[UILabel alloc]initWithFrame:CGRectMake(5, 5, 0, 0)];
//        labtran.text = [self.model.message.localExt objectForKey:@"NTESMessageTranslate"];
//        labtran.numberOfLines = 0;
//        labtran.font = [UIFont systemFontOfSize:12];
//        labtran.textColor = TextColor_4;
//        [_translationView addSubview:labtran];
//        [labtran sizeToFit];

        //: _translationView.hidden = NO;
        _translationView.hidden = NO;
    }
    //: else
    else
    {
        //: _translationView.hidden = YES;
        _translationView.hidden = YES;
    }
}



//: - (void)refreshEmoticonsView:(ZZZMessageModel *)data
- (void)windowpaneView:(CollectionModel *)data
{
    //: self.emoticonsContainerView.hidden = YES;
    self.emoticonsContainerView.hidden = YES;
    //: self.emoticonsContainerView.dataSource = nil;
    self.emoticonsContainerView.dataSource = nil;
    //: self.emoticonsContainerView.delegate = nil;
    self.emoticonsContainerView.delegate = nil;
    //: self.objects = nil;
    self.objects = nil;
    //: self.map = nil;
    self.map = nil;

    //: if (data.enableQuickComments)
    if (data.enableQuickComments)
    {
        //: NSMapTable<NSNumber *, NIMQuickComment *> * result = data.quickComments;
        NSMapTable<NSNumber *, NIMQuickComment *> * result = data.quickComments;
        //: self.map = result;
        self.map = result;
        // 按最近评论优先排序
        //: self.objects = [ZZZKitQuickCommentUtil sortedKeys:result];
        self.objects = [SizeUtil session:result];
        //: [self refreshCollection:data];
        [self deviceQuickProvider:data];
    }
    //: else
    else
    {
        //: self.emoticonsContainerView = nil;
        self.emoticonsContainerView = nil;
    }
}

//: - (void)refreshCollection:(ZZZMessageModel *)data
- (void)deviceQuickProvider:(CollectionModel *)data
{
    //: if ([data needShowEmoticonsView])
    if ([data user])
    {
        //: UICollectionView *collectionView = self.emoticonsContainerView;
        UICollectionView *collectionView = self.emoticonsContainerView;
        //: if (!collectionView)
        if (!collectionView)
        {
            //: UICollectionViewFlowLayout *flowLayout = [[ZZZCollectionViewLeftAlignedLayout alloc] init];
            UICollectionViewFlowLayout *flowLayout = [[PseudonymFlowLayout alloc] init];
            //: flowLayout.minimumLineSpacing = NIMKitCommentUtilCellPadding;
            flowLayout.minimumLineSpacing = kConst_authorityText;
            //: flowLayout.minimumInteritemSpacing = NIMKitCommentUtilCellPadding;
            flowLayout.minimumInteritemSpacing = kConst_authorityText;
            //: collectionView = [[UICollectionView alloc] initWithFrame:CGRectZero
            collectionView = [[UICollectionView alloc] initWithFrame:CGRectZero
                                                //: collectionViewLayout:flowLayout];
                                                collectionViewLayout:flowLayout];
            //: [collectionView registerClass:[ZZZQuickCommentCell class] forCellWithReuseIdentifier:kNIMListCellReuseID];
            [collectionView registerClass:[ObserveViewCell class] forCellWithReuseIdentifier:kConst_plainText];
            //: self.emoticonsContainerView = collectionView;
            self.emoticonsContainerView = collectionView;
            //: [self.contentView addSubview:collectionView];
            [self.contentView addSubview:collectionView];
        }

        //: self.emoticonsContainerView.backgroundColor = [UIColor clearColor];
        self.emoticonsContainerView.backgroundColor = [UIColor clearColor];
        //: collectionView.dataSource = self;
        collectionView.dataSource = self;
        //: collectionView.delegate = self;
        collectionView.delegate = self;
        //: collectionView.hidden = NO;
        collectionView.hidden = NO;
    }
}

//: - (void)refreshPinView:(ZZZMessageModel *)data
- (void)name:(CollectionModel *)data
{
    //: if (data.pinUserName.length && data.shouldShowPinContent)
    if (data.pinUserName.length && data.shouldShowPinContent)
    {
        //: [_pinView setTitle:[NSString stringWithFormat:@"%@标记了这条消息".nim_localized, data.pinUserName] forState:UIControlStateNormal];
        [_pinView setTitle:[NSString stringWithFormat:StringFromProfessionData(kStr_furnitureTherapyName).start, data.pinUserName] forState:UIControlStateNormal];
        //: _pinView.hidden = NO;
        _pinView.hidden = NO;
    }
    //: else
    else
    {
        //: _pinView.hidden = YES;
        _pinView.hidden = YES;
    }
}

//: - (void)refreshReplyCountView:(ZZZMessageModel *)data
- (void)search:(CollectionModel *)data
{
    //: NSInteger count = data.childMessagesCount;
    NSInteger count = data.childMessagesCount;
    //: if (count > 0)
    if (count > 0)
    {
        //: if (count == 1)
        if (count == 1)
        {
            //: [_replyButton setTitle:@"1条回复".nim_localized forState:UIControlStateNormal];
            [_replyButton setTitle:StringFromProfessionData(kStr_wheatHugText).start forState:UIControlStateNormal];
        }
        //: else
        else
        {
            //: [_replyButton setTitle:[NSString stringWithFormat:@"%zd条回复".nim_localized, count]
            [_replyButton setTitle:[NSString stringWithFormat:StringFromProfessionData(kStr_documentaryTitle).start, count]
                          //: forState:UIControlStateNormal];
                          forState:UIControlStateNormal];
        }

        //: _replyButton.hidden = NO;
        _replyButton.hidden = NO;
    }
    //: else
    else
    {
        //: _replyButton.hidden = YES;
        _replyButton.hidden = YES;
    }
}


//: #pragma mark - Layout
#pragma mark - Layout
//: - (void)layoutPinView
- (void)length
{
    //: if (self.pinView.hidden)
    if (self.pinView.hidden)
    {
        //: self.pinView.frame = CGRectZero;
        self.pinView.frame = CGRectZero;
    }
    //: else
    else
    {
        //: self.pinView.nim_height = self.pinView.intrinsicContentSize.height;
        self.pinView.nim_height = self.pinView.intrinsicContentSize.height;
        //: self.pinView.nim_width = self.pinView.intrinsicContentSize.width + 8;
        self.pinView.nim_width = self.pinView.intrinsicContentSize.width + 8;
        //: self.pinView.nim_top = self.bubblesBackgroundView.nim_bottom + 5.f;
        self.pinView.nim_top = self.bubblesBackgroundView.nim_bottom + 5.f;
        //: if (self.model.shouldShowLeft) {
        if (self.model.shouldShowLeft) {
            //: self.pinView.nim_left = self.bubblesBackgroundView.nim_left;
            self.pinView.nim_left = self.bubblesBackgroundView.nim_left;
            //: self.pinView.nim_width = self.contentView.nim_width - self.pinView.nim_left - 8;
            self.pinView.nim_width = self.contentView.nim_width - self.pinView.nim_left - 8;
            //: self.pinView.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
            self.pinView.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        //: } else {
        } else {
            //: self.pinView.nim_width = self.bubblesBackgroundView.nim_right - 8;
            self.pinView.nim_width = self.bubblesBackgroundView.nim_right - 8;
            //: self.pinView.nim_right = self.bubblesBackgroundView.nim_right;
            self.pinView.nim_right = self.bubblesBackgroundView.nim_right;
            //: self.pinView.contentHorizontalAlignment = UIControlContentHorizontalAlignmentRight;
            self.pinView.contentHorizontalAlignment = UIControlContentHorizontalAlignmentRight;
        }
    }
}

//: - (void)layoutReplyCountView
- (void)end
{
    //: if (self.replyButton.hidden)
    if (self.replyButton.hidden)
    {
        //: self.replyButton.frame = CGRectZero;
        self.replyButton.frame = CGRectZero;
    }
    //: else
    else
    {
        //: self.replyButton.nim_height = self.replyButton.intrinsicContentSize.height;
        self.replyButton.nim_height = self.replyButton.intrinsicContentSize.height;
        //: self.replyButton.nim_width = self.replyButton.intrinsicContentSize.width + 8;
        self.replyButton.nim_width = self.replyButton.intrinsicContentSize.width + 8;
        //: if (self.model.shouldShowLeft)
        if (self.model.shouldShowLeft)
        {
            //: self.replyButton.nim_left = self.pinView.hidden ? self.bubblesBackgroundView.nim_left : self.pinView.nim_left;
            self.replyButton.nim_left = self.pinView.hidden ? self.bubblesBackgroundView.nim_left : self.pinView.nim_left;
        }
        //: else
        else
        {
            //: self.replyButton.nim_right = self.pinView.hidden ? self.bubblesBackgroundView.nim_right : self.pinView.nim_right;
            self.replyButton.nim_right = self.pinView.hidden ? self.bubblesBackgroundView.nim_right : self.pinView.nim_right;
        }

        //: if (self.pinView.hidden)
        if (self.pinView.hidden)
        {
            //: self.replyButton.nim_top = self.bubblesBackgroundView.nim_bottom + 5.f;
            self.replyButton.nim_top = self.bubblesBackgroundView.nim_bottom + 5.f;
        }
        //: else
        else
        {
            //: self.replyButton.nim_top = self.pinView.nim_bottom + 5.f;
            self.replyButton.nim_top = self.pinView.nim_bottom + 5.f;
        }
    }
}

//: - (void)layoutEmoticonsContainerViewSize
- (void)littleLeagueTeam
{
    //: if ([self.model needShowEmoticonsView])
    if ([self.model user])
    {
        //: CGSize size = self.model.emoticonsContainerSize;
        CGSize size = self.model.emoticonsContainerSize;
        //: self.emoticonsContainerView.nim_size = CGSizeMake(size.width + 2, size.height);
        self.emoticonsContainerView.nim_size = CGSizeMake(size.width + 2, size.height);
    }
    //: else
    else
    {
        //: self.emoticonsContainerView.frame = CGRectZero;
        self.emoticonsContainerView.frame = CGRectZero;
        //: self.emoticonsContainerView = nil;
        self.emoticonsContainerView = nil;
    }
}

//: - (void)fixPositions
- (void)my
{
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

    //: if (!self.emoticonsContainerView || self.emoticonsContainerView.hidden)
    if (!self.emoticonsContainerView || self.emoticonsContainerView.hidden)
    {
        //: return;
        return;
    }

    //: CGFloat left = 0;
    CGFloat left = 0;
    //: CGFloat protraitRightToBubble = 5.f;
    CGFloat protraitRightToBubble = 5.f;
    //: if (!self.model.shouldShowLeft)
    if (!self.model.shouldShowLeft)
    {
        //: CGFloat right = self.model.shouldShowAvatar? CGRectGetMinX(self.headImageView.frame) - protraitRightToBubble : self.nim_width;
        CGFloat right = self.model.shouldShowAvatar? CGRectGetMinX(self.headImageView.frame) - protraitRightToBubble : self.nim_width;
        //: left = right - CGRectGetWidth(self.bubblesBackgroundView.bounds);
        left = right - CGRectGetWidth(self.bubblesBackgroundView.bounds);
    //: } else {
    } else {
        //: left = self.bubbleView.nim_left;
        left = self.bubbleView.nim_left;
    }

    //: self.replyedBubbleView.nim_left = left;
    self.replyedBubbleView.nim_left = left;
    //: self.bubbleView.nim_left = left;
    self.bubbleView.nim_left = left;
    //: self.emoticonsContainerView.nim_left = left + kNIMAdvancedBackgroundPadding;
    self.emoticonsContainerView.nim_left = left + kConst_fullName;
    //: self.bubblesBackgroundView.nim_left = left;
    self.bubblesBackgroundView.nim_left = left;

    //: self.emoticonsContainerView.nim_top = ((UIView *)self.bubbleView).nim_bottom;
    self.emoticonsContainerView.nim_top = ((UIView *)self.bubbleView).nim_bottom;
}

//: - (void)layoutBubblesBackgroundView
- (void)recording
{
    //: CGFloat height = self.replyedBubbleView.nim_height + self.bubbleView.nim_height;
    CGFloat height = self.replyedBubbleView.nim_height + self.bubbleView.nim_height;
    //: height += self.emoticonsContainerView.nim_height;
    height += self.emoticonsContainerView.nim_height;

    //: CGFloat width = self.replyedBubbleView.nim_width > self.bubbleView.nim_width ? self.replyedBubbleView.nim_width : self.bubbleView.nim_width;
    CGFloat width = self.replyedBubbleView.nim_width > self.bubbleView.nim_width ? self.replyedBubbleView.nim_width : self.bubbleView.nim_width;
    //: CGFloat emoticonsWidth = self.emoticonsContainerView.nim_width + kNIMAdvancedBackgroundPadding * 2;
    CGFloat emoticonsWidth = self.emoticonsContainerView.nim_width + kConst_fullName * 2;
    //: width = width > emoticonsWidth ? width : emoticonsWidth;
    width = width > emoticonsWidth ? width : emoticonsWidth;
    //: self.bubblesBackgroundView.nim_size = CGSizeMake(width, height);
    self.bubblesBackgroundView.nim_size = CGSizeMake(width, height);
    //: self.bubblesBackgroundView.nim_left = self.bubbleView.nim_left;
    self.bubblesBackgroundView.nim_left = self.bubbleView.nim_left;

    //: [self fixPositions];
    [self my];
}

//: - (void)layoutReadButton{
- (void)handle{

    //: if (!self.readButton.isHidden) {
    if (!self.readButton.isHidden) {

        //: CGFloat left = self.bubbleView.nim_left;
        CGFloat left = self.bubbleView.nim_left;
        //: CGFloat bottom = self.bubbleView.nim_bottom;
        CGFloat bottom = self.bubbleView.nim_bottom;

        //: self.readButton.nim_left = left - CGRectGetWidth(self.readButton.bounds) - 2;
        self.readButton.nim_left = left - CGRectGetWidth(self.readButton.bounds) - 2;
//        self.readButton.nim_bottom = bottom;
        //: self.readButton.nim_centerY = self.bubbleView.nim_centerY;
        self.readButton.nim_centerY = self.bubbleView.nim_centerY;
    }
}

//: #pragma mark - Action
#pragma mark - Action

//: - (void)onReplyClicked:(id)sender
- (void)colors:(id)sender
{
    //: if ([self.delegate respondsToSelector:@selector(onClickReplyButton:)])
    if ([self.delegate respondsToSelector:@selector(texting:)])
    {
        //: [self.delegate onClickReplyButton:self.model.message];
        [self.delegate texting:self.model.message];
    }
}


//: #pragma mark - UICollectionViewDataSource
#pragma mark - UICollectionViewDataSource

//: - (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    //: return self.objects.count;
    return self.objects.count;
}

//: - (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    //: ZZZQuickCommentCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:kNIMListCellReuseID forIndexPath:indexPath];
    ObserveViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:kConst_plainText forIndexPath:indexPath];
    //: NSNumber *number = [self.objects objectAtIndex:indexPath.item];
    NSNumber *number = [self.objects objectAtIndex:indexPath.item];
    //: NSArray *comments = [self.map objectForKey:number];
    NSArray *comments = [self.map objectForKey:number];
    //: [cell refreshWithData:comments model:self.model];
    [cell up:comments big:self.model];
    //: return cell;
    return cell;
}

//: #pragma mark - UICollectionViewDelegate
#pragma mark - UICollectionViewDelegate

//: - (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    //: NSNumber *number = [self.objects objectAtIndex:indexPath.item];
    NSNumber *number = [self.objects objectAtIndex:indexPath.item];
    //: NSArray *comments = [self.map objectForKey:number];
    NSArray *comments = [self.map objectForKey:number];
    //: CGSize size = [ZZZKitQuickCommentUtil itemSizeWithComments:comments];
    CGSize size = [SizeUtil status:comments];
    //: return size;
    return size;
}

//: - (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout insetForSectionAtIndex:(NSInteger)section
- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout insetForSectionAtIndex:(NSInteger)section
{
    //: return UIEdgeInsetsMake(0, NIMKitCommentUtilCellPadding, 0, NIMKitCommentUtilCellPadding);
    return UIEdgeInsetsMake(0, kConst_authorityText, 0, kConst_authorityText);
}

//: - (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    //: NIMQuickComment *comment = [ZZZKitQuickCommentUtil myCommentFromComments:indexPath.item
    NIMQuickComment *comment = [SizeUtil uncolored:indexPath.item
                                                                 //: keys:self.objects
                                                                 candid:self.objects
                                                             //: comments:self.map];
                                                             sum:self.map];
    //: if ([self.delegate respondsToSelector:@selector(onClickEmoticon:comment:selected:)])
    if ([self.delegate respondsToSelector:@selector(elite:underSelected:off:)])
    {
        //: BOOL hasCommentThisEmoticon = comment ? YES : NO;
        BOOL hasCommentThisEmoticon = comment ? YES : NO;
        //: if (!comment)
        if (!comment)
        {
            //: NSNumber *number = [self.objects objectAtIndex:indexPath.item];
            NSNumber *number = [self.objects objectAtIndex:indexPath.item];
            //: NSArray *comments = [self.map objectForKey:number];
            NSArray *comments = [self.map objectForKey:number];
            //: comment = [comments firstObject];
            comment = [comments firstObject];
        }
        //: [self.delegate onClickEmoticon:self.model.message
        [self.delegate elite:self.model.message
                               //: comment:comment
                               underSelected:comment
                              //: selected:hasCommentThisEmoticon];
                              off:hasCommentThisEmoticon];
    }
}





//: @end
@end

Byte * ProfessionDataToCache(Byte *data) {
    int courtroom = data[0];
    int mannerBehave = data[1];
    Byte humEaster = data[2];
    int compound = data[3];
    if (!courtroom) return data + compound;
    for (int i = compound; i < compound + mannerBehave; i++) {
        int value = data[i] - humEaster;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[compound + mannerBehave] = 0;
    return data + compound;
}

NSString *StringFromProfessionData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)ProfessionDataToCache(data)];
}
