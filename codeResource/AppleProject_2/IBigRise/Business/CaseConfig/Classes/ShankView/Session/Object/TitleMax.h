// __DEBUG__
// __CLOSE_PRINT__
//
//  NIMSessionTableDelegate.h
// On
//
//  Created by chris on 2016/11/7.
//  Copyright © 2016年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "DataSessionConfigurateProtocol.h"
#import "DataSessionConfigurateProtocol.h"
//: #import "DataMessageCellProtocol.h"
#import "DataMessageCellProtocol.h"

//: @interface ZZZSessionTableAdapter : NSObject<UITableViewDelegate,UITableViewDataSource>
@interface TitleMax : NSObject<UITableViewDelegate,UITableViewDataSource>

//: @property (nonatomic,weak) id<NIMSessionInteractor> interactor;
@property (nonatomic,weak) id<SuggestEmptyQuantityeractor> interactor;

//: @property (nonatomic,weak) id<ZZZMessageCellDelegate> delegate;
@property (nonatomic,weak) id<ImageDelegate> delegate;

//: @end
@end
