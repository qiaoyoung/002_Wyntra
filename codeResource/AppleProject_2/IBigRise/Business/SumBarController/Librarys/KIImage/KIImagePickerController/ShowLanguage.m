
#import <Foundation/Foundation.h>

NSString *StringFromLingData(Byte *data);


//: friend_circle_adapter_cancel
Byte kStr_wheatValue[] = {24, 28, 12, 169, 218, 184, 102, 170, 203, 248, 112, 159, 108, 101, 99, 110, 97, 99, 95, 114, 101, 116, 112, 97, 100, 97, 95, 101, 108, 99, 114, 105, 99, 95, 100, 110, 101, 105, 114, 102, 118};


//: friend_circle_activity_camera
Byte kStr_withMerchantTitle[] = {45, 29, 4, 52, 97, 114, 101, 109, 97, 99, 95, 121, 116, 105, 118, 105, 116, 99, 97, 95, 101, 108, 99, 114, 105, 99, 95, 100, 110, 101, 105, 114, 102, 15};


//: please_choose
Byte kStr_fellValue[] = {36, 13, 13, 47, 33, 87, 19, 96, 91, 151, 197, 193, 87, 101, 115, 111, 111, 104, 99, 95, 101, 115, 97, 101, 108, 112, 22};


//: UIImagePickerControllerOriginalImage
Byte kStr_recessionTitle[] = {85, 36, 10, 43, 90, 158, 75, 233, 16, 61, 101, 103, 97, 109, 73, 108, 97, 110, 105, 103, 105, 114, 79, 114, 101, 108, 108, 111, 114, 116, 110, 111, 67, 114, 101, 107, 99, 105, 80, 101, 103, 97, 109, 73, 73, 85, 121};


//: friend_circle_activity_from_phone
Byte kStr_messageChipName[] = {51, 33, 3, 101, 110, 111, 104, 112, 95, 109, 111, 114, 102, 95, 121, 116, 105, 118, 105, 116, 99, 97, 95, 101, 108, 99, 114, 105, 99, 95, 100, 110, 101, 105, 114, 102, 86};

// __DEBUG__
// __CLOSE_PRINT__
//
//  ShowLanguage.m
//  Kitalker
//
//  Created by chen on 13-3-19.
//  Copyright (c) 2013年 ibm. All rights reserved.
//

// __M_A_C_R_O__
//: #import "KIImagePickerController.h"
#import "ShowLanguage.h"
//: #import <Photos/PHPhotoLibrary.h>
#import <Photos/PHPhotoLibrary.h>

//: @interface KIImagePickerController ()
@interface ShowLanguage ()
//: @property (nonatomic, weak) id<KIImagePickerControllerDelegate> delegate;
@property (nonatomic, weak) id<LabelDelegate> delegate;
//: @property (nonatomic, strong) UIViewController *viewController;
@property (nonatomic, strong) UIViewController *viewController;
//: @property (nonatomic, assign) CGSize cropSize;
@property (nonatomic, assign) CGSize cropSize;
//: @property (nonatomic, strong) NSArray *otherItems;
@property (nonatomic, strong) NSArray *otherItems;
//: @property (nonatomic, assign) BOOL showDelete;
@property (nonatomic, assign) BOOL showDelete;
//: @end
@end

//: @implementation KIImagePickerController
@implementation ShowLanguage
//: @synthesize delegate = _delegate;
@synthesize delegate = _delegate;
//: @synthesize viewController = _viewController;
@synthesize viewController = _viewController;
//: @synthesize title = _title;
@synthesize title = _title;
//: @synthesize cropSize = _cropSize;
@synthesize cropSize = _cropSize;
//: @synthesize otherItems = _otherItems;
@synthesize otherItems = _otherItems;
//: @synthesize showDelete = _showDelete;
@synthesize showDelete = _showDelete;

//: - (id)initWithDelegate:(id<KIImagePickerControllerDelegate>)delegate viewController:(UIViewController *)viewController {
- (id)initWithNameDown:(id<LabelDelegate>)delegate under:(UIViewController *)viewController {
    //: if (self = [super init]) {
    if (self = [super init]) {
        //: self.delegate = delegate;
        self.delegate = delegate;
        //: self.viewController = viewController;
        self.viewController = viewController;
        //: self.title = [NTESLanguageManager getTextWithKey:@"please_choose"];
        self.title = [LabelCell tinkleKey:StringFromLingData(kStr_fellValue)];//@"请选择";
    }
    //: return self;
    return self;
}

//: - (id)initWithDelegate:(id<KIImagePickerControllerDelegate>)delegate
- (id)initWith:(id<LabelDelegate>)delegate
                 //: title:(NSString *)title
                 director:(NSString *)title
        //: viewController:(UIViewController *)viewController {
        tag:(UIViewController *)viewController {
    //: if (self = [super init]) {
    if (self = [super init]) {
        //: self.delegate = delegate;
        self.delegate = delegate;
        //: self.viewController = viewController;
        self.viewController = viewController;
        //: self.title = title;
        self.title = title;
    }
    //: return self;
    return self;
}

//: - (void)showWithDeleteButton:(BOOL)showDelete {
- (void)removeTeam:(BOOL)showDelete {
    //: UIApplication *applicaiton = [UIApplication sharedApplication];
    UIApplication *applicaiton = [UIApplication sharedApplication];

    //: [[self actionSheet:showDelete] showInView:[applicaiton keyWindow]];
    [[self domainBy:showDelete] showInView:[applicaiton keyWindow]];
}

//: - (void)showWithDeleteButton:(BOOL)showDelete cropSize:(CGSize)cropSize {
- (void)pointOfMagnitudeersectionSize:(BOOL)showDelete enableShow:(CGSize)cropSize {
    //: [self setCropSize:cropSize];
    [self setCropSize:cropSize];
    //: [self showWithDeleteButton:showDelete];
    [self removeTeam:showDelete];
}

//: - (void)showWithDeleteButton:(BOOL)showDelete cropSize:(CGSize)cropSize otherItems:(NSArray *)items {
- (void)by:(BOOL)showDelete quickItems:(CGSize)cropSize clear:(NSArray *)items {
    //: [self setOtherItems:items];
    [self setOtherItems:items];
    //: [self showWithDeleteButton:showDelete cropSize:cropSize];
    [self pointOfMagnitudeersectionSize:showDelete enableShow:cropSize];
}

//: - (UIActionSheet *)actionSheet:(BOOL)needDelete {
- (UIActionSheet *)domainBy:(BOOL)needDelete {
    //: self.showDelete = needDelete;
    self.showDelete = needDelete;

    //: if (_actionSheet == nil) {
    if (_actionSheet == nil) {

        //: NSString *from_phone = [NTESLanguageManager getTextWithKey:@"friend_circle_activity_from_phone"];
        NSString *from_phone = [LabelCell tinkleKey:StringFromLingData(kStr_messageChipName)];
        //: NSString *activity_camera = [NTESLanguageManager getTextWithKey:@"friend_circle_activity_camera"];
        NSString *activity_camera = [LabelCell tinkleKey:StringFromLingData(kStr_withMerchantTitle)];

        //: _actionSheet = [[UIActionSheet alloc] initWithTitle:self.title
        _actionSheet = [[UIActionSheet alloc] initWithTitle:self.title
                                                   //: delegate:self
                                                   delegate:self
                                          //: cancelButtonTitle:nil
                                          cancelButtonTitle:nil
                                     //: destructiveButtonTitle:nil
                                     destructiveButtonTitle:nil
                                          //: otherButtonTitles:from_phone, activity_camera, nil];
                                          otherButtonTitles:from_phone, activity_camera, nil];

        //: NSUInteger cancelIndex = 1;
        NSUInteger cancelIndex = 1;
        //: if (self.showDelete) {
        if (self.showDelete) {
            //: [_actionSheet addButtonWithTitle:@"删除".nim_localized];
            [_actionSheet addButtonWithTitle:@"删除".start];
            //: cancelIndex++;
            cancelIndex++;
        }

        //: for (NSString *title in self.otherItems) {
        for (NSString *title in self.otherItems) {
            //: [_actionSheet addButtonWithTitle:title];
            [_actionSheet addButtonWithTitle:title];
            //: cancelIndex++;
            cancelIndex++;
        }

        //: [_actionSheet addButtonWithTitle:[NTESLanguageManager getTextWithKey:@"friend_circle_adapter_cancel"]];
        [_actionSheet addButtonWithTitle:[LabelCell tinkleKey:StringFromLingData(kStr_wheatValue)]];
        //: cancelIndex++;
        cancelIndex++;

        //: _actionSheet.cancelButtonIndex = cancelIndex;
        _actionSheet.cancelButtonIndex = cancelIndex;
        //[self retain];
    }
    //: return _actionSheet;
    return _actionSheet;
}

//: - (UIImagePickerController *)imagePickerController {
- (UIImagePickerController *)bmiController {
    //: if (_imagePickerController == nil) {
    if (_imagePickerController == nil) {
        //: _imagePickerController = [[UIImagePickerController alloc] init];
        _imagePickerController = [[UIImagePickerController alloc] init];
        //: [_imagePickerController setDelegate:self];
        [_imagePickerController setDelegate:self];
    }
    //: return _imagePickerController;
    return _imagePickerController;
}

- (void)actionSheet:(UIActionSheet *)actionSheet didDismissWithButtonIndex:(NSInteger)buttonIndex {
    //: if (buttonIndex == 0) {
    if (buttonIndex == 0) {

        //: [self requestAuthorizationForPhotoLibrary];
        [self language];

    //: } else if (buttonIndex == 1) {
    } else if (buttonIndex == 1) {

        //: [self requestAuthorizationForVideo];
        [self unwantedRange];

    //: } else if (buttonIndex == actionSheet.cancelButtonIndex) {
    } else if (buttonIndex == actionSheet.cancelButtonIndex) {
        //: if ([self.delegate respondsToSelector:@selector(KIImagePickerControllerDidCancel:)]) {
        if ([self.delegate respondsToSelector:@selector(sessionsed:)]) {
            //: [self.delegate KIImagePickerControllerDidCancel:self];
            [self.delegate sessionsed:self];
        }
        //: [self dismiss];
        [self find];
    //: } else if (self.showDelete && buttonIndex == 2) {
    } else if (self.showDelete && buttonIndex == 2) {
        //: [self pickImage:nil];
        [self fullPhaseOfTheMoonImage:nil];
    //: } else {
    } else {
        //: [self didSelectedOtherIndex:buttonIndex-(self.showDelete?3:2)];
        [self my:buttonIndex-(self.showDelete?3:2)];
    }
}


/**
 *  请求相机权限
 */
//: - (void)requestAuthorizationForVideo {
- (void)unwantedRange {

    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                  ;
    //: AVAuthorizationStatus authorityStaus = [AVCaptureDevice authorizationStatusForMediaType:AVMediaTypeVideo];
    AVAuthorizationStatus authorityStaus = [AVCaptureDevice authorizationStatusForMediaType:AVMediaTypeVideo];
    //: if (AVAuthorizationStatusNotDetermined == authorityStaus) {
    if (AVAuthorizationStatusNotDetermined == authorityStaus) {
        //: [AVCaptureDevice requestAccessForMediaType:AVMediaTypeVideo completionHandler:^(BOOL granted) {
        [AVCaptureDevice requestAccessForMediaType:AVMediaTypeVideo completionHandler:^(BOOL granted) {
            //: if (granted == YES) {
            if (granted == YES) {
                //: dispatch_async(dispatch_get_main_queue(), ^{
                dispatch_async(dispatch_get_main_queue(), ^{
                    @
                     //: try{} @finally{} __typeof__(self) self = __weak_self__;
                     try{} @finally{} __typeof__(self) self = __weak_self__;
                                    ;

                    //: if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
                    if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
                        //: [[self imagePickerController] setSourceType:UIImagePickerControllerSourceTypeCamera];
                        [[self bmiController] setSourceType:UIImagePickerControllerSourceTypeCamera];
                        //: [self imagePickerController].modalPresentationStyle = UIModalPresentationFullScreen;
                        [self bmiController].modalPresentationStyle = UIModalPresentationFullScreen;

                        //: [_viewController presentViewController:[self imagePickerController] animated:YES completion:^{
                        [_viewController presentViewController:[self bmiController] animated:YES completion:^{

                        //: }];
                        }];

                    }
                //: });
                });
            }
        //: }];
        }];
    //: } else if (AVAuthorizationStatusAuthorized == authorityStaus) {
    } else if (AVAuthorizationStatusAuthorized == authorityStaus) {
        //: if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
        if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
            //: [[self imagePickerController] setSourceType:UIImagePickerControllerSourceTypeCamera];
            [[self bmiController] setSourceType:UIImagePickerControllerSourceTypeCamera];
            //: [self imagePickerController].modalPresentationStyle = UIModalPresentationFullScreen;
            [self bmiController].modalPresentationStyle = UIModalPresentationFullScreen;

            //: [_viewController presentViewController:[self imagePickerController] animated:YES completion:^{
            [_viewController presentViewController:[self bmiController] animated:YES completion:^{

            //: }];
            }];

        }
    //: } else {
    } else {
//        NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
//        if( [[UIApplication sharedApplication] canOpenURL:url]) {
//            [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
//        }
    }
}

/**
 *  请求相册
 */
//: - (void)requestAuthorizationForPhotoLibrary
- (void)language
{
    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                  ;
    //: PHAuthorizationStatus authStatus = [PHPhotoLibrary authorizationStatus];
    PHAuthorizationStatus authStatus = [PHPhotoLibrary authorizationStatus];
    //: if (PHAuthorizationStatusNotDetermined == authStatus) {
    if (PHAuthorizationStatusNotDetermined == authStatus) {
        //: [PHPhotoLibrary requestAuthorization:^(PHAuthorizationStatus status) {
        [PHPhotoLibrary requestAuthorization:^(PHAuthorizationStatus status) {
            //: if (PHAuthorizationStatusAuthorized == status) {
            if (PHAuthorizationStatusAuthorized == status) {
                @
                 //: try{} @finally{} __typeof__(self) self = __weak_self__;
                 try{} @finally{} __typeof__(self) self = __weak_self__;
                                ;
                //: dispatch_async(dispatch_get_main_queue(), ^{
                dispatch_async(dispatch_get_main_queue(), ^{
                    //: [self callPhotoAction];
                    [self progressBy];
                //: });
                });
            }
        //: }];
        }];
        //: return;
        return;
    //: } else if (PHAuthorizationStatusAuthorized == authStatus){
    } else if (PHAuthorizationStatusAuthorized == authStatus){
        //: [self callPhotoAction];
        [self progressBy];
    //: } else {
    } else {
//        NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
//        if( [[UIApplication sharedApplication] canOpenURL:url]) {
//            [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
//        }
    }
}

//: - (void)callPhotoAction {
- (void)progressBy {

    //: [[self imagePickerController] setSourceType:UIImagePickerControllerSourceTypePhotoLibrary];
    [[self bmiController] setSourceType:UIImagePickerControllerSourceTypePhotoLibrary];
    //: [self imagePickerController].modalPresentationStyle = UIModalPresentationFullScreen;
    [self bmiController].modalPresentationStyle = UIModalPresentationFullScreen;

    //: [_viewController presentViewController:[self imagePickerController] animated:YES completion:^{
    [_viewController presentViewController:[self bmiController] animated:YES completion:^{

    //: }];
    }];

}



//: - (void)pickImage:(UIImage *)image {
- (void)fullPhaseOfTheMoonImage:(UIImage *)image {
    //: if (self.delegate != nil && [self.delegate respondsToSelector:@selector(KIImagePickerController:didFinishPickImage:)]) {
    if (self.delegate != nil && [self.delegate respondsToSelector:@selector(addImage:color:)]) {
        //: [self.delegate KIImagePickerController:self didFinishPickImage:image];
        [self.delegate addImage:self color:image];
    }
    //: [self dismiss];
    [self find];
}

//: - (void)didSelectedOtherIndex:(NSUInteger)index {
- (void)my:(NSUInteger)index {
    //: if (self.delegate != nil && [self.delegate respondsToSelector:@selector(KIImagePickerController:didSelectedOtherIndex:)]) {
    if (self.delegate != nil && [self.delegate respondsToSelector:@selector(title:searched:)]) {
        //: [self.delegate KIImagePickerController:self didSelectedOtherIndex:index];
        [self.delegate title:self searched:index];
    }
}

//: - (void)dismiss {
- (void)find {
    //: [[self imagePickerController] dismissViewControllerAnimated:YES completion:^{
    [[self bmiController] dismissViewControllerAnimated:YES completion:^{

    //: }];
    }];
}



//: #pragma mark ==================================================
#pragma mark ==================================================
//: #pragma mark == UINavigationControllerDelegate
#pragma mark == UINavigationControllerDelegate
//: #pragma mark ==================================================
#pragma mark ==================================================
//: - (void)navigationController:(UINavigationController *)navigationController willShowViewController:(UIViewController *)viewController animated:(BOOL)animated{
- (void)navigationController:(UINavigationController *)navigationController willShowViewController:(UIViewController *)viewController animated:(BOOL)animated{
    //: if ([self.delegate respondsToSelector:@selector(KINavigationController:willShowViewController:animated:)]) {
    if ([self.delegate respondsToSelector:@selector(videoWith:cell:quickAnimated:)]) {
        //: [self.delegate KINavigationController:navigationController willShowViewController:viewController animated:animated];
        [self.delegate videoWith:navigationController cell:viewController quickAnimated:animated];
    }
}

//: - (void)navigationController:(UINavigationController *)navigationController didShowViewController:(UIViewController *)viewController animated:(BOOL)animated{
- (void)navigationController:(UINavigationController *)navigationController didShowViewController:(UIViewController *)viewController animated:(BOOL)animated{
    //: if ([self.delegate respondsToSelector:@selector(KINavigationController:didShowViewController:animated:)]) {
    if ([self.delegate respondsToSelector:@selector(tingFrame:option:cellShow:)]) {
        //: [self.delegate KINavigationController:navigationController didShowViewController:viewController animated:animated];
        [self.delegate tingFrame:navigationController option:viewController cellShow:animated];
    }
}

//: #pragma mark ==================================================
#pragma mark ==================================================
//: #pragma mark == UIImagePickerControllerDelegate
#pragma mark == UIImagePickerControllerDelegate
//: #pragma mark ==================================================
#pragma mark ==================================================
//: - (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingImage:(UIImage *)image editingInfo:(NSDictionary *)editingInfo NS_DEPRECATED_IOS(2_0, 3_0){
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingImage:(UIImage *)image editingInfo:(NSDictionary *)editingInfo NS_DEPRECATED_IOS(2_0, 3_0){

}

//: - (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {
    //: UIImage *image = [info objectForKey:@"UIImagePickerControllerOriginalImage"];
    UIImage *image = [info objectForKey:StringFromLingData(kStr_recessionTitle)];
    //    NSURL   *imageURL = [info objectForKey:@"UIImagePickerControllerReferenceURL"];
    //    NSString *imagePath = [imageURL absoluteString];
    //: [[UIApplication sharedApplication] setStatusBarHidden:NO];
    [[UIApplication sharedApplication] setStatusBarHidden:NO];
    //: if (__CGSizeEqualToSize(self.cropSize, CGSizeZero)) {
    if (__CGSizeEqualToSize(self.cropSize, CGSizeZero)) {
        //: [self pickImage:image];
        [self fullPhaseOfTheMoonImage:image];
    //: } else {
    } else {

        //: KIImageCropperViewController *cropImageViewController = [[KIImageCropperViewController alloc] initWithImage:[image fixOrientation] cropSize:self.cropSize];
        MeanViewController *cropImageViewController = [[MeanViewController alloc] initWithInstance:[image replyInfo] memoryImageInputMessage:self.cropSize];
        //: UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:cropImageViewController];
        UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:cropImageViewController];
        //: [[self imagePickerController] presentViewController:nav animated:YES completion:nil];
        [[self bmiController] presentViewController:nav animated:YES completion:nil];
        //: [cropImageViewController setCroppedImage:^(UIImage *image) {
        [cropImageViewController setThoughtImageWith:^(UIImage *image) {
            //: [self pickImage:image];
            [self fullPhaseOfTheMoonImage:image];
        //: }];
        }];

    }
}

//: - (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker{
- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker{
    //: if ([self.delegate respondsToSelector:@selector(KIImagePickerControllerDidCancel:)]) {
    if ([self.delegate respondsToSelector:@selector(sessionsed:)]) {
        //: [self.delegate KIImagePickerControllerDidCancel:self];
        [self.delegate sessionsed:self];
    }
    //: [self dismiss];
    [self find];
}


//: @end
@end

Byte * LingDataToCache(Byte *data) {
    int engineGag = data[0];
    int sessionSleeve = data[1];
    int beggarMyNeighbourStrategy = data[2];
    if (!engineGag) return data + beggarMyNeighbourStrategy;
    for (int i = 0; i < sessionSleeve / 2; i++) {
        int begin = beggarMyNeighbourStrategy + i;
        int end = beggarMyNeighbourStrategy + sessionSleeve - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[beggarMyNeighbourStrategy + sessionSleeve] = 0;
    return data + beggarMyNeighbourStrategy;
}

NSString *StringFromLingData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)LingDataToCache(data)];
}  
