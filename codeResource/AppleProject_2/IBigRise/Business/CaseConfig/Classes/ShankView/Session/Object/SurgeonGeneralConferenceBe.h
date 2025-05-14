// __DEBUG__
// __CLOSE_PRINT__
//
//  NIMSessionInteractor.h
// On
//
//  Created by chris on 2016/11/7.
//  Copyright © 2016年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import "DataSessionPrivateProtocol.h"
#import "DataSessionPrivateProtocol.h"
//: #import "DataSessionConfigurateProtocol.h"
#import "DataSessionConfigurateProtocol.h"

//: @interface ZZZSessionInteractorImpl : NSObject<NIMSessionInteractor,NIMSessionLayoutDelegate>
@interface SurgeonGeneralConferenceBe : NSObject<SuggestEmptyQuantityeractor,WithDelegate>

//: - (instancetype)initWithSession:(NIMSession *)session
- (instancetype)initWithParticularGroupDiscussion:(NIMSession *)session
                         //: config:(id<ZZZSessionConfig>)sessionConfig;
                         textInConfig:(id<PastConfig>)sessionConfig;

//: @property(nonatomic,weak) id<NIMSessionInteractorDelegate> delegate;
@property(nonatomic,weak) id<ColorDelegate> delegate;

//: @property(nonatomic,strong) id<NIMSessionDataSource> dataSource;
@property(nonatomic,strong) id<PointSourceTing> dataSource;

//: @property(nonatomic,strong) id<NIMSessionLayout> layout;
@property(nonatomic,strong) id<EnabledSessionSumerval> layout;

//: @end
@end
