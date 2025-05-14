
#import <Foundation/Foundation.h>

NSString *StringFromWithPolicyData(Byte *data);        


//: user_id
Byte kStr_nameData[] = {3, 7, 84, 9, 11, 2, 54, 157, 148, 33, 31, 17, 30, 11, 21, 16, 122};

// __DEBUG__
// __CLOSE_PRINT__
//
//  CenterView.m
//  NIM
//
//  Created by 彭爽 on 2021/9/28.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESContactGroupCell.h"
#import "CenterView.h"

//: @implementation NTESContactGroupCell
@implementation CenterView

//: - (void)initSubviews{
- (void)initContainer{

    //: _iconImageView = [[UIImageView alloc] init];
    _iconImageView = [[UIImageView alloc] init];
    //: [self addSubview:_iconImageView];
    [self addSubview:_iconImageView];

    //: _avatar = [[ZZZAvatarImageView alloc] init];
    _avatar = [[ShankView alloc] init];
    //: [self addSubview:_avatar];
    [self addSubview:_avatar];
    //: [_avatar mas_makeConstraints:^(MASConstraintMaker *make) {
    [_avatar mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.centerY.mas_offset(0);
        make.centerY.mas_offset(0);
        //: make.left.mas_equalTo(10);
        make.left.mas_equalTo(10);
        //: make.width.mas_equalTo(40);
        make.width.mas_equalTo(40);
        //: make.height.mas_equalTo(40);
        make.height.mas_equalTo(40);
    //: }];
    }];

    //: _titleLabel = [[UILabel alloc] init];
    _titleLabel = [[UILabel alloc] init];
    //: _titleLabel.textColor = [UIColor blackColor];
    _titleLabel.textColor = [UIColor blackColor];
    //: _titleLabel.font = [UIFont boldSystemFontOfSize:14];
    _titleLabel.font = [UIFont boldSystemFontOfSize:14];
    //: [self addSubview:_titleLabel];
    [self addSubview:_titleLabel];
    //: [_titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
    [_titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.centerY.mas_offset(0);
        make.centerY.mas_offset(0);
        //: make.left.mas_offset(60);
        make.left.mas_offset(60);
        //: make.width.mas_equalTo(200);
        make.width.mas_equalTo(200);
        //: make.height.mas_equalTo(30);
        make.height.mas_equalTo(30);
    //: }];
    }];

}

//: -(void)reloadWithInformation:(NSDictionary *)information{
-(void)smartMax:(NSDictionary *)information{
    //: NSString *user_id = [information newStringValueForKey:@"user_id"];
    NSString *user_id = [information length:StringFromWithPolicyData(kStr_nameData)];

    //: NIMUser *user = [[NIMSDK sharedSDK].userManager userInfo:user_id];
    NIMUser *user = [[NIMSDK sharedSDK].userManager userInfo:user_id];
    //: ZZZKitInfo *info = [[AppleProjectKit sharedKit] infoByUser:user_id option:nil];
    MagnitudeCommentInfo *info = [[On along] toKey:user_id image:nil];

    //: [_avatar nim_setImageWithURL:[NSURL URLWithString:info.avatarUrlString] placeholderImage:info.avatarImage options:SDWebImageRetryFailed];
    [_avatar towardNeed:[NSURL URLWithString:info.avatarUrlString] user:info.avatarImage can:SDWebImageRetryFailed];

    //: _titleLabel.text = user.userInfo.nickName;
    _titleLabel.text = user.userInfo.nickName;


}

//: @end
@end

Byte * WithPolicyDataToCache(Byte *data) {
    int activity = data[0];
    int scaleMark = data[1];
    Byte bar = data[2];
    int recording = data[3];
    if (!activity) return data + recording;
    for (int i = recording; i < recording + scaleMark; i++) {
        int value = data[i] + bar;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[recording + scaleMark] = 0;
    return data + recording;
}

NSString *StringFromWithPolicyData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)WithPolicyDataToCache(data)];
}
