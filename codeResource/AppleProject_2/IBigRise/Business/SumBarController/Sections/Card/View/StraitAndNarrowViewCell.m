
#import <Foundation/Foundation.h>

NSString *StringFromFieldData(Byte *data);        


//: code
Byte kStr_barName[] = {50, 4, 26, 6, 107, 157, 73, 85, 74, 75, 221};


//: user_id
Byte kStr_messageNameData[] = {17, 7, 2, 9, 165, 243, 62, 176, 212, 115, 113, 99, 112, 93, 103, 98, 249};


//: /user/detail
Byte kStr_scaleContent[] = {27, 12, 47, 9, 35, 88, 203, 193, 143, 0, 70, 68, 54, 67, 0, 53, 54, 69, 50, 58, 61, 107};


//: icon_gender_female
Byte kStr_colorData[] = {74, 18, 18, 6, 237, 59, 87, 81, 93, 92, 77, 85, 83, 92, 82, 83, 96, 77, 84, 83, 91, 79, 90, 83, 66};


//: register_avtivity_account
Byte kStr_policyAccountViewName[] = {42, 25, 74, 14, 96, 151, 176, 193, 58, 160, 216, 17, 142, 234, 40, 27, 29, 31, 41, 42, 27, 40, 21, 23, 44, 42, 31, 44, 31, 42, 47, 21, 23, 25, 25, 37, 43, 36, 42, 80};


//: icon_gender_male
Byte kStr_mediaKeyContent[] = {12, 16, 55, 5, 127, 50, 44, 56, 55, 40, 48, 46, 55, 45, 46, 59, 40, 54, 42, 53, 46, 254};


//: data
Byte kStr_sizeTitle[] = {18, 4, 93, 4, 7, 4, 23, 4, 171};


//: account
Byte kStr_shouldText[] = {73, 7, 66, 10, 72, 160, 229, 118, 76, 224, 31, 33, 33, 45, 51, 44, 50, 133};

// __DEBUG__
// __CLOSE_PRINT__
//
//  StraitAndNarrowViewCell.m
//  NIM
//
//  Created by chris on 15/9/28.
//  Copyright © 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESCardPortraitCell.h"
#import "StraitAndNarrowViewCell.h"
//: #import "ZZZAvatarImageView.h"
#import "ShankView.h"
//: #import "DataCommonTableData.h"
#import "DataCommonTableData.h"
//: #import "UIView+NTES.h"
#import "UIView+Item.h"
//: #import "NTESSessionUtil.h"
#import "ComponentUtil.h"

//: @interface NTESCardPortraitCell()
@interface StraitAndNarrowViewCell()

//: @property (nonatomic,strong) ZZZAvatarImageView *avatar;
@property (nonatomic,strong) ShankView *avatar;

//: @property (nonatomic,strong) UILabel *nameLabel;
@property (nonatomic,strong) UILabel *nameLabel;

//: @property (nonatomic,strong) UILabel *nickNameLabel;
@property (nonatomic,strong) UILabel *nickNameLabel;

//: @property (nonatomic,strong) UILabel *accountLabel;
@property (nonatomic,strong) UILabel *accountLabel;

//: @property (nonatomic,strong) UIImageView *genderIcon;
@property (nonatomic,strong) UIImageView *genderIcon;

//: @end
@end

//: @implementation NTESCardPortraitCell
@implementation StraitAndNarrowViewCell

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {
        //: CGFloat avatarWidth = 55.f;
        CGFloat avatarWidth = 55.f;
        //: _avatar = [[ZZZAvatarImageView alloc] initWithFrame:CGRectMake(0, 0, avatarWidth, avatarWidth)];
        _avatar = [[ShankView alloc] initWithFrame:CGRectMake(0, 0, avatarWidth, avatarWidth)];
        //: [self.contentView addSubview:_avatar];
        [self.contentView addSubview:_avatar];
        //: _nameLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _nameLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _nameLabel.font = [UIFont systemFontOfSize:18.f];
        _nameLabel.font = [UIFont systemFontOfSize:18.f];
        //: [self.contentView addSubview:_nameLabel];
        [self.contentView addSubview:_nameLabel];
        //: _nickNameLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _nickNameLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _nickNameLabel.font = [UIFont systemFontOfSize:13.f];
        _nickNameLabel.font = [UIFont systemFontOfSize:13.f];
        //: _nickNameLabel.textColor = [UIColor grayColor];
        _nickNameLabel.textColor = [UIColor grayColor];
        //: [self.contentView addSubview:_nickNameLabel];
        [self.contentView addSubview:_nickNameLabel];
        //: _accountLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _accountLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _accountLabel.font = [UIFont systemFontOfSize:13.f];
        _accountLabel.font = [UIFont systemFontOfSize:13.f];
        //: _accountLabel.textColor = [UIColor grayColor];
        _accountLabel.textColor = [UIColor grayColor];
        //: [self.contentView addSubview:_accountLabel];
        [self.contentView addSubview:_accountLabel];
        //: _genderIcon = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 14, 14)];
        _genderIcon = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 14, 14)];
        //: [self.contentView addSubview:_genderIcon];
        [self.contentView addSubview:_genderIcon];
    }
    //: return self;
    return self;
}

//: - (void)refreshData:(NIMCommonTableRow *)rowData tableView:(UITableView *)tableView{
- (void)input:(TextTap *)rowData metadata:(UITableView *)tableView{

    //: self.textLabel.text = rowData.title;
    self.textLabel.text = rowData.title;
    //: self.detailTextLabel.text = rowData.detailTitle;
    self.detailTextLabel.text = rowData.detailTitle;
    //: NSString *uid = rowData.extraInfo;
    NSString *uid = rowData.extraInfo;
    //: if ([uid isKindOfClass:[NSString class]]) {
    if ([uid isKindOfClass:[NSString class]]) {
        //: NIMUser *user = [[NIMSDK sharedSDK].userManager userInfo:uid];
        NIMUser *user = [[NIMSDK sharedSDK].userManager userInfo:uid];
        //: ZZZKitInfo *info = [[AppleProjectKit sharedKit] infoByUser:uid option:nil];
        MagnitudeCommentInfo *info = [[On along] toKey:uid image:nil];
        //: self.nameLabel.text = info.showName ;
        self.nameLabel.text = info.showName ;
        //: NSString *register_avtivity_account = [NTESLanguageManager getTextWithKey:@"register_avtivity_account"];
        NSString *register_avtivity_account = [LabelCell tinkleKey:StringFromFieldData(kStr_policyAccountViewName)];
        //: self.accountLabel.text = [NSString stringWithFormat:@"%@：%@",register_avtivity_account, uid];
        self.accountLabel.text = [NSString stringWithFormat:@"%@：%@",register_avtivity_account, uid];
        //: [self.accountLabel sizeToFit];
        [self.accountLabel sizeToFit];
        //: [self.avatar nim_setImageWithURL:[NSURL URLWithString:info.avatarUrlString] placeholderImage:info.avatarImage options:SDWebImageRetryFailed];
        [self.avatar towardNeed:[NSURL URLWithString:info.avatarUrlString] user:info.avatarImage can:SDWebImageRetryFailed];
        //: if (user.userInfo.gender == NIMUserGenderMale) {
        if (user.userInfo.gender == NIMUserGenderMale) {
            //: _genderIcon.image = [UIImage imageNamed:@"icon_gender_male"];
            _genderIcon.image = [UIImage imageNamed:StringFromFieldData(kStr_mediaKeyContent)];
            //: _genderIcon.hidden = NO;
            _genderIcon.hidden = NO;
        }
        //: else if(user.userInfo.gender == NIMUserGenderFemale) {
        else if(user.userInfo.gender == NIMUserGenderFemale) {
            //: _genderIcon.image = [UIImage imageNamed:@"icon_gender_female"];
            _genderIcon.image = [UIImage imageNamed:StringFromFieldData(kStr_colorData)];
            //: _genderIcon.hidden = NO;
            _genderIcon.hidden = NO;
        }
        //: else {
        else {
            //: _genderIcon.hidden = YES;
            _genderIcon.hidden = YES;
        }
        //: NSString *nickName = user.userInfo.nickName ? user.userInfo.nickName : @"";
        NSString *nickName = user.userInfo.nickName ? user.userInfo.nickName : @"";
        //: _nickNameLabel.hidden = !user.alias.length;
        _nickNameLabel.hidden = !user.alias.length;

        //: _nickNameLabel.text = [NSString stringWithFormat:@"%@：%@",register_avtivity_account, nickName];
        _nickNameLabel.text = [NSString stringWithFormat:@"%@：%@",register_avtivity_account, nickName];
        //: [_nickNameLabel sizeToFit];
        [_nickNameLabel sizeToFit];
    }
    //: self.accountLabel.hidden = YES;
    self.accountLabel.hidden = YES;
    //: [self refreshData:rowData account:@""];
    [self activityDown:rowData head:@""];

}

//: -(void)refreshData:(NIMCommonTableRow *)rowData account:(NSString *)account{
-(void)activityDown:(TextTap *)rowData head:(NSString *)account{

    //: NSString *uid = rowData.extraInfo;
    NSString *uid = rowData.extraInfo;
    //: NSMutableDictionary *dict = @{}.mutableCopy;
    NSMutableDictionary *dict = @{}.mutableCopy;
    //: dict[@"user_id"] = uid;
    dict[StringFromFieldData(kStr_messageNameData)] = uid;
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/user/detail"] params:dict isShow:YES success:^(id responseObject) {
    [ViewManager viewFailed:[NSString stringWithFormat:StringFromFieldData(kStr_scaleContent)] disable:dict params:YES status:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict length:StringFromFieldData(kStr_barName)];
        //: if (code.integerValue <= 0) {
        if (code.integerValue <= 0) {
            //: NSDictionary *data = [resultDict valueObjectForKey:@"data"];
            NSDictionary *data = [resultDict userTo:StringFromFieldData(kStr_sizeTitle)];
            //: NSString *account = [data newStringValueForKey:@"account"];
            NSString *account = [data length:StringFromFieldData(kStr_shouldText)];
            //: self.accountLabel.hidden = NO;
            self.accountLabel.hidden = NO;
            //: NSString *register_avtivity_account = [NTESLanguageManager getTextWithKey:@"register_avtivity_account"];
            NSString *register_avtivity_account = [LabelCell tinkleKey:StringFromFieldData(kStr_policyAccountViewName)];

            //: self.accountLabel.text = [NSString stringWithFormat:@"%@:%@",register_avtivity_account, account];
            self.accountLabel.text = [NSString stringWithFormat:@"%@:%@",register_avtivity_account, account];
            //: [self.accountLabel sizeToFit];
            [self.accountLabel sizeToFit];
        }

    //: } failed:^(id responseObject, NSError *error) {
    } allow:^(id responseObject, NSError *error) {

    //: }];
    }];

}
//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: self.avatar.left = 30;
    self.avatar.left = 30;
    //: self.avatar.centerY = self.height * .5f;
    self.avatar.centerY = self.height * .5f;

    //: CGFloat scale = self.width / 320;
    CGFloat scale = self.width / 320;
    //: CGFloat maxTextLabelWidth = 180 * scale;
    CGFloat maxTextLabelWidth = 180 * scale;
    //: [self.nameLabel sizeToFit];
    [self.nameLabel sizeToFit];
    //: self.nameLabel.width = ((self.nameLabel.width) < (maxTextLabelWidth) ? (self.nameLabel.width) : (maxTextLabelWidth));
    self.nameLabel.width = ((self.nameLabel.width) < (maxTextLabelWidth) ? (self.nameLabel.width) : (maxTextLabelWidth));
    //: self.nameLabel.left = self.avatar.right + 12;
    self.nameLabel.left = self.avatar.right + 12;
    //: self.nameLabel.top = 22;
    self.nameLabel.top = 22;

    //: if (self.nickNameLabel.hidden) {
    if (self.nickNameLabel.hidden) {
        //: self.accountLabel.left = self.nameLabel.left;
        self.accountLabel.left = self.nameLabel.left;
        //: self.accountLabel.bottom = self.height - 22;
        self.accountLabel.bottom = self.height - 22;
    //: }else{
    }else{
        //: self.nickNameLabel.left = self.nameLabel.left;
        self.nickNameLabel.left = self.nameLabel.left;
        //: self.nickNameLabel.bottom = self.height - 22;
        self.nickNameLabel.bottom = self.height - 22;
        //: self.accountLabel.left = self.nameLabel.left;
        self.accountLabel.left = self.nameLabel.left;
        //: self.accountLabel.centerY = (self.nickNameLabel.top + self.nameLabel.bottom) * .5f;
        self.accountLabel.centerY = (self.nickNameLabel.top + self.nameLabel.bottom) * .5f;
    }

    //: self.genderIcon.left = self.nameLabel.right + 12;
    self.genderIcon.left = self.nameLabel.right + 12;
    //: self.genderIcon.centerY = self.nameLabel.centerY;
    self.genderIcon.centerY = self.nameLabel.centerY;
}

//: @end
@end

Byte * FieldDataToCache(Byte *data) {
    int instrumentation = data[0];
    int skullSession = data[1];
    Byte barUse = data[2];
    int searched = data[3];
    if (!instrumentation) return data + searched;
    for (int i = searched; i < searched + skullSession; i++) {
        int value = data[i] + barUse;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[searched + skullSession] = 0;
    return data + searched;
}

NSString *StringFromFieldData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)FieldDataToCache(data)];
}
