
#import <Foundation/Foundation.h>

NSString *StringFromImproveData(Byte *data);


//: icon_message_normal
Byte kStr_gagContent[] = {66, 19, 10, 73, 105, 201, 119, 217, 95, 151, 108, 97, 109, 114, 111, 110, 95, 101, 103, 97, 115, 115, 101, 109, 95, 110, 111, 99, 105, 44};


//: icon_message_pressed
Byte kStr_capeTensionData[] = {96, 20, 5, 226, 113, 100, 101, 115, 115, 101, 114, 112, 95, 101, 103, 97, 115, 115, 101, 109, 95, 110, 111, 99, 105, 223};


//: icon_contact_pressed
Byte kStr_tartText[] = {1, 20, 6, 195, 214, 247, 100, 101, 115, 115, 101, 114, 112, 95, 116, 99, 97, 116, 110, 111, 99, 95, 110, 111, 99, 105, 221};


//: #000000
Byte kStr_warningText[] = {95, 7, 9, 10, 3, 214, 33, 200, 105, 48, 48, 48, 48, 48, 48, 35, 95};


//: image
Byte kStr_objectLysisAddTitle[] = {66, 5, 11, 19, 18, 84, 179, 26, 37, 68, 59, 101, 103, 97, 109, 105, 144};


//: KEKENotificationLanguageChanged
Byte kStr_willingViewData[] = {37, 31, 5, 246, 37, 100, 101, 103, 110, 97, 104, 67, 101, 103, 97, 117, 103, 110, 97, 76, 110, 111, 105, 116, 97, 99, 105, 102, 105, 116, 111, 78, 69, 75, 69, 75, 165};


//: title
Byte kStr_policyVeryTitleValue[] = {66, 5, 3, 101, 108, 116, 105, 116, 98};


//: icon_setting_pressed
Byte kStr_oofThereContent[] = {96, 20, 5, 236, 91, 100, 101, 115, 115, 101, 114, 112, 95, 103, 110, 105, 116, 116, 101, 115, 95, 110, 111, 99, 105, 211};


//: badgeValue
Byte kStr_convictTrulyName[] = {74, 10, 7, 128, 179, 28, 107, 101, 117, 108, 97, 86, 101, 103, 100, 97, 98, 72};


//: #875FFA
Byte kStr_legallyFurnitureTitle[] = {11, 7, 5, 40, 37, 65, 70, 70, 53, 55, 56, 35, 218};


//: #612CF9
Byte kStr_piracyStainData[] = {69, 7, 11, 90, 158, 159, 134, 194, 89, 55, 193, 57, 70, 67, 50, 49, 54, 35, 98};


//: icon_setting_normal
Byte kStr_cramValue[] = {98, 19, 6, 115, 162, 136, 108, 97, 109, 114, 111, 110, 95, 103, 110, 105, 116, 116, 101, 115, 95, 110, 111, 99, 105, 26};


//: icon_contact_normal
Byte kStr_playoffUntilContent[] = {40, 19, 8, 8, 2, 105, 241, 236, 108, 97, 109, 114, 111, 110, 95, 116, 99, 97, 116, 110, 111, 99, 95, 110, 111, 99, 105, 78};


//: activity_user_profile_chat
Byte kStr_elderlyInvestigationData[] = {52, 26, 11, 115, 172, 5, 130, 89, 2, 63, 242, 116, 97, 104, 99, 95, 101, 108, 105, 102, 111, 114, 112, 95, 114, 101, 115, 117, 95, 121, 116, 105, 118, 105, 116, 99, 97, 20};


//: selectedImage
Byte kStr_successEventName[] = {9, 13, 13, 136, 27, 217, 10, 183, 241, 183, 13, 22, 174, 101, 103, 97, 109, 73, 100, 101, 116, 99, 101, 108, 101, 115, 242};


//: #A148FF
Byte kStr_tapPitName[] = {95, 7, 13, 103, 123, 207, 255, 91, 128, 116, 193, 42, 9, 70, 70, 56, 52, 49, 65, 35, 96};


//: #888888
Byte kStr_sportName[] = {29, 7, 12, 213, 218, 25, 82, 62, 164, 42, 172, 242, 56, 56, 56, 56, 56, 56, 35, 176};


//: contacts_list_title
Byte kStr_layerVaryText[] = {29, 19, 3, 101, 108, 116, 105, 116, 95, 116, 115, 105, 108, 95, 115, 116, 99, 97, 116, 110, 111, 99, 49};


//: main_tab_my
Byte kStr_topWithAtValue[] = {62, 11, 10, 146, 20, 94, 77, 34, 86, 251, 121, 109, 95, 98, 97, 116, 95, 110, 105, 97, 109, 201};

// __DEBUG__
// __CLOSE_PRINT__
//
//  MainTabController.m
//  NIMDemo
//
//  Created by chris on 15/2/2.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESMainTabController.h"
#import "SumBarController.h"
//: #import "ZZZAppDelegate.h"
#import "AppDelegate.h"
//: #import "NTESSessionListViewController.h"
#import "HideViewController.h"
//: #import "UIImage+NTESColor.h"
#import "UIImage+Color.h"
//: #import "NTESCustomNotificationDB.h"
#import "IrruptDb.h"
//: #import "NTESNotificationCenter.h"
#import "BeChange.h"
//: #import "NTESNavigationHandler.h"
#import "BringForthHandler.h"
//: #import "NTESNavigationAnimator.h"
#import "BoardStatus.h"
//: #import "NTESBundleSetting.h"
#import "BackgroundTingIncidentGreen.h"
//: #import "ZZZContactsViewController.h"
#import "MessageViewController.h"
//: #import "ZZZVideoListViewController.h"
#import "PictureTapPositionCorrigendaViewController.h"
//: #import "ZZZMainCenterViewController.h"
#import "IndividualViewController.h"
//: #import "CustomTabBar.h"
#import "CountView.h"
//: #import "CustomTabBarController.h"
#import "ImageViewController.h"

//: typedef NS_ENUM(NSInteger,NTESMainTabType) {
typedef NS_ENUM(NSInteger,NTESMainTabType) {
    //: NTESMainTabTypeMessageList, 
    NTESMainTabTypeMessageList, //聊天
    //: NTESMainTabTypeContact, 
    NTESMainTabTypeContact, //通讯录
    //: NTESMainTabTypeChatroomList, 
    NTESMainTabTypeChatroomList, //聊天室
    //: NTESMainTabTypeSetting, 
    NTESMainTabTypeSetting, //设置
//: };
};

//: @interface NTESMainTabController ()<NIMSystemNotificationManagerDelegate,NIMConversationManagerDelegate,NIMChatManagerDelegate,NIMLoginManagerDelegate,CustomTabBarControllerDelegate>
@interface SumBarController ()<NIMSystemNotificationManagerDelegate,NIMConversationManagerDelegate,NIMChatManagerDelegate,NIMLoginManagerDelegate,EnterContainer>

//: @property (nonatomic,strong) NSArray *navigationHandlers;
@property (nonatomic,strong) NSArray *navigationHandlers;

//: @property (nonatomic,strong) NTESNavigationAnimator *animator;
@property (nonatomic,strong) BoardStatus *animator;

//: @property (nonatomic,assign) NSInteger sessionUnreadCount;
@property (nonatomic,assign) NSInteger sessionUnreadCount;

//: @property (nonatomic,assign) NSInteger systemUnreadCount;
@property (nonatomic,assign) NSInteger systemUnreadCount;

//: @property (nonatomic,assign) NSInteger customSystemUnreadCount;
@property (nonatomic,assign) NSInteger customSystemUnreadCount;

//: @property (nonatomic,copy) NSDictionary *configs;
@property (nonatomic,copy) NSDictionary *configs;

//: @end
@end

//: @implementation NTESMainTabController
@implementation SumBarController

//: + (instancetype)instance{
+ (instancetype)displayName{
    //: ZZZAppDelegate *delegete = (ZZZAppDelegate *)[UIApplication sharedApplication].delegate;
    AppDelegate *delegete = (AppDelegate *)[UIApplication sharedApplication].delegate;
    //: UIViewController *vc = delegete.window.rootViewController;
    UIViewController *vc = delegete.window.rootViewController;
    //: if ([vc isKindOfClass:[NTESMainTabController class]]) {
    if ([vc isKindOfClass:[SumBarController class]]) {
        //: return (NTESMainTabController *)vc;
        return (SumBarController *)vc;
    //: }else{
    }else{
        //: return nil;
        return nil;
    }
}


//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: [self setUpSubNav];
    [self size];
    //: [[NIMSDK sharedSDK].systemNotificationManager addDelegate:self];
    [[NIMSDK sharedSDK].systemNotificationManager addDelegate:self];
    //: [[NIMSDK sharedSDK].conversationManager addDelegate:self];
    [[NIMSDK sharedSDK].conversationManager addDelegate:self];

    //: extern NSString *kConst_methodValue;
    extern NSString *kConst_methodValue;
    //: [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(onCustomNotifyChanged:) name:kConst_methodValue object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(withed:) name:kConst_methodValue object:nil];
    //: [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(languageChanged:) name:@"KEKENotificationLanguageChanged" object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(homegrownIndigenousLanguageForQuickColor:) name:StringFromImproveData(kStr_willingViewData) object:nil];

    // 设置自定义TabBar的颜色
    //: self.customTabBar.itemTintColor = [UIColor colorWithHexString:@"#888888"];
    self.customTabBar.itemTintColor = [UIColor box:StringFromImproveData(kStr_sportName)];
    //: self.customTabBar.selectedItemTintColor = [UIColor colorWithHexString:@"#000000"];
    self.customTabBar.selectedItemTintColor = [UIColor box:StringFromImproveData(kStr_warningText)];

    //: self.delegate = self;
    self.delegate = self;
}

//: - (BOOL)customTabBarController:(UIViewController *)tabBarController shouldSelectViewController:(UIViewController *)viewController {
- (BOOL)image:(UIViewController *)tabBarController threadMessage:(UIViewController *)viewController {
    //: [UIView setAnimationsEnabled:NO];
    [UIView setAnimationsEnabled:NO];
    //: return YES;
    return YES;
}

//: - (void)customTabBarController:(UIViewController *)tabBarController didSelectViewController:(UIViewController *)viewController {
- (void)key:(UIViewController *)tabBarController should:(UIViewController *)viewController {
    //: [UIView setAnimationsEnabled:YES];
    [UIView setAnimationsEnabled:YES];
}

//: - (void)viewWillAppear:(BOOL)animated{
- (void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];

    // 设置自定义TabBar的颜色
    //: self.customTabBar.itemTintColor = [UIColor colorWithHexString:@"#888888"];
    self.customTabBar.itemTintColor = [UIColor box:StringFromImproveData(kStr_sportName)];
    //: self.customTabBar.selectedItemTintColor = [UIColor colorWithHexString:@"#000000"];
    self.customTabBar.selectedItemTintColor = [UIColor box:StringFromImproveData(kStr_warningText)];

    // 如果是根视图控制器，应该显示 TabBar
    //: BOOL isRoot = YES;
    BOOL isRoot = YES;
    //: for (UINavigationController *nav in self.viewControllers) {
    for (UINavigationController *nav in self.viewControllers) {
        //: if (nav.viewControllers.count > 1) {
        if (nav.viewControllers.count > 1) {
            //: isRoot = NO;
            isRoot = NO;
            //: break;
            break;
        }
    }

    //: if (isRoot && self.customTabBar.hidden) {
    if (isRoot && self.customTabBar.hidden) {
        //: [self showTabBar];
        [self geneticMutationBar];
    }
}

//: - (void)viewDidAppear:(BOOL)animated
- (void)viewDidAppear:(BOOL)animated
{
    //: [super viewDidAppear:animated];
    [super viewDidAppear:animated];
    //会话界面发送拍摄的视频，拍摄结束后点击发送后可能顶部会有红条，导致的界面错位。
    //: self.view.frame = [UIScreen mainScreen].bounds;
    self.view.frame = [UIScreen mainScreen].bounds;
}

//: - (void)dealloc{
- (void)dealloc{
    //: [[NIMSDK sharedSDK].systemNotificationManager removeDelegate:self];
    [[NIMSDK sharedSDK].systemNotificationManager removeDelegate:self];
    //: [[NIMSDK sharedSDK].conversationManager removeDelegate:self];
    [[NIMSDK sharedSDK].conversationManager removeDelegate:self];
    //: [[NSNotificationCenter defaultCenter] removeObserver:self];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

//: - (NSArray*)tabbars{
- (NSArray*)nim{
    //: self.sessionUnreadCount = [NIMSDK sharedSDK].conversationManager.allUnreadCount;
    self.sessionUnreadCount = [NIMSDK sharedSDK].conversationManager.allUnreadCount;
//    self.systemUnreadCount   = [NIMSDK sharedSDK].systemNotificationManager.allUnreadCount;
    //: self.customSystemUnreadCount = [[NTESCustomNotificationDB sharedInstance] unreadCount];
    self.customSystemUnreadCount = [[IrruptDb dueDate] unreadCount];
    //: NSMutableArray *items = [[NSMutableArray alloc] init];
    NSMutableArray *items = [[NSMutableArray alloc] init];

    //: [items addObject:@(0)];
    [items addObject:@(0)];
    //: [items addObject:@(1)];
    [items addObject:@(1)];
    //: [items addObject:@(2)];
    [items addObject:@(2)];
//    [items addObject:@(3)];

    //: return items;
    return items;
}

//: #pragma mark - Notification
#pragma mark - Notification
//: - (void)languageChanged:(NSNotification *)noti {
- (void)homegrownIndigenousLanguageForQuickColor:(NSNotification *)noti {
    // 重新设置导航栏和标签栏
    //: [self setUpSubNav];
    [self size];

    // 确保在语言切换后 TabBar 可见
    //: dispatch_after(dispatch_time((0ull), (int64_t)(0.1 * 1000000000ull)), dispatch_get_main_queue(), ^{
    dispatch_after(dispatch_time((0ull), (int64_t)(0.1 * 1000000000ull)), dispatch_get_main_queue(), ^{
        //: if (self.customTabBar.hidden) {
        if (self.customTabBar.hidden) {
            //: [self showTabBar];
            [self geneticMutationBar];
        }
    //: });
    });
}

//: - (void)setUpSubNav{
- (void)size{
    //: NSMutableArray *handleArray = [[NSMutableArray alloc] init];
    NSMutableArray *handleArray = [[NSMutableArray alloc] init];
    //: NSMutableArray *vcArray = [[NSMutableArray alloc] init];
    NSMutableArray *vcArray = [[NSMutableArray alloc] init];
    //: [self.tabbars enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
    [self.nim enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        //: NSDictionary * item =[self vcInfoForTabType:[obj integerValue]];
        NSDictionary * item =[self dataFormat:[obj integerValue]];
        //: NSString *vcName = item[@"vc"];
        NSString *vcName = item[@"vc"];
        //: NSString *title = @"";
        NSString *title = @"";
        //: if(idx == 0){
        if(idx == 0){
            //: title = [NTESLanguageManager getTextWithKey:@"activity_user_profile_chat"];
            title = [LabelCell tinkleKey:StringFromImproveData(kStr_elderlyInvestigationData)];
        //: }else if (idx == 1){
        }else if (idx == 1){
            //: title = [NTESLanguageManager getTextWithKey:@"contacts_list_title"];
            title = [LabelCell tinkleKey:StringFromImproveData(kStr_layerVaryText)];
        //: }else if (idx == 2){
        }else if (idx == 2){
            //: title = [NTESLanguageManager getTextWithKey:@"main_tab_my"];
            title = [LabelCell tinkleKey:StringFromImproveData(kStr_topWithAtValue)];
        }

        //: NSString *imageName = item[@"image"];
        NSString *imageName = item[StringFromImproveData(kStr_objectLysisAddTitle)];
        //: NSString *imageSelected = item[@"selectedImage"];
        NSString *imageSelected = item[StringFromImproveData(kStr_successEventName)];
        //: Class clazz = NSClassFromString(vcName);
        Class clazz = NSClassFromString(vcName);
        //: UIViewController *vc = [[clazz alloc] initWithNibName:nil bundle:nil];
        UIViewController *vc = [[clazz alloc] initWithNibName:nil bundle:nil];
        //: vc.hidesBottomBarWhenPushed = NO;
        vc.hidesBottomBarWhenPushed = NO;
        //: UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:vc];
        UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:vc];

        //: UIImage *normalImage = [UIImage imageNamed:imageName];
        UIImage *normalImage = [UIImage imageNamed:imageName];
        //: normalImage = [normalImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        normalImage = [normalImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        //: UIImage *selectImage = [UIImage imageNamed:imageSelected];
        UIImage *selectImage = [UIImage imageNamed:imageSelected];
        //: selectImage = [selectImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        selectImage = [selectImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];

        //: nav.tabBarItem = [[UITabBarItem alloc] initWithTitle:title
        nav.tabBarItem = [[UITabBarItem alloc] initWithTitle:title
                                                       //: image:normalImage
                                                       image:normalImage
                                               //: selectedImage:selectImage];
                                               selectedImage:selectImage];
        //: nav.tabBarItem.tag = idx;
        nav.tabBarItem.tag = idx;
        //: NSInteger badge = [item[@"badgeValue"] integerValue];
        NSInteger badge = [item[StringFromImproveData(kStr_convictTrulyName)] integerValue];
        //: if (badge) {
        if (badge) {
            //: nav.tabBarItem.badgeValue = [NSString stringWithFormat:@"%zd",badge];
            nav.tabBarItem.badgeValue = [NSString stringWithFormat:@"%zd",badge];
        }
        //: NTESNavigationHandler *handler = [[NTESNavigationHandler alloc] initWithNavigationController:nav];
        BringForthHandler *handler = [[BringForthHandler alloc] initWithIndex:nav];
        //: nav.delegate = handler;
        nav.delegate = handler;

        //: if (@available(iOS 15.0, *)) {
        if (@available(iOS 15.0, *)) {

            //: NSDictionary *dic = @{NSForegroundColorAttributeName : [UIColor whiteColor],
            NSDictionary *dic = @{NSForegroundColorAttributeName : [UIColor whiteColor],
                                  //: NSFontAttributeName : [UIFont boldSystemFontOfSize:11]};
                                  NSFontAttributeName : [UIFont boldSystemFontOfSize:11]};

            //: UINavigationBarAppearance *barApp = [UINavigationBarAppearance new];
            UINavigationBarAppearance *barApp = [UINavigationBarAppearance new];
            //: barApp.backgroundColor = [UIColor colorWithHexString:@"#A148FF"];
            barApp.backgroundColor = [UIColor box:StringFromImproveData(kStr_tapPitName)];
            //: barApp.shadowColor = [UIColor colorWithHexString:@"#A148FF"];
            barApp.shadowColor = [UIColor box:StringFromImproveData(kStr_tapPitName)];
            //: barApp.titleTextAttributes = dic;
            barApp.titleTextAttributes = dic;

            //: nav.navigationBar.scrollEdgeAppearance = barApp;
            nav.navigationBar.scrollEdgeAppearance = barApp;
            //: nav.navigationBar.standardAppearance = barApp;
            nav.navigationBar.standardAppearance = barApp;
        }

        //: [vcArray addObject:nav];
        [vcArray addObject:nav];
        //: [handleArray addObject:handler];
        [handleArray addObject:handler];
    //: }];
    }];
    //: self.viewControllers = [NSArray arrayWithArray:vcArray];
    self.viewControllers = [NSArray arrayWithArray:vcArray];
    //: self.navigationHandlers = [NSArray arrayWithArray:handleArray];
    self.navigationHandlers = [NSArray arrayWithArray:handleArray];


    //: UINavigationBar *navBar = [UINavigationBar appearance];
    UINavigationBar *navBar = [UINavigationBar appearance];

    //: NSDictionary *dic = @{NSForegroundColorAttributeName : [UIColor blackColor],
    NSDictionary *dic = @{NSForegroundColorAttributeName : [UIColor blackColor],
                          //: NSFontAttributeName : [UIFont boldSystemFontOfSize:16]};
                          NSFontAttributeName : [UIFont boldSystemFontOfSize:16]};

    //: navBar.barTintColor = [UIColor colorWithPatternImage:[SNGradientHelper getLinearGradientImage:[UIColor colorWithHexString:@"#875FFA"] and:[UIColor colorWithHexString:@"#612CF9"] directionType:SNLinearGradientDirectionVertical]];
    navBar.barTintColor = [UIColor colorWithPatternImage:[VisualImageDisable length:[UIColor box:StringFromImproveData(kStr_legallyFurnitureTitle)] canImage:[UIColor box:StringFromImproveData(kStr_piracyStainData)] labelMessage:SNLinearGradientDirectionVertical]];
    //: [navBar setTitleTextAttributes:dic];
    [navBar setTitleTextAttributes:dic];
    //: [navBar setShadowImage:[UIImage new]];
    [navBar setShadowImage:[UIImage new]];
    //: [navBar setBackgroundImage:[SNGradientHelper getLinearGradientImage:[UIColor colorWithHexString:@"#875FFA"] and:[UIColor colorWithHexString:@"#612CF9"] directionType:SNLinearGradientDirectionLevel] forBarMetrics:UIBarMetricsDefault];
    [navBar setBackgroundImage:[VisualImageDisable length:[UIColor box:StringFromImproveData(kStr_legallyFurnitureTitle)] canImage:[UIColor box:StringFromImproveData(kStr_piracyStainData)] labelMessage:SNLinearGradientDirectionLevel] forBarMetrics:UIBarMetricsDefault];

    //: navBar.translucent = YES;
    navBar.translucent = YES;
    //: navBar.tintColor = [UIColor grayColor];
    navBar.tintColor = [UIColor grayColor];

    // 设置自定义TabBar的样式
    //: self.customTabBar.backgroundColor = [UIColor whiteColor];
    self.customTabBar.backgroundColor = [UIColor whiteColor];
    // 刷新自定义TabBar
    //: [self.customTabBar refreshTabBarItems];
    [self.customTabBar image];
}

//: - (void)viewDidLayoutSubviews {
- (void)viewDidLayoutSubviews {
    //: [super viewDidLayoutSubviews];
    [super viewDidLayoutSubviews];
}

//: #pragma mark - NIMConversationManagerDelegate
#pragma mark - NIMConversationManagerDelegate
//: - (void)didAddRecentSession:(NIMRecentSession *)recentSession
- (void)didAddRecentSession:(NIMRecentSession *)recentSession
           //: totalUnreadCount:(NSInteger)totalUnreadCount{
           totalUnreadCount:(NSInteger)totalUnreadCount{
    //: self.sessionUnreadCount = totalUnreadCount;
    self.sessionUnreadCount = totalUnreadCount;
    //: [self refreshSessionBadge];
    [self frame];
}


//: - (void)didUpdateRecentSession:(NIMRecentSession *)recentSession
- (void)didUpdateRecentSession:(NIMRecentSession *)recentSession
              //: totalUnreadCount:(NSInteger)totalUnreadCount{
              totalUnreadCount:(NSInteger)totalUnreadCount{
    //: self.sessionUnreadCount = totalUnreadCount;
    self.sessionUnreadCount = totalUnreadCount;
    //: [self refreshSessionBadge];
    [self frame];
}

//: - (void)didUpdateUnreadCountDic:(NSDictionary *)unreadCountDic
- (void)didUpdateUnreadCountDic:(NSDictionary *)unreadCountDic
{
    //: NSLog(@"%@",unreadCountDic);
    //: NSInteger unreadCount = [[NIMSDK sharedSDK].conversationManager allUnreadCount:YES];
    NSInteger unreadCount = [[NIMSDK sharedSDK].conversationManager allUnreadCount:YES];
    //: self.sessionUnreadCount = unreadCount;
    self.sessionUnreadCount = unreadCount;
    //: [self refreshSessionBadge];
    [self frame];
}

//: - (void)didRemoveRecentSession:(NIMRecentSession *)recentSession totalUnreadCount:(NSInteger)totalUnreadCount{
- (void)didRemoveRecentSession:(NIMRecentSession *)recentSession totalUnreadCount:(NSInteger)totalUnreadCount{
    //: self.sessionUnreadCount = totalUnreadCount;
    self.sessionUnreadCount = totalUnreadCount;
    //: [self refreshSessionBadge];
    [self frame];
}

//: - (void)messagesDeletedInSession:(NIMSession *)session{
- (void)messagesDeletedInSession:(NIMSession *)session{
    //: self.sessionUnreadCount = [NIMSDK sharedSDK].conversationManager.allUnreadCount;
    self.sessionUnreadCount = [NIMSDK sharedSDK].conversationManager.allUnreadCount;
    //: [self refreshSessionBadge];
    [self frame];
}

//: - (void)allMessagesDeleted{
- (void)allMessagesDeleted{
    //: self.sessionUnreadCount = 0;
    self.sessionUnreadCount = 0;
    //: [self refreshSessionBadge];
    [self frame];
}

//: - (void)allMessagesRead
- (void)allMessagesRead
{
    //: self.sessionUnreadCount = 0;
    self.sessionUnreadCount = 0;
    //: [self refreshSessionBadge];
    [self frame];
}

//: - (void)onBatchMarkMessagesReadInSessions:(NSArray<NIMSession *> *)sessions
- (void)onBatchMarkMessagesReadInSessions:(NSArray<NIMSession *> *)sessions
{
    //: self.sessionUnreadCount = [NIMSDK sharedSDK].conversationManager.allUnreadCount;
    self.sessionUnreadCount = [NIMSDK sharedSDK].conversationManager.allUnreadCount;
    //: [self refreshSessionBadge];
    [self frame];
}

//: #pragma mark - NIMSystemNotificationManagerDelegate
#pragma mark - NIMSystemNotificationManagerDelegate
//: - (void)onSystemNotificationCountChanged:(NSInteger)unreadCount
- (void)onSystemNotificationCountChanged:(NSInteger)unreadCount
{
    //: self.systemUnreadCount = unreadCount;
    self.systemUnreadCount = unreadCount;
    //: [self refreshContactBadge];
    [self totaleractionQuery];
}

//: #pragma mark - Notification
#pragma mark - Notification
//: - (void)onCustomNotifyChanged:(NSNotification *)notification
- (void)withed:(NSNotification *)notification
{
    //: NTESCustomNotificationDB *db = [NTESCustomNotificationDB sharedInstance];
    IrruptDb *db = [IrruptDb dueDate];
    //: self.customSystemUnreadCount = db.unreadCount;
    self.customSystemUnreadCount = db.unreadCount;
    //: [self refreshSettingBadge];
    [self itemRemove];
}

//: - (void)refreshSessionBadge{
- (void)frame{
    //: NSString *badgeValue = self.sessionUnreadCount ? @(self.sessionUnreadCount).stringValue : nil;
    NSString *badgeValue = self.sessionUnreadCount ? @(self.sessionUnreadCount).stringValue : nil;
    //: [super setBadgeValue:badgeValue atIndex:NTESMainTabTypeMessageList];
    [super value:badgeValue send:NTESMainTabTypeMessageList];
}

//: - (void)refreshContactBadge{
- (void)totaleractionQuery{
    // 注释掉的原有代码
    // UINavigationController *nav = self.viewControllers[NTESMainTabTypeContact];
    // NSInteger badge = self.systemUnreadCount;
    // nav.tabBarItem.badgeValue = badge ? @(badge).stringValue : nil;
}

//: - (void)refreshSettingBadge{
- (void)itemRemove{
    //: NSString *badgeValue = self.customSystemUnreadCount ? @(self.customSystemUnreadCount).stringValue : nil;
    NSString *badgeValue = self.customSystemUnreadCount ? @(self.customSystemUnreadCount).stringValue : nil;
    //: [super setBadgeValue:badgeValue atIndex:NTESMainTabTypeSetting];
    [super value:badgeValue send:NTESMainTabTypeSetting];
}


//: - (UIStatusBarStyle)preferredStatusBarStyle {
- (UIStatusBarStyle)preferredStatusBarStyle {
    //: return UIStatusBarStyleDefault;
    return UIStatusBarStyleDefault;
}


//: #pragma mark - Rotate
#pragma mark - Rotate

//: - (BOOL)shouldAutorotate{
- (BOOL)shouldAutorotate{
    //: BOOL enableRotate = [NTESBundleSetting sharedConfig].enableRotate;
    BOOL enableRotate = [BackgroundTingIncidentGreen pickApart].rotate;
    //: return enableRotate ? [self.selectedViewController shouldAutorotate] : NO;
    return enableRotate ? [self.selectedViewController shouldAutorotate] : NO;
}

//: - (UIInterfaceOrientationMask)supportedInterfaceOrientations{
- (UIInterfaceOrientationMask)supportedInterfaceOrientations{
    //: BOOL enableRotate = [NTESBundleSetting sharedConfig].enableRotate;
    BOOL enableRotate = [BackgroundTingIncidentGreen pickApart].rotate;
    //: return enableRotate ? [self.selectedViewController supportedInterfaceOrientations] : UIInterfaceOrientationMaskPortrait;
    return enableRotate ? [self.selectedViewController supportedInterfaceOrientations] : UIInterfaceOrientationMaskPortrait;
}


//: #pragma mark - VC
#pragma mark - VC
//: - (NSDictionary *)vcInfoForTabType:(NTESMainTabType)type{
- (NSDictionary *)dataFormat:(NTESMainTabType)type{

    //: if (_configs == nil)
    if (_configs == nil)
    {
        //: _configs = @{
        _configs = @{
                     //: @(NTESMainTabTypeMessageList) : @{
                     @(NTESMainTabTypeMessageList) : @{
                             //: @"vc" : @"NTESSessionListViewController",
                             @"vc" : @"HideViewController",
                             //: @"title" : [NTESLanguageManager getTextWithKey:@"activity_user_profile_chat"],
                             StringFromImproveData(kStr_policyVeryTitleValue) : [LabelCell tinkleKey:StringFromImproveData(kStr_elderlyInvestigationData)],
                             //: @"image" : @"icon_message_normal",
                             StringFromImproveData(kStr_objectLysisAddTitle) : StringFromImproveData(kStr_gagContent),
                             //: @"selectedImage": @"icon_message_pressed",
                             StringFromImproveData(kStr_successEventName): StringFromImproveData(kStr_capeTensionData),
                             //: @"badgeValue": @(self.sessionUnreadCount)
                             StringFromImproveData(kStr_convictTrulyName): @(self.sessionUnreadCount)
                             //: },
                             },
                     //: @(NTESMainTabTypeContact) : @{
                     @(NTESMainTabTypeContact) : @{
                             //: @"vc" : @"ZZZContactsViewController",
                             @"vc" : @"MessageViewController",
                             //: @"title" : [NTESLanguageManager getTextWithKey:@"contacts_list_title"],
                             StringFromImproveData(kStr_policyVeryTitleValue) : [LabelCell tinkleKey:StringFromImproveData(kStr_layerVaryText)],
                             //: @"image" : @"icon_contact_normal",
                             StringFromImproveData(kStr_objectLysisAddTitle) : StringFromImproveData(kStr_playoffUntilContent),
                             //: @"selectedImage": @"icon_contact_pressed",
                             StringFromImproveData(kStr_successEventName): StringFromImproveData(kStr_tartText),
                             //: @"badgeValue": @(self.systemUnreadCount)
                             StringFromImproveData(kStr_convictTrulyName): @(self.systemUnreadCount)
                             //: },
                             },
                     //: @(NTESMainTabTypeChatroomList): @{
                     @(NTESMainTabTypeChatroomList): @{
                             //: @"vc" : @"ZZZMainCenterViewController",
                             @"vc" : @"IndividualViewController",
                             //: @"title" : [NTESLanguageManager getTextWithKey:@"main_tab_my"],
                             StringFromImproveData(kStr_policyVeryTitleValue) : [LabelCell tinkleKey:StringFromImproveData(kStr_topWithAtValue)],
                             //: @"image" : @"icon_setting_normal",
                             StringFromImproveData(kStr_objectLysisAddTitle) : StringFromImproveData(kStr_cramValue),
                             //: @"selectedImage": @"icon_setting_pressed",
                             StringFromImproveData(kStr_successEventName): StringFromImproveData(kStr_oofThereContent),
                             //: },
                             },
                     //: @(NTESMainTabTypeSetting) : @{
                     @(NTESMainTabTypeSetting) : @{
                             //: @"vc" : @"ZZZVideoListViewController",
                             @"vc" : @"PictureTapPositionCorrigendaViewController",
                             //: @"title" : @"视频".nim_localized,
                             StringFromImproveData(kStr_policyVeryTitleValue) : @"视频".start,
                             //: @"image" : @"icon_setting_normal",
                             StringFromImproveData(kStr_objectLysisAddTitle) : StringFromImproveData(kStr_cramValue),
                             //: @"selectedImage": @"icon_setting_pressed",
                             StringFromImproveData(kStr_successEventName): StringFromImproveData(kStr_oofThereContent),
                             //: @"badgeValue": @(self.customSystemUnreadCount)
                             StringFromImproveData(kStr_convictTrulyName): @(self.customSystemUnreadCount)
                             }
                     //: };
                     };

    }
    //: return _configs[@(type)];
    return _configs[@(type)];
}

//: - (void)showTabBar {
- (void)geneticMutationBar {
    // 如果已经显示，则不需要重复操作
    //: if (!self.customTabBar.hidden) {
    if (!self.customTabBar.hidden) {
        //: return;
        return;
    }

    // 确保自定义 TabBar 存在
    //: if (!self.customTabBar) {
    if (!self.customTabBar) {
        //: return;
        return;
    }

    // 直接设置可见性
    //: self.customTabBar.hidden = NO;
    self.customTabBar.hidden = NO;
    //: self.customTabBar.alpha = 1.0; 
    self.customTabBar.alpha = 1.0; // 确保透明度为 1

    // 调整容器视图的大小
    //: CGRect containerFrame = self.containerView.frame;
    CGRect containerFrame = self.containerView.frame;
    //: containerFrame.size.height = self.view.bounds.size.height - (({ BOOL isPhoneX = NO; if (@available(iOS 11.0, *)) { isPhoneX = [[UIApplication sharedApplication] delegate].window.safeAreaInsets.bottom > 0.0; } isPhoneX;}) ? 49 + 35 : 49);
    containerFrame.size.height = self.view.bounds.size.height - (({ BOOL isPhoneX = NO; if (@available(iOS 11.0, *)) { isPhoneX = [[UIApplication sharedApplication] delegate].window.safeAreaInsets.bottom > 0.0; } isPhoneX;}) ? 49 + 35 : 49);
    //: self.containerView.frame = containerFrame;
    self.containerView.frame = containerFrame;

    // 设置 TabBar 的位置
    //: CGRect tabBarFrame = CGRectMake(0, self.view.bounds.size.height - (({ BOOL isPhoneX = NO; if (@available(iOS 11.0, *)) { isPhoneX = [[UIApplication sharedApplication] delegate].window.safeAreaInsets.bottom > 0.0; } isPhoneX;}) ? 49 + 35 : 49), self.view.bounds.size.width, (({ BOOL isPhoneX = NO; if (@available(iOS 11.0, *)) { isPhoneX = [[UIApplication sharedApplication] delegate].window.safeAreaInsets.bottom > 0.0; } isPhoneX;}) ? 49 + 35 : 49));
    CGRect tabBarFrame = CGRectMake(0, self.view.bounds.size.height - (({ BOOL isPhoneX = NO; if (@available(iOS 11.0, *)) { isPhoneX = [[UIApplication sharedApplication] delegate].window.safeAreaInsets.bottom > 0.0; } isPhoneX;}) ? 49 + 35 : 49), self.view.bounds.size.width, (({ BOOL isPhoneX = NO; if (@available(iOS 11.0, *)) { isPhoneX = [[UIApplication sharedApplication] delegate].window.safeAreaInsets.bottom > 0.0; } isPhoneX;}) ? 49 + 35 : 49));
    //: self.customTabBar.frame = tabBarFrame;
    self.customTabBar.frame = tabBarFrame;

    // 确保 TabBar 在父视图上
    //: if (!self.customTabBar.superview) {
    if (!self.customTabBar.superview) {
        //: [self.view addSubview:self.customTabBar];
        [self.view addSubview:self.customTabBar];
    }

    // 确保选中的视图控制器的视图大小与容器一致
    //: if (self.selectedViewController) {
    if (self.selectedViewController) {
        //: self.selectedViewController.view.frame = self.containerView.bounds;
        self.selectedViewController.view.frame = self.containerView.bounds;
    }

    // 刷新 TabBar 项
    //: [self.customTabBar refreshTabBarItems];
    [self.customTabBar image];

    // 强制更新布局
    //: [self.view setNeedsLayout];
    [self.view setNeedsLayout];
    //: [self.view layoutIfNeeded];
    [self.view layoutIfNeeded];

    // 确保 TabBar 在最前面
    //: [self.view bringSubviewToFront:self.customTabBar];
    [self.view bringSubviewToFront:self.customTabBar];
}

//: - (void)hideTabBar {
- (void)label {
    // 如果已经隐藏，则不需要重复操作
    //: if (self.customTabBar.hidden) {
    if (self.customTabBar.hidden) {
        //: return;
        return;
    }

    // 直接设置可见性
    //: self.customTabBar.hidden = YES;
    self.customTabBar.hidden = YES;

    // 调整容器视图的大小
    //: CGRect containerFrame = self.containerView.frame;
    CGRect containerFrame = self.containerView.frame;
    //: containerFrame.size.height = self.view.bounds.size.height;
    containerFrame.size.height = self.view.bounds.size.height;
    //: self.containerView.frame = containerFrame;
    self.containerView.frame = containerFrame;

    // 确保选中的视图控制器的视图大小与容器一致
    //: if (self.selectedViewController) {
    if (self.selectedViewController) {
        //: self.selectedViewController.view.frame = self.containerView.bounds;
        self.selectedViewController.view.frame = self.containerView.bounds;
    }

    // 强制更新布局
    //: [self.view setNeedsLayout];
    [self.view setNeedsLayout];
    //: [self.view layoutIfNeeded];
    [self.view layoutIfNeeded];
}

//: @end
@end

Byte * ImproveDataToCache(Byte *data) {
    int illRue = data[0];
    int imageAcid = data[1];
    int methodInform = data[2];
    if (!illRue) return data + methodInform;
    for (int i = 0; i < imageAcid / 2; i++) {
        int begin = methodInform + i;
        int end = methodInform + imageAcid - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[methodInform + imageAcid] = 0;
    return data + methodInform;
}

NSString *StringFromImproveData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)ImproveDataToCache(data)];
}  
