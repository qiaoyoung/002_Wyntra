
#import <Foundation/Foundation.h>

NSString *StringFromMathData(Byte *data);


//: not support model
Byte kStr_outfitSixInventName[] = {78, 17, 5, 233, 8, 108, 101, 100, 111, 109, 32, 116, 114, 111, 112, 112, 117, 115, 32, 116, 111, 110, 174};


//: NTESMessageTranslate
Byte kStr_injureCompleteText[] = {27, 20, 6, 223, 110, 41, 101, 116, 97, 108, 115, 110, 97, 114, 84, 101, 103, 97, 115, 115, 101, 77, 83, 69, 84, 78, 108};

// __DEBUG__
// __CLOSE_PRINT__
//
//  NIMSessionTableDelegate.m
// On
//
//  Created by chris on 2016/11/7.
//  Copyright © 2016年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZZZSessionTableAdapter.h"
#import "TitleMax.h"
//: #import "ZZZMessageModel.h"
#import "CollectionModel.h"
//: #import "ZZZMessageCellFactory.h"
#import "LanguageFactory.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "M80AttributedLabel.h"
#import "GreenNameView.h"
//: #import "M80AttributedLabel+AppleProjectKit.h"
#import "GreenNameView+On.h"

//: @interface ZZZSessionTableAdapter()
@interface TitleMax()

//: @property (nonatomic,strong) ZZZMessageCellFactory *cellFactory;
@property (nonatomic,strong) LanguageFactory *cellFactory;

//: @end
@end

//: @implementation ZZZSessionTableAdapter
@implementation TitleMax

//: - (instancetype)init
- (instancetype)init
{
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: _cellFactory = [[ZZZMessageCellFactory alloc] init];
        _cellFactory = [[LanguageFactory alloc] init];
    }
    //: return self;
    return self;
}

//: - (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    //: return 1;
    return 1;
}

//: - (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    //: return [self.interactor items].count;
    return [self.interactor along].count;
}

//: - (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //: UITableViewCell *cell = nil;
    UITableViewCell *cell = nil;
    //: id model = [[self.interactor items] objectAtIndex:indexPath.row];
    id model = [[self.interactor along] objectAtIndex:indexPath.row];
    //: if ([model isKindOfClass:[ZZZMessageModel class]]) {
    if ([model isKindOfClass:[CollectionModel class]]) {
        //: cell = [self.cellFactory cellInTable:tableView
        cell = [self.cellFactory imageMode:tableView
                                   //: forMessageMode:model];
                                   cell:model];
        //: [(ZZZMessageCell *)cell setDelegate:self.delegate];
        [(CypherMediaCompartmentViewCell *)cell setDelegate:self.delegate];
        //: [self.interactor willDisplayMessageModel:model];
        [self.interactor display:model];
        //: [(ZZZMessageCell *)cell refreshData:model];
        [(CypherMediaCompartmentViewCell *)cell upgradeRecord:model];
    }
    //: else if ([model isKindOfClass:[ZZZTimestampModel class]])
    else if ([model isKindOfClass:[GreenTingLanguage class]])
    {
        //: cell = [self.cellFactory cellInTable:tableView
        cell = [self.cellFactory someSearchedDomain:tableView
                                     //: forTimeModel:model];
                                     dismissModel:model];
    }
    //: else
    else
    {
        //: NSAssert(0, @"not support model");
        NSAssert(0, StringFromMathData(kStr_outfitSixInventName));
    }
    //: return cell;
    return cell;
}

//: - (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
    //: if ([self.delegate respondsToSelector:@selector(tableView:willDisplayCell:forRowAtIndexPath:)])
    if ([self.delegate respondsToSelector:@selector(we:mentalFaculty:accumulation:)])
    {
        //: [self.delegate tableView:tableView willDisplayCell:cell forRowAtIndexPath:indexPath];
        [self.delegate we:tableView mentalFaculty:cell accumulation:indexPath];
    }
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //: CGFloat cellHeight = 0;
    CGFloat cellHeight = 0;
    //: id modelInArray = [[self.interactor items] objectAtIndex:indexPath.row];
    id modelInArray = [[self.interactor along] objectAtIndex:indexPath.row];
    //: if ([modelInArray isKindOfClass:[ZZZMessageModel class]])
    if ([modelInArray isKindOfClass:[CollectionModel class]])
    {
        //: ZZZMessageModel *model = (ZZZMessageModel *)modelInArray;
        CollectionModel *model = (CollectionModel *)modelInArray;

        // 撤回的消息 发送自定义消息
        //: if (model.message.messageType == NIMMessageTypeCustom && model.message.messageSubType == 20) {
        if (model.message.messageType == NIMMessageTypeCustom && model.message.messageSubType == 20) {
            //: return 0.f;
            return 0.f;
        }

        //: NIMNotificationObject *object = model.message.messageObject;
        NIMNotificationObject *object = model.message.messageObject;
        //: if (object && [object isKindOfClass:NIMNotificationObject.class] && object.notificationType == NIMNotificationTypeTeam)
        if (object && [object isKindOfClass:NIMNotificationObject.class] && object.notificationType == NIMNotificationTypeTeam)
        {
            //: return 0.f;
            return 0.f;
        }

        //: CGSize size = [model contentSize:tableView.nim_width];
        CGSize size = [model info:tableView.nim_width];
        //: CGFloat avatarMarginY = [model avatarMargin].y;
        CGFloat avatarMarginY = [model avatarMargin].y;

        //: UIEdgeInsets contentViewInsets = model.contentViewInsets;
        UIEdgeInsets contentViewInsets = model.contentViewInsets;
        //: UIEdgeInsets bubbleViewInsets = model.bubbleViewInsets;
        UIEdgeInsets bubbleViewInsets = model.bubbleViewInsets;
        //: cellHeight = size.height + contentViewInsets.top + contentViewInsets.bottom + bubbleViewInsets.top + bubbleViewInsets.bottom;
        cellHeight = size.height + contentViewInsets.top + contentViewInsets.bottom + bubbleViewInsets.top + bubbleViewInsets.bottom;
        //: if ([model needShowRepliedContent])
        if ([model tapTitle])
        {
            //: CGSize replySize = [model replyContentSize:tableView.nim_width];
            CGSize replySize = [model time:tableView.nim_width];
            //: UIEdgeInsets replyContentViewInsets = model.replyContentViewInsets;
            UIEdgeInsets replyContentViewInsets = model.replyContentViewInsets;
            //: UIEdgeInsets replyBubbleViewInsets = model.replyBubbleViewInsets;
            UIEdgeInsets replyBubbleViewInsets = model.replyBubbleViewInsets;
            //: cellHeight += replySize.height +
            cellHeight += replySize.height +
                            //: replyContentViewInsets.top +
                            replyContentViewInsets.top +
                            //: replyContentViewInsets.bottom +
                            replyContentViewInsets.bottom +
                            //: replyBubbleViewInsets.top +
                            replyBubbleViewInsets.top +
                            //: replyBubbleViewInsets.bottom;
                            replyBubbleViewInsets.bottom;
        }

        //: if([model.message.localExt.allKeys containsObject:@"NTESMessageTranslate"])
        if([model.message.localExt.allKeys containsObject:StringFromMathData(kStr_injureCompleteText)])
        {
            //: NSString *aString = [model.message.localExt objectForKey:@"NTESMessageTranslate"];
            NSString *aString = [model.message.localExt objectForKey:StringFromMathData(kStr_injureCompleteText)];

            //: M80AttributedLabel *labtran = [[M80AttributedLabel alloc]initWithFrame:CGRectZero];
            GreenNameView *labtran = [[GreenNameView alloc]initWithFrame:CGRectZero];
            //: [labtran nim_setText:aString];
            [labtran sourceSet:aString];
            //: labtran.font = [UIFont systemFontOfSize:13];
            labtran.font = [UIFont systemFontOfSize:13];

            //: CGFloat msgBubbleMaxWidth = (tableView.nim_width - 130);
            CGFloat msgBubbleMaxWidth = (tableView.nim_width - 130);
            //: CGFloat bubbleLeftToContent = 14;
            CGFloat bubbleLeftToContent = 14;
            //: CGFloat contentRightToBubble = 14;
            CGFloat contentRightToBubble = 14;
            //: CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - contentRightToBubble - bubbleLeftToContent);
            CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - contentRightToBubble - bubbleLeftToContent);

            //: CGSize replySize = [labtran sizeThatFits:CGSizeMake(msgContentMaxWidth, 1.7976931348623157e+308)];
            CGSize replySize = [labtran sizeThatFits:CGSizeMake(msgContentMaxWidth, 1.7976931348623157e+308)];

            //: cellHeight += replySize.height+10;
            cellHeight += replySize.height+10;

        }




        //: if ([model needShowEmoticonsView])
        if ([model user])
        {
            //: cellHeight += model.emoticonsContainerSize.height;
            cellHeight += model.emoticonsContainerSize.height;
        }

        //: if (model.shouldShowPinContent && model.pinUserName.length) {
        if (model.shouldShowPinContent && model.pinUserName.length) {
            //: cellHeight += 22;
            cellHeight += 22;
        }

        //: if ([model needShowReplyCountContent] && model.childMessagesCount > 0)
        if ([model input] && model.childMessagesCount > 0)
        {
            //: cellHeight += 25;
            cellHeight += 25;
        }


        //: cellHeight = cellHeight > (model.avatarSize.height + avatarMarginY) ? cellHeight : model.avatarSize.height + avatarMarginY;
        cellHeight = cellHeight > (model.avatarSize.height + avatarMarginY) ? cellHeight : model.avatarSize.height + avatarMarginY;


    }
    //: else if ([modelInArray isKindOfClass:[ZZZTimestampModel class]])
    else if ([modelInArray isKindOfClass:[GreenTingLanguage class]])
    {
        //: cellHeight = [(ZZZTimestampModel *)modelInArray height];
        cellHeight = [(GreenTingLanguage *)modelInArray height];
    }
    //: else
    else
    {
        //: NSAssert(0, @"not support model");
        NSAssert(0, StringFromMathData(kStr_outfitSixInventName));
    }
    //: return cellHeight;
    return cellHeight;
}

//: - (void)scrollViewDidScroll:(UIScrollView *)scrollView {
- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    //: CGFloat currentOffsetY = scrollView.contentOffset.y;
    CGFloat currentOffsetY = scrollView.contentOffset.y;
    //: if (currentOffsetY + scrollView.frame.size.height > scrollView.contentSize.height && scrollView.frame.size.height <= scrollView.contentSize.height && scrollView.isDragging) {
    if (currentOffsetY + scrollView.frame.size.height > scrollView.contentSize.height && scrollView.frame.size.height <= scrollView.contentSize.height && scrollView.isDragging) {

        //: [self.interactor pullUp];
        [self.interactor allowChange];
    }
}

//: @end
@end

Byte * MathDataToCache(Byte *data) {
    int gothic = data[0];
    int rageLawmaker = data[1];
    int jaw = data[2];
    if (!gothic) return data + jaw;
    for (int i = 0; i < rageLawmaker / 2; i++) {
        int begin = jaw + i;
        int end = jaw + rageLawmaker - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[jaw + rageLawmaker] = 0;
    return data + jaw;
}

NSString *StringFromMathData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)MathDataToCache(data)];
}  
