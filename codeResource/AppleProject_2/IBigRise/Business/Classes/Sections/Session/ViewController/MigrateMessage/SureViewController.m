
#import <Foundation/Foundation.h>

NSString *StringFromCheekData(Byte *data);


//: 本地消息导出成功，请在新设备上点击导入吧
Byte kStr_grossContent[] = {89, 60, 4, 71, 167, 144, 229, 165, 133, 229, 188, 175, 229, 187, 135, 229, 185, 130, 231, 138, 184, 228, 135, 164, 229, 190, 174, 232, 176, 150, 230, 168, 156, 229, 183, 175, 232, 140, 188, 239, 159, 138, 229, 144, 136, 230, 186, 135, 229, 188, 175, 229, 175, 129, 230, 136, 182, 230, 176, 156, 229, 172, 156, 230, 71};


//: 恭喜你
Byte kStr_messageSpeciesPiracyData[] = {49, 9, 9, 242, 201, 145, 195, 51, 121, 160, 189, 228, 156, 150, 229, 173, 129, 230, 80};


//: aes256
Byte kStr_againstName[] = {51, 6, 4, 160, 54, 53, 50, 115, 101, 97, 168};


//: 本地消息导出
Byte kStr_operateText[] = {87, 18, 11, 178, 72, 55, 72, 57, 158, 245, 131, 186, 135, 229, 188, 175, 229, 175, 129, 230, 136, 182, 230, 176, 156, 229, 172, 156, 230, 15};


//: 确定要取消导出?
Byte kStr_oofContent[] = {78, 22, 5, 11, 161, 63, 186, 135, 229, 188, 175, 229, 136, 182, 230, 150, 143, 229, 129, 166, 232, 154, 174, 229, 174, 161, 231, 242};


//: 继续导出
Byte kStr_platWithValue[] = {73, 12, 12, 143, 114, 116, 159, 14, 28, 198, 26, 120, 186, 135, 229, 188, 175, 229, 173, 187, 231, 167, 187, 231, 83};


//: 本地消息格式化导出失败
Byte kStr_acidNameSightValue[] = {49, 33, 9, 90, 161, 174, 249, 220, 114, 165, 180, 232, 177, 164, 229, 186, 135, 229, 188, 175, 229, 150, 140, 229, 143, 188, 229, 188, 160, 230, 175, 129, 230, 136, 182, 230, 176, 156, 229, 172, 156, 230, 138};


//: 导出本地消息需要较长时间，请耐心等待
Byte kStr_acidFingerText[] = {14, 54, 3, 133, 190, 229, 137, 173, 231, 131, 191, 229, 144, 128, 232, 183, 175, 232, 140, 188, 239, 180, 151, 233, 182, 151, 230, 191, 149, 233, 131, 190, 232, 129, 166, 232, 128, 156, 233, 175, 129, 230, 136, 182, 230, 176, 156, 229, 172, 156, 230, 186, 135, 229, 188, 175, 229, 39};


//: 导出失败!
Byte kStr_fluText[] = {97, 13, 5, 177, 250, 33, 165, 180, 232, 177, 164, 229, 186, 135, 229, 188, 175, 229, 227};


//: 取消导出
Byte kStr_impulseText[] = {71, 12, 3, 186, 135, 229, 188, 175, 229, 136, 182, 230, 150, 143, 229, 182};


//: 重新导出
Byte kStr_elsewhereHopefulVirtuallyData[] = {85, 12, 4, 67, 186, 135, 229, 188, 175, 229, 176, 150, 230, 141, 135, 233, 233};


//: 可导出的消息记录总数为空
Byte kStr_rapidOrationData[] = {89, 36, 7, 163, 71, 132, 131, 186, 169, 231, 186, 184, 228, 176, 149, 230, 187, 128, 230, 149, 189, 229, 176, 174, 232, 175, 129, 230, 136, 182, 230, 132, 154, 231, 186, 135, 229, 188, 175, 229, 175, 143, 229, 229};

// __DEBUG__
// __CLOSE_PRINT__
//
//  SureViewController.m
//  NIM
//
//  Created by Sampson on 2018/12/10.
//  Copyright © 2018 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESExportMessageViewController.h"
#import "SureViewController.h"
//: #import "NTESMigrateProgressView.h"
#import "ShowView.h"
//: #import "NTESMigrateCompleteView.h"
#import "MaxView.h"
//: #import "NSString+NTES.h"
#import "NSString+Item.h"
//: #import "NSData+NTES.h"
#import "NSData+Item.h"
//: #import "NTESExportMessageDelegateImpl.h"
#import "DropInput.h"
//: #import "SVProgressHUD.h"
#import "SVProgressHUD.h"
//: #import "UIView+Toast.h"
#import "UIView+Toast.h"

//: static NSString * const aesVectorString = @"0123456789012345";
static NSString * const kConst_sessionText = @"0123456789012345";

//: @interface NTESExportMessageViewController ()
@interface SureViewController ()

//: @property (nonatomic, strong) UIView *contentView;
@property (nonatomic, strong) UIView *contentView;
//: @property (nonatomic, weak) UIAlertController *curAlertController;
@property (nonatomic, weak) UIAlertController *curAlertController;
//: @property (nonatomic, copy) NSString *secureKey;
@property (nonatomic, copy) NSString *secureKey;

//: @end
@end

//: @implementation NTESExportMessageViewController
@implementation SureViewController

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];

    //: self.title = @"本地消息导出".ntes_localized;
    self.title = StringFromCheekData(kStr_operateText).colorLocalized;

    //: NTESMigrateProgressView *progressView = [[NTESMigrateProgressView alloc] initWithFrame:self.view.bounds];
    ShowView *progressView = [[ShowView alloc] initWithFrame:self.view.bounds];
    //: [progressView.stopButton addTarget:self action:@selector(onCancelButton:) forControlEvents:UIControlEventTouchUpInside];
    [progressView.stopButton addTarget:self action:@selector(asUp:) forControlEvents:UIControlEventTouchUpInside];
    //: progressView.tip = @"导出本地消息需要较长时间，请耐心等待".ntes_localized;
    progressView.tip = StringFromCheekData(kStr_acidFingerText).colorLocalized;
    //: self.contentView = progressView;
    self.contentView = progressView;

    //: [self exportMessageInfos];
    [self exceptContent];
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

//: #pragma mark
#pragma mark
//: - (void)exportMessageInfos {
- (void)exceptContent {
    //: NTESExportMessageDelegateImpl *exportImpl = [[NTESExportMessageDelegateImpl alloc] init];
    DropInput *exportImpl = [[DropInput alloc] init];

    //: [[NIMSDK sharedSDK].conversationManager exportMeessageInfosWithDelegate:exportImpl
    [[NIMSDK sharedSDK].conversationManager exportMeessageInfosWithDelegate:exportImpl
                                                                   //: progress:^(float progress)
                                                                   progress:^(float progress)
    {
        //: if ([self.contentView isKindOfClass:[NTESMigrateProgressView class]]) {
        if ([self.contentView isKindOfClass:[ShowView class]]) {
            //: NTESMigrateProgressView *progressView = (NTESMigrateProgressView *)self.contentView;
            ShowView *progressView = (ShowView *)self.contentView;
            //: progressView.progress = progress;
            progressView.progress = progress;
        }
    //: } completion:^(NSError * _Nullable error, NSString * _Nullable resultFilePath) {
    } completion:^(NSError * _Nullable error, NSString * _Nullable resultFilePath) {
        //: if (error || !resultFilePath) {
        if (error || !resultFilePath) {
            //: if (error.code == 1001) {
            if (error.code == 1001) {
                //: [self onExportEmpty:error];
                [self along:error];
            }
            //: else {
            else {
                //: [self onExportFailed:error];
                [self takeHome:error];
            }
        }
        //: else {
        else {
            //: [self onExportSuccessAtPath:resultFilePath];
            [self firstLanguage:resultFilePath];
        }
    //: }];
    }];
}

//: #pragma mark -- action
#pragma mark -- action
//: - (void)onCancelButton:(id)sender {
- (void)asUp:(id)sender {
    //: UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"确定要取消导出?".ntes_localized message:nil preferredStyle:UIAlertControllerStyleAlert];
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:StringFromCheekData(kStr_oofContent).colorLocalized message:nil preferredStyle:UIAlertControllerStyleAlert];

    // 取消导出
    //: UIAlertAction *actionCancel = [UIAlertAction actionWithTitle:@"取消导出".ntes_localized style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    UIAlertAction *actionCancel = [UIAlertAction actionWithTitle:StringFromCheekData(kStr_impulseText).colorLocalized style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: [self dismissViewControllerAnimated:YES completion:nil];
        [self dismissViewControllerAnimated:YES completion:nil];
        //: [[NIMSDK sharedSDK].conversationManager cancelMigrateMessages];
        [[NIMSDK sharedSDK].conversationManager cancelMigrateMessages];
    //: }];
    }];
    //: [alertController addAction:actionCancel];
    [alertController addAction:actionCancel];

    // 继续导出
    //: UIAlertAction *actionGoon = [UIAlertAction actionWithTitle:@"继续导出".ntes_localized style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    UIAlertAction *actionGoon = [UIAlertAction actionWithTitle:StringFromCheekData(kStr_platWithValue).colorLocalized style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
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
}

//: #pragma mark -- private
#pragma mark -- private
//: - (void)onExportFailed:(NSError *)error {
- (void)takeHome:(NSError *)error {
    //: UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"导出失败!".ntes_localized message:@"本地消息格式化导出失败".ntes_localized preferredStyle:UIAlertControllerStyleAlert];
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:StringFromCheekData(kStr_fluText).colorLocalized message:StringFromCheekData(kStr_acidNameSightValue).colorLocalized preferredStyle:UIAlertControllerStyleAlert];

    // 返回
    //: UIAlertAction *actionBack = [UIAlertAction actionWithTitle:@"返回".ntes_localized style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    UIAlertAction *actionBack = [UIAlertAction actionWithTitle:@"返回".colorLocalized style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: [self dismissViewControllerAnimated:YES completion:nil];
        [self dismissViewControllerAnimated:YES completion:nil];
    //: }];
    }];
    //: [alertController addAction:actionBack];
    [alertController addAction:actionBack];

    // 重新导出
    //: UIAlertAction *actionRetry = [UIAlertAction actionWithTitle:@"重新导出".ntes_localized style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    UIAlertAction *actionRetry = [UIAlertAction actionWithTitle:StringFromCheekData(kStr_elsewhereHopefulVirtuallyData).colorLocalized style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: [alertController dismissViewControllerAnimated:YES completion:nil];
        [alertController dismissViewControllerAnimated:YES completion:nil];
        //: [self exportMessageInfos];
        [self exceptContent];
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

//: - (void)onExportSuccessAtPath:(NSString *)infoFilePath {
- (void)firstLanguage:(NSString *)infoFilePath {
    //: [SVProgressHUD show];
    [SVProgressHUD show];

    // 对导出结果进行压缩，可以有效减少文件尺寸
    //: NSString *zipFilePath = [self zipMessageFileAtPath:infoFilePath];
    NSString *zipFilePath = [self wayOfLife:infoFilePath];
    //: if (!zipFilePath) {
    if (!zipFilePath) {
        //: [SVProgressHUD dismiss];
        [SVProgressHUD dismiss];
        //: return;
        return;
    }

    // 对导出结果进行加密，避免明文消息的泄露
    //: dispatch_async(dispatch_get_global_queue(0, 0), ^{
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        //: NSString *encryptedFilePath = [self encryptMessageDataAtPath:zipFilePath];
        NSString *encryptedFilePath = [self doing:zipFilePath];
        //: dispatch_async(dispatch_get_main_queue(), ^{
        dispatch_async(dispatch_get_main_queue(), ^{
            //: [self uploadMessageFileToServer:encryptedFilePath];
            [self titleQuick:encryptedFilePath];
        //: });
        });
    //: });
    });
}

//: - (void)onExportEmpty:(NSError *)error {
- (void)along:(NSError *)error {
    //: NSLog(@"error %@", error);
    //: NSString *errorDscription = @"可导出的消息记录总数为空".ntes_localized;
    NSString *errorDscription = StringFromCheekData(kStr_rapidOrationData).colorLocalized;
    //: [self.view makeToast:errorDscription duration:3.0 position:CSToastPositionCenter];
    [self.view makeToast:errorDscription duration:3.0 position:CSToastPositionCenter];
}

//: - (void)onMigrateToRemoteFailed:(NSError *)error {
- (void)backgroundRemoteFailed:(NSError *)error {
    //: [SVProgressHUD dismiss];
    [SVProgressHUD dismiss];

    //: [self onExportFailed:error];
    [self takeHome:error];
}

//: - (void)onMigrateToRemoteSuccess {
- (void)colorSuccess {
    //: [SVProgressHUD dismiss];
    [SVProgressHUD dismiss];

    //: NTESMigrateCompleteView *completeView = [[NTESMigrateCompleteView alloc] initWithFrame:self.view.bounds];
    MaxView *completeView = [[MaxView alloc] initWithFrame:self.view.bounds];
    //: completeView.title = @"恭喜你".ntes_localized;
    completeView.title = StringFromCheekData(kStr_messageSpeciesPiracyData).colorLocalized;
    //: completeView.message = @"本地消息导出成功，请在新设备上点击导入吧".ntes_localized;
    completeView.message = StringFromCheekData(kStr_grossContent).colorLocalized;
    //: [completeView.actionButton setTitle:@"返回".ntes_localized forState:UIControlStateNormal];
    [completeView.actionButton setTitle:@"返回".colorLocalized forState:UIControlStateNormal];
    //: [completeView.actionButton addTarget:self action:@selector(onReturnButton:) forControlEvents:UIControlEventTouchUpInside];
    [completeView.actionButton addTarget:self action:@selector(fastenerAdd:) forControlEvents:UIControlEventTouchUpInside];
    //: self.contentView = completeView;
    self.contentView = completeView;
}

//: #pragma mark -- 压缩
#pragma mark -- 压缩
//: - (NSString *)zipMessageFileAtPath:(NSString *)infoFilePath {
- (NSString *)wayOfLife:(NSString *)infoFilePath {
    //: return nil;
    return nil;
}

//: #pragma mark -- 加密
#pragma mark -- 加密
//: - (NSString *)encryptMessageDataAtPath:(NSString *)path {
- (NSString *)doing:(NSString *)path {
    //: NSData *data = [NSData dataWithContentsOfFile:path];
    NSData *data = [NSData dataWithContentsOfFile:path];
    //: NSString *aesKey = [NSString randomStringWithLength:32];
    NSString *aesKey = [NSString mark:32];
    //: self.secureKey = aesKey;
    self.secureKey = aesKey;
    //: NSData *encryptedData = [data aes256EncryptWithKey:aesKey vector:aesVectorString];
    NSData *encryptedData = [data key:aesKey state:kConst_sessionText];
    //: NSString *encrypedPath = [path stringByAppendingString:@"aes256"];
    NSString *encrypedPath = [path stringByAppendingString:StringFromCheekData(kStr_againstName)];
    //: [encryptedData writeToFile:encrypedPath atomically:YES];
    [encryptedData writeToFile:encrypedPath atomically:YES];

    // 移除中间文件
    //: dispatch_async(dispatch_get_main_queue(), ^{
    dispatch_async(dispatch_get_main_queue(), ^{
        //: [[NSFileManager defaultManager] removeItemAtPath:path error:nil];
        [[NSFileManager defaultManager] removeItemAtPath:path error:nil];
    //: });
    });

    //: return encrypedPath;
    return encrypedPath;
}

//: #pragma mark -- upload to server
#pragma mark -- upload to server
//: - (void)uploadMessageFileToServer:(NSString *)path {
- (void)titleQuick:(NSString *)path {
    //: [[NIMSDK sharedSDK].resourceManager upload:path
    [[NIMSDK sharedSDK].resourceManager upload:path
                                      //: progress:nil
                                      progress:nil
                                    //: completion:^(NSString * _Nullable urlString, NSError * _Nullable error)
                                    completion:^(NSString * _Nullable urlString, NSError * _Nullable error)
    {
        // 删除中间文件
        //: [[NSFileManager defaultManager] removeItemAtPath:path error:nil];
        [[NSFileManager defaultManager] removeItemAtPath:path error:nil];
        //: if (error || !urlString) {
        if (error || !urlString) {
            //: [self onMigrateToRemoteFailed:error];
            [self backgroundRemoteFailed:error];
            //: return;
            return;
        }

        //: [self updateMigrateMessageInfoWithURL:urlString];
        [self color:urlString];
    //: }];
    }];
}

//: - (void)updateMigrateMessageInfoWithURL:(NSString *)url {
- (void)color:(NSString *)url {

    //: [[NIMSDK sharedSDK].conversationManager updateMigrateMessageInfoWithURL:url
    [[NIMSDK sharedSDK].conversationManager updateMigrateMessageInfoWithURL:url
                                                                        //: key:self.secureKey
                                                                        key:self.secureKey
                                                                 //: completion:^(NSError * _Nullable error)
                                                                 completion:^(NSError * _Nullable error)
    {
        //: [SVProgressHUD dismiss];
        [SVProgressHUD dismiss];

        //: if (error) {
        if (error) {
            //: [self onMigrateToRemoteFailed:error];
            [self backgroundRemoteFailed:error];
        }
        //: else {
        else {
            //: [self onMigrateToRemoteSuccess];
            [self colorSuccess];
        }
    //: }];
    }];
}

//: @end
@end

Byte * CheekDataToCache(Byte *data) {
    int ill = data[0];
    int abaseForbid = data[1];
    int platLabel = data[2];
    if (!ill) return data + platLabel;
    for (int i = 0; i < abaseForbid / 2; i++) {
        int begin = platLabel + i;
        int end = platLabel + abaseForbid - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[platLabel + abaseForbid] = 0;
    return data + platLabel;
}

NSString *StringFromCheekData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)CheekDataToCache(data)];
}  
