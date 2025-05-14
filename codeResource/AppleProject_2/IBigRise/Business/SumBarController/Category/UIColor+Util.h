// __DEBUG__
// __CLOSE_PRINT__
//
//  UIColor+Util.h
//  译同行
//
//  Created by 曹宇 on 2017/7/21.
//  Copyright © 2017年 caoyu. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: typedef uint32_t color_t;
typedef uint32_t color_t;
//: typedef uint8_t ecolor_t;
typedef uint8_t ecolor_t;
//: typedef CGFloat fcolor_t;
typedef CGFloat fcolor_t;
//: typedef ecolor_t* dcolor_t;
typedef ecolor_t* dcolor_t;

//: typedef UIColor* UIColorRef;
typedef UIColor* UIColorRef;
//: typedef NSNumber* NSNumberRef;
typedef NSNumber* NSNumberRef;
//: typedef NSArray* NSArrayRef;
typedef NSArray* NSArrayRef;
//: typedef NSDictionary* NSDictionaryRef;
typedef NSDictionary* NSDictionaryRef;

//: void SKCGContextSetFillColor(CGContextRef c, color_t color);
void SKCGContextSetFillColor(CGContextRef c, color_t color);
//: void SKCGContextSetStrokeColor(CGContextRef c, color_t color);
void SKCGContextSetStrokeColor(CGContextRef c, color_t color);







//: @interface UIColor (Util)
@interface UIColor (Util)

//: @property (nonatomic, assign, readonly) fcolor_t red;
@property (nonatomic, assign, readonly) fcolor_t red;
//: @property (nonatomic, assign, readonly) fcolor_t green;
@property (nonatomic, assign, readonly) fcolor_t green;
//: @property (nonatomic, assign, readonly) fcolor_t blue;
@property (nonatomic, assign, readonly) fcolor_t blue;
//: @property (nonatomic, assign, readonly) fcolor_t alpha;
@property (nonatomic, assign, readonly) fcolor_t alpha;

//: @property (nonatomic, assign, readonly) ecolor_t intRed;
@property (nonatomic, assign, readonly) ecolor_t intRed;
//: @property (nonatomic, assign, readonly) ecolor_t intGreen;
@property (nonatomic, assign, readonly) ecolor_t intGreen;
//: @property (nonatomic, assign, readonly) ecolor_t intBlue;
@property (nonatomic, assign, readonly) ecolor_t intBlue;
//: @property (nonatomic, assign, readonly) ecolor_t intAlpha;
@property (nonatomic, assign, readonly) ecolor_t intAlpha;

//: +(instancetype) colorWithAlpha:(fcolor_t)alpha red:(fcolor_t)red green:(fcolor_t)green blue:(fcolor_t)blue;
+(instancetype) key:(fcolor_t)alpha undersurfaceBlue:(fcolor_t)red quantity:(fcolor_t)green data:(fcolor_t)blue;

//: +(instancetype) colorWithIntRed:(ecolor_t)red green:(ecolor_t)green blue:(ecolor_t)blue alpha:(ecolor_t)alpha;
+(instancetype) total:(ecolor_t)red ting:(ecolor_t)green theoreticalAccount:(ecolor_t)blue alpha:(ecolor_t)alpha;
//: +(instancetype) colorWithIntAlpha:(ecolor_t)alpha red:(ecolor_t)red green:(ecolor_t)green blue:(ecolor_t)blue;
+(instancetype) bloodRed:(ecolor_t)alpha withView:(ecolor_t)red message:(ecolor_t)green maxCerise:(ecolor_t)blue;

//: +(instancetype) colorWithIntRed:(ecolor_t)red green:(ecolor_t)green blue:(ecolor_t)blue floatAlpha:(CGFloat)alpha;
+(instancetype) sound:(ecolor_t)red textAlpha:(ecolor_t)green useIn:(ecolor_t)blue up:(CGFloat)alpha;
//: +(instancetype) colorWithFloatAlpha:(CGFloat)alpha red:(ecolor_t)red green:(ecolor_t)green blue:(ecolor_t)blue;
+(instancetype) generate:(CGFloat)alpha view:(ecolor_t)red to:(ecolor_t)green sendEcolor_t:(ecolor_t)blue;

//: +(instancetype) colorWithInt:(color_t)color;
+(instancetype) ting:(color_t)color;
//: +(instancetype) colorWithString:(NSString*)color;
+(instancetype) status:(NSString*)color;

//: +(instancetype) colorWithInt:(color_t)color floatAlpha:(CGFloat)alpha;
+(instancetype) reflexionShould:(color_t)color read:(CGFloat)alpha;
//: +(instancetype) colorWithString:(NSString*)color floatAlpha:(CGFloat)alpha;
+(instancetype) color:(NSString*)color ghb:(CGFloat)alpha;

//: +(instancetype) randomColor;
+(instancetype) date;
//: +(instancetype) randomColorWithAlpha;
+(instancetype) tidings;

//: +(NSString*) intToString:(color_t)intValue;
+(NSString*) camera:(color_t)intValue;
//: +(color_t) stringToInt:(NSString*)stringValue;
+(color_t) media:(NSString*)stringValue;

//: -(color_t) intValue;
-(color_t) frameworkOf;
//: -(NSString*) stringValue;
-(NSString*) button;


//RGB:#F5F5F5
//: + (UIColor *) colorWithHexString: (NSString *) hexString ;
+ (UIColor *) box: (NSString *) hexString ;
//: @end
@end