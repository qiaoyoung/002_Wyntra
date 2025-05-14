
#import <Foundation/Foundation.h>

NSString *StringFromYardData(Byte *data);


//: cell
Byte kStr_sumData[] = {47, 4, 4, 54, 108, 108, 101, 99, 198};


//: Members_of_the_banned
Byte kStr_outsideHostageViewValue[] = {71, 21, 9, 125, 121, 135, 73, 19, 248, 100, 101, 110, 110, 97, 98, 95, 101, 104, 116, 95, 102, 111, 95, 115, 114, 101, 98, 109, 101, 77, 116};


//: 获取禁言列表失败:%zd
Byte kStr_powerfulTitle[] = {75, 28, 5, 118, 216, 100, 122, 37, 58, 165, 180, 232, 177, 164, 229, 168, 161, 232, 151, 136, 229, 128, 168, 232, 129, 166, 231, 150, 143, 229, 183, 142, 232, 207};

// __DEBUG__
// __CLOSE_PRINT__
//
//  ShareUpgradeViewController.m
// On
//
//  Created by Genning-Work on 2019/12/13.
//  Copyright © 2019 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZZZTeamMuteMemberListViewController.h"
#import "ShareUpgradeViewController.h"
//: #import "ZZZTeamMemberCardViewController.h"
#import "PathPinViewController.h"
//: #import "ZZZCardHeaderCell.h"
#import "DisenableView.h"
//: #import "ZZZTeamCardMemberItem.h"
#import "WithQuantityerval.h"
//: #import "DataKitDependency.h"
#import "DataKitDependency.h"
//: #import "ZZZKitProgressHUD.h"
#import "DevelopmentColorView.h"
//: #import "NSString+AppleProjectKit.h"
#import "NSString+On.h"

//: static NSInteger kCollectionItemWidth = 55;
static NSInteger kConst_keyName = 55;
//: static NSInteger kCollectionItemHeight = 80;
static NSInteger kConst_dataValue = 80;
//: static NSInteger kCollectionEdgeInsetLeftRight = 20;
static NSInteger kConst_outsideTitle = 20;
//: static NSInteger kCollectionEdgeInsetTopFirstLine = 25;
static NSInteger kConst_arrowValue = 25;
//: static NSInteger kCollectionEdgeInsetTop = 15;
static NSInteger kConst_teamValue = 15;

//: @interface ZZZTeamMuteMemberListViewController ()<UICollectionViewDelegate,
@interface ShareUpgradeViewController ()<UICollectionViewDelegate,
                                                  //: UICollectionViewDataSource,
                                                  UICollectionViewDataSource,
                                                  //: ZZZCardHeaderCellDelegate,
                                                  MinorityDelegate,
                                                  //: NIMTeamMemberCardActionDelegate>
                                                  ViewSuggest>

//: @property (nonatomic, strong) UICollectionView *collectionView;
@property (nonatomic, strong) UICollectionView *collectionView;
//: @property (nonatomic, weak) id <ZZZTeamMemberListDataSource> dataSource;
@property (nonatomic, weak) id <IndependentSource> dataSource;
//: @property (nonatomic, strong) NSMutableArray<ZZZTeamCardMemberItem *> *members;
@property (nonatomic, strong) NSMutableArray<WithQuantityerval *> *members;

//: @end
@end

//: @implementation ZZZTeamMuteMemberListViewController
@implementation ShareUpgradeViewController
//: - (instancetype)initWithDataSource:(id<ZZZTeamMemberListDataSource>)dataSource {
- (instancetype)initWithMediaToSource:(id<IndependentSource>)dataSource {
    //: self = [super initWithNibName:nil bundle:nil];
    self = [super initWithNibName:nil bundle:nil];
    //: if (self) {
    if (self) {
        //: _dataSource = dataSource;
        _dataSource = dataSource;
    }
    //: return self;
    return self;
}

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: [self setupUI];
    [self readModel];
    //: [self loadData];
    [self styleScheme];
}

//: - (void)refreshPage {
- (void)image {
    //: self.navigationItem.title = [NSString stringWithFormat:@"%@(%zd)".nim_localized,[NTESLanguageManager getTextWithKey:@"Members_of_the_banned"], _members.count];
    self.navigationItem.title = [NSString stringWithFormat:@"%@(%zd)".start,[LabelCell tinkleKey:StringFromYardData(kStr_outsideHostageViewValue)], _members.count];
}

//: - (void)setupUI {
- (void)readModel {
    //: self.navigationItem.title = [NTESLanguageManager getTextWithKey:@"Members_of_the_banned"];
    self.navigationItem.title = [LabelCell tinkleKey:StringFromYardData(kStr_outsideHostageViewValue)];//@"禁言成员".nim_localized;
    //: [self.view addSubview:self.collectionView];
    [self.view addSubview:self.collectionView];
}

//: - (void)loadData {
- (void)styleScheme {
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [_dataSource fetchTeamMutedMembersCompletion:^(NSError *error, NSMutableArray<ZZZTeamCardMemberItem *> *members) {
    [_dataSource changeShow:^(NSError *error, NSMutableArray<WithQuantityerval *> *members) {
        //: if (error) {
        if (error) {
            //: NSString *msg = [NSString stringWithFormat:@"获取禁言列表失败:%zd".nim_localized, error.code];
            NSString *msg = [NSString stringWithFormat:StringFromYardData(kStr_powerfulTitle).start, error.code];
            //: [weakSelf.view makeToast:msg duration:1.5 position:CSToastPositionCenter];
            [weakSelf.view makeToast:msg duration:1.5 position:CSToastPositionCenter];
        //: } else {
        } else {
            //: weakSelf.members = members;
            weakSelf.members = members;
            //: [weakSelf refreshPage];
            [weakSelf image];
        }
    //: }];
    }];
}

//: - (void)setMembers:(NSMutableArray<ZZZTeamCardMemberItem *> *)members {
- (void)setMembers:(NSMutableArray<WithQuantityerval *> *)members {
    //: _members = members;
    _members = members;
    //: [_collectionView reloadData];
    [_collectionView reloadData];
}

//: #pragma mark - UICollectionViewDataSource
#pragma mark - UICollectionViewDataSource
//: - (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    //: return _members.count;
    return _members.count;
}

//: - (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    //: ZZZCardHeaderCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    DisenableView *cell = [collectionView dequeueReusableCellWithReuseIdentifier:StringFromYardData(kStr_sumData) forIndexPath:indexPath];
    //: cell.delegate = self;
    cell.delegate = self;
    //: id<NIMKitCardHeaderData> data = _members[indexPath.row];
    id<NIMKitCardHeaderData> data = _members[indexPath.row];
    //: [cell refreshData:data];
    [cell refresh:data];
    //: return cell;
    return cell;
}

//: #pragma mark - UICollectionViewDelegateFlowLayout
#pragma mark - UICollectionViewDelegateFlowLayout
//: - (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
- (CGSize)range_strong:(UICollectionView *)collectionView vanguard:(UICollectionViewLayout*)collectionViewLayout layoutSession:(NSIndexPath *)indexPath{
    //: return CGSizeMake(kCollectionItemWidth, kCollectionItemHeight);
    return CGSizeMake(kConst_keyName, kConst_dataValue);
}

//: - (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout insetForSectionAtIndex:(NSInteger)section{
- (UIEdgeInsets)message:(UICollectionView *)collectionView cross:(UICollectionViewLayout*)collectionViewLayout pinTeamMark:(NSInteger)section{
    //: if (section == 0) {
    if (section == 0) {
        //: return UIEdgeInsetsMake(kCollectionEdgeInsetTopFirstLine, 0, 0, 0);
        return UIEdgeInsetsMake(kConst_arrowValue, 0, 0, 0);
    }
    //: return UIEdgeInsetsMake(kCollectionEdgeInsetTop, 0, 0, 0);
    return UIEdgeInsetsMake(kConst_teamValue, 0, 0, 0);
}

//: #pragma mark - ZZZCardHeaderCellDelegate
#pragma mark - MinorityDelegate
//: - (void)cellDidSelected:(ZZZCardHeaderCell*)cell{
- (void)scaleValue:(DisenableView*)cell{
    //: NSIndexPath *indexpath = [self.collectionView indexPathForCell:cell];
    NSIndexPath *indexpath = [self.collectionView indexPathForCell:cell];
    //: ZZZTeamCardMemberItem *member = _members[indexpath.row];
    WithQuantityerval *member = _members[indexpath.row];
    //: ZZZTeamMemberCardViewController *vc = [[ZZZTeamMemberCardViewController alloc] initWithMember:member.userId
    PathPinViewController *vc = [[PathPinViewController alloc] initWithPast:member.userId
                                                                                       //: dataSource:_dataSource];
                                                                                       quantityUser:_dataSource];
    //: vc.delegate = self;
    vc.delegate = self;
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: #pragma mark - TeamMemberCardActionDelegate
#pragma mark - TeamMemberCardActionDelegate
//: - (void)onTeamMemberKicked:(ZZZTeamCardMemberItem *)member {
- (void)teamMemberOnMessage:(WithQuantityerval *)member {
    //: [_members removeObject:member];
    [_members removeObject:member];
    //: [_collectionView reloadData];
    [_collectionView reloadData];
}

//: - (void)onTeamMemberMuted:(ZZZTeamCardMemberItem *)member mute:(BOOL)mute {
- (void)be:(WithQuantityerval *)member addDoing:(BOOL)mute {
    //: if (!mute) {
    if (!mute) {
        //: [_members removeObject:member];
        [_members removeObject:member];
    //: } else {
    } else {
        //: [_members addObject:member];
        [_members addObject:member];
    }
    //: [_collectionView reloadData];
    [_collectionView reloadData];
}

//: #pragma mark - 旋转处理 (iOS8 or above)
#pragma mark - 旋转处理 (iOS8 or above)
//: - (void)viewWillTransitionToSize:(CGSize)size
- (void)viewWillTransitionToSize:(CGSize)size
       //: withTransitionCoordinator:(id<UIViewControllerTransitionCoordinator>)coordinator
       withTransitionCoordinator:(id<UIViewControllerTransitionCoordinator>)coordinator
{
    //: UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
    UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
    //: flowLayout.minimumInteritemSpacing = kCollectionEdgeInsetLeftRight;
    flowLayout.minimumInteritemSpacing = kConst_outsideTitle;
    //: [self.collectionView setCollectionViewLayout:flowLayout animated:YES];
    [self.collectionView setCollectionViewLayout:flowLayout animated:YES];

    //: [super viewWillTransitionToSize:size withTransitionCoordinator:coordinator];
    [super viewWillTransitionToSize:size withTransitionCoordinator:coordinator];
    //: [coordinator animateAlongsideTransition:^(id <UIViewControllerTransitionCoordinatorContext> context)
    [coordinator animateAlongsideTransition:^(id <UIViewControllerTransitionCoordinatorContext> context)
     {
         //: [self.collectionView reloadData];
         [self.collectionView reloadData];
     //: } completion:nil];
     } completion:nil];
}

//: #pragma mark - Private
#pragma mark - Private
//: - (UICollectionView *)collectionView {
- (UICollectionView *)collectionView {
    //: if (!_collectionView) {
    if (!_collectionView) {
        //: UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
        UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
        //: _collectionView = [[UICollectionView alloc] initWithFrame:self.view.bounds collectionViewLayout:flowLayout];
        _collectionView = [[UICollectionView alloc] initWithFrame:self.view.bounds collectionViewLayout:flowLayout];
        //: flowLayout.minimumInteritemSpacing = kCollectionEdgeInsetLeftRight;
        flowLayout.minimumInteritemSpacing = kConst_outsideTitle;
        //: _collectionView.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
        _collectionView.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
        //: _collectionView.backgroundColor = [UIColor colorWithRed:236.0/255.0 green:241.0/255.0 blue:245.0/255.0 alpha:1];
        _collectionView.backgroundColor = [UIColor colorWithRed:236.0/255.0 green:241.0/255.0 blue:245.0/255.0 alpha:1];
        //: _collectionView.delegate = self;
        _collectionView.delegate = self;
        //: _collectionView.dataSource = self;
        _collectionView.dataSource = self;
        //: [_collectionView registerClass:[ZZZCardHeaderCell class] forCellWithReuseIdentifier:@"cell"];
        [_collectionView registerClass:[DisenableView class] forCellWithReuseIdentifier:StringFromYardData(kStr_sumData)];
        //: _collectionView.contentInset = UIEdgeInsetsMake(self.collectionView.contentInset.top,
        _collectionView.contentInset = UIEdgeInsetsMake(self.collectionView.contentInset.top,
                                                        //: kCollectionEdgeInsetLeftRight,
                                                        kConst_outsideTitle,
                                                        //: _collectionView.contentInset.bottom,
                                                        _collectionView.contentInset.bottom,
                                                        //: kCollectionEdgeInsetLeftRight);
                                                        kConst_outsideTitle);
    }
    //: return _collectionView;
    return _collectionView;
}

//: - (NSInteger)itemCountPerPage {
- (NSInteger)onPage {
    //: CGFloat minSpace = 20.f; 
    CGFloat minSpace = 20.f; //防止计算到最后出现左右贴边的情况
    //: NSInteger lines = (self.collectionView.frame.size.width - minSpace)/ (kCollectionItemWidth + kCollectionEdgeInsetLeftRight);
    NSInteger lines = (self.collectionView.frame.size.width - minSpace)/ (kConst_keyName + kConst_outsideTitle);
    //: NSInteger rows = (self.collectionView.frame.size.height - minSpace)/(kCollectionItemHeight + kCollectionEdgeInsetLeftRight);
    NSInteger rows = (self.collectionView.frame.size.height - minSpace)/(kConst_dataValue + kConst_outsideTitle);
    //: return rows * lines;
    return rows * lines;
}


//: @end
@end

Byte * YardDataToCache(Byte *data) {
    int marry = data[0];
    int nonprofit = data[1];
    int administrativeBody = data[2];
    if (!marry) return data + administrativeBody;
    for (int i = 0; i < nonprofit / 2; i++) {
        int begin = administrativeBody + i;
        int end = administrativeBody + nonprofit - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[administrativeBody + nonprofit] = 0;
    return data + administrativeBody;
}

NSString *StringFromYardData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)YardDataToCache(data)];
}  
