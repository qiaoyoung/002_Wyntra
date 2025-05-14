// __DEBUG__
// __CLOSE_PRINT__
//
//  HeadingProxy.h
//  SGQRCodeExample
//
//  Created by kingsic on 2022/7/2.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface SGWeakProxy : NSProxy
@interface HeadingProxy : NSProxy
/// 类方法创建 HeadingProxy
//: + (instancetype)weakProxyWithTarget:(id)aTarget;
+ (instancetype)array:(id)aTarget;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END