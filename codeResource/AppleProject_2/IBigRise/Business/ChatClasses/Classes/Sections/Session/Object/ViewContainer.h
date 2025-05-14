// __DEBUG__
// __CLOSE_PRINT__
//
//  NIMSessionLayout.h
// On
//
//  Created by chris on 2016/11/8.
//  Copyright © 2016年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZZZSessionConfigurator.h"
#import "NameChange.h"
//: #import "ZZZSessionPrivateProtocol.h"
#import "ZZZSessionPrivateProtocol.h"

//: @interface ZZZSessionLayoutImpl : NSObject<NIMSessionLayout>
@interface ViewContainer : NSObject<EnabledSessionSumerval>

//: @property (nonatomic,strong) UITableView *tableView;
@property (nonatomic,strong) UITableView *tableView;

//: @property (nonatomic,strong) ZZZInputView *inputView;
@property (nonatomic,strong) EnterSignView *inputView;

//: - (instancetype)initWithSession:(NIMSession *)session
- (instancetype)initWithProviderRange:(NIMSession *)session
                         //: config:(id<ZZZSessionConfig>)sessionConfig;
                         modify:(id<PastConfig>)sessionConfig;

//: @end
@end