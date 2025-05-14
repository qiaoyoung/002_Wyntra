
#import <Foundation/Foundation.h>

NSString *StringFromMaintenanceData(Byte *data);


//: data
Byte kStr_historyEveryValue[] = {12, 4, 8, 88, 2, 7, 35, 184, 97, 116, 97, 100, 230};


//: 群名片
Byte kStr_threshValue[] = {62, 9, 3, 135, 137, 231, 141, 144, 229, 164, 190, 231, 28};


//: head_default
Byte kStr_minderTitle[] = {13, 12, 8, 100, 128, 32, 185, 104, 116, 108, 117, 97, 102, 101, 100, 95, 100, 97, 101, 104, 167};


//: group_info_activity_group_already_jiesan
Byte kStr_scaleBarTitle[] = {77, 40, 5, 51, 97, 110, 97, 115, 101, 105, 106, 95, 121, 100, 97, 101, 114, 108, 97, 95, 112, 117, 111, 114, 103, 95, 121, 116, 105, 118, 105, 116, 99, 97, 95, 111, 102, 110, 105, 95, 112, 117, 111, 114, 103, 238};


//: 个人名片
Byte kStr_golfProceedLeftTitle[] = {23, 12, 13, 56, 108, 22, 208, 189, 120, 178, 116, 71, 80, 135, 137, 231, 141, 144, 229, 186, 186, 228, 170, 184, 228, 116};


//: content
Byte kStr_fibAllowTitle[] = {66, 7, 13, 119, 203, 51, 44, 49, 147, 108, 29, 182, 199, 116, 110, 101, 116, 110, 111, 99, 86};


//: personCardId
Byte kStr_stretchAnybodyTitle[] = {50, 12, 4, 245, 100, 73, 100, 114, 97, 67, 110, 111, 115, 114, 101, 112, 203};


//: type
Byte kStr_halfwayText[] = {2, 4, 12, 6, 44, 29, 98, 60, 193, 117, 104, 93, 101, 112, 121, 116, 45};

// __DEBUG__
// __CLOSE_PRINT__
//
//  TingNameView.m
// On
//
//  Created by 田玉龙 on 2022/8/22.
//  Copyright © 2022 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZZZSessionShareCardContentView.h"
#import "TingNameView.h"
//: #import "ZZZMessageModel.h"
#import "CollectionModel.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "ZZZLoadProgressView.h"
#import "AlongView.h"
//: #import "ZZZKitDependency.h"
#import "ZZZKitDependency.h"
//: #import <YYImage/YYImage.h>
#import <YYImage/YYImage.h>
//: #import "AppleProjectKit.h"
#import "On.h"
//: #import "ZZZKitDataProviderImpl.h"
#import "IndependentImpl.h"
//: #import "ZZZKitInfoFetchOption.h"
#import "CertainOption.h"
//: #import "UIImage+AppleProjectKit.h"
#import "UIImage+On.h"
//: #import "NSString+AppleProjectKit.h"
#import "NSString+On.h"
//: #import <SDWebImage/SDWebImage.h>
#import <SDWebImage/SDWebImage.h>
//: #import <objc/runtime.h>
#import <objc/runtime.h>
//: #import <objc/message.h>
#import <objc/message.h>

//: @interface ZZZSessionShareCardContentView()
@interface TingNameView()

//: @property (nonatomic,strong) NIMUser *user;
@property (nonatomic,strong) NIMUser *user;

//: @property (nonatomic,strong) UIImageView * imageView;
@property (nonatomic,strong) UIImageView * imageView;

//: @property (nonatomic,strong) UILabel * nameLabel;
@property (nonatomic,strong) UILabel * nameLabel;
//: @property (nonatomic,strong) UIView * breakLabel;
@property (nonatomic,strong) UIView * breakLabel;
//: @property (nonatomic,strong) UILabel * tagLabel;
@property (nonatomic,strong) UILabel * tagLabel;

//: @end
@end

//: @implementation ZZZSessionShareCardContentView
@implementation TingNameView

//: - (instancetype)initSessionMessageContentView{
- (instancetype)initDistance{
    //: self = [super initSessionMessageContentView];
    self = [super initDistance];
    //: if (self) {
    if (self) {
        //: self.opaque = YES;
        self.opaque = YES;
        //: _imageView = [[UIImageView alloc] initWithFrame:CGRectZero];
        _imageView = [[UIImageView alloc] initWithFrame:CGRectZero];
        //: _imageView.backgroundColor = [UIColor whiteColor];
        _imageView.backgroundColor = [UIColor whiteColor];
        //: _imageView.contentMode = UIViewContentModeScaleAspectFill;
        _imageView.contentMode = UIViewContentModeScaleAspectFill;
        //: [self addSubview:_imageView];
        [self addSubview:_imageView];

        //: _nameLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _nameLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _nameLabel.textColor = [UIColor blackColor];
        _nameLabel.textColor = [UIColor blackColor];
        //: [self addSubview:_nameLabel];
        [self addSubview:_nameLabel];

        //: _breakLabel = [[UIView alloc] initWithFrame:CGRectZero];
        _breakLabel = [[UIView alloc] initWithFrame:CGRectZero];
        //: _breakLabel.backgroundColor = [UIColor grayColor];
        _breakLabel.backgroundColor = [UIColor grayColor];
        //: [self addSubview:_breakLabel];
        [self addSubview:_breakLabel];

        //: _tagLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _tagLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _tagLabel.textColor = [UIColor grayColor];
        _tagLabel.textColor = [UIColor grayColor];
        //: _tagLabel.font = [UIFont systemFontOfSize:12];
        _tagLabel.font = [UIFont systemFontOfSize:12];
        //: [self addSubview:_tagLabel];
        [self addSubview:_tagLabel];

    }
    //: return self;
    return self;
}

//: - (void)refresh:(ZZZMessageModel *)data
- (void)text:(CollectionModel *)data
{
    //: [super refresh:data];
    [super text:data];
    //: _imageView.image = nil;
    _imageView.image = nil;
    //: NIMCustomObject * cardObject = (NIMCustomObject*)self.model.message.messageObject;
    NIMCustomObject * cardObject = (NIMCustomObject*)self.model.message.messageObject;

    //: NSString *userid = cardObject.message.session.sessionId;
    NSString *userid = cardObject.message.session.sessionId;
    //: self.user = [[NIMSDK sharedSDK].userManager userInfo:userid];
    self.user = [[NIMSDK sharedSDK].userManager userInfo:userid];

    //: NSString *content = [cardObject.attachment encodeAttachment];
    NSString *content = [cardObject.attachment encodeAttachment];
    //: NSData *dataaaaa = [content dataUsingEncoding:NSUTF8StringEncoding];
    NSData *dataaaaa = [content dataUsingEncoding:NSUTF8StringEncoding];
    //: if (dataaaaa) {
    if (dataaaaa) {
        //: NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:dataaaaa
        NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:dataaaaa
                                                             //: options:0
                                                             options:0
                                                               //: error:nil];
                                                               error:nil];
        //: if ([dict isKindOfClass:[NSDictionary class]])
        if ([dict isKindOfClass:[NSDictionary class]])
        {
            //: NSInteger type = [[dict objectForKey:@"type"] intValue];
            NSInteger type = [[dict objectForKey:StringFromMaintenanceData(kStr_halfwayText)] intValue];
            //: NSDictionary *datatyl = [dict objectForKey:@"data"];
            NSDictionary *datatyl = [dict objectForKey:StringFromMaintenanceData(kStr_historyEveryValue)];
            //: if (type == 105) {
            if (type == 105) {

                //: NSString *cardname = [datatyl objectForKey:@"content"];;
                NSString *cardname = [datatyl objectForKey:StringFromMaintenanceData(kStr_fibAllowTitle)];;

                //: NSString *cardid = [datatyl stringValueForKey:@"personCardId" defaultValue:@""];
                NSString *cardid = [datatyl tempKey:StringFromMaintenanceData(kStr_stretchAnybodyTitle) by:@""];

                //: if ([[datatyl stringValueForKey:@"type" defaultValue:@"0"] boolValue]) {
                if ([[datatyl tempKey:StringFromMaintenanceData(kStr_halfwayText) by:@"0"] boolValue]) {
                    //: _tagLabel.text = @"群名片".nim_localized;
                    _tagLabel.text = StringFromMaintenanceData(kStr_threshValue).start;

                    //: NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:cardid];
                    NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:cardid];
                    //: [_imageView sd_setImageWithURL:[NSURL URLWithString:team.avatarUrl?:@""] placeholderImage:[UIImage imageNamed:@"head_default"]];
                    [_imageView sd_setImageWithURL:[NSURL URLWithString:team.avatarUrl?:@""] placeholderImage:[UIImage imageNamed:StringFromMaintenanceData(kStr_minderTitle)]];
                    //: _nameLabel.text = team.teamName ? : [NTESLanguageManager getTextWithKey:@"group_info_activity_group_already_jiesan"];
                    _nameLabel.text = team.teamName ? : [LabelCell tinkleKey:StringFromMaintenanceData(kStr_scaleBarTitle)];

                //: } else {
                } else {
                    //: _tagLabel.text = @"个人名片".nim_localized;
                    _tagLabel.text = StringFromMaintenanceData(kStr_golfProceedLeftTitle).start;
                    @
                     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                                  ;
                    //: [[NIMSDK sharedSDK].userManager fetchUserInfos:@[cardid] completion:^(NSArray<NIMUser *> * _Nullable users, NSError * _Nullable error) {
                    [[NIMSDK sharedSDK].userManager fetchUserInfos:@[cardid] completion:^(NSArray<NIMUser *> * _Nullable users, NSError * _Nullable error) {

                        //: if (users.count) {
                        if (users.count) {
                            @
                             //: try{} @finally{} __typeof__(self) self = __weak_self__;
                             try{} @finally{} __typeof__(self) self = __weak_self__;
                                            ;
                            //: self.user = users.firstObject;
                            self.user = users.firstObject;
                            //: [_imageView sd_setImageWithURL:[NSURL URLWithString:self.user.userInfo.avatarUrl] placeholderImage:[UIImage imageNamed:@"head_default"]];
                            [_imageView sd_setImageWithURL:[NSURL URLWithString:self.user.userInfo.avatarUrl] placeholderImage:[UIImage imageNamed:StringFromMaintenanceData(kStr_minderTitle)]];
                            //: _nameLabel.text = self.user.userInfo.nickName ? : cardname;
                            _nameLabel.text = self.user.userInfo.nickName ? : cardname;
                        }
                    //: }];
                    }];

                }
            }
        }
    }

}

//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: UIEdgeInsets contentInsets = self.model.contentViewInsets;
    UIEdgeInsets contentInsets = self.model.contentViewInsets;
    //: CGFloat tableViewWidth = self.superview.nim_width;
    CGFloat tableViewWidth = self.superview.nim_width;
    //: CGSize contentSize = [self.model contentSize:tableViewWidth];
    CGSize contentSize = [self.model info:tableViewWidth];
    //: CGRect imageViewFrame = CGRectMake(contentInsets.left, contentInsets.top, 50, 50);
    CGRect imageViewFrame = CGRectMake(contentInsets.left, contentInsets.top, 50, 50);
    //: self.imageView.frame = imageViewFrame;
    self.imageView.frame = imageViewFrame;

    //: CALayer *maskLayer = [CALayer layer];
    CALayer *maskLayer = [CALayer layer];
    //: maskLayer.cornerRadius = 13.0;
    maskLayer.cornerRadius = 13.0;
    //: maskLayer.backgroundColor = [UIColor blackColor].CGColor;
    maskLayer.backgroundColor = [UIColor blackColor].CGColor;
    //: maskLayer.frame = self.imageView.bounds;
    maskLayer.frame = self.imageView.bounds;
    //: self.imageView.layer.mask = maskLayer;
    self.imageView.layer.mask = maskLayer;

    //: self.nameLabel.frame = CGRectMake(contentInsets.left + 60, contentInsets.top + 16, 150, 20);
    self.nameLabel.frame = CGRectMake(contentInsets.left + 60, contentInsets.top + 16, 150, 20);

    //: self.tagLabel.frame = CGRectMake(contentInsets.left, contentInsets.top + 60 + 15, 200, 10);
    self.tagLabel.frame = CGRectMake(contentInsets.left, contentInsets.top + 60 + 15, 200, 10);

    //: self.breakLabel.frame = CGRectMake(contentInsets.left, contentInsets.top + 60, contentSize.width, 0.5);
    self.breakLabel.frame = CGRectMake(contentInsets.left, contentInsets.top + 60, contentSize.width, 0.5);
}


//: - (void)onTouchUpInside:(id)sender
- (void)directed:(id)sender
{
    //: ZZZKitEvent *event = [[ZZZKitEvent alloc] init];
    ItemTap *event = [[ItemTap alloc] init];
    //: event.eventName = ZZZKitEventNameTapContent;
    event.eventName = kConst_textData;
    //: event.messageModel = self.model;
    event.messageModel = self.model;
    //: [self.delegate onCatchEvent:event];
    [self.delegate inputStop:event];
}

//: @end
@end

Byte * MaintenanceDataToCache(Byte *data) {
    int titleLatter = data[0];
    int aLaCarte = data[1];
    int merchant = data[2];
    if (!titleLatter) return data + merchant;
    for (int i = 0; i < aLaCarte / 2; i++) {
        int begin = merchant + i;
        int end = merchant + aLaCarte - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[merchant + aLaCarte] = 0;
    return data + merchant;
}

NSString *StringFromMaintenanceData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)MaintenanceDataToCache(data)];
}  
