// __DEBUG__
// __CLOSE_PRINT__
//
//  AttendanceDatePickerView.h
//  ProjectK
//
//  Created by beartech on 14-1-3.
//  Copyright (c) 2014年 Beartech. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: Class object_getClass(id object);
Class object_getClass(id object);

//: @protocol HMDatePickerViewDelegate;
@protocol GreenDelegate;

//: @interface HMDatePickerView : UIView{
@interface TapFrameView : UIView{
    //: UIDatePicker *datePicker;
    UIDatePicker *datePicker;
    //: UIButton *_blackBackgroundButton;
    UIButton *_blackBackgroundButton;

    //: Class delegateClass;
    Class delegateClass;
    //: __unsafe_unretained id<HMDatePickerViewDelegate> _delegate;
    __unsafe_unretained id<GreenDelegate> _delegate;
}

//: @property (nonatomic,assign) id<HMDatePickerViewDelegate> delegate;
@property (nonatomic,assign) id<GreenDelegate> delegate;
//: @property (nonatomic,retain) UIDatePicker *datePicker;
@property (nonatomic,retain) UIDatePicker *datePicker;
//: @property (nonatomic,retain) UIButton *blackBackgroundButton;
@property (nonatomic,retain) UIButton *blackBackgroundButton;
//: @property (nonatomic, strong) UILabel *titleL;
@property (nonatomic, strong) UILabel *titleL;
//: @property (nonatomic ,strong) NSString *titleString;
@property (nonatomic ,strong) NSString *titleString;

//: + (void)showInView:(UIView*)view delegate:(id<HMDatePickerViewDelegate>)delegate minDate:(NSDate*)minDate maxDate:(NSDate*)maxDate showDate:(NSDate*)showDate;
+ (void)temporaryWorker:(UIView*)view outside:(id<GreenDelegate>)delegate value:(NSDate*)minDate app:(NSDate*)maxDate argument:(NSDate*)showDate;

//: + (id)showWithDelegate:(id<HMDatePickerViewDelegate>)delegate minDate:(NSDate*)minDate maxDate:(NSDate*)maxDate showDate:(NSDate*)showDate;
+ (id)maturityBy:(id<GreenDelegate>)delegate streetSmart:(NSDate*)minDate ironed:(NSDate*)maxDate info:(NSDate*)showDate;

//: - (void)setDate:(NSDate*)date;
- (void)setBirthdaySet:(NSDate*)date;

//: - (void)show;
- (void)deviceInput;

//: - (void)changeDelegate:(id<HMDatePickerViewDelegate>)delegate;
- (void)selected:(id<GreenDelegate>)delegate;

//: @end
@end


//: @protocol HMDatePickerViewDelegate <NSObject>
@protocol GreenDelegate <NSObject>
//: @optional
@optional

//: - (void)dismissDataPickerView;
- (void)worldView;
//: - (void)datePick:(HMDatePickerView *)pickView doneWithDate:(NSDate *)date;
- (void)beforeDate:(TapFrameView *)pickView message:(NSDate *)date;

//: @end
@end