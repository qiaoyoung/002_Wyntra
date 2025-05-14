
#import <Foundation/Foundation.h>

NSString *StringFromFinishEnableData(Byte *data);        


//: chat_ic_voice_g
Byte kStr_proceedName[] = {65, 15, 77, 10, 87, 99, 58, 24, 11, 74, 22, 27, 20, 39, 18, 28, 22, 18, 41, 34, 28, 22, 24, 18, 26, 6};


//: chat_ic_video_g
Byte kStr_marryData[] = {19, 15, 31, 8, 9, 156, 109, 116, 68, 73, 66, 85, 64, 74, 68, 64, 87, 74, 69, 70, 80, 64, 72, 21};

// __DEBUG__
// __CLOSE_PRINT__
//
//  HideTextView.m
// On
//
//  Created by Wenchao Ding on 2020/11/7.
//  Copyright © 2020 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZZZSessionRtcCallRecordContentView.h"
#import "HideTextView.h"
//: #import "AppleProjectKit.h"
#import "On.h"
//: #import "NSString+AppleProjectKit.h"
#import "NSString+On.h"
//: #import "ZZZKitUtil.h"
#import "TingText.h"

//: @implementation ZZZSessionRtcCallRecordContentView
@implementation HideTextView

//: - (instancetype)initSessionMessageContentView
- (instancetype)initDistance
{
    //: if (self = [super initSessionMessageContentView]) {
    if (self = [super initDistance]) {
        //: _textLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _textLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _textLabel.numberOfLines = 1;
        _textLabel.numberOfLines = 1;
        //: _textLabel.backgroundColor = UIColor.clearColor;
        _textLabel.backgroundColor = UIColor.clearColor;
        //: [self addSubview:_textLabel];
        [self addSubview:_textLabel];

        //: _icImage = [[UIImageView alloc]init];
        _icImage = [[UIImageView alloc]init];
        //: [self addSubview:_icImage];
        [self addSubview:_icImage];

    }
    //: return self;
    return self;
}

//: - (void)refresh:(ZZZMessageModel *)data {
- (void)text:(CollectionModel *)data {
    //: [super refresh:data];
    [super text:data];
    //: ZZZKitSetting *setting = [[AppleProjectKit sharedKit].config setting:data.message];
    CaseSetting *setting = [[On along].config style:data.message];
    //: self.textLabel.textColor = setting.textColor;
    self.textLabel.textColor = setting.textColor;
    //: self.textLabel.font = setting.font;
    self.textLabel.font = setting.font;
    //: self.textLabel.text = [ZZZKitUtil messageTipContent:data.message];
    self.textLabel.text = [TingText constituent:data.message];

    //: NIMRtcCallRecordObject *record = data.message.messageObject;
    NIMRtcCallRecordObject *record = data.message.messageObject;
    //: if(record.callType == NIMNetCallTypeAudio){
    if(record.callType == NIMNetCallTypeAudio){
        //: self.icImage.image = [UIImage imageNamed:@"chat_ic_voice_g"];
        self.icImage.image = [UIImage imageNamed:StringFromFinishEnableData(kStr_proceedName)];
    //: }else{
    }else{
        //: self.icImage.image = [UIImage imageNamed:@"chat_ic_video_g"];
        self.icImage.image = [UIImage imageNamed:StringFromFinishEnableData(kStr_marryData)];
    }

//    */
//   typedef NS_ENUM(NSInteger, NIMNetCallType){
//       /**
//        *  音频通话
//        */
//       NIMNetCallTypeAudio = 1,
//       /**
//        *  视频通话
//        */
//       NIMNetCallTypeVideo = 2,
//   };

}

//: - (void)layoutSubviews {
- (void)layoutSubviews {
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: UIEdgeInsets contentInsets = self.model.contentViewInsets;
    UIEdgeInsets contentInsets = self.model.contentViewInsets;

    //: CGFloat tableViewWidth = self.superview.frame.size.width;
    CGFloat tableViewWidth = self.superview.frame.size.width;
    //: CGSize contentsize = [self.model contentSize:tableViewWidth];
    CGSize contentsize = [self.model info:tableViewWidth];
//    CGRect labelFrame = CGRectMake(contentInsets.left, contentInsets.top, contentsize.width, contentsize.height);
//    self.textLabel.frame = labelFrame;

    //: self.icImage.frame = CGRectMake(contentInsets.left, contentInsets.top+2, 16, 16);
    self.icImage.frame = CGRectMake(contentInsets.left, contentInsets.top+2, 16, 16);
    //: self.textLabel.frame = CGRectMake(self.icImage.right+5, contentInsets.top, contentsize.width-20, contentsize.height);
    self.textLabel.frame = CGRectMake(self.icImage.right+5, contentInsets.top, contentsize.width-20, contentsize.height);

}

//: @end
@end

Byte * FinishEnableDataToCache(Byte *data) {
    int have = data[0];
    int conferenceFib = data[1];
    Byte ellipseGlob = data[2];
    int coat = data[3];
    if (!have) return data + coat;
    for (int i = coat; i < coat + conferenceFib; i++) {
        int value = data[i] + ellipseGlob;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[coat + conferenceFib] = 0;
    return data + coat;
}

NSString *StringFromFinishEnableData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)FinishEnableDataToCache(data)];
}
