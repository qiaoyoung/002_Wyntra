
#import <Foundation/Foundation.h>
typedef struct {
    Byte classify;
    Byte *thresh;
    unsigned int luxuriant;
    bool vacuumGage;
	int easterCraft;
} AccountingData;

NSString *StringFromAccountingData(AccountingData *data);


//: collectionCell
AccountingData kStr_infectionRooData = (AccountingData){45, (Byte []){78, 66, 65, 65, 72, 78, 89, 68, 66, 67, 110, 72, 65, 65, 113}, 14, false, 40};

// __DEBUG__
// __CLOSE_PRINT__
//
//  CheckedView.m
// On
//
//  Created by chris on 15/10/15.
//  Copyright © 2015年 NetEase. All rights reserved.
//
//: #pragma mark - NIMMemebrGroupData
#pragma mark - OrdinationDismiss

// __M_A_C_R_O__
//: #import "ZZZMemberGroupView.h"
#import "CheckedView.h"
//: #import "ZZZCardHeaderCell.h"
#import "DisenableView.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "ZZZCardOperationItem.h"
#import "LabelRescueOperationContainer.h"
//: #import "ZZZTeamCardMemberItem.h"
#import "WithQuantityerval.h"

//: @implementation NIMMemebrGroupData
@implementation OrdinationDismiss

//: - (instancetype)init {
- (instancetype)init {
    //: if (self = [super init]) {
    if (self = [super init]) {
        //: _opera = CardHeaderOpeatorNone;
        _opera = CardHeaderOpeatorNone;
    }
    //: return self;
    return self;
}

//: - (BOOL)isMyUserId {
- (BOOL)isMyUserId {
    //: return [_userId isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount];
    return [_userId isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount];
}

//: @end
@end

//: #pragma mark - ZZZMemberGroupView
#pragma mark - CheckedView

//: @interface ZZZMemberGroupView()<UICollectionViewDataSource,UICollectionViewDelegate,ZZZCardHeaderCellDelegate>
@interface CheckedView()<UICollectionViewDataSource,UICollectionViewDelegate,MinorityDelegate>

//: @property (nonatomic,strong) NSMutableArray *data;
@property (nonatomic,strong) NSMutableArray *data;

//: @property (nonatomic,strong) NSMutableDictionary *operatorTitle;
@property (nonatomic,strong) NSMutableDictionary *operatorTitle;

//: @end
@end

//: @implementation ZZZMemberGroupView
@implementation CheckedView

//: - (instancetype)initWithFrame:(CGRect)frame{
- (instancetype)initWithFrame:(CGRect)frame{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: self.collectionView.delegate = self;
        self.collectionView.delegate = self;
        //: self.collectionView.dataSource = self;
        self.collectionView.dataSource = self;
        //: [self addSubview:self.collectionView];
        [self addSubview:self.collectionView];
    }
    //: return self;
    return self;
}

//: - (void)refreshDatas:(NSArray <NIMMemebrGroupData *> *)datas
- (void)record:(NSArray <OrdinationDismiss *> *)datas
           //: operators:(NIMKitCardHeaderOpeator)operators{
           size:(NIMKitCardHeaderOpeator)operators{
    //: _showAddOperator = (operators & CardHeaderOpeatorAdd) != 0;
    _showAddOperator = (operators & CardHeaderOpeatorAdd) != 0;
    //: _showRemoveOperator = (operators & CardHeaderOpeatorRemove) != 0;
    _showRemoveOperator = (operators & CardHeaderOpeatorRemove) != 0;

    //normal item
    //: self.data = [[NSMutableArray alloc] initWithArray:datas];
    self.data = [[NSMutableArray alloc] initWithArray:datas];

    //add item
    //: if (self.showAddOperator) {
    if (self.showAddOperator) {
        //: NIMMemebrGroupData *groupData = [[NIMMemebrGroupData alloc] init];
        OrdinationDismiss *groupData = [[OrdinationDismiss alloc] init];
        //: groupData.opera = CardHeaderOpeatorAdd;
        groupData.opera = CardHeaderOpeatorAdd;
        //: [self.data addObject:groupData];
        [self.data addObject:groupData];
    }

    //remove item
    //: if (self.showRemoveOperator) {
    if (self.showRemoveOperator) {
        //: NIMMemebrGroupData *groupData = [[NIMMemebrGroupData alloc] init];
        OrdinationDismiss *groupData = [[OrdinationDismiss alloc] init];
        //: groupData.opera = CardHeaderOpeatorRemove;
        groupData.opera = CardHeaderOpeatorRemove;
        //: [self.data addObject:groupData];
        [self.data addObject:groupData];
    }
    //: [self.collectionView reloadData];
    [self.collectionView reloadData];
}

//: - (void)setTitle:(NSString *)title forOperator:(NIMKitCardHeaderOpeator)opera{
- (void)background:(NSString *)title empty:(NIMKitCardHeaderOpeator)opera{
    //: if (!self.operatorTitle) {
    if (!self.operatorTitle) {
        //: self.operatorTitle = [[NSMutableDictionary alloc] init];
        self.operatorTitle = [[NSMutableDictionary alloc] init];
    }
    //: self.operatorTitle[@(opera)] = title;
    self.operatorTitle[@(opera)] = title;
}

//: - (CGSize)sizeThatFits:(CGSize)size{
- (CGSize)sizeThatFits:(CGSize)size{
    //: CGFloat width = size.width;
    CGFloat width = size.width;
    //: NSInteger sectionNumber = [self numberOfSections:width];
    NSInteger sectionNumber = [self containerView:width];
    //: CGFloat height = 80 * sectionNumber + 15 * (sectionNumber-1) + 25 * 2;
    CGFloat height = 80 * sectionNumber + 15 * (sectionNumber-1) + 25 * 2;
    //: return CGSizeMake(width, height);
    return CGSizeMake(width, height);
}

//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: self.collectionView.contentInset = self.sectionInsets;
    self.collectionView.contentInset = self.ting;
}

//: #pragma mark - UICollectionViewDataSource
#pragma mark - UICollectionViewDataSource
//: - (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    //: NSInteger lastTotal = self.collectionItemNumber * section;
    NSInteger lastTotal = self.model * section;
    //: NSInteger remain = self.data.count - lastTotal;
    NSInteger remain = self.data.count - lastTotal;
    //: return remain < self.collectionItemNumber ? remain:self.collectionItemNumber;
    return remain < self.model ? remain:self.model;
}

//: - (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    //: NSInteger sections = self.data.count / self.collectionItemNumber;
    NSInteger sections = self.data.count / self.model;
    //: return self.data.count % self.collectionItemNumber ? sections + 1 : sections;
    return self.data.count % self.model ? sections + 1 : sections;
}

//: - (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    //: ZZZCardHeaderCell *cell;
    DisenableView *cell;
    //: NIMMemebrGroupData *data = [self dataAtIndexPath:indexPath];
    OrdinationDismiss *data = [self with:indexPath];
    //: if (data.opera == CardHeaderOpeatorAdd || data.opera == CardHeaderOpeatorRemove) {
    if (data.opera == CardHeaderOpeatorAdd || data.opera == CardHeaderOpeatorRemove) {
        //: cell = [self buildOperatorCell:data.opera indexPath:indexPath];
        cell = [self input:data.opera size:indexPath];
    //: }else{
    }else{
        //: cell = [self buildUserCell:data indexPath:indexPath];
        cell = [self scalePath:data before:indexPath];
    }
    //: cell.delegate = self;
    cell.delegate = self;
    //: return cell;
    return cell;
}

//: - (NIMMemebrGroupData *)dataAtIndexPath:(NSIndexPath*)indexpath{
- (OrdinationDismiss *)with:(NSIndexPath*)indexpath{
    //: NSInteger index = indexpath.section * self.collectionItemNumber;
    NSInteger index = indexpath.section * self.model;
    //: index += indexpath.row;
    index += indexpath.row;
    //: return self.data[index];
    return self.data[index];
}

//: #pragma mark - ZZZCardHeaderCellDelegate
#pragma mark - MinorityDelegate
//: - (void)cellDidSelected:(ZZZCardHeaderCell *)cell{
- (void)scaleValue:(DisenableView *)cell{
    //: NSIndexPath *indexPath = [self.collectionView indexPathForCell:cell];
    NSIndexPath *indexPath = [self.collectionView indexPathForCell:cell];
    //: NIMMemebrGroupData *groupData = [self dataAtIndexPath:indexPath];
    OrdinationDismiss *groupData = [self with:indexPath];
    //: if (groupData.opera == CardHeaderOpeatorNone && [self.delegate respondsToSelector:@selector(didSelectMemberId:)]) {
    if (groupData.opera == CardHeaderOpeatorNone && [self.delegate respondsToSelector:@selector(buttonned:)]) {
        //: [self.delegate didSelectMemberId:groupData.userId];
        [self.delegate buttonned:groupData.userId];
    //: }else if ([self.delegate respondsToSelector:@selector(didSelectOperator:)]){
    }else if ([self.delegate respondsToSelector:@selector(myAcross:)]){
        //: [self.delegate didSelectOperator:groupData.opera];
        [self.delegate myAcross:groupData.opera];
    }
}

//: - (void)cellShouldBeRemoved:(ZZZCardHeaderCell*)cell{
- (void)bes:(DisenableView*)cell{
    //: NSIndexPath *indexPath = [self.collectionView indexPathForCell:cell];
    NSIndexPath *indexPath = [self.collectionView indexPathForCell:cell];
    //: NIMMemebrGroupData *groupData = [self dataAtIndexPath:indexPath];
    OrdinationDismiss *groupData = [self with:indexPath];
    //: if (groupData.opera == CardHeaderOpeatorNone && [self.delegate respondsToSelector:@selector(didSelectRemoveButtonWithMemberId:)]) {
    if (groupData.opera == CardHeaderOpeatorNone && [self.delegate respondsToSelector:@selector(maxed:)]) {
        //: [self.delegate didSelectRemoveButtonWithMemberId:groupData.userId];
        [self.delegate maxed:groupData.userId];
    }
}

//: #pragma mark - UICollectionViewDelegateFlowLayout
#pragma mark - UICollectionViewDelegateFlowLayout
//: - (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
- (CGSize)size:(UICollectionView *)collectionView atomicTotal85:(UICollectionViewLayout*)collectionViewLayout noShowPath:(NSIndexPath *)indexPath{
    //: return CGSizeMake(58, 80);
    return CGSizeMake(58, 80);
}

//: - (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout insetForSectionAtIndex:(NSInteger)section{
- (UIEdgeInsets)message:(UICollectionView *)collectionView cross:(UICollectionViewLayout*)collectionViewLayout pinTeamMark:(NSInteger)section{
    //: if (section == 0) {
    if (section == 0) {
        //: return UIEdgeInsetsMake(25, 0, 0, 0);
        return UIEdgeInsetsMake(25, 0, 0, 0);
    }
    //: return UIEdgeInsetsMake(15, 0, 0, 0);
    return UIEdgeInsetsMake(15, 0, 0, 0);
}

//: #pragma mark - Getter & Setter
#pragma mark - Getter & Setter
//: - (UICollectionView *)collectionView{
- (UICollectionView *)collectionView{
    //: if (!_collectionView) {
    if (!_collectionView) {
        //: UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
        UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
        //: layout.minimumInteritemSpacing = self.collectionEdgeInsetLeftRight;
        layout.minimumInteritemSpacing = self.leftmost;
        //: _collectionView = [[UICollectionView alloc] initWithFrame:self.bounds collectionViewLayout:layout];
        _collectionView = [[UICollectionView alloc] initWithFrame:self.bounds collectionViewLayout:layout];
        //: _collectionView.backgroundColor = [UIColor colorWithRed:236.0/255.0 green:241.0/255.0 blue:245.0/255.0 alpha:1];
        _collectionView.backgroundColor = [UIColor colorWithRed:236.0/255.0 green:241.0/255.0 blue:245.0/255.0 alpha:1];
        //: _collectionView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
        _collectionView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
        //: _collectionView.delegate = self;
        _collectionView.delegate = self;
        //: _collectionView.dataSource = self;
        _collectionView.dataSource = self;
        //: [_collectionView registerClass:[ZZZCardHeaderCell class] forCellWithReuseIdentifier:@"collectionCell"];
        [_collectionView registerClass:[DisenableView class] forCellWithReuseIdentifier:StringFromAccountingData(&kStr_infectionRooData)];
    }
    //: return _collectionView;
    return _collectionView;
}

//: - (CGFloat)collectionEdgeInsetLeftRight{
- (CGFloat)leftmost{
    //: return 20;
    return 20;
}

//: #pragma mark - Private
#pragma mark - Private
//: - (ZZZCardHeaderCell *)buildUserCell:(NIMMemebrGroupData *)data indexPath:(NSIndexPath *)indexPath{
- (DisenableView *)scalePath:(OrdinationDismiss *)data before:(NSIndexPath *)indexPath{
    //: ZZZCardHeaderCell *cell = [self.collectionView dequeueReusableCellWithReuseIdentifier:@"collectionCell" forIndexPath:indexPath];
    DisenableView *cell = [self.collectionView dequeueReusableCellWithReuseIdentifier:StringFromAccountingData(&kStr_infectionRooData) forIndexPath:indexPath];
    //: NIMCardMemberItem *item = [[NIMCardMemberItem alloc] init];
    MarginInputItem *item = [[MarginInputItem alloc] init];
    //: item.userId = data.userId;
    item.userId = data.userId;

    //: [cell refreshData:item];
    [cell refresh:item];
    //: cell.removeBtn.hidden = (self.enableRemove ? item.isMyUserId : YES);
    cell.removeBtn.hidden = (self.enableRemove ? item.isMyUserId : YES);
    //: return cell;
    return cell;
}

//: - (ZZZCardHeaderCell *)buildOperatorCell:(NIMKitCardHeaderOpeator)operator indexPath:(NSIndexPath *)indexPath{
- (DisenableView *)input:(NIMKitCardHeaderOpeator)operator size:(NSIndexPath *)indexPath{
    //: ZZZCardHeaderCell *cell = [self.collectionView dequeueReusableCellWithReuseIdentifier:@"collectionCell" forIndexPath:indexPath];
    DisenableView *cell = [self.collectionView dequeueReusableCellWithReuseIdentifier:StringFromAccountingData(&kStr_infectionRooData) forIndexPath:indexPath];
    //: ZZZCardOperationItem *item = [[ZZZCardOperationItem alloc] initWithOperation:operator];
    LabelRescueOperationContainer *item = [[LabelRescueOperationContainer alloc] initWithToOperation:operator];
    //: if (self.operatorTitle[@(operator)]) {
    if (self.operatorTitle[@(operator)]) {
        //: item.title = self.operatorTitle[@(operator)];
        item.title = self.operatorTitle[@(operator)];
    }
    //: [cell refreshData:item];
    [cell refresh:item];
    //: cell.removeBtn.hidden = YES;
    cell.removeBtn.hidden = YES;
    //: return cell;
    return cell;
}

//: - (UIEdgeInsets)sectionInsets {
- (UIEdgeInsets)ting {
    //: CGFloat left = (self.collectionView.nim_width - ((58 + self.collectionEdgeInsetLeftRight)) * self.collectionItemNumber - self.collectionEdgeInsetLeftRight) * 0.5;
    CGFloat left = (self.collectionView.nim_width - ((58 + self.leftmost)) * self.model - self.leftmost) * 0.5;
    //: left = left > 20 ? left : 20;
    left = left > 20 ? left : 20;
    //: return UIEdgeInsetsMake(self.collectionView.contentInset.top, left, self.collectionView.contentInset.bottom, left);
    return UIEdgeInsetsMake(self.collectionView.contentInset.top, left, self.collectionView.contentInset.bottom, left);
}

//: - (NSInteger)collectionItemNumber{
- (NSInteger)model{
    //: return [self collectionItemNumber:self.collectionView.nim_width];
    return [self intervalMust:self.collectionView.nim_width];
}

//: - (NSInteger)collectionItemNumber:(CGFloat)width{
- (NSInteger)intervalMust:(CGFloat)width{
    //: CGFloat minSpace = 20; 
    CGFloat minSpace = 20; //防止计算到最后出现左右贴边的情况
    //: return (int)((width - minSpace)/ (58 + self.collectionEdgeInsetLeftRight));
    return (int)((width - minSpace)/ (58 + self.leftmost));
}

//: - (NSInteger)numberOfSections:(CGFloat)width{
- (NSInteger)containerView:(CGFloat)width{
    //: NSInteger collectionNumber = [self collectionItemNumber:width];
    NSInteger collectionNumber = [self intervalMust:width];
    //: NSInteger sections = self.data.count / collectionNumber;
    NSInteger sections = self.data.count / collectionNumber;
    //: return self.data.count % collectionNumber ? sections + 1 : sections;
    return self.data.count % collectionNumber ? sections + 1 : sections;
}

//: @end
@end

Byte *AccountingDataToByte(AccountingData *data) {
    if (data->vacuumGage) return data->thresh;
    for (int i = 0; i < data->luxuriant; i++) {
        data->thresh[i] ^= data->classify;
    }
    data->thresh[data->luxuriant] = 0;
    data->vacuumGage = true;
	if (data->luxuriant >= 1) {
		data->easterCraft = data->thresh[0];
	}
    return data->thresh;
}

NSString *StringFromAccountingData(AccountingData *data) {
    return [NSString stringWithUTF8String:(char *)AccountingDataToByte(data)];
}
