// __DEBUG__
// __CLOSE_PRINT__
//
//  ColorView.h
//  KEKEChat
//
//  Created by Yan Wang on 2024/4/7.
//  Copyright © 2024 KEKE. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: typedef void(^SpeiceBackBlock) (NSString *nickName);
typedef void(^SpeiceBackBlock) (NSString *nickName);

//: @interface ZZZSetNickNameView : UIView
@interface ColorView : UIView

//: @property (nonatomic, copy) SpeiceBackBlock speiceBackBlock;
@property (nonatomic, copy) SpeiceBackBlock speiceBackBlock;

//@property (nonatomic, strong) NSString *nickname;

//: - (void)reloadWithNickname:(NSString *)nickname;
- (void)vanguard:(NSString *)nickname;

/** 动画显示 */
//: - (void)animationShow;
- (void)anMessage;

/** 动画关闭 */
//: - (void)animationClose;
- (void)keyImage;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END