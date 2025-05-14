// __DEBUG__
// __CLOSE_PRINT__
//
//  BackgroundCollection.h
//  NIM
//
//  Created by Xuhui on 15/3/2.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @protocol NTESGroupMemberProtocol <NSObject>
@protocol TingProtocol <NSObject>

- (NSString *)groupTitle;

- (NSString *)memberId;

- (id)sortKey;

@end

//: @interface NTESGroupedDataCollection : NSObject
@interface BackgroundCollection : NSObject

//: @property (nonatomic, strong) NSArray *members;
@property (nonatomic, strong) NSArray *members;
//: @property (nonatomic, copy) NSComparator groupTitleComparator;
@property (nonatomic, copy) NSComparator groupTitleComparator;
//: @property (nonatomic, copy) NSComparator groupMemberComparator;
@property (nonatomic, copy) NSComparator groupMemberComparator;
//: @property (nonatomic, readonly) NSArray *sortedGroupTitles;
@property (nonatomic, readonly) NSArray *sortedGroupTitles;

//: - (void)addGroupMember:(id<NTESGroupMemberProtocol>)member;
- (void)buttonMagnitude:(id<TingProtocol>)member;

//: - (void)removeGroupMember:(id<NTESGroupMemberProtocol>)member;
- (void)brand:(id<TingProtocol>)member;

//: - (void)addGroupAboveWithTitle:(NSString *)title members:(NSArray *)members;
- (void)breakup:(NSString *)title clear_strong:(NSArray *)members;

//: - (NSString *)titleOfGroup:(NSInteger)groupIndex;
- (NSString *)message:(NSInteger)groupIndex;

//: - (NSArray *)membersOfGroup:(NSInteger)groupIndex;
- (NSArray *)layer:(NSInteger)groupIndex;

//: - (id<NTESGroupMemberProtocol>)memberOfIndex:(NSIndexPath *)indexPath;
- (id<TingProtocol>)of:(NSIndexPath *)indexPath;

//: - (id<NTESGroupMemberProtocol>)memberOfId:(NSString *)uid;
- (id<TingProtocol>)clansmanFromPhaseOfTheMoon:(NSString *)uid;

//: - (NSInteger)groupCount;
- (NSInteger)humankindEnable;

//: - (NSInteger)memberCountOfGroup:(NSInteger)groupIndex;
- (NSInteger)next:(NSInteger)groupIndex;

//: @end
@end
