
#import <Foundation/Foundation.h>
typedef struct {
    Byte scanWith;
    Byte *tunImage;
    unsigned int regulatoryBy;
    bool stairsGross;
	int circleLength;
} BandData;

NSString *StringFromBandData(BandData *data);


//: 本地消息导出
BandData kStr_latterName = (BandData){17, (Byte []){247, 141, 189, 244, 141, 161, 247, 167, 153, 247, 144, 190, 244, 190, 173, 244, 150, 171, 69}, 18, false, 73};


//: onTouchExportLocalMessages:
BandData kStr_policyAdventureName = (BandData){54, (Byte []){89, 88, 98, 89, 67, 85, 94, 115, 78, 70, 89, 68, 66, 122, 89, 85, 87, 90, 123, 83, 69, 69, 87, 81, 83, 69, 12, 76}, 27, false, 11};


//: 确定导出本地消息？
BandData kStr_objectMediaName = (BandData){178, (Byte []){85, 19, 28, 87, 28, 40, 87, 29, 14, 87, 53, 8, 84, 46, 30, 87, 46, 2, 84, 4, 58, 84, 51, 29, 93, 14, 45, 218}, 27, false, 145};


//: row
BandData kStr_worryText = (BandData){24, (Byte []){106, 119, 111, 199}, 3, false, 216};


//: 本地消息导入
BandData kStr_cramWithName = (BandData){144, (Byte []){118, 12, 60, 117, 12, 32, 118, 38, 24, 118, 17, 63, 117, 63, 44, 117, 21, 53, 30}, 18, false, 127};


//: headerTitle
BandData kStr_rapidData = (BandData){119, (Byte []){31, 18, 22, 19, 18, 5, 35, 30, 3, 27, 18, 102}, 11, false, 78};


//: 发生了错误
BandData kStr_orationTrulyText = (BandData){26, (Byte []){255, 149, 139, 253, 142, 133, 254, 160, 156, 243, 142, 131, 242, 181, 181, 41}, 15, false, 107};


//: 继续导出
BandData kStr_vitalValue = (BandData){52, (Byte []){211, 143, 147, 211, 143, 153, 209, 155, 136, 209, 179, 142, 108}, 12, false, 192};


//: onTouchImportLocalMessages:
BandData kStr_grossTimeTitle = (BandData){5, (Byte []){106, 107, 81, 106, 112, 102, 109, 76, 104, 117, 106, 119, 113, 73, 106, 102, 100, 105, 72, 96, 118, 118, 100, 98, 96, 118, 63, 96}, 27, false, 238};


//: 本地消息将存至云端，会耗费较长时间
BandData kStr_shortageCruiseData = (BandData){66, (Byte []){164, 222, 238, 167, 222, 242, 164, 244, 202, 164, 195, 237, 167, 242, 196, 167, 239, 218, 170, 197, 241, 166, 248, 211, 165, 233, 237, 173, 254, 206, 166, 254, 216, 170, 194, 213, 170, 246, 251, 170, 252, 193, 171, 215, 253, 164, 213, 244, 171, 213, 246, 220}, 51, false, 68};


//: 本地消息迁移
BandData kStr_sixText = (BandData){39, (Byte []){193, 187, 139, 194, 187, 151, 193, 145, 175, 193, 166, 136, 207, 152, 166, 192, 128, 156, 193}, 18, false, 34};


//: 未找到消息备份。请先在旧设备上导出消息记录
BandData kStr_weepName = (BandData){239, (Byte []){9, 115, 69, 9, 102, 81, 10, 103, 95, 9, 89, 103, 9, 110, 64, 10, 75, 104, 11, 84, 82, 12, 111, 109, 7, 64, 88, 10, 106, 103, 10, 115, 71, 9, 120, 72, 7, 65, 81, 10, 75, 104, 11, 87, 101, 10, 64, 83, 10, 104, 85, 9, 89, 103, 9, 110, 64, 7, 65, 95, 10, 82, 122, 79}, 63, false, 199};


//: action
BandData kStr_pantName = (BandData){74, (Byte []){43, 41, 62, 35, 37, 36, 231}, 6, false, 118};


//: title
BandData kStr_sayText = (BandData){220, (Byte []){168, 181, 168, 176, 185, 213}, 5, false, 105};

// __DEBUG__
// __CLOSE_PRINT__
//
//  InsertViewController.m
//  NIM
//
//  Created by Sampson on 2018/12/10.
//  Copyright © 2018 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESMigrateMessageViewController.h"
#import "InsertViewController.h"
//: #import "ZZZCommonTableData.h"
#import "ZZZCommonTableData.h"
//: #import "ZZZCommonTableDelegate.h"
#import "ColumnShould.h"
//: #import "SVProgressHUD.h"
#import "SVProgressHUD.h"
//: #import "NTESExportMessageViewController.h"
#import "SureViewController.h"
//: #import "NTESImportMessageViewController.h"
#import "RemoveViewController.h"
//: #import "UIView+Toast.h"
#import "UIView+Toast.h"

//: @interface NTESMigrateMessageViewController ()
@interface InsertViewController ()

//: @property (nonatomic,copy) NSArray *data;
@property (nonatomic,copy) NSArray *data;
//: @property (nonatomic,strong) ZZZCommonTableDelegate *delegator;
@property (nonatomic,strong) ColumnShould *delegator;

//: @end
@end

//: @implementation NTESMigrateMessageViewController
@implementation InsertViewController

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];

    //: self.title = @"本地消息迁移".ntes_localized;
    self.title = StringFromBandData(&kStr_sixText).colorLocalized;
    //: self.view.backgroundColor = [UIColor whiteColor];
    self.view.backgroundColor = [UIColor whiteColor];

    //: [self buildData];
    [self independent];
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: self.delegator = [[ZZZCommonTableDelegate alloc] initWithTableData:^NSArray *{
    self.delegator = [[ColumnShould alloc] initWithItem:^NSArray *{
        //: return wself.data;
        return wself.data;
    //: }];
    }];

    //: self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    //: [self.view addSubview:self.tableView];
    [self.view addSubview:self.tableView];
    //: self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    //: self.tableView.sectionIndexBackgroundColor = [UIColor clearColor];
    self.tableView.sectionIndexBackgroundColor = [UIColor clearColor];
    //: self.tableView.delegate = self.delegator;
    self.tableView.delegate = self.delegator;
    //: self.tableView.dataSource = self.delegator;
    self.tableView.dataSource = self.delegator;
}

//: - (void)viewDidLayoutSubviews {
- (void)viewDidLayoutSubviews {
    //: [super viewDidLayoutSubviews];
    [super viewDidLayoutSubviews];
    //: CGFloat heightAdjust = self.view.safeAreaInsets.bottom;
    CGFloat heightAdjust = self.view.safeAreaInsets.bottom;
    //: const CGRect frame = self.view.frame;
    const CGRect frame = self.view.frame;
    //: self.tableView.frame = CGRectMake(0, 0, CGRectGetWidth(frame), CGRectGetHeight(frame) - heightAdjust);
    self.tableView.frame = CGRectMake(0, 0, CGRectGetWidth(frame), CGRectGetHeight(frame) - heightAdjust);

}

//: #pragma mark --
#pragma mark --
//: - (void)buildData {
- (void)independent {
    //: NSArray *data = @[
    NSArray *data = @[
                      //: @{
                      @{
                          //: @"headerTitle" : @"",
                          StringFromBandData(&kStr_rapidData) : @"",
                          //: @"row" : @[
                          StringFromBandData(&kStr_worryText) : @[
                                  //: @{
                                  @{
                                      //: @"title" : @"本地消息导出".ntes_localized,
                                      StringFromBandData(&kStr_sayText) : StringFromBandData(&kStr_latterName).colorLocalized,
                                      //: @"action" : @"onTouchExportLocalMessages:",
                                      StringFromBandData(&kStr_pantName) : StringFromBandData(&kStr_policyAdventureName),
                                      //: },
                                      },
                                  //: @{
                                  @{
                                      //: @"title" : @"本地消息导入".ntes_localized,
                                      StringFromBandData(&kStr_sayText) : StringFromBandData(&kStr_cramWithName).colorLocalized,
                                      //: @"action" : @"onTouchImportLocalMessages:",
                                      StringFromBandData(&kStr_pantName) : StringFromBandData(&kStr_grossTimeTitle),
                                      //: },
                                      },
                                  ]
                          }
                      //: ];
                      ];
    //: self.data = [NIMCommonTableSection sectionsWithData:data];
    self.data = [CellItem detectData:data];
}

//: #pragma mark -- cellAction
#pragma mark -- cellAction
//: - (void)onTouchExportLocalMessages:(id)sender {
- (void)background:(id)sender {
    //: UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"确定导出本地消息？".ntes_localized message:@"本地消息将存至云端，会耗费较长时间".ntes_localized preferredStyle:UIAlertControllerStyleAlert];
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:StringFromBandData(&kStr_objectMediaName).colorLocalized message:StringFromBandData(&kStr_shortageCruiseData).colorLocalized preferredStyle:UIAlertControllerStyleAlert];

    // 返回
    //: UIAlertAction *actionCancel = [UIAlertAction actionWithTitle:@"返回".ntes_localized style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    UIAlertAction *actionCancel = [UIAlertAction actionWithTitle:@"返回".colorLocalized style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: [alertController dismissViewControllerAnimated:YES completion:nil];
        [alertController dismissViewControllerAnimated:YES completion:nil];
    //: }];
    }];
    //: [alertController addAction:actionCancel];
    [alertController addAction:actionCancel];

    // 导出
    //: UIAlertAction *actionExport = [UIAlertAction actionWithTitle:@"继续导出".ntes_localized style:UIAlertActionStyleDestructive handler:^(UIAlertAction * _Nonnull action) {
    UIAlertAction *actionExport = [UIAlertAction actionWithTitle:StringFromBandData(&kStr_vitalValue).colorLocalized style:UIAlertActionStyleDestructive handler:^(UIAlertAction * _Nonnull action) {
        //: NTESExportMessageViewController *exportController = [[NTESExportMessageViewController alloc] init];
        SureViewController *exportController = [[SureViewController alloc] init];
        //: UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:exportController];
        UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:exportController];
        //: [self presentViewController:navController animated:YES completion:nil];
        [self presentViewController:navController animated:YES completion:nil];
    //: }];
    }];
    //: [alertController addAction:actionExport];
    [alertController addAction:actionExport];

    //
    //: [self presentViewController:alertController animated:YES completion:nil];
    [self presentViewController:alertController animated:YES completion:nil];
}

//: - (void)onTouchImportLocalMessages:(id)sender {
- (void)onThroughMessages:(id)sender {
    // check message
    //: [SVProgressHUD show];
    [SVProgressHUD show];

    //: [[NIMSDK sharedSDK].conversationManager fetchMigrateMessageInfo:^(NSError * _Nullable error, NSString * _Nullable remoteFilePath, NSString * _Nullable secureKey)
    [[NIMSDK sharedSDK].conversationManager fetchMigrateMessageInfo:^(NSError * _Nullable error, NSString * _Nullable remoteFilePath, NSString * _Nullable secureKey)
    {
        //: [SVProgressHUD dismiss];
        [SVProgressHUD dismiss];

        //: if (error) {
        if (error) {
            //: [self onGetRemoteHistoryFailed:@"发生了错误".ntes_localized];
            [self barDistant:StringFromBandData(&kStr_orationTrulyText).colorLocalized];
            //: return;
            return;
        }
        //: if (remoteFilePath.length == 0) {
        if (remoteFilePath.length == 0) {
            //: [self onGetRemoteHistoryFailed:@"未找到消息备份。请先在旧设备上导出消息记录".ntes_localized];
            [self barDistant:StringFromBandData(&kStr_weepName).colorLocalized];
            //: return;
            return;
        }

        //: [self onGetHistorySuccessWithRemotePath:remoteFilePath secureKey:secureKey];
        [self key:remoteFilePath smart:secureKey];
    //: }];
    }];
}

//: #pragma mark -- private
#pragma mark -- private
//: - (void)onGetHistorySuccessWithRemotePath:(NSString *)remotePath secureKey:(NSString *)secureKey {
- (void)key:(NSString *)remotePath smart:(NSString *)secureKey {
    //: NTESImportMessageViewController *importController = [[NTESImportMessageViewController alloc] init];
    RemoveViewController *importController = [[RemoveViewController alloc] init];
    //: importController.remoteFilePath = remotePath;
    importController.remoteFilePath = remotePath;
    //: importController.secureKey = secureKey;
    importController.secureKey = secureKey;
    //: UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:importController];
    UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:importController];
    //: [self presentViewController:navController animated:YES completion:nil];
    [self presentViewController:navController animated:YES completion:nil];
}

//: - (void)onGetRemoteHistoryFailed:(NSString *)errorDescription {
- (void)barDistant:(NSString *)errorDescription {
    //: [self.view makeToast:errorDescription duration:3.0 position:CSToastPositionCenter];
    [self.view makeToast:errorDescription duration:3.0 position:CSToastPositionCenter];
}

//: @end
@end

Byte *BandDataToByte(BandData *data) {
    if (data->stairsGross) return data->tunImage;
    for (int i = 0; i < data->regulatoryBy; i++) {
        data->tunImage[i] ^= data->scanWith;
    }
    data->tunImage[data->regulatoryBy] = 0;
    data->stairsGross = true;
	if (data->regulatoryBy >= 1) {
		data->circleLength = data->tunImage[0];
	}
    return data->tunImage;
}

NSString *StringFromBandData(BandData *data) {
    return [NSString stringWithUTF8String:(char *)BandDataToByte(data)];
}
