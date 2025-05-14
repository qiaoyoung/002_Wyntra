
#import <Foundation/Foundation.h>

NSString *StringFromImmatureData(Byte *data);


//: icon_accessory_selected
Byte kStr_wheatData[] = {28, 23, 39, 14, 115, 100, 228, 207, 130, 144, 158, 214, 207, 101, 144, 138, 150, 149, 134, 136, 138, 138, 140, 154, 154, 150, 153, 160, 134, 154, 140, 147, 140, 138, 155, 140, 139, 104};


//: btn_message
Byte kStr_withTimeImmigrationTitle[] = {49, 11, 91, 12, 101, 65, 134, 75, 3, 247, 16, 175, 189, 207, 201, 186, 200, 192, 206, 206, 188, 194, 192, 92};


//: btn_video
Byte kStr_cosName[] = {6, 9, 43, 6, 218, 138, 141, 159, 153, 138, 161, 148, 143, 144, 154, 104};


//: icon_accessory_normal
Byte kStr_illIdealTitle[] = {98, 21, 80, 7, 63, 56, 29, 185, 179, 191, 190, 175, 177, 179, 179, 181, 195, 195, 191, 194, 201, 175, 190, 191, 194, 189, 177, 188, 177};


//: head_default
Byte kStr_voterData[] = {1, 12, 99, 7, 100, 63, 223, 203, 200, 196, 199, 194, 199, 200, 201, 196, 216, 207, 215, 205};

// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESContactInfoCell.m
//  NIM
//
//  Created by chris on 15/2/26.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZZZContactDataCell.h"
#import "ContactEdgeViewCell.h"
//: #import "ZZZAvatarImageView.h"
#import "ShankView.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "AppleProjectKit.h"
#import "On.h"
//: #import "UIImage+AppleProjectKit.h"
#import "UIImage+On.h"

//: @interface ZZZContactDataCell()
@interface ContactEdgeViewCell()

//: @end
@end

//: @implementation ZZZContactDataCell
@implementation ContactEdgeViewCell

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {
        //: _avatarImageView = [[ZZZAvatarImageView alloc] initWithFrame:CGRectMake(0, 0, 40, 40)];
        _avatarImageView = [[ShankView alloc] initWithFrame:CGRectMake(0, 0, 40, 40)];
        //: [_avatarImageView addTarget:self action:@selector(onPressAvatar:) forControlEvents:UIControlEventTouchUpInside];
        [_avatarImageView addTarget:self action:@selector(anDisable:) forControlEvents:UIControlEventTouchUpInside];
        //: [self.contentView addSubview:_avatarImageView];
        [self.contentView addSubview:_avatarImageView];
        //: _accessoryBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _accessoryBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_accessoryBtn setImage:[UIImage imageNamed:@"icon_accessory_normal"] forState:UIControlStateNormal];
        [_accessoryBtn setImage:[UIImage imageNamed:StringFromImmatureData(kStr_illIdealTitle)] forState:UIControlStateNormal];
        //: [_accessoryBtn setImage:[UIImage imageNamed:@"icon_accessory_selected"] forState:UIControlStateSelected];
        [_accessoryBtn setImage:[UIImage imageNamed:StringFromImmatureData(kStr_wheatData)] forState:UIControlStateSelected];
        //: [_accessoryBtn sizeToFit];
        [_accessoryBtn sizeToFit];
        //: _accessoryBtn.hidden = YES;
        _accessoryBtn.hidden = YES;
        //: _accessoryBtn.userInteractionEnabled = NO;
        _accessoryBtn.userInteractionEnabled = NO;
        //: [self.contentView addSubview:_accessoryBtn];
        [self.contentView addSubview:_accessoryBtn];

        //: [self.contentView addSubview:self.messageBtn];
        [self.contentView addSubview:self.messageBtn];
        //: [self.contentView addSubview:self.videoBtn];
        [self.contentView addSubview:self.videoBtn];

        //: self.textLabel.textColor = [UIColor blackColor];
        self.textLabel.textColor = [UIColor blackColor];
        //: self.textLabel.font = [UIFont boldSystemFontOfSize:16];
        self.textLabel.font = [UIFont boldSystemFontOfSize:16];

        //: self.backgroundColor = [UIColor clearColor];
        self.backgroundColor = [UIColor clearColor];
        //: self.selectionStyle = UITableViewCellSelectionStyleGray;
        self.selectionStyle = UITableViewCellSelectionStyleGray;
    }
    //: return self;
    return self;
}

//: - (void)refreshItem:(id<NIMGroupMemberProtocol>)member {
- (void)menu:(id<ModelValue>)member {
    //: [self refreshTitle:member.showName];
    [self header:member.max];
    //: self.memberId = member.memberId;
    self.memberId = member.modifyOption;
    //: NSURL *url = member.avatarUrlString ? [NSURL URLWithString:member.avatarUrlString] : nil;
    NSURL *url = member.ofTip ? [NSURL URLWithString:member.ofTip] : nil;
    //: [_avatarImageView nim_setImageWithURL:url placeholderImage:[UIImage imageNamed:@"head_default"] options:SDWebImageRetryFailed];
    [_avatarImageView towardNeed:url user:[UIImage imageNamed:StringFromImmatureData(kStr_voterData)] can:SDWebImageRetryFailed];
}

//: - (void)refreshUser:(id<NIMGroupMemberProtocol>)member{
- (void)name:(id<ModelValue>)member{
    //: [self refreshTitle:member.showName];
    [self header:member.max];
    //: self.memberId = [member memberId];
    self.memberId = [member modifyOption];
    //: ZZZKitInfo *info = [[AppleProjectKit sharedKit] infoByUser:self.memberId option:nil];
    MagnitudeCommentInfo *info = [[On along] toKey:self.memberId image:nil];
    //: [self refreshAvatar:info];
    [self timeUnit:info];
}

//: - (void)refreshTeam:(NIMTeam *)team; {
- (void)periodicTable:(NIMTeam *)team; {
    //: [self refreshTitle:team.teamName];
    [self header:team.teamName];
    //: self.memberId = [team teamId];
    self.memberId = [team teamId];
    //: ZZZKitInfo *info = [[AppleProjectKit sharedKit] infoByTeam:self.memberId option:nil];
    MagnitudeCommentInfo *info = [[On along] center:self.memberId touch:nil];
    //: [self refreshAvatar:info];
    [self timeUnit:info];
}

//: - (void)refreshTitle:(NSString *)title{
- (void)header:(NSString *)title{
    //: self.textLabel.text = title;
    self.textLabel.text = title;
}

//: - (void)refreshAvatar:(ZZZKitInfo *)info{
- (void)timeUnit:(MagnitudeCommentInfo *)info{
    //: NSURL *url = info.avatarUrlString ? [NSURL URLWithString:info.avatarUrlString] : nil;
    NSURL *url = info.avatarUrlString ? [NSURL URLWithString:info.avatarUrlString] : nil;
    //: [_avatarImageView nim_setImageWithURL:url placeholderImage:info.avatarImage options:SDWebImageRetryFailed];
    [_avatarImageView towardNeed:url user:info.avatarImage can:SDWebImageRetryFailed];
}

//: - (void)onPressAvatar:(id)sender{
- (void)anDisable:(id)sender{
    //: if ([self.delegate respondsToSelector:@selector(onPressAvatar:)]) {
    if ([self.delegate respondsToSelector:@selector(anDisable:)]) {
        //: [self.delegate onPressAvatar:self.memberId];
        [self.delegate anDisable:self.memberId];
    }
}

//: - (void)addDelegate:(id)delegate{
- (void)message:(id)delegate{
    //: self.delegate = delegate;
    self.delegate = delegate;
}

//: - (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated{
- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated{
    //: [self.accessoryBtn setHighlighted:highlighted];
    [self.accessoryBtn setHighlighted:highlighted];
}


//: - (void)setSelected:(BOOL)selected animated:(BOOL)animated{
- (void)setSelected:(BOOL)selected animated:(BOOL)animated{

}


//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: CGFloat scale = self.nim_width / 320;
    CGFloat scale = self.nim_width / 320;
    //: CGFloat maxTextLabelWidth = 210 * scale;
    CGFloat maxTextLabelWidth = 210 * scale;
    //: self.textLabel.nim_width = ((self.textLabel.nim_width) < (maxTextLabelWidth) ? (self.textLabel.nim_width) : (maxTextLabelWidth));
    self.textLabel.nim_width = ((self.textLabel.nim_width) < (maxTextLabelWidth) ? (self.textLabel.nim_width) : (maxTextLabelWidth));
    //: self.accessoryBtn.nim_left = NIMContactAccessoryLeft;
    self.accessoryBtn.nim_left = kConst_imageData;
    //: self.accessoryBtn.nim_centerY = self.nim_height * .5f;
    self.accessoryBtn.nim_centerY = self.nim_height * .5f;
    //: self.avatarImageView.nim_left = self.accessoryBtn.hidden ? NIMContactAvatarLeft : NIMContactAvatarAndAccessorySpacing + self.accessoryBtn.nim_right;
    self.avatarImageView.nim_left = self.accessoryBtn.hidden ? kConst_nameMessageTitle : kConst_recentData + self.accessoryBtn.nim_right;
    //: self.avatarImageView.nim_centerY = self.nim_height * .5f;
    self.avatarImageView.nim_centerY = self.nim_height * .5f;
    //: self.textLabel.nim_left = self.avatarImageView.nim_right + NIMContactAvatarAndTitleSpacing;
    self.textLabel.nim_left = self.avatarImageView.nim_right + kConst_commentTeamValue;

}

//: - (UIButton *)messageBtn {
- (UIButton *)messageBtn {
    //: if (!_messageBtn) {
    if (!_messageBtn) {
        //: _messageBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _messageBtn = [UIButton buttonWithType:UIButtonTypeCustom];
//        [_messageBtn addTarget:self action:@selector(animationClose) forControlEvents:UIControlEventTouchUpInside];
        //: [_messageBtn setImage:[UIImage imageNamed:@"btn_message"] forState:UIControlStateNormal];
        [_messageBtn setImage:[UIImage imageNamed:StringFromImmatureData(kStr_withTimeImmigrationTitle)] forState:UIControlStateNormal];
    }
    //: return _messageBtn;
    return _messageBtn;
}

//: - (UIButton *)videoBtn {
- (UIButton *)videoBtn {
    //: if (!_videoBtn) {
    if (!_videoBtn) {
        //: _videoBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _videoBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_videoBtn setImage:[UIImage imageNamed:@"btn_video"] forState:UIControlStateNormal];
        [_videoBtn setImage:[UIImage imageNamed:StringFromImmatureData(kStr_cosName)] forState:UIControlStateNormal];
//        [_videoBtn addTarget:self action:@selector(updateTheNickname) forControlEvents:UIControlEventTouchUpInside];
    }
    //: return _videoBtn;
    return _videoBtn;
}

//: @end
@end

Byte * ImmatureDataToCache(Byte *data) {
    int puissant = data[0];
    int maintenance = data[1];
    Byte messageMedia = data[2];
    int stairsWarning = data[3];
    if (!puissant) return data + stairsWarning;
    for (int i = stairsWarning; i < stairsWarning + maintenance; i++) {
        int value = data[i] - messageMedia;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[stairsWarning + maintenance] = 0;
    return data + stairsWarning;
}

NSString *StringFromImmatureData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)ImmatureDataToCache(data)];
}
