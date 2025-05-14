
#import <Foundation/Foundation.h>

NSString *StringFromTitleData(Byte *data);


//: group_mute
Byte kStr_markScaleExpoContent[] = {44, 10, 10, 124, 54, 83, 117, 187, 95, 70, 101, 116, 117, 109, 95, 112, 117, 111, 114, 103, 170};


//: #34AECA
Byte kStr_messageLengthValue[] = {49, 7, 9, 172, 41, 161, 116, 60, 3, 65, 67, 69, 65, 52, 51, 35, 70};


//: group_remove
Byte kStr_forbidText[] = {85, 12, 7, 148, 160, 111, 247, 101, 118, 111, 109, 101, 114, 95, 112, 117, 111, 114, 103, 249};


//: group_mute_no
Byte kStr_boxStairsData[] = {50, 13, 11, 119, 4, 162, 238, 226, 157, 58, 41, 111, 110, 95, 101, 116, 117, 109, 95, 112, 117, 111, 114, 103, 244};


//: 666666
Byte kStr_fibData[] = {10, 6, 4, 219, 54, 54, 54, 54, 54, 54, 224};

// __DEBUG__
// __CLOSE_PRINT__
//
//  DisableViewCell.m
//  NIM
//
//  Created by Yan Wang on 2024/7/29.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZMONGroupMemberTableViewCell.h"
#import "DisableViewCell.h"
//: #import "ZZZAvatarImageView.h"
#import "ShankView.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "UIImage+AppleProjectKit.h"
#import "UIImage+On.h"
//: #import "ZZZTeamHelper.h"
#import "PathHelper.h"
//: #import "NSString+AppleProjectKit.h"
#import "NSString+On.h"

//: @interface ZMONGroupMemberTableViewCell()
@interface DisableViewCell()

//: @property (nonatomic,strong) id<NIMKitCardHeaderData> data;
@property (nonatomic,strong) id<NIMKitCardHeaderData> data;

//: @end
@end

//: @implementation ZMONGroupMemberTableViewCell
@implementation DisableViewCell

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {

//        self.backgroundColor = [UIColor whiteColor];
        //: self.contentView.backgroundColor = [UIColor clearColor];
        self.contentView.backgroundColor = [UIColor clearColor];
//        self.selectionStyle = UITableViewCellSelectionStyleGray;
        //: self.accessoryType = UITableViewCellAccessoryNone;
        self.accessoryType = UITableViewCellAccessoryNone;


        //: [self initSubviews];
        [self initTeam];
    }
    //: return self;
    return self;
}

//: + (instancetype)cellWithTableView:(UITableView *)tableView
+ (instancetype)streetSmart:(UITableView *)tableView
{
    //: static NSString *identifier = @"ZMONGroupMemberTableViewCell";
    static NSString *identifier = @"DisableViewCell";
    //: ZMONGroupMemberTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    DisableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    //: if (!cell)
    if (!cell)
    {
        //: cell = [[ZMONGroupMemberTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
        cell = [[DisableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
//        cell.backgroundColor = [UIColor colorWithRed:247/255.0 green:249/255.0 blue:250/255.0 alpha:1.0];
//        cell.layer.cornerRadius = 12;
        //: cell.backgroundColor = [UIColor clearColor];
        cell.backgroundColor = [UIColor clearColor];

    }
    //: return cell;
    return cell;
}

//: - (void)initSubviews {
- (void)initTeam {

    //: _roleImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 40, 40)];
    _roleImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 40, 40)];
    //: _roleImageView.layer.masksToBounds = YES;
    _roleImageView.layer.masksToBounds = YES;
    //: _roleImageView.layer.cornerRadius = 20;
    _roleImageView.layer.cornerRadius = 20;
    //: [self.contentView addSubview:_roleImageView];
    [self.contentView addSubview:_roleImageView];
    //: _titleLabel = [[UILabel alloc] initWithFrame:CGRectZero];
    _titleLabel = [[UILabel alloc] initWithFrame:CGRectZero];
    //: _titleLabel.font = [UIFont systemFontOfSize:16.f];
    _titleLabel.font = [UIFont systemFontOfSize:16.f];
    //: _titleLabel.textColor = [UIColor colorWithHexString:@"666666"];
    _titleLabel.textColor = [UIColor box:StringFromTitleData(kStr_fibData)];
    //: [self.contentView addSubview:_titleLabel];
    [self.contentView addSubview:_titleLabel];

    //: _subtitleLabel = [[UILabel alloc] initWithFrame:CGRectZero];
    _subtitleLabel = [[UILabel alloc] initWithFrame:CGRectZero];
    //: _subtitleLabel.font = [UIFont systemFontOfSize:12.f];
    _subtitleLabel.font = [UIFont systemFontOfSize:12.f];
    //: _subtitleLabel.textColor = [UIColor colorWithHexString:@"#34AECA"];
    _subtitleLabel.textColor = [UIColor box:StringFromTitleData(kStr_messageLengthValue)];
    //: _subtitleLabel.hidden = YES;
    _subtitleLabel.hidden = YES;
    //: [self.contentView addSubview:_subtitleLabel];
    [self.contentView addSubview:_subtitleLabel];

    //: [self.contentView addSubview:self.muteBtn];
    [self.contentView addSubview:self.muteBtn];
    //: [self.contentView addSubview:self.removeBtn];
    [self.contentView addSubview:self.removeBtn];

}

//- (instancetype)initWithFrame:(CGRect)frame{
//    self = [super initWithFrame:frame];
//    if (self) {
//        _imageViews = [[ShankView alloc] initWithFrame:CGRectMake(0, 0, 40, 40)];
//        [self addSubview:_imageViews];
//        _titleLabel = [[UILabel alloc] initWithFrame:CGRectZero];
//        _titleLabel.font = [UIFont systemFontOfSize:16.f];
//        _titleLabel.textColor = TextColor_2;
//        [self addSubview:_titleLabel];
//
////        _roleImageView              = [[UIImageView alloc] initWithFrame:CGRectZero];
////        [self addSubview:_roleImageView];
////        _removeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
////        _removeBtn.hidden = YES;
////        [_removeBtn setImage:[UIImage imageNamed:@"icon_avatar_del"] forState:UIControlStateNormal];
////        [_removeBtn sizeToFit];
////        [_removeBtn addTarget:self action:@selector(onTouchRemoveBtn:) forControlEvents:UIControlEventTouchUpInside];
////        [self addSubview:_removeBtn];
//    }
//    return self;
//}

//- (void)refreshData:(WithQuantityerval *)data
//{
//    self.data = data;
//    NSURL *url = [NSURL URLWithString:data.imageUrl];
//    [self.imageViews nim_setImageWithURL:url placeholderImage:data.imageNormal];
//    [self.imageViews addTarget:self action:@selector(onSelected:) forControlEvents:UIControlEventTouchUpInside];
//
//    NSString *showName = data.title;
//    if ([data isMyUserId]) {
//        showName = LangKey(@"Group_Me");//@"我".nim_localized;
//    }
//    self.titleLabel.text = showName;
////    self.roleImageView.image = [PathHelper imageWithMemberType:data.userType];
//    [self.titleLabel sizeToFit];
//}

//- (void)onSelected:(id)sender{
//    if ([self.delegate respondsToSelector:@selector(cellDidSelected:)]) {
//        [self.delegate cellDidSelected:self];
//    }
//}
//

//: - (void)reloadWithUserId:(NSString *)UserId
- (void)label:(NSString *)UserId
{
    //: self.userId = UserId;
    self.userId = UserId;
}

//: - (void)setUserInfo:(ZZZKitInfo *)userInfo
- (void)setUserInfo:(MagnitudeCommentInfo *)userInfo
{
    //: self.userInfo = userInfo;
    self.userInfo = userInfo;
}

//: - (void)onTouchRemoveBtn:(id)sender{
- (void)feelsed:(id)sender{

    //: if ([self.delegate respondsToSelector:@selector(cellShouldBeRemoved:)]) {
    if ([self.delegate respondsToSelector:@selector(bes:)]) {
        //: [self.delegate cellShouldBeRemoved:self.userId];
        [self.delegate bes:self.userId];
    }
}
//: - (void)onTouchMuteBtn:(id)sender{
- (void)ofBubbleBtn:(id)sender{
    //: if ([self.delegate respondsToSelector:@selector(cellShouldBeRemoved:)]) {
    if ([self.delegate respondsToSelector:@selector(bes:)]) {
        //: [self.delegate cellShouldBeMute:self.userId mute:YES];
        [self.delegate show:self.userId magnitudeTitle:YES];
    }
}

//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];

    //: self.muteBtn.frame = CGRectMake(self.width-70, 20, 20, 20);
    self.muteBtn.frame = CGRectMake(self.width-70, 20, 20, 20);
    //: self.removeBtn.frame = CGRectMake(self.width-35, 20, 20, 20);
    self.removeBtn.frame = CGRectMake(self.width-35, 20, 20, 20);

}
//: - (UIButton *)removeBtn{
- (UIButton *)removeBtn{
    //: if (!_removeBtn) {
    if (!_removeBtn) {
        //: _removeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _removeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_removeBtn addTarget:self action:@selector(onTouchRemoveBtn:) forControlEvents:UIControlEventTouchUpInside];
        [_removeBtn addTarget:self action:@selector(feelsed:) forControlEvents:UIControlEventTouchUpInside];
        //: [_removeBtn setImage:[UIImage imageNamed:@"group_remove"] forState:UIControlStateNormal];
        [_removeBtn setImage:[UIImage imageNamed:StringFromTitleData(kStr_forbidText)] forState:UIControlStateNormal];

    }
    //: return _removeBtn;
    return _removeBtn;
}

//: - (UIButton *)muteBtn{
- (UIButton *)muteBtn{
    //: if (!_muteBtn) {
    if (!_muteBtn) {
        //: _muteBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _muteBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_muteBtn addTarget:self action:@selector(onTouchMuteBtn:) forControlEvents:UIControlEventTouchUpInside];
        [_muteBtn addTarget:self action:@selector(ofBubbleBtn:) forControlEvents:UIControlEventTouchUpInside];
        //: [_muteBtn setImage:[UIImage imageNamed:@"group_mute_no"] forState:UIControlStateNormal];
        [_muteBtn setImage:[UIImage imageNamed:StringFromTitleData(kStr_boxStairsData)] forState:UIControlStateNormal];
        //: [_muteBtn setImage:[UIImage imageNamed:@"group_mute"] forState:UIControlStateSelected];
        [_muteBtn setImage:[UIImage imageNamed:StringFromTitleData(kStr_markScaleExpoContent)] forState:UIControlStateSelected];

    }
    //: return _muteBtn;
    return _muteBtn;
}


//: @end
@end

Byte * TitleDataToCache(Byte *data) {
    int labelRed = data[0];
    int speciesMoveTapStairs = data[1];
    int imageCheek = data[2];
    if (!labelRed) return data + imageCheek;
    for (int i = 0; i < speciesMoveTapStairs / 2; i++) {
        int begin = imageCheek + i;
        int end = imageCheek + speciesMoveTapStairs - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[imageCheek + speciesMoveTapStairs] = 0;
    return data + imageCheek;
}

NSString *StringFromTitleData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)TitleDataToCache(data)];
}  
