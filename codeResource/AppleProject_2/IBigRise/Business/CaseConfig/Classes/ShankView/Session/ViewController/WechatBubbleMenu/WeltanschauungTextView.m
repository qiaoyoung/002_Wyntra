
#import <Foundation/Foundation.h>

NSString *StringFromOperationStopData(Byte *data);


//: #EFFDDE
Byte kStr_messageLengthContent[] = {39, 7, 6, 4, 41, 75, 76, 76, 74, 74, 75, 1};


//: menu_copy
Byte kStr_payerGageValue[] = {4, 9, 62, 11, 13, 171, 140, 81, 23, 2, 214, 171, 163, 172, 179, 157, 161, 173, 174, 183, 11};


//: onTapMenuItemCopy:
Byte kStr_textMinderInventTitle[] = {19, 18, 70, 4, 181, 180, 154, 167, 182, 147, 171, 180, 187, 143, 186, 171, 179, 137, 181, 182, 191, 128, 24};

// __DEBUG__
// __CLOSE_PRINT__
//
//  WeltanschauungTextView.m
//  JYImageTextCombine
//
//  Created by JackYoung on 2022/3/31.
//  Copyright © 2022 Jack Young. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZZZTextView.h"
#import "WeltanschauungTextView.h"
//: #import "ZZZBubbleMenuView.h"
#import "TextFrameView.h"
//: #import "ZZZBubbleButtonModel.h"
#import "BackgroundTitle.h"
//: #import "ZZZAppDelegate.h"
#import "AppDelegate.h"
//: #import "ZZZMediaItem.h"
#import "VagaryItem.h"

//: @interface ZZZTextView()<UITextViewDelegate, UITextInputDelegate>
@interface WeltanschauungTextView()<UITextViewDelegate, UITextInputDelegate>

//: @end
@end

//: @implementation ZZZTextView
@implementation WeltanschauungTextView

//: - (id)initWithFrame:(CGRect)frame {
- (id)initWithFrame:(CGRect)frame {
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
//        self.tintColor = RGB_COLOR_String(@"#EFFDDE");
        //: self.font = [UIFont systemFontOfSize:15];
        self.font = [UIFont systemFontOfSize:15];
        //: self.layer.cornerRadius = 5;
        self.layer.cornerRadius = 5;
        //: self.clipsToBounds = YES;
        self.clipsToBounds = YES;
        //: self.editable = YES;
        self.editable = YES;
        //: self.delegate = self;
        self.delegate = self;
        //: self.inputDelegate = self;
        self.inputDelegate = self;
        //: self.selectable = NO;
        self.selectable = NO;

        //: if (@available(iOS 17.0, *)) {
        if (@available(iOS 17.0, *)) {
            //: [self setTintColor:[UIColor colorWithHexString:@"#EFFDDE"]];
            [self setTintColor:[UIColor box:StringFromOperationStopData(kStr_messageLengthContent)]];
        //: }else{
        }else{
            //: self.tintColor = [UIColor clearColor];
            self.tintColor = [UIColor clearColor];
        }


        //: [self addGestureRecognizer:[[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(onLongPress)]];
        [self addGestureRecognizer:[[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(saveMax)]];
    }
    //: return self;
    return self;
}

//: - (void)onLongPress {
- (void)saveMax {
//    [self performSelector:@selector(selectAll:) withObject:nil afterDelay:0.0];

    //: CGRect startRect = [self caretRectForPosition:[self selectedTextRange].start];
    CGRect startRect = [self caretRectForPosition:[self selectedTextRange].start];
    //: CGRect endRect = [self caretRectForPosition:[self selectedTextRange].end];
    CGRect endRect = [self caretRectForPosition:[self selectedTextRange].end];

    //: CGRect resultRect = CGRectZero;
    CGRect resultRect = CGRectZero;
    //: if (startRect.origin.y == endRect.origin.y) {
    if (startRect.origin.y == endRect.origin.y) {
        //: resultRect.origin.x = startRect.origin.x;
        resultRect.origin.x = startRect.origin.x;
        //: resultRect.origin.y = startRect.origin.y;
        resultRect.origin.y = startRect.origin.y;
        //: resultRect.size.width = endRect.origin.x - startRect.origin.x + 2;
        resultRect.size.width = endRect.origin.x - startRect.origin.x + 2;
        //: resultRect.size.height = startRect.size.height;
        resultRect.size.height = startRect.size.height;
    //: } else {
    } else {
        //: resultRect.origin.x = 0;
        resultRect.origin.x = 0;
        //: resultRect.origin.y = startRect.origin.y;
        resultRect.origin.y = startRect.origin.y;
        //: resultRect.size.width = self.frame.size.width;
        resultRect.size.width = self.frame.size.width;
        //: resultRect.size.height = endRect.origin.y - startRect.origin.y + endRect.size.height;
        resultRect.size.height = endRect.origin.y - startRect.origin.y + endRect.size.height;
    }

    //: CGRect tempRect = [self convertRect:resultRect toView:((ZZZAppDelegate*)([UIApplication sharedApplication].delegate)).window];
    CGRect tempRect = [self convertRect:resultRect toView:((AppDelegate*)([UIApplication sharedApplication].delegate)).window];
    //: CGRect cursorStartRectToWindow = [self convertRect:startRect toView:((ZZZAppDelegate*)([UIApplication sharedApplication].delegate)).window];
    CGRect cursorStartRectToWindow = [self convertRect:startRect toView:((AppDelegate*)([UIApplication sharedApplication].delegate)).window];

    //: [[ZZZBubbleMenuView shareMenuView] showViewWithButtonModels:self.selectedAllRangeButtons cursorStartRect:cursorStartRectToWindow selectionTextRectInWindow:tempRect selectBlock:^(ZZZMediaItem *item) {
    [[TextFrameView content] button:self.selectedAllRangeButtons findThreadRect:cursorStartRectToWindow toIndex:tempRect conversation:^(VagaryItem *item) {

        //: !_selectBlock ? : _selectBlock(item);
        !_selectBlock ? : _selectBlock(item);

        //: [self hideTextSelection];
        [self styleChange];
        //: [ZZZBubbleMenuView.shareMenuView removeFromSuperview];
        [TextFrameView.content removeFromSuperview];

    //: }];
    }];

}

//: - (BOOL)canPerformAction:(SEL)action withSender:(id)sender {
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender {
    //: return NO;
    return NO;
}

//: - (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    //: [self hideTextSelection];
    [self styleChange];
    //: [ZZZBubbleMenuView.shareMenuView removeFromSuperview];
    [TextFrameView.content removeFromSuperview];
    //: [super touchesEnded:touches withEvent:event];
    [super touchesEnded:touches withEvent:event];
}

//: - (void)hideTextSelection {
- (void)styleChange {
    //: [self setSelectedRange:NSMakeRange(0, 0)];
    [self setSelectedRange:NSMakeRange(0, 0)];//去掉选择的效果。
}

//: #pragma mark delegate
#pragma mark delegate
//: -(BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text
-(BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text
{
    //: if ([text isEqualToString:@"\n"]) {
    if ([text isEqualToString:@"\n"]) {
        //: [textView resignFirstResponder];
        [textView resignFirstResponder];
//        [self.view endEditing:true];
        //: return NO;
        return NO;
    }

    //: return true;
    return true;
}

//: - (void)selectionWillChange:(id<UITextInput>)textInput {
- (void)selectionWillChange:(id<UITextInput>)textInput {
    //: NSLog(@"选择区域 _start_ 变化。。。隐藏");
}

//: - (void)selectionDidChange:(id<UITextInput>)textInput {
- (void)selectionDidChange:(id<UITextInput>)textInput {
    //: NSLog(@"选择区域 _end_ 变化。。。显示");
}

//: - (void)textWillChange:(nullable id <UITextInput>)textInput {
- (void)textWillChange:(nullable id <UITextInput>)textInput {

}

//: - (void)textDidChange:(nullable id <UITextInput>)textInput {
- (void)textDidChange:(nullable id <UITextInput>)textInput {

}

//: - (void)textViewDidChangeSelection:(UITextView *)textView {
- (void)textViewDidChangeSelection:(UITextView *)textView {
    //: NSLog(@"光标位置%ld——%ld",textView.selectedRange.location,textView.selectedRange.length);

    //: if (textView.selectedRange.length <= 0) {
    if (textView.selectedRange.length <= 0) {
        //隐藏
        //: [[ZZZBubbleMenuView shareMenuView] removeFromSuperview];
        [[TextFrameView content] removeFromSuperview];
        //: return;
        return;
    }

    //: CGRect startRect = [textView caretRectForPosition:[textView selectedTextRange].start];
    CGRect startRect = [textView caretRectForPosition:[textView selectedTextRange].start];
    //: CGRect endRect = [textView caretRectForPosition:[textView selectedTextRange].end];
    CGRect endRect = [textView caretRectForPosition:[textView selectedTextRange].end];
//    NSLog(@"__👂👂👂👂%.1f,%.1f,%.1f,%.1f",startRect.origin.x, startRect.origin.y, startRect.size.width, startRect.size.height);
//    NSLog(@"__👂👂👂👂%.1f,%.1f,%.1f,%.1f",endRect.origin.x, endRect.origin.y, endRect.size.width, endRect.size.height);

    //: CGRect resultRect = CGRectZero;
    CGRect resultRect = CGRectZero;
    //: if (startRect.origin.y == endRect.origin.y) {
    if (startRect.origin.y == endRect.origin.y) {
        //: resultRect.origin.x = startRect.origin.x;
        resultRect.origin.x = startRect.origin.x;
        //: resultRect.origin.y = startRect.origin.y;
        resultRect.origin.y = startRect.origin.y;
        //: resultRect.size.width = endRect.origin.x - startRect.origin.x + 2;
        resultRect.size.width = endRect.origin.x - startRect.origin.x + 2;
        //: resultRect.size.height = startRect.size.height;
        resultRect.size.height = startRect.size.height;
    //: } else {
    } else {
        //: resultRect.origin.x = 0;
        resultRect.origin.x = 0;
        //: resultRect.origin.y = startRect.origin.y;
        resultRect.origin.y = startRect.origin.y;
        //: resultRect.size.width = textView.frame.size.width;
        resultRect.size.width = textView.frame.size.width;
        //: resultRect.size.height = endRect.origin.y - startRect.origin.y + endRect.size.height;
        resultRect.size.height = endRect.origin.y - startRect.origin.y + endRect.size.height;
    }

//    _selectedTopView.frame = resultRect;

    //: CGRect tempRect = [self convertRect:resultRect toView:((ZZZAppDelegate*)([UIApplication sharedApplication].delegate)).window];
    CGRect tempRect = [self convertRect:resultRect toView:((AppDelegate*)([UIApplication sharedApplication].delegate)).window];
    //: CGRect cursorStartRectToWindow = [self convertRect:startRect toView:((ZZZAppDelegate*)([UIApplication sharedApplication].delegate)).window];
    CGRect cursorStartRectToWindow = [self convertRect:startRect toView:((AppDelegate*)([UIApplication sharedApplication].delegate)).window];

    //: if (textView.selectedRange.length > 0) {
    if (textView.selectedRange.length > 0) {
        //全部选中的时候内容显示的不一样。
        //: if (textView.selectedRange.length == textView.text.length) {
        if (textView.selectedRange.length == textView.text.length) {

            //: [[ZZZBubbleMenuView shareMenuView] showViewWithButtonModels:self.selectedAllRangeButtons cursorStartRect:cursorStartRectToWindow selectionTextRectInWindow:tempRect selectBlock:^(ZZZMediaItem *item) {
            [[TextFrameView content] button:self.selectedAllRangeButtons findThreadRect:cursorStartRectToWindow toIndex:tempRect conversation:^(VagaryItem *item) {

                //: !_selectBlock ? : _selectBlock(item);
                !_selectBlock ? : _selectBlock(item);

                //: [self hideTextSelection];
                [self styleChange];
                //: [ZZZBubbleMenuView.shareMenuView removeFromSuperview];
                [TextFrameView.content removeFromSuperview];

            //: }];
            }];
        //: } else {
        } else {

            //: [[ZZZBubbleMenuView shareMenuView] showViewWithButtonModels:self.selectedPartRangeButtons cursorStartRect:cursorStartRectToWindow selectionTextRectInWindow:tempRect selectBlock:^(ZZZMediaItem *item) {
            [[TextFrameView content] button:self.selectedPartRangeButtons findThreadRect:cursorStartRectToWindow toIndex:tempRect conversation:^(VagaryItem *item) {

                //: !_selectBlock ? : _selectBlock(item);
                !_selectBlock ? : _selectBlock(item);

                //: [self hideTextSelection];
                [self styleChange];
                //: [ZZZBubbleMenuView.shareMenuView removeFromSuperview];
                [TextFrameView.content removeFromSuperview];

            //: }];
            }];
        }
    }
}

//: - (BOOL)textView:(UITextView *)textView shouldInteractWithURL:(NSURL *)URL inRange:(NSRange)characterRange interaction:(UITextItemInteraction)interaction API_AVAILABLE(ios(10.0)) {
- (BOOL)textView:(UITextView *)textView shouldInteractWithURL:(NSURL *)URL inRange:(NSRange)characterRange interaction:(UITextItemInteraction)interaction API_AVAILABLE(ios(10.0)) {
    //: return YES;
    return YES;
}

//: - (void)genMediaButtonsWithMessage:(NIMMessage *)message {
- (void)display:(NIMMessage *)message {

    //: NSMutableArray *selectedAllRangeButtons = [NSMutableArray array];
    NSMutableArray *selectedAllRangeButtons = [NSMutableArray array];
    //: NSMutableArray *selectedPartRangeButtons = [NSMutableArray array];
    NSMutableArray *selectedPartRangeButtons = [NSMutableArray array];

    //: NSArray *items;
    NSArray *items;
    //: if (!self.config)
    if (!self.config)
    {
        //: items = [[AppleProjectKit sharedKit].config defaultMenuItemsWithMessage:message];
        items = [[On along].config line:message];
    }
    //: else if([self.config respondsToSelector:@selector(menuItemsWithMessage:)])
    else if([self.config respondsToSelector:@selector(prixFixeUponMessage:)])
    {
        //: items = [self.config menuItemsWithMessage:message];
        items = [self.config prixFixeUponMessage:message];
    }
    //: [items enumerateObjectsUsingBlock:^(ZZZMediaItem *item, NSUInteger idx, BOOL *stop) {
    [items enumerateObjectsUsingBlock:^(VagaryItem *item, NSUInteger idx, BOOL *stop) {

        //: ZZZBubbleButtonModel *model = [[ZZZBubbleButtonModel alloc] init];
        BackgroundTitle *model = [[BackgroundTitle alloc] init];
        //: model.normalImage = item.normalImage;
        model.normalImage = item.normalImage;
        //: model.name = item.title;
        model.name = item.title;
        //: model.item = item;
        model.item = item;

        //: [selectedAllRangeButtons addObject:model];
        [selectedAllRangeButtons addObject:model];

        //: if (item.selctor == @selector(onTapMenuItemCopy:)) {
        if (item.selctor == @selector(onTapMenuItemCopy:)) {
            //: [selectedPartRangeButtons addObject:model];
            [selectedPartRangeButtons addObject:model];
        }
    //: }];
    }];

    //: self.selectedAllRangeButtons = selectedAllRangeButtons;
    self.selectedAllRangeButtons = selectedAllRangeButtons;
    //: self.selectedPartRangeButtons = selectedPartRangeButtons;
    self.selectedPartRangeButtons = selectedPartRangeButtons;

}


//: - (void)new_genMediaButton {
- (void)textBlockButton {

    //: NSMutableArray *selectedAllRangeButtons = [NSMutableArray array];
    NSMutableArray *selectedAllRangeButtons = [NSMutableArray array];
    //: NSMutableArray *selectedPartRangeButtons = [NSMutableArray array];
    NSMutableArray *selectedPartRangeButtons = [NSMutableArray array];


    //: ZZZMediaItem *copy = [ZZZMediaItem item:@"onTapMenuItemCopy:"
    VagaryItem *copy = [VagaryItem confines:StringFromOperationStopData(kStr_textMinderInventTitle)
                                //: normalImage:[UIImage imageNamed:@"menu_copy"]
                                session:[UIImage imageNamed:StringFromOperationStopData(kStr_payerGageValue)]
                              //: selectedImage:nil
                              searched:nil
                                      //: title:[NTESLanguageManager getTextWithKey:@"复制"]];
                                      numberelligentsia:[LabelCell tinkleKey:@"复制"]];


    //: ZZZBubbleButtonModel *model = [[ZZZBubbleButtonModel alloc] init];
    BackgroundTitle *model = [[BackgroundTitle alloc] init];
    //: model.normalImage = copy.normalImage;
    model.normalImage = copy.normalImage;
    //: model.name = copy.title;
    model.name = copy.title;
    //: model.item = copy;
    model.item = copy;

    //: [selectedAllRangeButtons addObject:model];
    [selectedAllRangeButtons addObject:model];
    //: [selectedPartRangeButtons addObject:model];
    [selectedPartRangeButtons addObject:model];

    //: self.selectedAllRangeButtons = selectedAllRangeButtons;
    self.selectedAllRangeButtons = selectedAllRangeButtons;
    //: self.selectedPartRangeButtons = selectedPartRangeButtons;
    self.selectedPartRangeButtons = selectedPartRangeButtons;

}


//: @end
@end

Byte * OperationStopDataToCache(Byte *data) {
    int ebonise = data[0];
    int redSurfaceConnection = data[1];
    Byte moveImage = data[2];
    int accurateAt = data[3];
    if (!ebonise) return data + accurateAt;
    for (int i = accurateAt; i < accurateAt + redSurfaceConnection; i++) {
        int value = data[i] - moveImage;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[accurateAt + redSurfaceConnection] = 0;
    return data + accurateAt;
}

NSString *StringFromOperationStopData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)OperationStopDataToCache(data)];
}
