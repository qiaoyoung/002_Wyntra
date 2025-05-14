// __DEBUG__
// __CLOSE_PRINT__
//
//  InputViewController.h
// On
//
//  Created by Netease on 2019/7/16.
//  Copyright © 2019 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "ZZZCardDataSourceProtocol.h"
#import "ZZZCardDataSourceProtocol.h"
//: #import "AppleProjectKit.h"
#import "On.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: typedef void(^NIMSelectedCompletion)(id <NIMKitSelectCardData> item);
typedef void(^NIMSelectedCompletion)(id <NIMKitSelectCardData> item);

//: @interface ZZZTeamCardSelectedViewController : UIViewController
@interface InputViewController : UIViewController

//: @property (nonatomic, copy) NSString *titleString;
@property (nonatomic, copy) NSString *titleString;

//: @property (nonatomic, strong) NIMSelectedCompletion resultHandle;
@property (nonatomic, strong) NIMSelectedCompletion resultHandle;

//: + (instancetype)instanceWithTitle:(NSString *)title
+ (instancetype)size:(NSString *)title
                            //: items:(NSMutableArray <id <NIMKitSelectCardData>> *)items
                            with:(NSMutableArray <id <NIMKitSelectCardData>> *)items
                           //: result:(NIMSelectedCompletion)result;
                           ting:(NIMSelectedCompletion)result;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END