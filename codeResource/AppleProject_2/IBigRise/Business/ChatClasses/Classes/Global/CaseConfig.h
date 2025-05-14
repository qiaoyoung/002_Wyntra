// __DEBUG__
// __CLOSE_PRINT__
//
//  CaseConfig.h
// On
//
//  Created by chris on 2017/10/25.
//  Copyright © 2017年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZZZKitSetting.h"
#import "CaseSetting.h"

//: @class ZZZKitSettings;
@class StatuteNameTitle;
//: @class NIMMessage;
@class NIMMessage;

//: typedef NS_ENUM(NSInteger,NIMKitAvatarType) {
typedef NS_ENUM(NSInteger,NIMKitAvatarType) {
    /*矩形直角头像*/
    //: NIMKitAvatarTypeNone,
    NIMKitAvatarTypeNone,
    /*圆形头像*/
    //: NIMKitAvatarTypeRounded,
    NIMKitAvatarTypeRounded,
    /*圆角头像*/
    //: NIMKitAvatarTypeRadiusCorner,
    NIMKitAvatarTypeRadiusCorner,
//: };
};

//: @interface ZZZKitConfig : NSObject
@interface CaseConfig : NSObject


/*全局设置*/

/**
 *  每隔多久显示一条消息
 */
//: @property (nonatomic, assign) NSTimeInterval messageInterval;
@property (nonatomic, assign) NSTimeInterval messageInterval;

/**
 *  每次抓取的消息个数
 */
//: @property (nonatomic, assign) NSInteger messageLimit;
@property (nonatomic, assign) NSInteger messageLimit;


/**
 *  录音的最大时长
 */
//: @property (nonatomic, assign) NSTimeInterval recordMaxDuration;
@property (nonatomic, assign) NSTimeInterval recordMaxDuration;


/**
 *  输入框的占位符
 */
//: @property (nonatomic, copy) NSString *placeholder;
@property (nonatomic, copy) NSString *placeholder;


/**
 *  输入框能容纳的最大字符长度
 */
//: @property (nonatomic, assign) NSInteger inputMaxLength;
@property (nonatomic, assign) NSInteger inputMaxLength;


/**
 *  cell 的背景色
 */
//: @property (nonatomic, strong) UIColor *cellBackgroundColor;
@property (nonatomic, strong) UIColor *cellBackgroundColor;


/**
 *  头像类型
 */
//: @property (nonatomic, assign) NIMKitAvatarType avatarType;
@property (nonatomic, assign) NIMKitAvatarType avatarType;


/**
 *  昵称字体
 */
//: @property (nonatomic, strong) UIFont *nickFont;
@property (nonatomic, strong) UIFont *nickFont;

/**
 *  已读回执字体
 */
//: @property (nonatomic, strong) UIFont *receiptFont;
@property (nonatomic, strong) UIFont *receiptFont;

/**
 *  昵称颜色
 */
//: @property (nonatomic, strong) UIColor *nickColor;
@property (nonatomic, strong) UIColor *nickColor;


/**
 *  已读回执颜色
 */
//: @property (nonatomic, strong) UIColor *receiptColor;
@property (nonatomic, strong) UIColor *receiptColor;


/**
 *  左侧气泡设置
 */
//: @property (nonatomic, strong) ZZZKitSettings *leftBubbleSettings;
@property (nonatomic, strong) StatuteNameTitle *leftBubbleSettings;

/**
 *  右侧气泡设置
 */
//: @property (nonatomic, strong) ZZZKitSettings *rightBubbleSettings;
@property (nonatomic, strong) StatuteNameTitle *rightBubbleSettings;


/*默认内置配置*/

//: - (NSArray *)defaultMediaItems;
- (NSArray *)accumulationFrame;

//: - (NSArray *)defaultMenuItemsWithMessage:(NIMMessage *)message;
- (NSArray *)line:(NIMMessage *)message;

//: - (CGFloat)maxNotificationTipPadding;
- (CGFloat)color;


/*根据消息取到配置*/

//: - (ZZZKitSetting *)setting:(NIMMessage *)message;
- (CaseSetting *)style:(NIMMessage *)message;


/*被回复消息取到配置*/

//: - (ZZZKitSetting *)repliedSetting:(NIMMessage *)message;
- (CaseSetting *)shouldPath:(NIMMessage *)message;

//: @end
@end




/**
 *  组件 UI 设置
 */
//: @interface ZZZKitSettings : NSObject
@interface StatuteNameTitle : NSObject

/**
 *  文本类型消息设置
 */
//: @property (nonatomic, strong) ZZZKitSetting *textSetting;
@property (nonatomic, strong) CaseSetting *textSetting;

/**
 *  音频类型消息设置
 */
//: @property (nonatomic, strong) ZZZKitSetting *audioSetting;
@property (nonatomic, strong) CaseSetting *audioSetting;

/**
 *  视频类型消息设置
 */
//: @property (nonatomic, strong) ZZZKitSetting *videoSetting;
@property (nonatomic, strong) CaseSetting *videoSetting;

/**
 *  文件类型消息设置
 */
//: @property (nonatomic, strong) ZZZKitSetting *fileSetting;
@property (nonatomic, strong) CaseSetting *fileSetting;

/**
 *  图片类型消息设置
 */
//: @property (nonatomic, strong) ZZZKitSetting *imageSetting;
@property (nonatomic, strong) CaseSetting *imageSetting;

/**
 *  地理位置类型消息设置
 */
//: @property (nonatomic, strong) ZZZKitSetting *locationSetting;
@property (nonatomic, strong) CaseSetting *locationSetting;

/**
 *  提示类型消息设置
 */
//: @property (nonatomic, strong) ZZZKitSetting *tipSetting;
@property (nonatomic, strong) CaseSetting *tipSetting;

/**
 *  Rtc话单类型消息设置
 */
//: @property (nonatomic, strong) ZZZKitSetting *rtcCallRecordSetting;
@property (nonatomic, strong) CaseSetting *rtcCallRecordSetting;

/**
 *  无法识别类型消息设置
 */
//: @property (nonatomic, strong) ZZZKitSetting *unsupportSetting;
@property (nonatomic, strong) CaseSetting *unsupportSetting;

/**
 *  群组通知类型通知消息设置
 */
//: @property (nonatomic, strong) ZZZKitSetting *teamNotificationSetting;
@property (nonatomic, strong) CaseSetting *teamNotificationSetting;

/**
 *  群组通知类型通知消息设置
 */
//: @property (nonatomic, strong) ZZZKitSetting *superTeamNotificationSetting;
@property (nonatomic, strong) CaseSetting *superTeamNotificationSetting;

/**
 *  聊天室类型类型通知消息设置
 */
//: @property (nonatomic, strong) ZZZKitSetting *chatroomNotificationSetting;
@property (nonatomic, strong) CaseSetting *chatroomNotificationSetting;

/**
 *  网络电话类型类型通知消息设置
 */
//: @property (nonatomic, strong) ZZZKitSetting *netcallNotificationSetting;
@property (nonatomic, strong) CaseSetting *netcallNotificationSetting;

/**
 *  被回复消息的设置
 */
//: @property (nonatomic, strong) ZZZKitSetting *repliedSetting;
@property (nonatomic, strong) CaseSetting *repliedSetting;


//: @end
@end