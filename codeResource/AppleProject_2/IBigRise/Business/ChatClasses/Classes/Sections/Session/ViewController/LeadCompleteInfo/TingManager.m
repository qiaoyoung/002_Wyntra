// __DEBUG__
// __CLOSE_PRINT__
//
//  TingManager.m
//  sohunews
//
//  Created by tianyulong on 2020/4/20.
//  Copyright © 2020 Sohu.com. All rights reserved.
//

// __M_A_C_R_O__
//: #import "SNLeadCompleteManager.h"
#import "TingManager.h"
//: #import "SNLeadCompleteInfo.h"
#import "FogView.h"
//: #import "SNWeakStrongMacro.h"
#import "SNWeakStrongMacro.h"

//: @interface SNLeadCompleteManager ()
@interface TingManager ()

//: @property (nonatomic, assign) BOOL isShow;
@property (nonatomic, assign) BOOL isShow;

//: @property (nonatomic, strong) SNLeadCompleteInfo *leadVIEW;
@property (nonatomic, strong) FogView *leadVIEW;

//: @end
@end

//: @implementation SNLeadCompleteManager
@implementation TingManager

//: + (instancetype)sharedInstance { static SNLeadCompleteManager *sharedSNLeadCompleteManager = nil; static dispatch_once_t pred; _dispatch_once(&pred, ^{ sharedSNLeadCompleteManager = [[SNLeadCompleteManager alloc] init]; }); return sharedSNLeadCompleteManager; };
+ (instancetype)nameRecent { static TingManager *sharedSNLeadCompleteManager = nil; static dispatch_once_t pred; _dispatch_once(&pred, ^{ sharedSNLeadCompleteManager = [[TingManager alloc] init]; }); return sharedSNLeadCompleteManager; };


//: - (void)showLeadViewForCompletingUserInfoWithSuperView:(UIView *)superView
- (void)showToBlock:(UIView *)superView
                                           //: withMessage:(NSString *)msg
                                           replacement:(NSString *)msg
                                           //: cancleBlock:(void (^)(void))callback
                                           image:(void (^)(void))callback
{

    // 已经展示引导浮层
    //: if (self.isShow) {
    if (self.isShow) {
        //: self.leadVIEW.title = msg;
        self.leadVIEW.title = msg;
        //: [self.leadVIEW.leftwardMarqueeView reloadData];
        [self.leadVIEW.leftwardMarqueeView refresh];
        //: [self.leadVIEW.leftwardMarqueeView start];
        [self.leadVIEW.leftwardMarqueeView unpack];
        //: self.leadVIEW.completion = callback;
        self.leadVIEW.completion = callback;
        //: return;
        return;
    }

    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                  ;
    //: void (^finishShow)(CompletingUserInfoType type) = ^(CompletingUserInfoType type){
    void (^finishShow)(CompletingUserInfoType type) = ^(CompletingUserInfoType type){

        //: dispatch_async(dispatch_get_main_queue(), ^{
        dispatch_async(dispatch_get_main_queue(), ^{

            @
             //: try{} @finally{} __typeof__(self) self = __weak_self__;
             try{} @finally{} __typeof__(self) self = __weak_self__;
                            ;
            //: self.isShow = YES;
            self.isShow = YES;
            //: self.leadVIEW = [SNLeadCompleteInfo showTipViewForCompletingUserInfolWithDelay:0 superView:superView CompletingUserInfoType:(type) withMessage:msg trueBlock:^{
            self.leadVIEW = [FogView with:0 success_strong:superView temp:(type) keyboard:msg should:^{
                //: !callback ? : callback();
                !callback ? : callback();
            //: } cancleBlock:^{
            } heel:^{
                @
                 //: try{} @finally{} __typeof__(self) self = __weak_self__;
                 try{} @finally{} __typeof__(self) self = __weak_self__;
                                ;
                //: self.isShow = NO;
                self.isShow = NO;
            //: }];
            }];
        //: });
        });
    //: };
    };

    //: finishShow(CompletingUserInfoType_headicon);
    finishShow(CompletingUserInfoType_headicon);

}

//: - (void)dismissLeadView {
- (void)center {

    //: if (!self.isShow) {
    if (!self.isShow) {
        //: return;
        return;
    }

    //: if (!self.leadVIEW) {
    if (!self.leadVIEW) {
        //: return;
        return;
    }

    //: [self.leadVIEW p_dismiss];
    [self.leadVIEW onNeedShow];
    //: self.leadVIEW = nil;
    self.leadVIEW = nil;

}

//: @end
@end