
#import <Foundation/Foundation.h>
typedef struct {
    Byte acid;
    Byte *thatcherism;
    unsigned int imageNevertheless;
    bool markAt;
	int narrow;
	int shrink;
} ByData;

NSString *StringFromByData(ByData *data);


//: webview_icon
ByData kStr_imaginationContent = (ByData){92, (Byte []){43, 57, 62, 42, 53, 57, 43, 3, 53, 63, 51, 50, 252}, 12, false, 54, 67};


//: login_bg
ByData kStr_sixDominantName = (ByData){172, (Byte []){192, 195, 203, 197, 194, 243, 206, 203, 150}, 8, false, 208, 126};


//: back_arrow_bl
ByData kStr_bureauData = (ByData){157, (Byte []){255, 252, 254, 246, 194, 252, 239, 239, 242, 234, 194, 255, 241, 182}, 13, false, 91, 38};

// __DEBUG__
// __CLOSE_PRINT__
//
//  ChromaticColourViewController.m
//  Lemon
//
//  Created by Yan Wang on 2025/2/8.
//  Copyright © 2025 Lemon. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZMONAccountPolicyViewController.h"
#import "ChromaticColourViewController.h"
//: #import <WebKit/WebKit.h>
#import <WebKit/WebKit.h>

//: @interface ZMONAccountPolicyViewController ()<WKNavigationDelegate, WKUIDelegate>
@interface ChromaticColourViewController ()<WKNavigationDelegate, WKUIDelegate>

//: @property (nonatomic,strong) WKWebView *webView;
@property (nonatomic,strong) WKWebView *webView;
//: @property (nonatomic, strong) UIButton *closeBtn;
@property (nonatomic, strong) UIButton *closeBtn;

//: @end
@end

//: @implementation ZMONAccountPolicyViewController
@implementation ChromaticColourViewController

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];

        //: UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
        UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
        //: bg.image = [UIImage imageNamed:@"login_bg"];
        bg.image = [UIImage imageNamed:StringFromByData(&kStr_sixDominantName)];
        //: [self.view addSubview:bg];
        [self.view addSubview:bg];


    //: WKWebViewConfiguration *config = [[WKWebViewConfiguration alloc] init];
    WKWebViewConfiguration *config = [[WKWebViewConfiguration alloc] init];
    //: config.selectionGranularity = WKSelectionGranularityDynamic;
    config.selectionGranularity = WKSelectionGranularityDynamic;
    //: config.allowsPictureInPictureMediaPlayback = YES;
    config.allowsPictureInPictureMediaPlayback = YES;
    //: WKPreferences *preferences = [WKPreferences new];
    WKPreferences *preferences = [WKPreferences new];
    //是否支持JavaScript
    //: preferences.javaScriptEnabled = YES;
    preferences.javaScriptEnabled = YES;
    //不通过用户交互，是否可以打开窗口
    //: preferences.javaScriptCanOpenWindowsAutomatically = NO;
    preferences.javaScriptCanOpenWindowsAutomatically = NO;
    //: config.preferences = preferences;
    config.preferences = preferences;

    //: _webView = [[WKWebView alloc] initWithFrame:CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight]), [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height - (44.0f + [UIDevice vg_statusBarHeight])) configuration:config];
    _webView = [[WKWebView alloc] initWithFrame:CGRectMake(0, (44.0f + [UIDevice encounter]), [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height - (44.0f + [UIDevice encounter])) configuration:config];
    //: _webView.backgroundColor = [UIColor clearColor];
    _webView.backgroundColor = [UIColor clearColor];
    //: _webView.scrollView.backgroundColor = [UIColor clearColor];
    _webView.scrollView.backgroundColor = [UIColor clearColor];
    //: _webView.opaque = NO;
    _webView.opaque = NO;
    //: [self.view addSubview:_webView];
    [self.view addSubview:_webView];
    //: _webView.navigationDelegate = self;
    _webView.navigationDelegate = self;
    //: _webView.UIDelegate = self;
    _webView.UIDelegate = self;

    //: self.closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    self.closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    //: self.closeBtn.backgroundColor = [UIColor clearColor];
    self.closeBtn.backgroundColor = [UIColor clearColor];
    //: [self.closeBtn setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
    [self.closeBtn setImage:[UIImage imageNamed:StringFromByData(&kStr_bureauData)] forState:(UIControlStateNormal)];
    //: [self.closeBtn addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [self.closeBtn addTarget:self action:@selector(belowTeamAdd) forControlEvents:UIControlEventTouchUpInside];
    //: [self.view addSubview:self.closeBtn];
    [self.view addSubview:self.closeBtn];
    //: self.closeBtn.frame = CGRectMake(15, 5+[UIDevice vg_statusBarHeight], 40, 40);
    self.closeBtn.frame = CGRectMake(15, 5+[UIDevice encounter], 40, 40);


    //: UIImageView *img = [[UIImageView alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-100, [UIDevice vg_statusBarHeight], 100, 83)];
    UIImageView *img = [[UIImageView alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-100, [UIDevice encounter], 100, 83)];
    //: img.image = [UIImage imageNamed:@"webview_icon"];
    img.image = [UIImage imageNamed:StringFromByData(&kStr_imaginationContent)];
    //: [self.view addSubview:img];
    [self.view addSubview:img];

    //: [self reloadWebView];
    [self name];
}

//: - (void)backAction{
- (void)belowTeamAdd{
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
}

//: -(void)viewWillAppear:(BOOL)animated{
-(void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: self.navigationController.navigationBarHidden = YES;
    self.navigationController.navigationBarHidden = YES;
}


//: - (void)reloadWebView{
- (void)name{

    //: NSString *path = [[NSBundle mainBundle] pathForResource:self.urlString ofType:nil];
    NSString *path = [[NSBundle mainBundle] pathForResource:self.urlString ofType:nil];
    //: NSURL *url = [NSURL fileURLWithPath:path];
    NSURL *url = [NSURL fileURLWithPath:path];
    //: NSURLRequest *request = [NSURLRequest requestWithURL:url];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    //: [_webView loadRequest:request];
    [_webView loadRequest:request];

}

//: #pragma mark - WKNavigationDelegate
#pragma mark - WKNavigationDelegate
/* 页面开始加载 */
//: - (void)webView:(WKWebView *)webView didStartProvisionalNavigation:(WKNavigation *)navigation{
- (void)webView:(WKWebView *)webView didStartProvisionalNavigation:(WKNavigation *)navigation{

}

/* 开始返回内容 */
//: - (void)webView:(WKWebView *)webView didCommitNavigation:(WKNavigation *)navigation{
- (void)webView:(WKWebView *)webView didCommitNavigation:(WKNavigation *)navigation{

}

/* 页面加载完成 */
//: - (void)webView:(WKWebView *)webView didFinishNavigation:(WKNavigation *)navigation{
- (void)webView:(WKWebView *)webView didFinishNavigation:(WKNavigation *)navigation{

}

/* 页面加载失败 */
//: - (void)webView:(WKWebView *)webView didFailProvisionalNavigation:(WKNavigation *)navigation{
- (void)graduateNavigation:(WKWebView *)webView lab:(WKNavigation *)navigation{

}




//: @end
@end

Byte *ByDataToByte(ByData *data) {
    if (data->markAt) return data->thatcherism;
    for (int i = 0; i < data->imageNevertheless; i++) {
        data->thatcherism[i] ^= data->acid;
    }
    data->thatcherism[data->imageNevertheless] = 0;
    data->markAt = true;
	if (data->imageNevertheless >= 2) {
		data->narrow = data->thatcherism[0];
		data->shrink = data->thatcherism[1];
	}
    return data->thatcherism;
}

NSString *StringFromByData(ByData *data) {
    return [NSString stringWithUTF8String:(char *)ByDataToByte(data)];
}
