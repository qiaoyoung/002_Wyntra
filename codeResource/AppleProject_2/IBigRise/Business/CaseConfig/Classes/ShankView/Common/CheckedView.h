// __DEBUG__
// __CLOSE_PRINT__
//
//  CheckedView.h
// On
//
//  Created by chris on 15/10/15.
//  Copyright © 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "DataCardDataSourceProtocol.h"
#import "DataCardDataSourceProtocol.h"

//: @protocol ZZZMemberGroupViewDelegate <NSObject>
@protocol CellCheckContent <NSObject>
//: @optional
@optional

//: - (void)didSelectMemberId:(NSString *)uid;
- (void)buttonned:(NSString *)uid;

//: - (void)didSelectRemoveButtonWithMemberId:(NSString *)uid;
- (void)maxed:(NSString *)uid;

//: - (void)didSelectOperator:(NIMKitCardHeaderOpeator )opera;
- (void)myAcross:(NIMKitCardHeaderOpeator )opera;

//: @end
@end

//: @interface NIMMemebrGroupData : NSObject
@interface OrdinationDismiss : NSObject

//: @property (nonatomic,strong) NSString *userId;
@property (nonatomic,strong) NSString *userId;

//: @property (nonatomic,assign) NIMKitCardHeaderOpeator opera;
@property (nonatomic,assign) NIMKitCardHeaderOpeator opera;

//: @property (nonatomic,readonly) BOOL isMyUserId;
@property (nonatomic,readonly) BOOL isMyUserId;

//: @end
@end

//: @interface ZZZMemberGroupView : UIView
@interface CheckedView : UIView

//: @property (nonatomic,strong) UICollectionView *collectionView;
@property (nonatomic,strong) UICollectionView *collectionView;

//: @property (nonatomic,readonly) BOOL showAddOperator;
@property (nonatomic,readonly) BOOL showAddOperator;

//: @property (nonatomic,readonly) BOOL showRemoveOperator;
@property (nonatomic,readonly) BOOL showRemoveOperator;

//: @property (nonatomic,assign) BOOL enableRemove;
@property (nonatomic,assign) BOOL enableRemove;

//: @property (nonatomic,weak) id<ZZZMemberGroupViewDelegate> delegate;
@property (nonatomic,weak) id<CellCheckContent> delegate;

//: - (void)refreshDatas:(NSArray <NIMMemebrGroupData *> *)datas operators:(NIMKitCardHeaderOpeator)operators;
- (void)record:(NSArray <OrdinationDismiss *> *)datas size:(NIMKitCardHeaderOpeator)operators;

//: - (void)setTitle:(NSString *)title forOperator:(NIMKitCardHeaderOpeator)opera;
- (void)background:(NSString *)title empty:(NIMKitCardHeaderOpeator)opera;

//: @end
@end
