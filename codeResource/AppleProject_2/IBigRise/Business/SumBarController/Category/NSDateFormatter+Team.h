// __DEBUG__
// __CLOSE_PRINT__
//
//  NSDateFormatter+KIDateFormatter.h
//  Kitalker
//
//  Created by chen on 12-8-23.
//
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @interface NSDateFormatter (KIAdditions)
@interface NSDateFormatter (Team)

//: + (NSString *)dateStringWithFormat:(NSString *)format date:(NSDate *)date;
+ (NSString *)readDate:(NSString *)format modal:(NSDate *)date;

//: - (NSString *)weekday:(NSDate *)date;
- (NSString *)next:(NSDate *)date;

//: - (NSString *)day:(NSDate *)date;
- (NSString *)show:(NSDate *)date;

//: - (NSString *)month:(NSDate *)date;
- (NSString *)wearer:(NSDate *)date;

//: - (NSString *)year:(NSDate *)date;
- (NSString *)center:(NSDate *)date;

//: - (NSString *)dateStringWithFormat:(NSString *)format date:(NSDate *)date;
- (NSString *)dueDate:(NSString *)format barConvert:(NSDate *)date;

//: @end
@end