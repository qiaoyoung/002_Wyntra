
#import <Foundation/Foundation.h>

NSString *StringFromFormationData(Byte *data);


//: ic_nodistrub_g
Byte kStr_resideTensionClassifyData[] = {10, 14, 48, 12, 50, 215, 30, 140, 202, 53, 217, 241, 153, 147, 143, 158, 159, 148, 153, 163, 164, 162, 165, 146, 143, 151, 41};


//: #9B9EA8
Byte kStr_pitStretchMathData[] = {93, 7, 47, 7, 152, 185, 18, 82, 104, 113, 104, 116, 112, 103, 60};


//: #333333
Byte kStr_sharpEngineData[] = {10, 7, 89, 7, 239, 240, 49, 124, 140, 140, 140, 140, 140, 140, 203};

// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESSessionListCell.m
//  NIMDemo
//
//  Created by chris on 15/2/10.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZZZSessionListCell.h"
#import "RegisterView.h"
//: #import "ZZZAvatarImageView.h"
#import "ShankView.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "ZZZKitUtil.h"
#import "TingText.h"
//: #import "NTESBadgeView.h"
#import "NameDismissView.h"
//: #import "ZZZKitInfoFetchOption.h"
#import "CertainOption.h"

//: @implementation ZZZSessionListCell
@implementation RegisterView

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {

        //: self.backgroundColor = [UIColor clearColor];
        self.backgroundColor = [UIColor clearColor];
        //: self.contentView.backgroundColor = [UIColor clearColor];
        self.contentView.backgroundColor = [UIColor clearColor];

        //: _avatarImageView = [[ZZZAvatarImageView alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
        _avatarImageView = [[ShankView alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
        //: [self.contentView addSubview:_avatarImageView];
        [self.contentView addSubview:_avatarImageView];

        //: _nameLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _nameLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _nameLabel.backgroundColor = [UIColor clearColor];
        _nameLabel.backgroundColor = [UIColor clearColor];
        //: _nameLabel.font = [UIFont boldSystemFontOfSize:15.f];
        _nameLabel.font = [UIFont boldSystemFontOfSize:15.f];
        //: _nameLabel.textColor = [UIColor colorWithHexString:@"#333333"];
        _nameLabel.textColor = [UIColor box:StringFromFormationData(kStr_sharpEngineData)];
        //: [self.contentView addSubview:_nameLabel];
        [self.contentView addSubview:_nameLabel];

        //: _messageLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _messageLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _messageLabel.backgroundColor = [UIColor clearColor];
        _messageLabel.backgroundColor = [UIColor clearColor];
        //: _messageLabel.font = [UIFont systemFontOfSize:14.f];
        _messageLabel.font = [UIFont systemFontOfSize:14.f];
        //: _messageLabel.textColor = [UIColor colorWithHexString:@"#9B9EA8"];
        _messageLabel.textColor = [UIColor box:StringFromFormationData(kStr_pitStretchMathData)];
        //: [self.contentView addSubview:_messageLabel];
        [self.contentView addSubview:_messageLabel];

        //: _timeLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _timeLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _timeLabel.backgroundColor = [UIColor clearColor];
        _timeLabel.backgroundColor = [UIColor clearColor];
        //: _timeLabel.font = [UIFont systemFontOfSize:12.f];
        _timeLabel.font = [UIFont systemFontOfSize:12.f];
        //: _timeLabel.textColor = [UIColor colorWithHexString:@"#9B9EA8"];
        _timeLabel.textColor = [UIColor box:StringFromFormationData(kStr_pitStretchMathData)];
        //: [self.contentView addSubview:_timeLabel];
        [self.contentView addSubview:_timeLabel];

        //: _badgeView = [NTESBadgeView viewWithBadgeTip:@""];
        _badgeView = [NameDismissView session:@""];
        //: [self.contentView addSubview:_badgeView];
        [self.contentView addSubview:_badgeView];

        //: _disnodistrubImg = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 14, 14)];
        _disnodistrubImg = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 14, 14)];
        //: _disnodistrubImg.image = [UIImage imageNamed:@"ic_nodistrub_g"];
        _disnodistrubImg.image = [UIImage imageNamed:StringFromFormationData(kStr_resideTensionClassifyData)];
        //: [self.contentView addSubview:_disnodistrubImg];
        [self.contentView addSubview:_disnodistrubImg];

    }
    //: return self;
    return self;
}




//: - (void)refresh:(NIMRecentSession*)recent{
- (void)file:(NIMRecentSession*)recent{
    //: self.nameLabel.nim_width = self.nameLabel.nim_width > 160.f ? 160.f : self.nameLabel.nim_width;
    self.nameLabel.nim_width = self.nameLabel.nim_width > 160.f ? 160.f : self.nameLabel.nim_width;
    //: self.messageLabel.nim_width = self.messageLabel.nim_width > 200.f ? 200.f : self.messageLabel.nim_width;
    self.messageLabel.nim_width = self.messageLabel.nim_width > 200.f ? 200.f : self.messageLabel.nim_width;
//    if (recent.unreadCount) {
//        self.badgeView.hidden = NO;
//        self.badgeView.badgeValue = @(recent.unreadCount).stringValue;
//        self.disnodistrubImg.hidden = YES;
//    }else{
//        self.badgeView.hidden = YES;

        //: ZZZKitInfo *info = nil;
        MagnitudeCommentInfo *info = nil;
        //: if (recent.session.sessionType == NIMSessionTypeTeam) {
        if (recent.session.sessionType == NIMSessionTypeTeam) {
            //: info = [[AppleProjectKit sharedKit] infoByTeam:recent.session.sessionId option:nil];
            info = [[On along] center:recent.session.sessionId touch:nil];
            //: NIMTeamNotifyState notifyState = [[[NIMSDK sharedSDK] teamManager] notifyStateForNewMsg:info.infoId];
            NIMTeamNotifyState notifyState = [[[NIMSDK sharedSDK] teamManager] notifyStateForNewMsg:info.infoId];
            //: BOOL ishidden = notifyState == NIMTeamNotifyStateAll ? YES: NO ;
            BOOL ishidden = notifyState == NIMTeamNotifyStateAll ? YES: NO ;//判断消息是否勿扰
            //: self.disnodistrubImg.hidden = ishidden;
            self.disnodistrubImg.hidden = ishidden;
            //: if (recent.unreadCount && ishidden) {
            if (recent.unreadCount && ishidden) {
                //: self.badgeView.hidden = NO;
                self.badgeView.hidden = NO;
                //: self.badgeView.badgeValue = @(recent.unreadCount).stringValue;
                self.badgeView.badgeValue = @(recent.unreadCount).stringValue;
                //: self.disnodistrubImg.hidden = YES;
                self.disnodistrubImg.hidden = YES;
            //: }else{
            }else{
                //: self.badgeView.hidden = YES;
                self.badgeView.hidden = YES;
            }

        //: } else if (recent.session.sessionType == NIMSessionTypeP2P) {
        } else if (recent.session.sessionType == NIMSessionTypeP2P) {
            //: ZZZKitInfoFetchOption *option = [[ZZZKitInfoFetchOption alloc] init];
            CertainOption *option = [[CertainOption alloc] init];
            //: option.session = recent.session;
            option.session = recent.session;
            //: info = [[AppleProjectKit sharedKit] infoByUser:recent.session.sessionId option:option];
            info = [[On along] toKey:recent.session.sessionId image:option];

            //: BOOL ishidden = [[NIMSDK sharedSDK].userManager notifyForNewMsg:info.infoId];
            BOOL ishidden = [[NIMSDK sharedSDK].userManager notifyForNewMsg:info.infoId];//判断消息是否勿扰
            //: self.disnodistrubImg.hidden = ishidden;
            self.disnodistrubImg.hidden = ishidden;

                //: if (recent.unreadCount && ishidden) {
                if (recent.unreadCount && ishidden) {
                    //: self.badgeView.hidden = NO;
                    self.badgeView.hidden = NO;
                    //: self.badgeView.badgeValue = @(recent.unreadCount).stringValue;
                    self.badgeView.badgeValue = @(recent.unreadCount).stringValue;
                    //: self.disnodistrubImg.hidden = YES;
                    self.disnodistrubImg.hidden = YES;
                //: }else{
                }else{
                    //: self.badgeView.hidden = YES;
                    self.badgeView.hidden = YES;
                }


        }
//    }





}


//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //Session List
    //: NSInteger sessionListAvatarLeft = 15;
    NSInteger sessionListAvatarLeft = 15;
    //: NSInteger sessionListNameTop = 15;
    NSInteger sessionListNameTop = 15;
    //: NSInteger sessionListNameLeftToAvatar = 15;
    NSInteger sessionListNameLeftToAvatar = 15;
    //: NSInteger sessionListMessageLeftToAvatar = 15;
    NSInteger sessionListMessageLeftToAvatar = 15;
    //: NSInteger sessionListMessageBottom = 15;
    NSInteger sessionListMessageBottom = 15;
    //: NSInteger sessionListTimeRight = 15;
    NSInteger sessionListTimeRight = 15;
    //: NSInteger sessionListTimeTop = 15;
    NSInteger sessionListTimeTop = 15;
    //: NSInteger sessionBadgeTimeBottom = 15;
    NSInteger sessionBadgeTimeBottom = 15;
    //: NSInteger sessionBadgeTimeRight = 15;
    NSInteger sessionBadgeTimeRight = 15;

    //: _avatarImageView.nim_left = sessionListAvatarLeft;
    _avatarImageView.nim_left = sessionListAvatarLeft;
    //: _avatarImageView.nim_centerY = self.nim_height * .5f;
    _avatarImageView.nim_centerY = self.nim_height * .5f;
    //: _nameLabel.nim_top = sessionListNameTop;
    _nameLabel.nim_top = sessionListNameTop;
    //: _nameLabel.nim_left = _avatarImageView.nim_right + sessionListNameLeftToAvatar;
    _nameLabel.nim_left = _avatarImageView.nim_right + sessionListNameLeftToAvatar;
    //: _messageLabel.nim_left = _avatarImageView.nim_right + sessionListMessageLeftToAvatar;
    _messageLabel.nim_left = _avatarImageView.nim_right + sessionListMessageLeftToAvatar;
    //: _messageLabel.nim_bottom = self.nim_height - sessionListMessageBottom;
    _messageLabel.nim_bottom = self.nim_height - sessionListMessageBottom;
    //: _timeLabel.nim_right = self.nim_width - sessionListTimeRight;
    _timeLabel.nim_right = self.nim_width - sessionListTimeRight;
    //: _timeLabel.nim_top = sessionListTimeTop;
    _timeLabel.nim_top = sessionListTimeTop;
    //: _badgeView.nim_right = self.nim_width - sessionBadgeTimeRight;
    _badgeView.nim_right = self.nim_width - sessionBadgeTimeRight;
    //: _badgeView.nim_bottom = self.nim_height - sessionBadgeTimeBottom;
    _badgeView.nim_bottom = self.nim_height - sessionBadgeTimeBottom;

    //: _disnodistrubImg.nim_right = self.nim_width - sessionBadgeTimeRight;
    _disnodistrubImg.nim_right = self.nim_width - sessionBadgeTimeRight;
    //: _disnodistrubImg.nim_bottom = self.nim_height - sessionBadgeTimeBottom;
    _disnodistrubImg.nim_bottom = self.nim_height - sessionBadgeTimeBottom;

}

//: @end
@end

Byte * FormationDataToCache(Byte *data) {
    int sixDefinition = data[0];
    int sportText = data[1];
    Byte groupAction = data[2];
    int cruiseMethod = data[3];
    if (!sixDefinition) return data + cruiseMethod;
    for (int i = cruiseMethod; i < cruiseMethod + sportText; i++) {
        int value = data[i] - groupAction;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[cruiseMethod + sportText] = 0;
    return data + cruiseMethod;
}

NSString *StringFromFormationData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)FormationDataToCache(data)];
}
