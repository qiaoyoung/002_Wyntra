// __DEBUG__
// __CLOSE_PRINT__
//
//  TextFrameView.h
//  JYImageTextCombine
//
//  Created by JackYoung on 2022/4/1.
//  Copyright © 2022 Jack Young. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface ZZZBubbleMenuView : UIView
@interface TextFrameView : UIView

//: + (instancetype)shareMenuView;
+ (instancetype)content;// 单例模式

//type：类型  selectionTextRectInWindow：选中文本在window坐标系中的frame
//cursorStartRect:start的光标位置
//block是选择功能按钮的title
//: - (void)showViewWithButtonModels:(NSArray *)array
- (void)button:(NSArray *)array
                 //: cursorStartRect:(CGRect)cursorStartRect selectionTextRectInWindow:(CGRect)rect selectBlock:(void(^)(ZZZMediaItem *item))block;
                 findThreadRect:(CGRect)cursorStartRect toIndex:(CGRect)rect conversation:(void(^)(VagaryItem *item))block;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END