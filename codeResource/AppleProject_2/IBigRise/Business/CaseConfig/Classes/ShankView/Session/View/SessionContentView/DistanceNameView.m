
#import <Foundation/Foundation.h>
typedef struct {
    Byte regulative;
    Byte *rapeTitle;
    unsigned int phonationCraft;
    bool businessSwitchiceHim;
	int featureSoutheast;
	int speakExpo;
	int proof;
} TeenStrategyData;

NSString *StringFromTeenStrategyData(TeenStrategyData *data);


//: icon_map
TeenStrategyData kStr_honeText = (TeenStrategyData){7, (Byte []){110, 100, 104, 105, 88, 106, 102, 119, 78}, 8, false, 13, 37, 185};

// __DEBUG__
// __CLOSE_PRINT__
//
//  DistanceNameView.m
// On
//
//  Created by chris on 15/2/28.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZZZSessionLocationContentView.h"
#import "DistanceNameView.h"
//: #import "ZZZMessageModel.h"
#import "CollectionModel.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "UIImage+AppleProjectKit.h"
#import "UIImage+On.h"
//: #import "AppleProjectKit.h"
#import "On.h"

//: @interface ZZZSessionLocationContentView()
@interface DistanceNameView()

//: @property (nonatomic,strong) UIImageView * imageView;
@property (nonatomic,strong) UIImageView * imageView;

//: @property (nonatomic,strong) UILabel * titleLabel;
@property (nonatomic,strong) UILabel * titleLabel;

//: @end
@end

//: @implementation ZZZSessionLocationContentView
@implementation DistanceNameView

//: - (instancetype)initSessionMessageContentView{
- (instancetype)initDistance{
    //: self = [super initSessionMessageContentView];
    self = [super initDistance];
    //: if (self) {
    if (self) {
        //: self.opaque = YES;
        self.opaque = YES;
        //: UIImage *image = [UIImage imageNamed:@"icon_map"];
        UIImage *image = [UIImage imageNamed:StringFromTeenStrategyData(&kStr_honeText)];
        //: _imageView = [[UIImageView alloc] initWithImage:image];
        _imageView = [[UIImageView alloc] initWithImage:image];

        //: CALayer *maskLayer = [CALayer layer];
        CALayer *maskLayer = [CALayer layer];
        //: maskLayer.cornerRadius = 13.0;
        maskLayer.cornerRadius = 13.0;
        //: maskLayer.backgroundColor = [UIColor blackColor].CGColor;
        maskLayer.backgroundColor = [UIColor blackColor].CGColor;
        //: maskLayer.frame = _imageView.bounds;
        maskLayer.frame = _imageView.bounds;
        //: _imageView.layer.mask = maskLayer;
        _imageView.layer.mask = maskLayer;

        //: [self addSubview:_imageView];
        [self addSubview:_imageView];

        //: _titleLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _titleLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _titleLabel.textAlignment = NSTextAlignmentCenter;
        _titleLabel.textAlignment = NSTextAlignmentCenter;
        //: _titleLabel.numberOfLines = 0;
        _titleLabel.numberOfLines = 0;
        //: [self addSubview:_titleLabel];
        [self addSubview:_titleLabel];

    }
    //: return self;
    return self;
}

//: - (void)refresh:(ZZZMessageModel *)data
- (void)text:(CollectionModel *)data
{
    //: [super refresh:data];
    [super text:data];
    //: NIMLocationObject * locationObject = (NIMLocationObject*)self.model.message.messageObject;
    NIMLocationObject * locationObject = (NIMLocationObject*)self.model.message.messageObject;
    //: self.titleLabel.text = locationObject.title;
    self.titleLabel.text = locationObject.title;

    //: ZZZKitSetting *setting = [[AppleProjectKit sharedKit].config setting:data.message];
    CaseSetting *setting = [[On along].config style:data.message];

    //: self.titleLabel.textColor = setting.textColor;
    self.titleLabel.textColor = setting.textColor;
    //: self.titleLabel.font = setting.font;
    self.titleLabel.font = setting.font;
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

//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: _titleLabel.nim_width = self.nim_width - 20;
    _titleLabel.nim_width = self.nim_width - 20;
    //: _titleLabel.nim_height= 35.f;
    _titleLabel.nim_height= 35.f;
    //: self.titleLabel.nim_centerY = 90.f;
    self.titleLabel.nim_centerY = 90.f;
    //: self.titleLabel.nim_centerX = self.nim_width * .5f;
    self.titleLabel.nim_centerX = self.nim_width * .5f;
    //: UIEdgeInsets contentInsets = self.model.contentViewInsets;
    UIEdgeInsets contentInsets = self.model.contentViewInsets;

    //: CGFloat tableViewWidth = self.superview.nim_width;
    CGFloat tableViewWidth = self.superview.nim_width;
    //: CGSize contentsize = [self.model contentSize:tableViewWidth];
    CGSize contentsize = [self.model info:tableViewWidth];

    //: CGRect imageViewFrame = CGRectMake(contentInsets.left, contentInsets.top, contentsize.width, contentsize.height);
    CGRect imageViewFrame = CGRectMake(contentInsets.left, contentInsets.top, contentsize.width, contentsize.height);
    //: self.imageView.frame = imageViewFrame;
    self.imageView.frame = imageViewFrame;
}


//: @end
@end

Byte *TeenStrategyDataToByte(TeenStrategyData *data) {
    if (data->businessSwitchiceHim) return data->rapeTitle;
    for (int i = 0; i < data->phonationCraft; i++) {
        data->rapeTitle[i] ^= data->regulative;
    }
    data->rapeTitle[data->phonationCraft] = 0;
    data->businessSwitchiceHim = true;
	if (data->phonationCraft >= 3) {
		data->featureSoutheast = data->rapeTitle[0];
		data->speakExpo = data->rapeTitle[1];
		data->proof = data->rapeTitle[2];
	}
    return data->rapeTitle;
}

NSString *StringFromTeenStrategyData(TeenStrategyData *data) {
    return [NSString stringWithUTF8String:(char *)TeenStrategyDataToByte(data)];
}
