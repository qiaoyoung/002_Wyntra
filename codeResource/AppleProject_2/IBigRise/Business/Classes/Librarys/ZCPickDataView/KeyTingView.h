// __DEBUG__
// __CLOSE_PRINT__
//
//  KeyTingView.h
//  HuaxiajiaboApp
//
//  Created by HuamoMac on 15/10/10.
//  Copyright © 2015年 HuaMo. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @protocol HMDataPickerDelegate ;
@protocol DomainNameFile ;

//: @interface HMDataPicker : UIView{
@interface KeyTingView : UIView{

}

//: - (id)initWithDelegate:(id<HMDataPickerDelegate>)delegate dataDict:(NSDictionary *)dataDict selectedDict:(NSDictionary *)selectedDict jsonNode:(NSString *)jsonNode;
- (id)initWithButtonAggregation:(id<DomainNameFile>)delegate text:(NSDictionary *)dataDict net:(NSDictionary *)selectedDict topNode:(NSString *)jsonNode;

//: - (void)show;
- (void)belowValueLoad;

//: @end
@end


//: @protocol HMDataPickerDelegate <NSObject>
@protocol DomainNameFile <NSObject>

//: - (void)dataPicker:(HMDataPicker *)dataPicker selectedDict:(NSDictionary *)selectedDict;
- (void)tillInput:(KeyTingView *)dataPicker lipRead:(NSDictionary *)selectedDict;

//: @end
@end