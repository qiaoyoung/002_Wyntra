// __DEBUG__
// __CLOSE_PRINT__
//
//  GreenNameView+NIMKit
//  NIM
//
//  Created by chris.
//  Copyright (c) 2015 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "M80AttributedLabel+AppleProjectKit.h"
#import "GreenNameView+On.h"
//: #import "ZZZInputEmoticonParser.h"
#import "FrameworkName.h"
//: #import "ZZZInputEmoticonManager.h"
#import "SumManager.h"
//: #import "UIImage+AppleProjectKit.h"
#import "UIImage+On.h"
//: #import "NSString+AppleProjectKit.h"
#import "NSString+On.h"
//: #import <objc/runtime.h>
#import <objc/runtime.h>

//: @implementation M80AttributedLabel (AppleProjectKit)
@implementation GreenNameView (On)
//: - (void)nim_setText:(NSString *)text
- (void)sourceSet:(NSString *)text
{
    //: [self setText:@""];
    [self setText:@""];

    //: text = [text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    text = [text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    //: text = [text stringByReplacingOccurrencesOfString:@"\r\n" withString:@"\n"];
    text = [text stringByReplacingOccurrencesOfString:@"\r\n" withString:@"\n"];
    //: if (text.length) {
    if (text.length) {
        //: [self setText:text];
        [self setText:text];
    }

}

//: - (void)setOriLineBreakMode:(NSLineBreakMode)lineBreakModel{
- (void)setDrapeRecord:(NSLineBreakMode)lineBreakModel{
    //: objc_setAssociatedObject(self, @selector(oriLineBreakMode), @(lineBreakModel), OBJC_ASSOCIATION_ASSIGN);
    objc_setAssociatedObject(self, @selector(drapeRecord), @(lineBreakModel), OBJC_ASSOCIATION_ASSIGN);
}

//: - (CTLineBreakMode)oriLineBreakMode{
- (CTLineBreakMode)drapeRecord{
    //: return (NSLineBreakMode)[objc_getAssociatedObject(self, @selector(oriLineBreakMode))integerValue];
    return (NSLineBreakMode)[objc_getAssociatedObject(self, @selector(drapeRecord))integerValue];
}



//: @end
@end