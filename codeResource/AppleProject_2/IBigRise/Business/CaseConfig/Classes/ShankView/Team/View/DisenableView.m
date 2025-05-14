
#import <Foundation/Foundation.h>
typedef struct {
    Byte theoreticalSport;
    Byte *definitionHalfway;
    unsigned int strangeTian;
    bool federalHeadquarters;
} StainRetchData;

NSString *StringFromStainRetchData(StainRetchData *data);


//: icon_avatar_del
StainRetchData kStr_reputationValue = (StainRetchData){217, (Byte []){176, 186, 182, 183, 134, 184, 175, 184, 173, 184, 171, 134, 189, 188, 181, 250}, 15, false};


//: Group_Me
StainRetchData kStr_courseValue = (StainRetchData){255, (Byte []){184, 141, 144, 138, 143, 160, 178, 154, 79}, 8, false};

// __DEBUG__
// __CLOSE_PRINT__
//
//  TeamCardHeaderCell.m
//  NIM
//
//  Created by chris on 15/3/7.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZZZCardHeaderCell.h"
#import "DisenableView.h"
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

//: @interface ZZZCardHeaderCell()
@interface DisenableView()

//: @property (nonatomic,strong) id<NIMKitCardHeaderData> data;
@property (nonatomic,strong) id<NIMKitCardHeaderData> data;

//: @end
@end

//: @implementation ZZZCardHeaderCell
@implementation DisenableView

//: - (instancetype)initWithFrame:(CGRect)frame{
- (instancetype)initWithFrame:(CGRect)frame{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: _imageView = [[ZZZAvatarImageView alloc] initWithFrame:CGRectMake(0, 0, 55, 55)];
        _imageView = [[ShankView alloc] initWithFrame:CGRectMake(0, 0, 55, 55)];
        //: [self addSubview:_imageView];
        [self addSubview:_imageView];
        //: _titleLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _titleLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _titleLabel.font = [UIFont systemFontOfSize:13.f];
        _titleLabel.font = [UIFont systemFontOfSize:13.f];
        //: _titleLabel.backgroundColor = [UIColor clearColor];
        _titleLabel.backgroundColor = [UIColor clearColor];
        //: _titleLabel.textAlignment = NSTextAlignmentCenter;
        _titleLabel.textAlignment = NSTextAlignmentCenter;
        //: [self addSubview:_titleLabel];
        [self addSubview:_titleLabel];
        //: _roleImageView = [[UIImageView alloc] initWithFrame:CGRectZero];
        _roleImageView = [[UIImageView alloc] initWithFrame:CGRectZero];
        //: [self addSubview:_roleImageView];
        [self addSubview:_roleImageView];
        //: _removeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _removeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: _removeBtn.hidden = YES;
        _removeBtn.hidden = YES;
        //: [_removeBtn setImage:[UIImage imageNamed:@"icon_avatar_del"] forState:UIControlStateNormal];
        [_removeBtn setImage:[UIImage imageNamed:StringFromStainRetchData(&kStr_reputationValue)] forState:UIControlStateNormal];
        //: [_removeBtn sizeToFit];
        [_removeBtn sizeToFit];
        //: [_removeBtn addTarget:self action:@selector(onTouchRemoveBtn:) forControlEvents:UIControlEventTouchUpInside];
        [_removeBtn addTarget:self action:@selector(feelsed:) forControlEvents:UIControlEventTouchUpInside];
        //: [self addSubview:_removeBtn];
        [self addSubview:_removeBtn];
    }
    //: return self;
    return self;
}

//: - (void)refreshData:(id<NIMKitCardHeaderData>)data{
- (void)refresh:(id<NIMKitCardHeaderData>)data{
    //: self.data = data;
    self.data = data;
    //: NSURL *url = [NSURL URLWithString:data.imageUrl];
    NSURL *url = [NSURL URLWithString:data.imageUrl];
    //: [self.imageView nim_setImageWithURL:url placeholderImage:data.imageNormal];
    [self.imageView colorImageShow:url blockFrame:data.imageNormal];
    //: [self.imageView addTarget:self action:@selector(onSelected:) forControlEvents:UIControlEventTouchUpInside];
    [self.imageView addTarget:self action:@selector(lengthSearched:) forControlEvents:UIControlEventTouchUpInside];

    //: NSString *showName = data.title;
    NSString *showName = data.title;
    //: if ([data isMyUserId]) {
    if ([data isMyUserId]) {
        //: showName = [NTESLanguageManager getTextWithKey:@"Group_Me"];
        showName = [LabelCell tinkleKey:StringFromStainRetchData(&kStr_courseValue)];//@"我".nim_localized;
    }
    //: self.titleLabel.text = showName;
    self.titleLabel.text = showName;
    //: self.roleImageView.image = [ZZZTeamHelper imageWithMemberType:data.userType];
    self.roleImageView.image = [PathHelper domain:data.userType];
    //: [self.titleLabel sizeToFit];
    [self.titleLabel sizeToFit];
}

//: - (void)onSelected:(id)sender{
- (void)lengthSearched:(id)sender{
    //: if ([self.delegate respondsToSelector:@selector(cellDidSelected:)]) {
    if ([self.delegate respondsToSelector:@selector(scaleValue:)]) {
        //: [self.delegate cellDidSelected:self];
        [self.delegate scaleValue:self];
    }
}

//: - (void)onTouchRemoveBtn:(id)sender{
- (void)feelsed:(id)sender{
    //: if ([self.delegate respondsToSelector:@selector(cellShouldBeRemoved:)]) {
    if ([self.delegate respondsToSelector:@selector(bes:)]) {
        //: [self.delegate cellShouldBeRemoved:self];
        [self.delegate bes:self];
    }
}

//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: self.imageView.nim_centerX = self.nim_width * .5f;
    self.imageView.nim_centerX = self.nim_width * .5f;
    //: self.titleLabel.nim_width = self.nim_width + 10;
    self.titleLabel.nim_width = self.nim_width + 10;
    //: self.titleLabel.nim_bottom = self.nim_height;
    self.titleLabel.nim_bottom = self.nim_height;
    //: self.titleLabel.nim_centerX = self.nim_width * .5f;
    self.titleLabel.nim_centerX = self.nim_width * .5f;
    //: [self.roleImageView sizeToFit];
    [self.roleImageView sizeToFit];
    //: self.roleImageView.nim_bottom = self.imageView.nim_bottom;
    self.roleImageView.nim_bottom = self.imageView.nim_bottom;
    //: self.roleImageView.nim_right = self.imageView.nim_right;
    self.roleImageView.nim_right = self.imageView.nim_right;
    //: self.removeBtn.nim_right = self.nim_width;
    self.removeBtn.nim_right = self.nim_width;

}

//: @end
@end

Byte *StainRetchDataToByte(StainRetchData *data) {
    if (data->federalHeadquarters) return data->definitionHalfway;
    for (int i = 0; i < data->strangeTian; i++) {
        data->definitionHalfway[i] ^= data->theoreticalSport;
    }
    data->definitionHalfway[data->strangeTian] = 0;
    data->federalHeadquarters = true;
    return data->definitionHalfway;
}

NSString *StringFromStainRetchData(StainRetchData *data) {
    return [NSString stringWithUTF8String:(char *)StainRetchDataToByte(data)];
}
