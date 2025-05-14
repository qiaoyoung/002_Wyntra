
#import <Foundation/Foundation.h>

NSString *StringFromMedicineData(Byte *data);


//: 下载消息文件失败
Byte kStr_engineName[] = {89, 24, 7, 252, 184, 211, 21, 165, 180, 232, 177, 164, 229, 182, 187, 228, 135, 150, 230, 175, 129, 230, 136, 182, 230, 189, 189, 232, 139, 184, 228, 134};


//: 解压失败
Byte kStr_vitalData[] = {91, 12, 8, 91, 243, 190, 203, 71, 165, 180, 232, 177, 164, 229, 139, 142, 229, 163, 167, 232, 28};


//: 导入失败！
Byte kStr_lengthSelectedValue[] = {23, 15, 11, 20, 158, 229, 177, 197, 30, 147, 173, 129, 188, 239, 165, 180, 232, 177, 164, 229, 165, 133, 229, 188, 175, 229, 118};


//: 返回会话列表
Byte kStr_historyWeepValue[] = {42, 18, 6, 5, 246, 83, 168, 161, 232, 151, 136, 229, 157, 175, 232, 154, 188, 228, 158, 155, 229, 148, 191, 232, 251};


//: zip
Byte kStr_payerTitleText[] = {25, 3, 10, 230, 237, 147, 252, 207, 212, 13, 112, 105, 122, 252};


//: 消息导入成功
Byte kStr_veteranText[] = {54, 18, 6, 22, 18, 41, 159, 138, 229, 144, 136, 230, 165, 133, 229, 188, 175, 229, 175, 129, 230, 136, 182, 230, 137};


//: iOS-zip-aes256
Byte kStr_combineHostageValue[] = {45, 14, 5, 158, 130, 54, 53, 50, 115, 101, 97, 45, 112, 105, 122, 45, 83, 79, 105, 30};


//: unzip
Byte kStr_elsewhereWithText[] = {89, 5, 7, 5, 167, 108, 207, 112, 105, 122, 110, 117, 23};


//: 取消导入
Byte kStr_midstTitle[] = {52, 12, 5, 176, 157, 165, 133, 229, 188, 175, 229, 136, 182, 230, 150, 143, 229, 81};


//: NIM
Byte kStr_resideValue[] = {67, 3, 4, 105, 77, 73, 78, 63};


//: 合并失败
Byte kStr_voterViaValue[] = {87, 12, 5, 232, 93, 165, 180, 232, 177, 164, 229, 182, 185, 229, 136, 144, 229, 150};


//: 确定要取消导入？
Byte kStr_byAccountValue[] = {29, 24, 6, 198, 175, 174, 159, 188, 239, 165, 133, 229, 188, 175, 229, 136, 182, 230, 150, 143, 229, 129, 166, 232, 154, 174, 229, 174, 161, 231, 142};


//: 继续导入
Byte kStr_stainData[] = {93, 12, 5, 134, 30, 165, 133, 229, 188, 175, 229, 173, 187, 231, 167, 187, 231, 222};


//: 本地消息导入
Byte kStr_scanElderlyName[] = {83, 18, 6, 151, 51, 189, 165, 133, 229, 188, 175, 229, 175, 129, 230, 136, 182, 230, 176, 156, 229, 172, 156, 230, 119};


//: 导入本地消息需要较长时间，请耐心等待
Byte kStr_introduceData[] = {95, 54, 11, 168, 43, 160, 54, 138, 92, 221, 10, 133, 190, 229, 137, 173, 231, 131, 191, 229, 144, 128, 232, 183, 175, 232, 140, 188, 239, 180, 151, 233, 182, 151, 230, 191, 149, 233, 131, 190, 232, 129, 166, 232, 128, 156, 233, 175, 129, 230, 136, 182, 230, 176, 156, 229, 172, 156, 230, 165, 133, 229, 188, 175, 229, 77};


//: decryped
Byte kStr_redCurData[] = {77, 8, 10, 210, 50, 193, 143, 34, 178, 2, 100, 101, 112, 121, 114, 99, 101, 100, 202};


//: 重新导入
Byte kStr_moveTitle[] = {13, 12, 5, 39, 226, 165, 133, 229, 188, 175, 229, 176, 150, 230, 141, 135, 233, 230};


//: 恭喜你
Byte kStr_conscienceVitalHouseValue[] = {6, 9, 11, 172, 84, 225, 223, 14, 90, 113, 201, 160, 189, 228, 156, 150, 229, 173, 129, 230, 142};

// __DEBUG__
// __CLOSE_PRINT__
//
//  RemoveViewController.m
//  NIM
//
//  Created by Sampson on 2018/12/10.
//  Copyright © 2018 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESImportMessageViewController.h"
#import "RemoveViewController.h"
//: #import "NTESMigrateProgressView.h"
#import "ShowView.h"
//: #import "NTESMigrateCompleteView.h"
#import "MaxView.h"
//: #import "NSData+NTES.h"
#import "NSData+Item.h"
//: #import "NTESImportMessageDelegateImpl.h"
#import "ColouredWith.h"
//: #import <SVProgressHUD/SVProgressHUD.h>
#import <SVProgressHUD/SVProgressHUD.h>
//: #import "NTESMainTabController.h"
#import "SumBarController.h"

//: static NSString * const aesVectorString = @"0123456789012345";
static NSString * const kConst_sessionText = @"0123456789012345";

//: @interface NTESImportMessageViewController ()
@interface RemoveViewController ()

//: @property (nonatomic, strong) UIView *contentView;
@property (nonatomic, strong) UIView *contentView;
//: @property (nonatomic, weak) UIAlertController *curAlertController;
@property (nonatomic, weak) UIAlertController *curAlertController;

//: @end
@end

//: @implementation NTESImportMessageViewController
@implementation RemoveViewController

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];

    //: self.view.backgroundColor = [UIColor colorWithWhite:0.3 alpha:1];
    self.view.backgroundColor = [UIColor colorWithWhite:0.3 alpha:1];
    //: self.title = @"本地消息导入".ntes_localized;
    self.title = StringFromMedicineData(kStr_scanElderlyName).colorLocalized;

    //: NTESMigrateProgressView *progressView = [[NTESMigrateProgressView alloc] initWithFrame:self.view.bounds];
    ShowView *progressView = [[ShowView alloc] initWithFrame:self.view.bounds];
    //: [progressView.stopButton addTarget:self action:@selector(onCancelButton:) forControlEvents:UIControlEventTouchUpInside];
    [progressView.stopButton addTarget:self action:@selector(asUp:) forControlEvents:UIControlEventTouchUpInside];
    //: progressView.tip = @"导入本地消息需要较长时间，请耐心等待".ntes_localized;
    progressView.tip = StringFromMedicineData(kStr_introduceData).colorLocalized;
    //: self.contentView = progressView;
    self.contentView = progressView;

    //: [self downloadRemoteFile];
    [self ting];
}

//: - (void)viewDidLayoutSubviews {
- (void)viewDidLayoutSubviews {
    //: [super viewDidLayoutSubviews];
    [super viewDidLayoutSubviews];

    //: const CGRect bounds = self.view.bounds;
    const CGRect bounds = self.view.bounds;
    //: self.contentView.frame = bounds;
    self.contentView.frame = bounds;
}

//: - (void)setContentView:(UIView *)contentView {
- (void)setContentView:(UIView *)contentView {
    //: if (_contentView == contentView) {
    if (_contentView == contentView) {
        //: return;
        return;
    }
    //: if (contentView) {
    if (contentView) {
        //: [self.view addSubview:contentView];
        [self.view addSubview:contentView];
    }
    //: if (_contentView) {
    if (_contentView) {
        //: [_contentView removeFromSuperview];
        [_contentView removeFromSuperview];
    }
    //: _contentView = contentView;
    _contentView = contentView;
}

//: #pragma mark -- action
#pragma mark -- action
//: - (void)onCancelButton:(id)sender {
- (void)asUp:(id)sender {
    //: UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"确定要取消导入？".ntes_localized message:nil preferredStyle:UIAlertControllerStyleAlert];
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:StringFromMedicineData(kStr_byAccountValue).colorLocalized message:nil preferredStyle:UIAlertControllerStyleAlert];

    // 取消导入
    //: UIAlertAction *actionCancel = [UIAlertAction actionWithTitle:@"取消导入".ntes_localized style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    UIAlertAction *actionCancel = [UIAlertAction actionWithTitle:StringFromMedicineData(kStr_midstTitle).colorLocalized style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: [self dismissViewControllerAnimated:YES completion:nil];
        [self dismissViewControllerAnimated:YES completion:nil];
        //: [[NIMSDK sharedSDK].conversationManager cancelMigrateMessages];
        [[NIMSDK sharedSDK].conversationManager cancelMigrateMessages];
    //: }];
    }];
    //: [alertController addAction:actionCancel];
    [alertController addAction:actionCancel];

    // 继续导入
    //: UIAlertAction *actionGoon = [UIAlertAction actionWithTitle:@"继续导入".ntes_localized style:UIAlertActionStyleDestructive handler:^(UIAlertAction * _Nonnull action) {
    UIAlertAction *actionGoon = [UIAlertAction actionWithTitle:StringFromMedicineData(kStr_stainData).colorLocalized style:UIAlertActionStyleDestructive handler:^(UIAlertAction * _Nonnull action) {
        //: [alertController dismissViewControllerAnimated:YES completion:nil];
        [alertController dismissViewControllerAnimated:YES completion:nil];
    //: }];
    }];
    //: [alertController addAction:actionGoon];
    [alertController addAction:actionGoon];

    //
    //: [self presentViewController:alertController animated:YES completion:nil];
    [self presentViewController:alertController animated:YES completion:nil];
    //: self.curAlertController = alertController;
    self.curAlertController = alertController;
}

//: - (void)onReturnButton:(id)sender {
- (void)fastenerAdd:(id)sender {
    //: [self dismissViewControllerAnimated:YES completion:nil];
    [self dismissViewControllerAnimated:YES completion:nil];

    // 返回到会话页
    //: NTESMainTabController *tabController = [NTESMainTabController instance];
    SumBarController *tabController = [SumBarController displayName];
    //: UIViewController *selectedVC = tabController.selectedViewController;
    UIViewController *selectedVC = tabController.selectedViewController;
    //: if ([selectedVC isKindOfClass:[UINavigationController class]]) {
    if ([selectedVC isKindOfClass:[UINavigationController class]]) {
        //: [((UINavigationController *)selectedVC) popToRootViewControllerAnimated:NO];
        [((UINavigationController *)selectedVC) popToRootViewControllerAnimated:NO];
    }
    //: tabController.selectedIndex = 0;
    tabController.selectedIndex = 0;
}

//: #pragma mark -- private
#pragma mark -- private
//: - (void)onImportFailed:(NSError *)error description:(NSString *)description {
- (void)spec:(NSError *)error at:(NSString *)description {
    //: UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"导入失败！".ntes_localized message:description preferredStyle:UIAlertControllerStyleAlert];
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:StringFromMedicineData(kStr_lengthSelectedValue).colorLocalized message:description preferredStyle:UIAlertControllerStyleAlert];

    // 返回
    //: UIAlertAction *actionReturn = [UIAlertAction actionWithTitle:@"返回".ntes_localized style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    UIAlertAction *actionReturn = [UIAlertAction actionWithTitle:@"返回".colorLocalized style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: [self dismissViewControllerAnimated:YES completion:nil];
        [self dismissViewControllerAnimated:YES completion:nil];
        // todo 导航
    //: }];
    }];
    //: [alertController addAction:actionReturn];
    [alertController addAction:actionReturn];

    // 重新导入
    //: UIAlertAction *actionRetry = [UIAlertAction actionWithTitle:@"重新导入".ntes_localized style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    UIAlertAction *actionRetry = [UIAlertAction actionWithTitle:StringFromMedicineData(kStr_moveTitle).colorLocalized style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: [alertController dismissViewControllerAnimated:YES completion:nil];
        [alertController dismissViewControllerAnimated:YES completion:nil];
        //: [self downloadRemoteFile];
        [self ting];
    //: }];
    }];
    //: [alertController addAction:actionRetry];
    [alertController addAction:actionRetry];

    //
    //: [self presentViewController:alertController animated:YES completion:nil];
    [self presentViewController:alertController animated:YES completion:nil];
    //: self.curAlertController = alertController;
    self.curAlertController = alertController;
}

//: - (void)onImportSuccess {
- (void)message {
    //: NTESMigrateCompleteView *completeView = [[NTESMigrateCompleteView alloc] initWithFrame:self.view.bounds];
    MaxView *completeView = [[MaxView alloc] initWithFrame:self.view.bounds];
    //: completeView.title = @"恭喜你".ntes_localized;
    completeView.title = StringFromMedicineData(kStr_conscienceVitalHouseValue).colorLocalized;
    //: completeView.message = @"消息导入成功".ntes_localized;
    completeView.message = StringFromMedicineData(kStr_veteranText).colorLocalized;
    //: [completeView.actionButton setTitle:@"返回会话列表".ntes_localized forState:UIControlStateNormal];
    [completeView.actionButton setTitle:StringFromMedicineData(kStr_historyWeepValue).colorLocalized forState:UIControlStateNormal];
    //: [completeView.actionButton addTarget:self action:@selector(onReturnButton:) forControlEvents:UIControlEventTouchUpInside];
    [completeView.actionButton addTarget:self action:@selector(fastenerAdd:) forControlEvents:UIControlEventTouchUpInside];
    //: self.contentView = completeView;
    self.contentView = completeView;
}

//: #pragma mark --
#pragma mark --
//: - (void)downloadRemoteFile {
- (void)ting {
    //: [self removeTempFiles];
    [self streetSmart];
    //: NSString *aesFilePath = [self aesFilePath];
    NSString *aesFilePath = [self earlier];
    //: [[NIMSDK sharedSDK].resourceManager download:self.remoteFilePath
    [[NIMSDK sharedSDK].resourceManager download:self.remoteFilePath
                                        //: filepath:aesFilePath
                                        filepath:aesFilePath
                                        //: progress:nil
                                        progress:nil
                                      //: completion:^(NSError * _Nullable error)
                                      completion:^(NSError * _Nullable error)
     {
         //: if (error) {
         if (error) {
             //: [self onImportFailed:error description:@"下载消息文件失败".ntes_localized];
             [self spec:error at:StringFromMedicineData(kStr_engineName).colorLocalized];
             //: return;
             return;
         }

         //: NSString *decrypedPath = self.secureKey ? [self decryptMeessageFileAtPath:aesFilePath] : aesFilePath;
         NSString *decrypedPath = self.secureKey ? [self bePath:aesFilePath] : aesFilePath;
         //: dispatch_async(dispatch_get_main_queue(), ^{
         dispatch_async(dispatch_get_main_queue(), ^{
             //: NSString *unzipPath = [self unzipMessageFileAtPath:decrypedPath];
             NSString *unzipPath = [self sizeLimit:decrypedPath];
             //: [self importMessageFileAtPath:unzipPath];
             [self tillEnable:unzipPath];

             // 删除中间文件
             //: [[NSFileManager defaultManager] removeItemAtPath:aesFilePath error:nil];
             [[NSFileManager defaultManager] removeItemAtPath:aesFilePath error:nil];
         //: });
         });
     //: }];
     }];
}

// 如果上传时候有加密，需要先解密
//: - (NSString *)decryptMeessageFileAtPath:(NSString *)path {
- (NSString *)bePath:(NSString *)path {
    //: @autoreleasepool {
    @autoreleasepool {
        //: NSData *data = [NSData dataWithContentsOfFile:path];
        NSData *data = [NSData dataWithContentsOfFile:path];
        //: NSString *aesKey = self.secureKey;
        NSString *aesKey = self.secureKey;
        //: NSData *decryptedData = [data aes256DecryptWithKey:aesKey vector:aesVectorString];
        NSData *decryptedData = [data message:aesKey green:kConst_sessionText];
        //: NSString *directory = [path stringByDeletingPathExtension];
        NSString *directory = [path stringByDeletingPathExtension];
        //: directory = [directory stringByDeletingLastPathComponent];
        directory = [directory stringByDeletingLastPathComponent];
        //: NSString *decryptedPath = [directory stringByAppendingPathComponent:@"decryped"];
        NSString *decryptedPath = [directory stringByAppendingPathComponent:StringFromMedicineData(kStr_redCurData)];
        //: decryptedPath = [decryptedPath stringByAppendingPathExtension:@"zip"];
        decryptedPath = [decryptedPath stringByAppendingPathExtension:StringFromMedicineData(kStr_payerTitleText)];
        //: if ([[NSFileManager defaultManager] fileExistsAtPath:decryptedPath]) {
        if ([[NSFileManager defaultManager] fileExistsAtPath:decryptedPath]) {
            //: [[NSFileManager defaultManager] removeItemAtPath:decryptedPath error:nil];
            [[NSFileManager defaultManager] removeItemAtPath:decryptedPath error:nil];
        }
        //: [decryptedData writeToFile:decryptedPath atomically:YES];
        [decryptedData writeToFile:decryptedPath atomically:YES];
        //: return decryptedPath;
        return decryptedPath;
    }
}

// 如果上传时候有压缩，解密完了之后要解压缩
//: - (NSString *)unzipMessageFileAtPath:(NSString *)path {
- (NSString *)sizeLimit:(NSString *)path {
    //: NSString *dstPath = [path stringByDeletingPathExtension];
    NSString *dstPath = [path stringByDeletingPathExtension];
    //: dstPath = [dstPath stringByAppendingString:@"unzip"];
    dstPath = [dstPath stringByAppendingString:StringFromMedicineData(kStr_elsewhereWithText)];

    //
    //: NSString *unzipPath = nil;
    NSString *unzipPath = nil;
    //: BOOL directory = NO;
    BOOL directory = NO;
    //: if ([[NSFileManager defaultManager] fileExistsAtPath:dstPath isDirectory:&directory]) {
    if ([[NSFileManager defaultManager] fileExistsAtPath:dstPath isDirectory:&directory]) {
        //: if (directory) {
        if (directory) {
            //: NSArray *files = [[NSFileManager defaultManager] contentsOfDirectoryAtPath:dstPath error:nil];
            NSArray *files = [[NSFileManager defaultManager] contentsOfDirectoryAtPath:dstPath error:nil];
            //: unzipPath = files.count > 0 ? files[0] : nil;
            unzipPath = files.count > 0 ? files[0] : nil;
            //: unzipPath = [dstPath stringByAppendingPathComponent:unzipPath];
            unzipPath = [dstPath stringByAppendingPathComponent:unzipPath];
        }
        //: else {
        else {
            //: unzipPath = dstPath;
            unzipPath = dstPath;
        }
    }

    // 删掉中间文件
    //: dispatch_async(dispatch_get_main_queue(), ^{
    dispatch_async(dispatch_get_main_queue(), ^{
        //: [[NSFileManager defaultManager] removeItemAtPath:path error:nil];
        [[NSFileManager defaultManager] removeItemAtPath:path error:nil];
    //: });
    });

    //: return unzipPath;
    return unzipPath;
}

//: - (void)importMessageFileAtPath:(NSString *)path {
- (void)tillEnable:(NSString *)path {
    //: if (!path) {
    if (!path) {
        //: [self onImportFailed:nil description:@"解压失败".ntes_localized];
        [self spec:nil at:StringFromMedicineData(kStr_vitalData).colorLocalized];
        //: return;
        return;
    }

    // 用户自定义的导入过滤器，对于 custom 消息，需要用户自己处理
    //: NTESImportMessageDelegateImpl *importImpl = [[NTESImportMessageDelegateImpl alloc] init];
    ColouredWith *importImpl = [[ColouredWith alloc] init];

    //: [[NIMSDK sharedSDK].conversationManager importMessageInfosAtPath:path
    [[NIMSDK sharedSDK].conversationManager importMessageInfosAtPath:path
                                                            //: delegate:importImpl
                                                            delegate:importImpl
                                                            //: progress:^(float progress)
                                                            progress:^(float progress)
    {
        //NSLog(@"import progress %f", progress);
        //: NTESMigrateProgressView *progressView = (NTESMigrateProgressView *)self.contentView;
        ShowView *progressView = (ShowView *)self.contentView;
        //: if ([progressView isKindOfClass:[NTESMigrateProgressView class]]) {
        if ([progressView isKindOfClass:[ShowView class]]) {
            //: progressView.progress = progress;
            progressView.progress = progress;
        }
    //: } completion:^(NSError * _Nullable error) {
    } completion:^(NSError * _Nullable error) {
        //: if (error) {
        if (error) {
            //: [self onImportFailed:error description:@"合并失败".ntes_localized];
            [self spec:error at:StringFromMedicineData(kStr_voterViaValue).colorLocalized];
        }
        //: else {
        else {
            //: [self onImportSuccess];
            [self message];
        }
    //: }];
    }];
}

//: #pragma mark -- temp
#pragma mark -- temp
//: - (NSString *)aesFilePath {
- (NSString *)earlier {
    //: NSString *ret = [NSTemporaryDirectory() stringByAppendingPathComponent:@"NIM"];
    NSString *ret = [NSTemporaryDirectory() stringByAppendingPathComponent:StringFromMedicineData(kStr_resideValue)];
    //: ret = [ret stringByAppendingPathComponent:@"iOS-zip-aes256"];
    ret = [ret stringByAppendingPathComponent:StringFromMedicineData(kStr_combineHostageValue)];
    //: return ret;
    return ret;
}

//: - (void)removeTempFiles {
- (void)streetSmart {
    //: NSFileManager *fileManager = [NSFileManager defaultManager];
    NSFileManager *fileManager = [NSFileManager defaultManager];
    //: [fileManager removeItemAtPath:[self aesFilePath] error:nil];
    [fileManager removeItemAtPath:[self earlier] error:nil];
}

//: @end
@end

Byte * MedicineDataToCache(Byte *data) {
    int pack = data[0];
    int messageOrationStairs = data[1];
    int attracter = data[2];
    if (!pack) return data + attracter;
    for (int i = 0; i < messageOrationStairs / 2; i++) {
        int begin = attracter + i;
        int end = attracter + messageOrationStairs - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[attracter + messageOrationStairs] = 0;
    return data + attracter;
}

NSString *StringFromMedicineData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)MedicineDataToCache(data)];
}  
