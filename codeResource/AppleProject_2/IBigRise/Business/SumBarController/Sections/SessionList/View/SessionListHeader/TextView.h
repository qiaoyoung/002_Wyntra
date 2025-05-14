// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESSessionListHeader.h
//  NIM
//
//  Created by chris on 15/3/23.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: typedef NS_ENUM(NSInteger, NTESListHeaderType) {
typedef NS_ENUM(NSInteger, NTESListHeaderType) {
    //: ListHeaderTypeCommonText = 1,
    ListHeaderTypeCommonText = 1,
    //: ListHeaderTypeNetStauts,
    ListHeaderTypeNetStauts,
    //: ListHeaderTypeLoginClients,
    ListHeaderTypeLoginClients,
//: };
};

//: @protocol NTESListHeaderView <NSObject>
@protocol PerforateView <NSObject>

//: @required
@required
//: - (void)setContentText:(NSString *)content;
- (void)setSizeTitle:(NSString *)content;

//: @end
@end

//: @protocol NTESListHeaderDelegate <NSObject>
@protocol ViewTitle <NSObject>

//: @optional
@optional

//: - (void)didSelectRowType:(NTESListHeaderType)type;
- (void)buttonned:(NTESListHeaderType)type;

//: @end
@end

//: @interface NTESListHeader : UIView
@interface TextView : UIView

//: @property (nonatomic,weak) id<NTESListHeaderDelegate> delegate;
@property (nonatomic,weak) id<ViewTitle> delegate;

//: - (void)refreshWithType:(NTESListHeaderType)type value:(id)value;
- (void)gradePointAverage:(NTESListHeaderType)type red:(id)value;


//: @end
@end
