
#import <Foundation/Foundation.h>

NSString *StringFromHeyData(Byte *data);        


//: head_default
Byte kStr_increasedStainRapidValue[] = {32, 12, 47, 14, 78, 203, 53, 101, 213, 245, 47, 115, 131, 170, 57, 54, 50, 53, 48, 53, 54, 55, 50, 70, 61, 69, 225};


//: yyyy/MM/dd
Byte kStr_sorryClassicTitle[] = {63, 10, 30, 13, 119, 89, 234, 99, 198, 69, 137, 85, 215, 91, 91, 91, 91, 17, 47, 47, 17, 70, 70, 25};


//: 创建于%@
Byte kStr_rangeData[] = {5, 11, 52, 6, 147, 115, 177, 84, 103, 177, 135, 134, 176, 134, 90, 241, 12, 202};


//: 未知时间创建
Byte kStr_organizeValue[] = {49, 18, 57, 8, 163, 178, 187, 191, 173, 99, 113, 174, 102, 108, 173, 94, 125, 176, 94, 123, 172, 79, 98, 172, 130, 129, 250};

// __DEBUG__
// __CLOSE_PRINT__
//
//  PathView.m
// On
//
//  Created by Netease on 2019/6/10.
//  Copyright © 2019 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZZZTeamCardHeaderView.h"
#import "PathView.h"
//: #import "ZZZAvatarImageView.h"
#import "ShankView.h"
//: #import "ZZZKitUtil.h"
#import "TingText.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "UIImage+AppleProjectKit.h"
#import "UIImage+On.h"

//: @interface ZZZTeamCardHeaderView ()
@interface PathView ()

//: @property (nonatomic,strong) ZZZAvatarImageView *avatar;
@property (nonatomic,strong) ShankView *avatar;

//: @property (nonatomic,strong) UILabel *titleLabel;
@property (nonatomic,strong) UILabel *titleLabel;

//: @property (nonatomic,strong) UILabel *numberLabel;
@property (nonatomic,strong) UILabel *numberLabel;

//: @property (nonatomic,strong) UILabel *createTimeLabel;
@property (nonatomic,strong) UILabel *createTimeLabel;

//: @end
@end

//: @implementation ZZZTeamCardHeaderView
@implementation PathView

//: - (instancetype)initWithFrame:(CGRect)frame {
- (instancetype)initWithFrame:(CGRect)frame {
    //: if (self = [super initWithFrame:frame]) {
    if (self = [super initWithFrame:frame]) {
        //: [self addSubview:self.avatar];
        [self addSubview:self.avatar];
        //: [self addSubview:self.titleLabel];
        [self addSubview:self.titleLabel];
        //: [self addSubview:self.numberLabel];
        [self addSubview:self.numberLabel];
        //: [self addSubview:self.createTimeLabel];
        [self addSubview:self.createTimeLabel];
        //: self.backgroundColor = [UIColor colorWithRed:((float)((0xecf1f5 & 0xFF0000) >> 16))/255.0 green:((float)((0xecf1f5 & 0x00FF00) >> 8))/255.0 blue:((float)(0xecf1f5 & 0x0000FF))/255.0 alpha:1.0];
        self.backgroundColor = [UIColor colorWithRed:((float)((0xecf1f5 & 0xFF0000) >> 16))/255.0 green:((float)((0xecf1f5 & 0x00FF00) >> 8))/255.0 blue:((float)(0xecf1f5 & 0x0000FF))/255.0 alpha:1.0];
        //: self.autoresizingMask = UIViewAutoresizingFlexibleWidth;
        self.autoresizingMask = UIViewAutoresizingFlexibleWidth;
    }
    //: return self;
    return self;
}

//: - (void)layoutSubviews {
- (void)layoutSubviews {
    //: [super layoutSubviews];
    [super layoutSubviews];

    //: _titleLabel.nim_width = _titleLabel.nim_width > 200 ? 200 : self.titleLabel.nim_width;
    _titleLabel.nim_width = _titleLabel.nim_width > 200 ? 200 : self.titleLabel.nim_width;
    //: _avatar.nim_left = 20;
    _avatar.nim_left = 20;
    //: _avatar.nim_top = 25;
    _avatar.nim_top = 25;
    //: _titleLabel.nim_left = _avatar.nim_right + 10;
    _titleLabel.nim_left = _avatar.nim_right + 10;
    //: _titleLabel.nim_top = _avatar.nim_top;
    _titleLabel.nim_top = _avatar.nim_top;
    //: _numberLabel.nim_left = _titleLabel.nim_left;
    _numberLabel.nim_left = _titleLabel.nim_left;
    //: _numberLabel.nim_bottom = _avatar.nim_bottom;
    _numberLabel.nim_bottom = _avatar.nim_bottom;
    //: _createTimeLabel.nim_left = _numberLabel.nim_right + 10;
    _createTimeLabel.nim_left = _numberLabel.nim_right + 10;
    //: _createTimeLabel.nim_bottom = _numberLabel.nim_bottom;
    _createTimeLabel.nim_bottom = _numberLabel.nim_bottom;
}

//: - (CGSize)sizeThatFits:(CGSize)size {
- (CGSize)sizeThatFits:(CGSize)size {
    //: return CGSizeMake(size.width, 89);
    return CGSizeMake(size.width, 89);
}

//: #pragma mark - Public
#pragma mark - Public
//: - (void)setTeam:(NIMTeam *)team {
- (void)setTeam:(NIMTeam *)team {
    //: _team = team;
    _team = team;

    //avatar
    //: NSURL *avatarUrl = team.avatarUrl.length? [NSURL URLWithString:team.avatarUrl] : nil;
    NSURL *avatarUrl = team.avatarUrl.length? [NSURL URLWithString:team.avatarUrl] : nil;
    //: [_avatar nim_setImageWithURL:avatarUrl placeholderImage:[UIImage imageNamed:@"head_default"]];
    [_avatar colorImageShow:avatarUrl blockFrame:[UIImage imageNamed:StringFromHeyData(kStr_increasedStainRapidValue)]];

    //title
    //: _titleLabel.text = team.teamName;
    _titleLabel.text = team.teamName;
    //: [_titleLabel sizeToFit];
    [_titleLabel sizeToFit];

    //teamId
    //: _numberLabel.text = team.teamId;
    _numberLabel.text = team.teamId;
    //: [_numberLabel sizeToFit];
    [_numberLabel sizeToFit];

    //create time
    //: _createTimeLabel.text = [self formatTime:team.createTime];
    _createTimeLabel.text = [self green:team.createTime];
    //: [_createTimeLabel sizeToFit];
    [_createTimeLabel sizeToFit];

    //: [self layoutIfNeeded];
    [self layoutIfNeeded];
}

//: #pragma mark - Private
#pragma mark - Private
//: - (NSString*)formatTime:(NSTimeInterval)time {
- (NSString*)green:(NSTimeInterval)time {
    //: NSTimeInterval timestamp = time;
    NSTimeInterval timestamp = time;
    //: NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    //: [dateFormatter setDateFormat:@"yyyy/MM/dd"];
    [dateFormatter setDateFormat:StringFromHeyData(kStr_sorryClassicTitle)];
    //: NSString *dateString = [dateFormatter stringFromDate:[NSDate dateWithTimeIntervalSince1970:timestamp]];
    NSString *dateString = [dateFormatter stringFromDate:[NSDate dateWithTimeIntervalSince1970:timestamp]];
    //: if (!dateString.length) {
    if (!dateString.length) {
        //: return @"未知时间创建".nim_localized;
        return StringFromHeyData(kStr_organizeValue).start;
    }
    //: return [NSString stringWithFormat:@"创建于%@".nim_localized,dateString];
    return [NSString stringWithFormat:StringFromHeyData(kStr_rangeData).start,dateString];
}

//: #pragma mark - Action
#pragma mark - Action
//: - (void)onTouchAvatar:(id)sender
- (void)keyAvatar:(id)sender
{
    //: if (_delegate && [_delegate respondsToSelector:@selector(onTouchAvatar:)]) {
    if (_delegate && [_delegate respondsToSelector:@selector(keyAvatar:)]) {
        //: [_delegate onTouchAvatar:sender];
        [_delegate keyAvatar:sender];
    }
}

//: #pragma mark - Getter
#pragma mark - Getter
//: - (ZZZAvatarImageView *)avatar {
- (ShankView *)avatar {
    //: if (!_avatar) {
    if (!_avatar) {
        //: _avatar = [[ZZZAvatarImageView alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
        _avatar = [[ShankView alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
        //: [_avatar addTarget:self
        [_avatar addTarget:self
                    //: action:@selector(onTouchAvatar:)
                    action:@selector(keyAvatar:)
          //: forControlEvents:UIControlEventTouchUpInside];
          forControlEvents:UIControlEventTouchUpInside];
    }
    //: return _avatar;
    return _avatar;
}

//: - (UILabel *)titleLabel {
- (UILabel *)titleLabel {
    //: if (!_titleLabel) {
    if (!_titleLabel) {
        //: _titleLabel = [[UILabel alloc]initWithFrame:CGRectZero];
        _titleLabel = [[UILabel alloc]initWithFrame:CGRectZero];
        //: _titleLabel.backgroundColor = [UIColor clearColor];
        _titleLabel.backgroundColor = [UIColor clearColor];
        //: _titleLabel.font = [UIFont systemFontOfSize:17.f];
        _titleLabel.font = [UIFont systemFontOfSize:17.f];
        //: _titleLabel.textColor = [UIColor colorWithRed:((float)((0x333333 & 0xFF0000) >> 16))/255.0 green:((float)((0x333333 & 0x00FF00) >> 8))/255.0 blue:((float)(0x333333 & 0x0000FF))/255.0 alpha:1.0];
        _titleLabel.textColor = [UIColor colorWithRed:((float)((0x333333 & 0xFF0000) >> 16))/255.0 green:((float)((0x333333 & 0x00FF00) >> 8))/255.0 blue:((float)(0x333333 & 0x0000FF))/255.0 alpha:1.0];
    }
    //: return _titleLabel;
    return _titleLabel;
}

//: - (UILabel *)numberLabel {
- (UILabel *)numberLabel {
    //: if (!_numberLabel) {
    if (!_numberLabel) {
        //: _numberLabel = [[UILabel alloc]initWithFrame:CGRectZero];
        _numberLabel = [[UILabel alloc]initWithFrame:CGRectZero];
        //: _numberLabel.backgroundColor = [UIColor clearColor];
        _numberLabel.backgroundColor = [UIColor clearColor];
        //: _numberLabel.font = [UIFont systemFontOfSize:14.f];
        _numberLabel.font = [UIFont systemFontOfSize:14.f];
        //: _numberLabel.textColor = [UIColor colorWithRed:((float)((0x999999 & 0xFF0000) >> 16))/255.0 green:((float)((0x999999 & 0x00FF00) >> 8))/255.0 blue:((float)(0x999999 & 0x0000FF))/255.0 alpha:1.0];
        _numberLabel.textColor = [UIColor colorWithRed:((float)((0x999999 & 0xFF0000) >> 16))/255.0 green:((float)((0x999999 & 0x00FF00) >> 8))/255.0 blue:((float)(0x999999 & 0x0000FF))/255.0 alpha:1.0];
    }
    //: return _numberLabel;
    return _numberLabel;
}

//: - (UILabel *)createTimeLabel {
- (UILabel *)createTimeLabel {
    //: if (!_createTimeLabel) {
    if (!_createTimeLabel) {
        //: _createTimeLabel = [[UILabel alloc]initWithFrame:CGRectZero];
        _createTimeLabel = [[UILabel alloc]initWithFrame:CGRectZero];
        //: _createTimeLabel.backgroundColor = [UIColor clearColor];
        _createTimeLabel.backgroundColor = [UIColor clearColor];
        //: _createTimeLabel.font = [UIFont systemFontOfSize:14.f];
        _createTimeLabel.font = [UIFont systemFontOfSize:14.f];
        //: _createTimeLabel.textColor = [UIColor colorWithRed:((float)((0x999999 & 0xFF0000) >> 16))/255.0 green:((float)((0x999999 & 0x00FF00) >> 8))/255.0 blue:((float)(0x999999 & 0x0000FF))/255.0 alpha:1.0];
        _createTimeLabel.textColor = [UIColor colorWithRed:((float)((0x999999 & 0xFF0000) >> 16))/255.0 green:((float)((0x999999 & 0x00FF00) >> 8))/255.0 blue:((float)(0x999999 & 0x0000FF))/255.0 alpha:1.0];
    }
    //: return _createTimeLabel;
    return _createTimeLabel;
}

//: @end
@end

Byte * HeyDataToCache(Byte *data) {
    int retrieve = data[0];
    int bloody = data[1];
    Byte looking = data[2];
    int courthouse = data[3];
    if (!retrieve) return data + courthouse;
    for (int i = courthouse; i < courthouse + bloody; i++) {
        int value = data[i] + looking;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[courthouse + bloody] = 0;
    return data + courthouse;
}

NSString *StringFromHeyData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)HeyDataToCache(data)];
}
