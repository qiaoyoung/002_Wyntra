
#import <Foundation/Foundation.h>

NSString *StringFromImageData(Byte *data);


//: from_
Byte kStr_adventureName[] = {78, 5, 9, 168, 150, 243, 129, 113, 23, 95, 109, 111, 114, 102, 155};


//: redid
Byte kStr_enableFluValue[] = {92, 5, 7, 146, 30, 194, 116, 100, 105, 100, 101, 114, 50};


//: pressed
Byte kStr_veteranGelData[] = {23, 7, 12, 117, 35, 91, 86, 50, 77, 236, 212, 48, 100, 101, 115, 115, 101, 114, 112, 225};


//: icon_redpacket_
Byte kStr_goryRedTitle[] = {39, 15, 10, 184, 253, 14, 90, 203, 155, 138, 95, 116, 101, 107, 99, 97, 112, 100, 101, 114, 95, 110, 111, 99, 105, 98};


//: icon_redpacket_custom
Byte kStr_scaleWeepTitle[] = {84, 21, 11, 172, 58, 29, 171, 58, 204, 240, 235, 109, 111, 116, 115, 117, 99, 95, 116, 101, 107, 99, 97, 112, 100, 101, 114, 95, 110, 111, 99, 105, 191};


//: isaccept
Byte kStr_merelyFibTherapistTitle[] = {17, 8, 6, 4, 26, 170, 116, 112, 101, 99, 99, 97, 115, 105, 254};


//: 查看红包
Byte kStr_grandparentText[] = {38, 12, 13, 214, 254, 172, 45, 129, 74, 51, 183, 228, 144, 133, 140, 229, 162, 186, 231, 139, 156, 231, 165, 159, 230, 133};


//: 领取红包
Byte kStr_voiceTitle[] = {46, 12, 12, 227, 150, 182, 141, 95, 3, 183, 245, 149, 133, 140, 229, 162, 186, 231, 150, 143, 229, 134, 162, 233, 80};


//: /wallet/isAcceptRed
Byte kStr_shouldChronicTitle[] = {24, 19, 10, 198, 80, 61, 180, 131, 243, 244, 100, 101, 82, 116, 112, 101, 99, 99, 65, 115, 105, 47, 116, 101, 108, 108, 97, 119, 47, 202};


//: normal
Byte kStr_glanceScanText[] = {43, 6, 8, 38, 240, 151, 154, 239, 108, 97, 109, 114, 111, 110, 139};


//: data
Byte kStr_rageTitle[] = {98, 4, 10, 250, 223, 181, 172, 223, 181, 253, 97, 116, 97, 100, 87};

// __DEBUG__
// __CLOSE_PRINT__
//
//  ExecutiveSessionControl.m
//  NIM
//
//  Created by chris on 2017/7/17.
//  Copyright © 2017年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESSessionRedPacketContentView.h"
#import "ExecutiveSessionControl.h"
//: #import "NTESRedPacketAttachment.h"
#import "LanguageEnter.h"

//: NSString *const NIMDemoEventNameOpenRedPacket = @"NIMDemoEventNameOpenRedPacket";
NSString *const kConst_instanceValue = @"NIMDemoEventNameOpenRedPacket";

//: @interface NTESSessionRedPacketContentView()
@interface ExecutiveSessionControl()

//: @property (nonatomic ,strong) UIImageView *redPacketImage;
@property (nonatomic ,strong) UIImageView *redPacketImage;

//: @property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UILabel *titleLabel;

//: @property (nonatomic, strong) UILabel *subTitleLabel;
@property (nonatomic, strong) UILabel *subTitleLabel;

//: @property (nonatomic, strong) UILabel *descLabel;
@property (nonatomic, strong) UILabel *descLabel;

//: @property (nonatomic, strong) UIView *whiteView;
@property (nonatomic, strong) UIView *whiteView;

//: @property (nonatomic, strong) UITapGestureRecognizer *tap;
@property (nonatomic, strong) UITapGestureRecognizer *tap;

//: @end
@end

//: @implementation NTESSessionRedPacketContentView
@implementation ExecutiveSessionControl

//: - (instancetype)initSessionMessageContentView{
- (instancetype)initDistance{
    //: self = [super initSessionMessageContentView];
    self = [super initDistance];
    //: if (self) {
    if (self) {
        // 内容布局
//        _titleLabel = [[UILabel alloc] initWithFrame:CGRectZero];
//        _titleLabel.font = [UIFont systemFontOfSize:12.f];
//        _subTitleLabel = [[UILabel alloc] initWithFrame:CGRectZero];
//        _subTitleLabel.font = [UIFont systemFontOfSize:12.f];
//        _descLabel = [[UILabel alloc] initWithFrame:CGRectZero];
//        _descLabel.font = [UIFont systemFontOfSize:13.f];

        //: _redPacketImage = [[UIImageView alloc] init];
        _redPacketImage = [[UIImageView alloc] init];
        //: _redPacketImage.clipsToBounds = YES;
        _redPacketImage.clipsToBounds = YES;
        //: _redPacketImage.contentMode = UIViewContentModeScaleAspectFill;
        _redPacketImage.contentMode = UIViewContentModeScaleAspectFill;
        //: _redPacketImage.image = [UIImage imageNamed:@"icon_redpacket_custom"];
        _redPacketImage.image = [UIImage imageNamed:StringFromImageData(kStr_scaleWeepTitle)];
        //: _redPacketImage.layer.masksToBounds = YES;
        _redPacketImage.layer.masksToBounds = YES;
        //: _redPacketImage.layer.cornerRadius = 10;
        _redPacketImage.layer.cornerRadius = 10;

        //: _whiteView = [[UIView alloc] init];
        _whiteView = [[UIView alloc] init];
        //: _whiteView.userInteractionEnabled = NO;
        _whiteView.userInteractionEnabled = NO;
        //: _whiteView.backgroundColor = [UIColor whiteColor];
        _whiteView.backgroundColor = [UIColor whiteColor];
        //: _whiteView.alpha = 0.5;
        _whiteView.alpha = 0.5;
        //: _whiteView.hidden = YES;
        _whiteView.hidden = YES;

        //: self.bubbleImageView.hidden = YES;
        self.bubbleImageView.hidden = YES;

        //: [self addSubview:_redPacketImage];
        [self addSubview:_redPacketImage];
        //: [self addSubview:_titleLabel];
        [self addSubview:_titleLabel];
        //: [self addSubview:_subTitleLabel];
        [self addSubview:_subTitleLabel];
        //: [self addSubview:_descLabel];
        [self addSubview:_descLabel];
        //: [self addSubview:_whiteView];
        [self addSubview:_whiteView];

    }
    //: return self;
    return self;
}


//: - (void)onTouchUpInside:(id)sender
- (void)directed:(id)sender
{
    //: if ([self.delegate respondsToSelector:@selector(onCatchEvent:)]) {
    if ([self.delegate respondsToSelector:@selector(inputStop:)]) {
        //: ZZZKitEvent *event = [[ZZZKitEvent alloc] init];
        ItemTap *event = [[ItemTap alloc] init];
        //: event.eventName = NIMDemoEventNameOpenRedPacket;
        event.eventName = kConst_instanceValue;
        //: event.messageModel = self.model;
        event.messageModel = self.model;
        //: event.data = self;
        event.data = self;
        //: [self.delegate onCatchEvent:event];
        [self.delegate inputStop:event];
    }
}

//: #pragma mark - 系统父类方法
#pragma mark - 系统父类方法
//: - (void)refresh:(ZZZMessageModel*)data{
- (void)text:(CollectionModel*)data{
    //: [super refresh:data];
    [super text:data];

    //: NIMCustomObject *object = data.message.messageObject;
    NIMCustomObject *object = data.message.messageObject;
    //: NTESRedPacketAttachment *attachment = (NTESRedPacketAttachment *)object.attachment;
    LanguageEnter *attachment = (LanguageEnter *)object.attachment;

    //: self.titleLabel.text = attachment.title;
    self.titleLabel.text = attachment.title;
    //: self.descLabel.text = attachment.content;
    self.descLabel.text = attachment.content;

    //: self.titleLabel.textColor = [UIColor lightGrayColor];
    self.titleLabel.textColor = [UIColor lightGrayColor];
    //: self.subTitleLabel.textColor = [UIColor whiteColor];
    self.subTitleLabel.textColor = [UIColor whiteColor];
    //: self.descLabel.textColor = [UIColor whiteColor];
    self.descLabel.textColor = [UIColor whiteColor];

    //: [self.titleLabel sizeToFit];
    [self.titleLabel sizeToFit];
    //: CGRect rect = self.titleLabel.frame;
    CGRect rect = self.titleLabel.frame;
    //: if (CGRectGetMaxX(rect) > self.bounds.size.width)
    if (CGRectGetMaxX(rect) > self.bounds.size.width)
    {
        //: rect.size.width = self.bounds.size.width - rect.origin.x - 20;
        rect.size.width = self.bounds.size.width - rect.origin.x - 20;
        //: self.titleLabel.frame = rect;
        self.titleLabel.frame = rect;
    }
    //: self.subTitleLabel.text = self.model.message.isOutgoingMsg? @"查看红包".ntes_localized : @"领取红包".ntes_localized;
    self.subTitleLabel.text = self.model.message.isOutgoingMsg? StringFromImageData(kStr_grandparentText).colorLocalized : StringFromImageData(kStr_voiceTitle).colorLocalized;

    //: NSMutableDictionary *dict = @{}.mutableCopy;
    NSMutableDictionary *dict = @{}.mutableCopy;
    //: dict[@"redid"] = attachment.redPacketId;
    dict[StringFromImageData(kStr_enableFluValue)] = attachment.redPacketId;
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/wallet/isAcceptRed"] params:dict isShow:NO success:^(id responseObject) {
    [ViewManager viewFailed:[NSString stringWithFormat:StringFromImageData(kStr_shouldChronicTitle)] disable:dict params:NO status:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSDictionary *dataDict = [resultDict valueObjectForKey:@"data"];
        NSDictionary *dataDict = [resultDict userTo:StringFromImageData(kStr_rageTitle)];
        //: NSString *isaccept = [dataDict newStringValueForKey:@"isaccept"];
        NSString *isaccept = [dataDict length:StringFromImageData(kStr_merelyFibTherapistTitle)];
        //: if (isaccept.integerValue == 0) {
        if (isaccept.integerValue == 0) {
            //: _whiteView.hidden = YES;
            _whiteView.hidden = YES;
        //: }else{
        }else{
            //: _whiteView.hidden = NO;
            _whiteView.hidden = NO;
        }
    //: } failed:^(id responseObject, NSError *error) {
    } allow:^(id responseObject, NSError *error) {

    //: }];
    }];
}

//: - (void)layoutSubviews
- (void)layoutSubviews
{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: _redPacketImage.frame = CGRectMake(0, 0, 160, 180);
    _redPacketImage.frame = CGRectMake(0, 0, 160, 180);
    //: _whiteView.frame = CGRectMake(0, 0, 160, 180);
    _whiteView.frame = CGRectMake(0, 0, 160, 180);

    //: BOOL outgoing = self.model.message.isOutgoingMsg;
    BOOL outgoing = self.model.message.isOutgoingMsg;
    //: if (outgoing)
    if (outgoing)
    {
        //: self.descLabel.frame = CGRectMake(12.0f+31.f+12.f, 17.f, 160.f, 24.f);
        self.descLabel.frame = CGRectMake(12.0f+31.f+12.f, 17.f, 160.f, 24.f);
        //: self.subTitleLabel.frame = CGRectMake(12.0f+31.f+12.f, 39.f, 150.f, 20.f);
        self.subTitleLabel.frame = CGRectMake(12.0f+31.f+12.f, 39.f, 150.f, 20.f);
        //: self.titleLabel.frame = CGRectMake(7.0f, 93.f-18.f, 180.f, 21.f);
        self.titleLabel.frame = CGRectMake(7.0f, 93.f-18.f, 180.f, 21.f);
    }
    //: else
    else
    {
        //: self.descLabel.frame = CGRectMake(12.f+31.f+12.f, 17.f, 160.f, 24.f);
        self.descLabel.frame = CGRectMake(12.f+31.f+12.f, 17.f, 160.f, 24.f);
        //: self.subTitleLabel.frame = CGRectMake(12.f+31.f+12.f, 39.f, 150.f, 20.f);
        self.subTitleLabel.frame = CGRectMake(12.f+31.f+12.f, 39.f, 150.f, 20.f);
        //: self.titleLabel.frame = CGRectMake(14.f, 93.f-18.f, 180.f, 21.f);
        self.titleLabel.frame = CGRectMake(14.f, 93.f-18.f, 180.f, 21.f);
    }
}

//: - (UIImage *)chatBubbleImageForState:(UIControlState)state outgoing:(BOOL)outgoing
- (UIImage *)withCell:(UIControlState)state colorUnwantedVisualizationStateGestureBubble:(BOOL)outgoing
{
    //: NSString *stateString = state == UIControlStateNormal? @"normal" : @"pressed";
    NSString *stateString = state == UIControlStateNormal? StringFromImageData(kStr_glanceScanText) : StringFromImageData(kStr_veteranGelData);
    //: NSString *imageName = @"icon_redpacket_";
    NSString *imageName = StringFromImageData(kStr_goryRedTitle);
    //: if (outgoing)
    if (outgoing)
    {
        //: imageName = [imageName stringByAppendingString:@"from_"];
        imageName = [imageName stringByAppendingString:StringFromImageData(kStr_adventureName)];
    }
    //: else
    else
    {
        //: imageName = [imageName stringByAppendingString:@"to_"];
        imageName = [imageName stringByAppendingString:@"to_"];
    }
    //: imageName = [imageName stringByAppendingString:stateString];
    imageName = [imageName stringByAppendingString:stateString];
    //: return [UIImage imageNamed:imageName];
    return [UIImage imageNamed:imageName];
}

//: @end
@end

Byte * ImageDataToCache(Byte *data) {
    int tartEngine = data[0];
    int weepStain = data[1];
    int sixView = data[2];
    if (!tartEngine) return data + sixView;
    for (int i = 0; i < weepStain / 2; i++) {
        int begin = sixView + i;
        int end = sixView + weepStain - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[sixView + weepStain] = 0;
    return data + sixView;
}

NSString *StringFromImageData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)ImageDataToCache(data)];
}  
