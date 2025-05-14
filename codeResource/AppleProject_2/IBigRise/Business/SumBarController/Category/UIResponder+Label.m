// __DEBUG__
// __CLOSE_PRINT__
//
//  UIResponder+Label.m
//  NIM
//
//  Created by chris on 15/9/26.
//  Copyright © 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "UIResponder+NTESFirstResponder.h"
#import "UIResponder+Label.h"

//: static __weak id currentFirstResponder;
static __weak id kConst_cornerTitle;
//: static __weak id currentSecodResponder;
static __weak id kConst_commentValue;

//: @implementation UIResponder (NTESFirstResponder)
@implementation UIResponder (Label)

//: + (instancetype)currentFirstResponder {
+ (instancetype)dateResponder {
    //: currentFirstResponder = nil;
    kConst_cornerTitle = nil;
    //: currentSecodResponder = nil;
    kConst_commentValue = nil;
    //: [[UIApplication sharedApplication] sendAction:@selector(findFirstResponder:) to:nil from:nil forEvent:nil];
    [[UIApplication sharedApplication] sendAction:@selector(scaleValue:) to:nil from:nil forEvent:nil];
    //: return currentFirstResponder;
    return kConst_cornerTitle;
}

//: + (instancetype)currentSecondResponder{
+ (instancetype)cell{
    //: currentFirstResponder = nil;
    kConst_cornerTitle = nil;
    //: currentSecodResponder = nil;
    kConst_commentValue = nil;
    //: [[UIApplication sharedApplication] sendAction:@selector(findFirstResponder:) to:nil from:nil forEvent:nil];
    [[UIApplication sharedApplication] sendAction:@selector(scaleValue:) to:nil from:nil forEvent:nil];
    //: return currentSecodResponder;
    return kConst_commentValue;
}

//: - (void)findFirstResponder:(id)sender {
- (void)scaleValue:(id)sender {
    //: currentFirstResponder = self;
    kConst_cornerTitle = self;
    //: [self.nextResponder findSecondResponder:sender];
    [self.nextResponder encounterImage:sender];
}


//: - (void)findSecondResponder:(id)sender{
- (void)encounterImage:(id)sender{
    //: currentSecodResponder = self;
    kConst_commentValue = self;
}

//: @end
@end