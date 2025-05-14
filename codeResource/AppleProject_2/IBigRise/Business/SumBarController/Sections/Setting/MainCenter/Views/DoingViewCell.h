// __DEBUG__
// __CLOSE_PRINT__
//
//  DoingViewCell.h
//  NIM
//
//  Created by 彭爽 on 2021/9/10.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "BaseTableViewCell.h"
#import "ItemView.h"
//: #import "NTESUserInfoModel.h"
#import "TrademarkImage.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface NTESMainUserInfoCell : BaseTableViewCell
@interface DoingViewCell : ItemView
//: @property (nonatomic ,weak) id delegate;
@property (nonatomic ,weak) id delegate;
//: @property (nonatomic ,strong) NTESUserInfoModel *infoModel;
@property (nonatomic ,strong) TrademarkImage *infoModel;
//: @property (nonatomic ,strong) UINavigationController *nav;
@property (nonatomic ,strong) UINavigationController *nav;
//: -(void)reloadWithInformation:(NTESUserInfoModel *)infoModel;
-(void)smartMax:(TrademarkImage *)infoModel;
//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END