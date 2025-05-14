// __DEBUG__
// __CLOSE_PRINT__
//
//  ShankObject.h
//  NIM
//
//  Created by chris on 15/7/8.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: typedef NS_ENUM(NSInteger, NTESSearchLocalHistoryType){
typedef NS_ENUM(NSInteger, NTESSearchLocalHistoryType){
    //: SearchLocalHistoryTypeEntrance,
    SearchLocalHistoryTypeEntrance,
    //: SearchLocalHistoryTypeContent,
    SearchLocalHistoryTypeContent,
//: };
};

//: @class NTESSearchLocalHistoryObject;
@class ShankObject;
//: @protocol NTESSearchObjectRefresh <NSObject>
@protocol PerimeterRefresh <NSObject>

//: - (void)refresh:(NTESSearchLocalHistoryObject *)object;
- (void)doingMessage:(ShankObject *)object;

//: @end
@end

//: @interface NTESSearchLocalHistoryObject : NSObject
@interface ShankObject : NSObject

//: @property (nonatomic,copy) NSString *content;
@property (nonatomic,copy) NSString *content;

//: @property (nonatomic,assign) CGFloat uiHeight;
@property (nonatomic,assign) CGFloat uiHeight;

//: @property (nonatomic,assign) NTESSearchLocalHistoryType type;
@property (nonatomic,assign) NTESSearchLocalHistoryType type;

//: @property (nonatomic,readonly) NIMMessage *message;
@property (nonatomic,readonly) NIMMessage *message;

//: - (instancetype)initWithMessage:(NIMMessage *)message;
- (instancetype)initWithTopCur:(NIMMessage *)message;

//: @end
@end