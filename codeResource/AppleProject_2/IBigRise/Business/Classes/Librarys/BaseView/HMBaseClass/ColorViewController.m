
#import <Foundation/Foundation.h>

NSString *StringFromFluData(Byte *data);


//: handleNavigationTransition:
Byte kStr_fibTitle[] = {32, 27, 30, 5, 195, 134, 127, 140, 130, 138, 131, 108, 127, 148, 135, 133, 127, 146, 135, 141, 140, 114, 144, 127, 140, 145, 135, 146, 135, 141, 140, 88, 64};


//: icon_empty_data
Byte kStr_allowSizeName[] = {21, 15, 5, 14, 186, 83, 144, 31, 110, 197, 101, 134, 188, 55, 110, 104, 116, 115, 100, 106, 114, 117, 121, 126, 100, 105, 102, 121, 102, 95};


//: #F9F9F9
Byte kStr_optimisticMessageData[] = {55, 7, 36, 9, 187, 19, 62, 200, 130, 71, 106, 93, 106, 93, 106, 93, 176};


//: No related content, try another word
Byte kStr_viseTitle[] = {74, 36, 43, 10, 131, 76, 232, 171, 230, 19, 121, 154, 75, 157, 144, 151, 140, 159, 144, 143, 75, 142, 154, 153, 159, 144, 153, 159, 87, 75, 159, 157, 164, 75, 140, 153, 154, 159, 147, 144, 157, 75, 162, 154, 157, 143, 39};


//: _isTransitioning
Byte kStr_kingdomName[] = {70, 16, 36, 7, 130, 116, 91, 131, 141, 151, 120, 150, 133, 146, 151, 141, 152, 141, 147, 146, 141, 146, 139, 170};


//: #612CF9
Byte kStr_outsideMerelyData[] = {44, 7, 98, 8, 98, 207, 222, 129, 133, 152, 147, 148, 165, 168, 155, 23};


//: #875FFA
Byte kStr_resideTingValue[] = {33, 7, 12, 13, 12, 175, 155, 98, 171, 113, 148, 145, 58, 47, 68, 67, 65, 82, 82, 77, 184};

// __DEBUG__
// __CLOSE_PRINT__
//
//  ColorViewController.m
//  HuaxiajiaboApp
//
//  Created by HuamoMac on 15/4/20.
//  Copyright (c) 2015年 HuaMo. All rights reserved.
//

// __M_A_C_R_O__
//: #import "HMViewController.h"
#import "ColorViewController.h"

//: @implementation HMViewController
@implementation ColorViewController
//: @synthesize viewControllerDelegate = _viewControllerDelegate;
@synthesize viewControllerDelegate = _viewControllerDelegate;


//: - (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    //: self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    //: if (self) {
    if (self) {

    }
    //: return self;
    return self;
}

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //self.view.backgroundColor = CommonBGView_Color;
    //: self.view.backgroundColor = [UIColor colorWithHexString:@"#F9F9F9"];
    self.view.backgroundColor = [UIColor box:StringFromFluData(kStr_optimisticMessageData)];

    //: self.navigationController.navigationBar.barTintColor = [UIColor colorWithPatternImage:[SNGradientHelper getLinearGradientImage:[UIColor colorWithHexString:@"#875FFA"] and:[UIColor colorWithHexString:@"#612CF9"] directionType:SNLinearGradientDirectionLevel]];
    self.navigationController.navigationBar.barTintColor = [UIColor colorWithPatternImage:[VisualImageDisable length:[UIColor box:StringFromFluData(kStr_resideTingValue)] canImage:[UIColor box:StringFromFluData(kStr_outsideMerelyData)] labelMessage:SNLinearGradientDirectionLevel]];
    //: [self.navigationController.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor whiteColor],NSFontAttributeName:[UIFont boldSystemFontOfSize:16]}];
    [self.navigationController.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor whiteColor],NSFontAttributeName:[UIFont boldSystemFontOfSize:16]}];
}


//: #pragma - 系统返回手势改装
#pragma - 系统返回手势改装

/**
 注意：这个手势是添加在了self.navigationController.view上
 最好在：navigationController->RootViewController实现这个方法
 
 使用的时候一定要配置方法：注意！注意！注意！
 - (void)viewWillAppear:(BOOL)animated{
 [super viewWillAppear:animated];
 [self.navigationController setNavigationBarHidden:YES animated:animated];
 
 }
 */
//: - (void)addFullScreenPopGesture{
- (void)tapGesture{
    // 获取系统自带滑动手势的target对象
    //: id target = self.navigationController.interactivePopGestureRecognizer.delegate;
    id target = self.navigationController.interactivePopGestureRecognizer.delegate;
    //: SEL action = NSSelectorFromString(@"handleNavigationTransition:");
    SEL action = NSSelectorFromString(StringFromFluData(kStr_fibTitle));
    // 创建全屏滑动手势，调用系统自带滑动手势的target的action方法
    //: UIPanGestureRecognizer *pan = [[UIPanGestureRecognizer alloc] initWithTarget:target action:action];
    UIPanGestureRecognizer *pan = [[UIPanGestureRecognizer alloc] initWithTarget:target action:action];
    //: pan.delegate = self;
    pan.delegate = self;
    //: pan.maximumNumberOfTouches = 1;
    pan.maximumNumberOfTouches = 1;
    // 给导航控制器的view添加全屏滑动手势
    //: [self.navigationController.view addGestureRecognizer:pan];
    [self.navigationController.view addGestureRecognizer:pan];
}

/**
 注意
 */
//: - (void)enableFullScreenPopGesture:(BOOL)enable {
- (void)must:(BOOL)enable {
    /************************/
//    //注意：暂时取消侧拉pop手势
//    for (UITapGestureRecognizer *gesture in self.navigationController.view.gestureRecognizers) {
//        
//        gesture.enabled = NO;
//        return;
//    }

    //如果只有系统返回手势，添加自定义手势
    //: if (self.navigationController.view.gestureRecognizers.count == 1) {
    if (self.navigationController.view.gestureRecognizers.count == 1) {
        //: [self addFullScreenPopGesture];
        [self tapGesture];
    }

    //: for (UITapGestureRecognizer *gesture in self.navigationController.view.gestureRecognizers) {
    for (UITapGestureRecognizer *gesture in self.navigationController.view.gestureRecognizers) {

        //: gesture.enabled = enable;
        gesture.enabled = enable;
    }
}

//: - (BOOL)gestureRecognizerShouldBegin:(UIPanGestureRecognizer *)gestureRecognizer{
- (BOOL)gestureRecognizerShouldBegin:(UIPanGestureRecognizer *)gestureRecognizer{
    //: if (self.navigationController.viewControllers.count <= 1) {
    if (self.navigationController.viewControllers.count <= 1) {
        //: return NO;
        return NO;
    }

    // Ignore pan gesture when the navigation controller is currently in transition.
    //: if ([[self.navigationController valueForKey:@"_isTransitioning"] boolValue]) {
    if ([[self.navigationController valueForKey:StringFromFluData(kStr_kingdomName)] boolValue]) {
        //: return NO;
        return NO;
    }

    // Prevent calling the handler when the gesture begins in an opposite direction.
    //: CGPoint translation = [gestureRecognizer translationInView:gestureRecognizer.view];
    CGPoint translation = [gestureRecognizer translationInView:gestureRecognizer.view];
    //: if (translation.x <= 0) {
    if (translation.x <= 0) {
        //: return NO;
        return NO;
    }

    //: return YES;
    return YES;
}


//: @end
@end



//: @implementation UIViewController (HM)
@implementation UIViewController (HM)


//: #pragma mark - empty view
#pragma mark - empty view

//: - (void)showEmptyView{
- (void)victory{
    //: [self showEmptyViewWithMessage:@"No related content, try another word"];
    [self radiogram:StringFromFluData(kStr_viseTitle)];
}

//: - (void)showEmptyViewWithMessage:(NSString *)message{
- (void)radiogram:(NSString *)message{
    //: [self showEmptyViewWithMessage:message inView:self.view];
    [self colorFormat:message grapple:self.view];
}


//: - (void)showEmptyViewWithImageName:(NSString *)imageName inView:(UIView *)inView{
- (void)enable:(NSString *)imageName nim:(UIView *)inView{
    //: [self showEmptyViewWithMessage:@"" inView:inView imageName:imageName];
    [self should:@"" viewTableFormat:inView tiptoe:imageName];
}

//: - (void)showEmptyViewWithMessage:(NSString *)message inView:(UIView *)inView{
- (void)colorFormat:(NSString *)message grapple:(UIView *)inView{
    //: [self showEmptyViewWithMessage:message inView:inView imageName:@"icon_empty_data"];
    [self should:message viewTableFormat:inView tiptoe:StringFromFluData(kStr_allowSizeName)];
}

//: - (void)showEmptyViewWithMessage:(NSString *)message inView:(UIView *)inView imageName:(NSString *)imageName{
- (void)should:(NSString *)message viewTableFormat:(UIView *)inView tiptoe:(NSString *)imageName{
    //: UIView *emptyView= (UIView *)[inView viewWithTag:53333];
    UIView *emptyView= (UIView *)[inView viewWithTag:53333];
    //: if (!emptyView) {
    if (!emptyView) {
        //: emptyView = [[UIView alloc]init];
        emptyView = [[UIView alloc]init];
        //: emptyView.backgroundColor = [UIColor clearColor];
        emptyView.backgroundColor = [UIColor clearColor];
        //: emptyView.frame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height);
        emptyView.frame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height);
        //: emptyView.tag = 53333;
        emptyView.tag = 53333;

        //: UIImageView *emptyImage = [[UIImageView alloc]init];
        UIImageView *emptyImage = [[UIImageView alloc]init];
        //: emptyImage.frame = CGRectMake(([[UIScreen mainScreen] bounds].size.width-300)/2.0f, ([[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice vg_statusBarHeight])-(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom)-250)/2.0f, 300, 200);
        emptyImage.frame = CGRectMake(([[UIScreen mainScreen] bounds].size.width-300)/2.0f, ([[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice encounter])-(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom)-250)/2.0f, 300, 200);
        //: emptyImage.image = [UIImage imageNamed:imageName];
        emptyImage.image = [UIImage imageNamed:imageName];
        //: [emptyView addSubview:emptyImage];
        [emptyView addSubview:emptyImage];

        //: UILabel *emptyLabel = [[UILabel alloc] init];
        UILabel *emptyLabel = [[UILabel alloc] init];
        //: emptyLabel.frame = CGRectMake(40, 0, [[UIScreen mainScreen] bounds].size.width-80, 20);
        emptyLabel.frame = CGRectMake(40, 0, [[UIScreen mainScreen] bounds].size.width-80, 20);
        //: emptyLabel.backgroundColor = [UIColor clearColor];
        emptyLabel.backgroundColor = [UIColor clearColor];
        //: emptyLabel.textColor = [UIColor lightGrayColor];
        emptyLabel.textColor = [UIColor lightGrayColor];
        //: emptyLabel.textAlignment = NSTextAlignmentCenter;
        emptyLabel.textAlignment = NSTextAlignmentCenter;
        //: emptyLabel.font = [UIFont systemFontOfSize:13];
        emptyLabel.font = [UIFont systemFontOfSize:13];
        //: emptyLabel.text = message;
        emptyLabel.text = message;
        //: [emptyView addSubview:emptyLabel];
        [emptyView addSubview:emptyLabel];
//        [emptyLabel underView:emptyImage padding:8];
//        [emptyLabel verticalAllignment:emptyImage];

    }


    //emptyView.center = CGPointMake(inView.width/2.0, inView.height/2.0);
    //: [inView addSubview:emptyView];
    [inView addSubview:emptyView];
    //: [inView bringSubviewToFront:emptyView];
    [inView bringSubviewToFront:emptyView];
}

//: - (void)hideEmptyView{
- (void)lifeless{
    //: [self hideEmptyViewInView:self.view];
    [self titleLength:self.view];
}
//: - (void)hideEmptyViewInView:(UIView *)view{
- (void)titleLength:(UIView *)view{

    //: UIView *emptyView= (UIView *)[view viewWithTag:53333];
    UIView *emptyView= (UIView *)[view viewWithTag:53333];

    //: emptyView.hidden = YES;
    emptyView.hidden = YES;
    //: [emptyView removeFromSuperview];
    [emptyView removeFromSuperview];
}


//: #pragma mark - 网络异常时调用此方法
#pragma mark - 网络异常时调用此方法

//: - (BOOL)canShowNotNetView{
- (BOOL)formationView{
    //: return NO;
    return NO;
}

//: - (void)refrushWithNotNet{
- (void)speakerphone{


}





//: @end
@end

Byte * FluDataToCache(Byte *data) {
    int sensoryActivity = data[0];
    int markName = data[1];
    Byte titleLegallySidewalk = data[2];
    int headquartersAbase = data[3];
    if (!sensoryActivity) return data + headquartersAbase;
    for (int i = headquartersAbase; i < headquartersAbase + markName; i++) {
        int value = data[i] - titleLegallySidewalk;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[headquartersAbase + markName] = 0;
    return data + headquartersAbase;
}

NSString *StringFromFluData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)FluDataToCache(data)];
}
