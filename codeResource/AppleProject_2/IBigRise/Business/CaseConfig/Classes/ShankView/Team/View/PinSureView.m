
#import <Foundation/Foundation.h>
typedef struct {
    Byte snivelTotal;
    Byte *barAnybody;
    unsigned int lotsPolicy;
    bool vasText;
	int peanuts;
} MigrationData;

NSString *StringFromMigrationData(MigrationData *data);


//: Group_Me
MigrationData kStr_outfitName = (MigrationData){36, (Byte []){99, 86, 75, 81, 84, 123, 105, 65, 217}, 8, false, 10};


//: icon_add_normal
MigrationData kStr_tianSharpQuantityegrationData = (MigrationData){220, (Byte []){181, 191, 179, 178, 131, 189, 184, 184, 131, 178, 179, 174, 177, 189, 176, 198}, 15, false, 57};

// __DEBUG__
// __CLOSE_PRINT__
//
//  PinSureView.m
//  NIM
//
//  Created by chris on 15/3/26.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZZZTeamMemberListCell.h"
#import "PinSureView.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "ZZZAvatarImageView.h"
#import "ShankView.h"
//: #import "ZZZKitUtil.h"
#import "TingText.h"
//: #import "AppleProjectKit.h"
#import "On.h"
//: #import "UIImage+AppleProjectKit.h"
#import "UIImage+On.h"
//: #import "ZZZTeamHelper.h"
#import "PathHelper.h"
//: #import "DataCardDataSourceProtocol.h"
#import "DataCardDataSourceProtocol.h"

//: NSString *const kTeamMember = @"kTeamMember";
NSString *const kConst_remainData = @"kTeamMember";
//: NSString *const kTeamMemberInfo = @"kTeamMemberInfo";
NSString *const kConst_requestTitle = @"kTeamMemberInfo";

//: @interface NIMTeamMemberView : UIView{
@interface MemberView : UIView{

}

//: @property(nonatomic,strong) ZZZAvatarImageView *imageView;
@property(nonatomic,strong) ShankView *imageView;

//: @property (nonatomic,strong) UIImageView *roleImageView;
@property (nonatomic,strong) UIImageView *roleImageView;

//: @property(nonatomic,strong) UILabel *titleLabel;
@property(nonatomic,strong) UILabel *titleLabel;

//: @property(nonatomic,strong) NSDictionary *member;
@property(nonatomic,strong) NSDictionary *member;

//: @end
@end



//: @implementation NIMTeamMemberView
@implementation MemberView
//: - (instancetype)initWithFrame:(CGRect)frame{
- (instancetype)initWithFrame:(CGRect)frame{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: _titleLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _titleLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _titleLabel.backgroundColor = [UIColor clearColor];
        _titleLabel.backgroundColor = [UIColor clearColor];
        //: _titleLabel.font = [UIFont systemFontOfSize:12.f];
        _titleLabel.font = [UIFont systemFontOfSize:12.f];
        //: [self addSubview:_titleLabel];
        [self addSubview:_titleLabel];
        //: _imageView = [[ZZZAvatarImageView alloc] initWithFrame:CGRectMake(0, 0, 37, 37)];
        _imageView = [[ShankView alloc] initWithFrame:CGRectMake(0, 0, 37, 37)];
        //: [self addSubview:_imageView];
        [self addSubview:_imageView];
        //: _roleImageView = [[UIImageView alloc] initWithFrame:CGRectZero];
        _roleImageView = [[UIImageView alloc] initWithFrame:CGRectZero];
        //: [self addSubview:_roleImageView];
        [self addSubview:_roleImageView];
    }
    //: return self;
    return self;
}

//: - (void)setMember:(NSDictionary *)member{
- (void)setMember:(NSDictionary *)member{
    //: _member = member;
    _member = member;
    //: ZZZKitInfo *info = member[kTeamMemberInfo];
    MagnitudeCommentInfo *info = member[kConst_requestTitle];
    //: id<NIMKitCardHeaderData>user = member[kTeamMember];
    id<NIMKitCardHeaderData>user = member[kConst_remainData];
    //: NSURL *avatarURL;
    NSURL *avatarURL;
    //: if (info.avatarUrlString.length) {
    if (info.avatarUrlString.length) {
        //: avatarURL = [NSURL URLWithString:info.avatarUrlString];
        avatarURL = [NSURL URLWithString:info.avatarUrlString];
    }
    //: [_imageView nim_setImageWithURL:avatarURL placeholderImage:info.avatarImage];
    [_imageView colorImageShow:avatarURL blockFrame:info.avatarImage];

    //: NSString *showName = (info.showName ?: @"");
    NSString *showName = (info.showName ?: @"");
    //: if ([user isMyUserId]) {
    if ([user isMyUserId]) {
        //: showName = [NTESLanguageManager getTextWithKey:@"Group_Me"];
        showName = [LabelCell tinkleKey:StringFromMigrationData(&kStr_outfitName)];//@"我".nim_localized;
    }
    //: _titleLabel.text = showName;
    _titleLabel.text = showName;
    //: _roleImageView.image = [ZZZTeamHelper imageWithMemberType:user.userType];
    _roleImageView.image = [PathHelper domain:user.userType];
}


//: - (CGSize)sizeThatFits:(CGSize)size{
- (CGSize)sizeThatFits:(CGSize)size{
    //: return CGSizeMake(38, 53);
    return CGSizeMake(38, 53);
}



//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: [self.titleLabel sizeToFit];
    [self.titleLabel sizeToFit];
    //: self.titleLabel.nim_width = _titleLabel.nim_width > self.nim_width ? self.nim_width : _titleLabel.nim_width;
    self.titleLabel.nim_width = _titleLabel.nim_width > self.nim_width ? self.nim_width : _titleLabel.nim_width;
    //: self.imageView.nim_centerX = self.nim_width * .5f;
    self.imageView.nim_centerX = self.nim_width * .5f;
    //: self.titleLabel.nim_centerX = self.nim_width * .5f;
    self.titleLabel.nim_centerX = self.nim_width * .5f;
    //: self.titleLabel.nim_bottom = self.nim_height;
    self.titleLabel.nim_bottom = self.nim_height;
    //: self.roleImageView.nim_size = CGSizeMake(16, 16);
    self.roleImageView.nim_size = CGSizeMake(16, 16);
    //: self.roleImageView.nim_bottom = self.imageView.nim_bottom;
    self.roleImageView.nim_bottom = self.imageView.nim_bottom;
    //: self.roleImageView.nim_right = self.imageView.nim_right;
    self.roleImageView.nim_right = self.imageView.nim_right;
}
//: @end
@end

//: const CGFloat kZZZTeamMemberListCellItemWidth = 49.f;
const CGFloat kConst_ownerColorData = 49.f;
//: const CGFloat kZZZTeamMemberListCellItemPadding = 44.f;
const CGFloat kConst_modelTextContent = 44.f;

//: @interface ZZZTeamMemberListCell()
@interface PinSureView()

//: @property(nonatomic,strong) NSMutableArray *icons;
@property(nonatomic,strong) NSMutableArray *icons;

//: @property(nonatomic, strong) UIButton *addBtn;
@property(nonatomic, strong) UIButton *addBtn;

//: @end
@end

//: @implementation ZZZTeamMemberListCell
@implementation PinSureView
//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {
        //: _icons = [[NSMutableArray alloc] init];
        _icons = [[NSMutableArray alloc] init];
        //: _addBtn = [[UIButton alloc]initWithFrame:CGRectZero];
        _addBtn = [[UIButton alloc]initWithFrame:CGRectZero];
        //: [_addBtn addTarget:self action:@selector(onPress:) forControlEvents:UIControlEventTouchUpInside];
        [_addBtn addTarget:self action:@selector(distanced:) forControlEvents:UIControlEventTouchUpInside];
        //: _addBtn.userInteractionEnabled = NO;
        _addBtn.userInteractionEnabled = NO;
        //: [self.contentView addSubview:_addBtn];
        [self.contentView addSubview:_addBtn];
    }
    //: return self;
    return self;
}

//: - (NSInteger)maxShowMemberCount {
- (NSInteger)maxShowMemberCount {
    //: CGFloat width = (self.nim_width != [UIScreen mainScreen].bounds.size.width) ? [UIScreen mainScreen].bounds.size.width : self.nim_width;
    CGFloat width = (self.nim_width != [UIScreen mainScreen].bounds.size.width) ? [UIScreen mainScreen].bounds.size.width : self.nim_width;
    //: NSInteger maxShowCount = (width - kZZZTeamMemberListCellItemPadding) / kZZZTeamMemberListCellItemWidth;
    NSInteger maxShowCount = (width - kConst_modelTextContent) / kConst_ownerColorData;
    //: return maxShowCount;
    return maxShowCount;
}

//: - (void)setInfos:(NSMutableArray<NSDictionary *> *)infos {
- (void)setInfos:(NSMutableArray<NSDictionary *> *)infos {
    //: NSInteger count = 0;
    NSInteger count = 0;

    //invite button
    //: if (!_disableInvite) {
    if (!_disableInvite) {
        //: NIMTeamMemberView *view = [self fetchMemeberView:0];
        MemberView *view = [self manager:0];
        //: UIImage *addImage = [UIImage imageNamed:@"icon_add_normal"];
        UIImage *addImage = [UIImage imageNamed:StringFromMigrationData(&kStr_tianSharpQuantityegrationData)];
        //: [view.imageView setImage:addImage];
        [view.imageView setImage:addImage];
        //: view.roleImageView.image = nil;
        view.roleImageView.image = nil;
        //: view.titleLabel.text = @"邀请".nim_localized;
        view.titleLabel.text = @"邀请".start;
        //: count = 1;
        count = 1;
    }
    //: self.addBtn.userInteractionEnabled = (count != 0);
    self.addBtn.userInteractionEnabled = (count != 0);

    //icons
    //: for (UIView *view in _icons) {
    for (UIView *view in _icons) {
        //: [view removeFromSuperview];
        [view removeFromSuperview];
    }

    //: NSInteger maxShowCount = self.maxShowMemberCount;
    NSInteger maxShowCount = self.maxShowMemberCount;
    //: NSInteger iconCount = infos.count > maxShowCount-count ? maxShowCount : infos.count+count;
    NSInteger iconCount = infos.count > maxShowCount-count ? maxShowCount : infos.count+count;
    //: for (NSInteger i = 0; i < iconCount; i++) {
    for (NSInteger i = 0; i < iconCount; i++) {
        //: NIMTeamMemberView *view = [self fetchMemeberView:i];
        MemberView *view = [self manager:i];
        //: if (!count || i != 0) {
        if (!count || i != 0) {
            //: NSInteger memberIndex = i - count;
            NSInteger memberIndex = i - count;
            //: view.member = infos[memberIndex];
            view.member = infos[memberIndex];
        }
        //: [self.contentView addSubview:view];
        [self.contentView addSubview:view];
        //: [view setNeedsLayout];
        [view setNeedsLayout];
    }
    //: [self bringSubviewToFront:self.addBtn];
    [self bringSubviewToFront:self.addBtn];
}

//: - (void)onPress:(id)sender{
- (void)distanced:(id)sender{
    //: if ([self.delegate respondsToSelector:@selector(didSelectAddOpeartor)]) {
    if ([self.delegate respondsToSelector:@selector(fullMoonUser)]) {
        //: [self.delegate didSelectAddOpeartor];
        [self.delegate fullMoonUser];
    }
}

//: - (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event{
- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event{
    //: CGRect hitRect = self.addBtn.frame;
    CGRect hitRect = self.addBtn.frame;
    //: return CGRectContainsPoint(hitRect, point) ? self.addBtn : [super hitTest:point withEvent:event];
    return CGRectContainsPoint(hitRect, point) ? self.addBtn : [super hitTest:point withEvent:event];
}


//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: _addBtn.frame = CGRectMake(0, 0, self.nim_width *.20f, self.nim_height);
    _addBtn.frame = CGRectMake(0, 0, self.nim_width *.20f, self.nim_height);
    //: CGFloat left = 20.f;
    CGFloat left = 20.f;
    //: CGFloat top = 17.f;
    CGFloat top = 17.f;
    //: self.textLabel.nim_left = left;
    self.textLabel.nim_left = left;
    //: self.textLabel.nim_top = top;
    self.textLabel.nim_top = top;
    //: self.detailTextLabel.nim_top = top;
    self.detailTextLabel.nim_top = top;
    //: self.accessoryView.nim_top = top;
    self.accessoryView.nim_top = top;

    //: CGFloat spacing = 12.f;
    CGFloat spacing = 12.f;
    //: CGFloat bottom = 10.f;
    CGFloat bottom = 10.f;
    //: for (NIMTeamMemberView *view in _icons) {
    for (MemberView *view in _icons) {
        //: view.nim_left = left;
        view.nim_left = left;
        //: left += view.nim_width;
        left += view.nim_width;
        //: left += spacing;
        left += spacing;
        //: view.nim_bottom = self.nim_height - bottom;
        view.nim_bottom = self.nim_height - bottom;
    }
}


//: #pragma mark - Private
#pragma mark - Private

//: - (NIMTeamMemberView *)fetchMemeberView:(NSInteger)index{
- (MemberView *)manager:(NSInteger)index{
    //: if (_icons.count <= index) {
    if (_icons.count <= index) {
        //: for (int i = 0; i < index - _icons.count + 1 ; i++) {
        for (int i = 0; i < index - _icons.count + 1 ; i++) {
            //: NIMTeamMemberView *view = [[NIMTeamMemberView alloc]initWithFrame:CGRectZero];
            MemberView *view = [[MemberView alloc]initWithFrame:CGRectZero];
            //: view.userInteractionEnabled = NO;
            view.userInteractionEnabled = NO;
            //: [view sizeToFit];
            [view sizeToFit];
            //: [_icons addObject:view];
            [_icons addObject:view];
        }
    }
    //: return _icons[index];
    return _icons[index];
}


//: @end
@end

Byte *MigrationDataToByte(MigrationData *data) {
    if (data->vasText) return data->barAnybody;
    for (int i = 0; i < data->lotsPolicy; i++) {
        data->barAnybody[i] ^= data->snivelTotal;
    }
    data->barAnybody[data->lotsPolicy] = 0;
    data->vasText = true;
	if (data->lotsPolicy >= 1) {
		data->peanuts = data->barAnybody[0];
	}
    return data->barAnybody;
}

NSString *StringFromMigrationData(MigrationData *data) {
    return [NSString stringWithUTF8String:(char *)MigrationDataToByte(data)];
}
