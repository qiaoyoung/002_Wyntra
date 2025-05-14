// __DEBUG__
// __CLOSE_PRINT__
//
//  NIMInputAtManager.h
// On
//
//  Created by chris on 2016/12/8.
//  Copyright © 2016年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @interface NIMInputAtItem : NSObject
@interface MaxSuggest : NSObject

//: @property (nonatomic,copy) NSString *name;
@property (nonatomic,copy) NSString *name;

//: @property (nonatomic,copy) NSString *uid;
@property (nonatomic,copy) NSString *uid;

//: @property (nonatomic,assign) NSRange range;
@property (nonatomic,assign) NSRange range;

//: @end
@end

//: @interface ZZZInputAtCache : NSObject
@interface DistanceCache : NSObject

//: - (NSArray *)allAtUid:(NSString *)sendText;
- (NSArray *)replyUid:(NSString *)sendText;

//: - (void)clean;
- (void)tableClean;

//: - (void)addAtItem:(NIMInputAtItem *)item;
- (void)time:(MaxSuggest *)item;

//: - (NIMInputAtItem *)item:(NSString *)name;
- (MaxSuggest *)bringHome:(NSString *)name;

//: - (NIMInputAtItem *)removeName:(NSString *)name;
- (MaxSuggest *)keyTitle:(NSString *)name;

//: @end
@end