// __DEBUG__
// __CLOSE_PRINT__
//
//  ItemTap.h
// On
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>
//: #import "ZZZMessageModel.h"
#import "CollectionModel.h"

//: @interface ZZZKitEvent : NSObject
@interface ItemTap : NSObject

//: @property (nonatomic,copy) NSString *eventName;
@property (nonatomic,copy) NSString *eventName;

//: @property (nonatomic,strong) ZZZMessageModel *messageModel;
@property (nonatomic,strong) CollectionModel *messageModel;

//: @property (nonatomic,strong) id data;
@property (nonatomic,strong) id data;

//: @end
@end




//: extern NSString *const ZZZKitEventNameTapContent;
extern NSString *const kConst_textData;
//: extern NSString *const ZZZKitEventNameTapLabelLink;
extern NSString *const kConst_maxData;
//: extern NSString *const ZZZKitEventNameTapAudio;
extern NSString *const kConst_optionValue;

//: extern NSString *const ZZZKitEventNameTapRepliedContent;
extern NSString *const kConst_contentMakeTitle;