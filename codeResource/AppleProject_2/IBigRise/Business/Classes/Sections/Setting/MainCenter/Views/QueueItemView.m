
#import <Foundation/Foundation.h>

NSString *StringFromTextData(Byte *data);


//: black_list_item_remove
Byte kStr_topInformData[] = {61, 22, 3, 101, 118, 111, 109, 101, 114, 95, 109, 101, 116, 105, 95, 116, 115, 105, 108, 95, 107, 99, 97, 108, 98, 123};


//: #333333
Byte kStr_somedayTrulyMediaName[] = {31, 7, 8, 200, 57, 180, 16, 213, 51, 51, 51, 51, 51, 51, 35, 64};


//: #34AECA
Byte kStr_menuAnybodyContent[] = {88, 7, 6, 3, 206, 240, 65, 67, 69, 65, 52, 51, 35, 143};


//: _UITableViewCellSeparatorView
Byte kStr_methodHopefulTitle[] = {15, 29, 13, 157, 176, 24, 145, 84, 16, 51, 162, 56, 58, 119, 101, 105, 86, 114, 111, 116, 97, 114, 97, 112, 101, 83, 108, 108, 101, 67, 119, 101, 105, 86, 101, 108, 98, 97, 84, 73, 85, 95, 130};

// __DEBUG__
// __CLOSE_PRINT__
//
//  QueueItemView.m
//  NIM
//
//  Created by Yan Wang on 2024/6/29.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESBlackListTableViewCell.h"
#import "QueueItemView.h"
//: #import "ZZZAvatarImageView.h"
#import "ShankView.h"
//: #import "UIView+NTES.h"
#import "UIView+Item.h"
//: #import "NTESContactDataMember.h"
#import "QueryItemHide.h"
//: #import "NTESSessionUtil.h"
#import "ComponentUtil.h"

//: @implementation NTESBlackListTableViewCell
@implementation QueueItemView

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {
        //: self.accessoryType = UITableViewCellAccessoryNone;
        self.accessoryType = UITableViewCellAccessoryNone;

        //: self.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
        self.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
        //: self.layer.cornerRadius = 8;
        self.layer.cornerRadius = 8;
        //: self.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
        self.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
        //: self.layer.shadowOffset = CGSizeMake(0,3);
        self.layer.shadowOffset = CGSizeMake(0,3);
        //: self.layer.shadowOpacity = 1;
        self.layer.shadowOpacity = 1;
        //: self.layer.shadowRadius = 0;
        self.layer.shadowRadius = 0;

        //: [self initSubviews];
        [self initAlong];
    }
    //: return self;
    return self;
}

//: + (instancetype)cellWithTableView:(UITableView *)tableView
+ (instancetype)compartmentToSightShare:(UITableView *)tableView
{
    //: static NSString *identifier = @"NTESBlackListTableViewCell";
    static NSString *identifier = @"QueueItemView";
    //: NTESBlackListTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    QueueItemView *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    //: if (!cell)
    if (!cell)
    {
        //: cell = [[NTESBlackListTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
        cell = [[QueueItemView alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
//        cell.backgroundColor = [UIColor colorWithRed:247/255.0 green:249/255.0 blue:250/255.0 alpha:1.0];
//        cell.layer.cornerRadius = 12;
//        cell.backgroundColor = [UIColor whiteColor];

    }
    //: return cell;
    return cell;
}

//: - (void)initSubviews {
- (void)initAlong {

    //: _avatarImageView = [[UIImageView alloc] initWithFrame:CGRectMake(15, 10, 40, 40)];
    _avatarImageView = [[UIImageView alloc] initWithFrame:CGRectMake(15, 10, 40, 40)];
    //: _avatarImageView.layer.cornerRadius = 20;
    _avatarImageView.layer.cornerRadius = 20;
    //: _avatarImageView.layer.masksToBounds = YES;
    _avatarImageView.layer.masksToBounds = YES;
    //: [self.contentView addSubview:_avatarImageView];
    [self.contentView addSubview:_avatarImageView];
    //: UITapGestureRecognizer *panGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(onTouchAvatar:)];
    UITapGestureRecognizer *panGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(keyAvatar:)];
    //: [_avatarImageView addGestureRecognizer:panGesture];
    [_avatarImageView addGestureRecognizer:panGesture];


    //: _cancleBtn = [UIButton buttonWithType:(UIButtonTypeCustom)];
    _cancleBtn = [UIButton buttonWithType:(UIButtonTypeCustom)];
    //: _cancleBtn.frame = CGRectMake(0, 0, 70, 26);
    _cancleBtn.frame = CGRectMake(0, 0, 70, 26);
//         _cancleBtn.titleLabel.textAlignment = NSTextAlignmentRight;
    //: _cancleBtn.titleLabel.font = [UIFont systemFontOfSize:16];
    _cancleBtn.titleLabel.font = [UIFont systemFontOfSize:16];
    //: [_cancleBtn setTitle:[NTESLanguageManager getTextWithKey:@"black_list_item_remove"] forState:(UIControlStateNormal)];
    [_cancleBtn setTitle:[LabelCell tinkleKey:StringFromTextData(kStr_topInformData)] forState:(UIControlStateNormal)];//移除
    //: [_cancleBtn addTarget:self action:@selector(onTouchButton) forControlEvents:(UIControlEventTouchUpInside)];
    [_cancleBtn addTarget:self action:@selector(assemblageSession) forControlEvents:(UIControlEventTouchUpInside)];
    //: [_cancleBtn setTitleColor:[UIColor colorWithHexString:@"#34AECA"] forState:(UIControlStateNormal)];
    [_cancleBtn setTitleColor:[UIColor box:StringFromTextData(kStr_menuAnybodyContent)] forState:(UIControlStateNormal)];
    //: _cancleBtn.layer.cornerRadius = 4;
    _cancleBtn.layer.cornerRadius = 4;
    //: _cancleBtn.layer.borderWidth = 1/[UIScreen mainScreen].scale;
    _cancleBtn.layer.borderWidth = 1/[UIScreen mainScreen].scale;
    //: _cancleBtn.layer.borderColor = [UIColor colorWithHexString:@"#34AECA"].CGColor;
    _cancleBtn.layer.borderColor = [UIColor box:StringFromTextData(kStr_menuAnybodyContent)].CGColor;
    //: _cancleBtn.layer.masksToBounds = YES;
    _cancleBtn.layer.masksToBounds = YES;
    //: [self.contentView addSubview:_cancleBtn];
    [self.contentView addSubview:_cancleBtn];

//    self.cancleBtn.right = self.width - 10;
//    self.cancleBtn.centerY = self.height * .5f;

    //: [self.contentView addSubview:self.labName];
    [self.contentView addSubview:self.labName];
    //: self.labName.frame = CGRectMake(15+40+15, 10, self.width-140, 40);
    self.labName.frame = CGRectMake(15+40+15, 10, self.width-140, 40);
}

//: - (void)refreshWithMember:(NTESContactDataMember *)member{
- (void)honkyTonk:(QueryItemHide *)member{
    //: self.member = member;
    self.member = member;
    //: self.labName.text = [NTESSessionUtil showNick:member.info.infoId inSession:nil];
    self.labName.text = [ComponentUtil showToExecutiveSession:member.info.infoId specialSession:nil];
//    [self.textLabel sizeToFit];
    //: NSURL *url;
    NSURL *url;
    //: if (member.info.avatarUrlString.length) {
    if (member.info.avatarUrlString.length) {
        //: url = [NSURL URLWithString:member.info.avatarUrlString];
        url = [NSURL URLWithString:member.info.avatarUrlString];
    }
    //: [_avatarImageView sd_setImageWithURL:url placeholderImage:member.info.avatarImage];
    [_avatarImageView sd_setImageWithURL:url placeholderImage:member.info.avatarImage];
}

//: - (void)onTouchAvatar:(id)sender{
- (void)keyAvatar:(id)sender{
    //: if ([self.delegate respondsToSelector:@selector(didTouchUserListAvatar:)]) {
    if ([self.delegate respondsToSelector:@selector(containerText:)]) {
        //: [self.delegate didTouchUserListAvatar:self.member.info.infoId];
        [self.delegate containerText:self.member.info.infoId];
    }
}


//: - (void)onTouchButton {
- (void)assemblageSession {
    //: if ([self.delegate respondsToSelector:@selector(didTouchCancleButton:)]) {
    if ([self.delegate respondsToSelector:@selector(soundName:)]) {
        //: [self.delegate didTouchCancleButton:self.member];
        [self.delegate soundName:self.member];
    }
}

//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];


    //: self.cancleBtn.right = self.width - 10;
    self.cancleBtn.right = self.width - 10;
    //: self.cancleBtn.centerY = self.height * .5f;
    self.cancleBtn.centerY = self.height * .5f;
}

//: - (void)addSubview:(UIView *)view
- (void)addSubview:(UIView *)view
{
    //: if (![view isKindOfClass:[NSClassFromString(@"_UITableViewCellSeparatorView") class]] && view)
    if (![view isKindOfClass:[NSClassFromString(StringFromTextData(kStr_methodHopefulTitle)) class]] && view)
        //: [super addSubview:view];
        [super addSubview:view];
}


//: - (UILabel *)labName {
- (UILabel *)labName {
    //: if (!_labName) {
    if (!_labName) {
        //: _labName = [[UILabel alloc] init];
        _labName = [[UILabel alloc] init];
        //: _labName.font = [UIFont systemFontOfSize:16.f];
        _labName.font = [UIFont systemFontOfSize:16.f];
        //: _labName.textColor = [UIColor colorWithHexString:@"#333333"];
        _labName.textColor = [UIColor box:StringFromTextData(kStr_somedayTrulyMediaName)];
        //: _labName.textAlignment = NSTextAlignmentLeft;
        _labName.textAlignment = NSTextAlignmentLeft;
    }
    //: return _labName;
    return _labName;
}





//: @end
@end

Byte * TextDataToCache(Byte *data) {
    int buttonLatter = data[0];
    int sleeveEaster = data[1];
    int enablely = data[2];
    if (!buttonLatter) return data + enablely;
    for (int i = 0; i < sleeveEaster / 2; i++) {
        int begin = enablely + i;
        int end = enablely + sleeveEaster - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[enablely + sleeveEaster] = 0;
    return data + enablely;
}

NSString *StringFromTextData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)TextDataToCache(data)];
}  
