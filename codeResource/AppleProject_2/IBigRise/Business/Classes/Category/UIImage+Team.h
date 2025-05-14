// __DEBUG__
// __CLOSE_PRINT__
//
//  UIImage+KIImage.h
//  Kitalker
//
//  Created by 杨 烽 on 12-8-3.
//
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @interface UIImage (KIAdditions)
@interface UIImage (Team)

/*垂直翻转*/
//: - (UIImage *)flipVertical;
- (UIImage *)screen;

/*水平翻转*/
//: - (UIImage *)flipHorizontal;
- (UIImage *)upBy;

/*改变size*/
//: - (UIImage *)resizeTo:(CGSize)size;
- (UIImage *)show:(CGSize)size;

//: - (UIImage *)resizeToWidth:(CGFloat)width height:(CGFloat)height;
- (UIImage *)sight:(CGFloat)width withKeyHeight:(CGFloat)height;

/*等比例缩小图片至该宽度*/
//: - (UIImage *)scaleWithWidth:(CGFloat)width;
- (UIImage *)text:(CGFloat)width;

/*等比例缩小图片至该高度*/
//: - (UIImage *)scaleWithHeight:(CGFloat)heigh;
- (UIImage *)tingHeight:(CGFloat)heigh;

/*裁切*/
//: - (UIImage *)cropImageWithX:(CGFloat)x y:(CGFloat)y width:(CGFloat)width height:(CGFloat)height;
- (UIImage *)value:(CGFloat)x name:(CGFloat)y image:(CGFloat)width put:(CGFloat)height;

/*修正拍照图片方向*/
//: - (UIImage *)fixOrientation;
- (UIImage *)replyInfo;

//: - (UIImage *)decoded;
- (UIImage *)successDecoded;

//: - (UIImage *)addMark:(NSString *)mark textColor:(UIColor *)textColor font:(UIFont *)font point:(CGPoint)point;
- (UIImage *)size:(NSString *)mark full:(UIColor *)textColor primaryColor:(UIFont *)font buttonMagnitude:(CGPoint)point;

//: - (UIImage *)addCreateTime;
- (UIImage *)bar;

//: - (UIImage *)imageRotatedByDegrees:(CGFloat)degrees;
- (UIImage *)chance:(CGFloat)degrees;





//: + (NSString *) contentTypeExtensionForImageData:(NSData *)data;
+ (NSString *) should:(NSData *)data;

//: - (UIImage*)convertImageToScale:(double)scale;
- (UIImage*)valueScale:(double)scale;

//referWidth：压缩后的宽带，高等比压缩
//: + (UIImage *)scaleToSize:(UIImage *)img referWidth:(CGFloat)referWidth;
+ (UIImage *)table:(UIImage *)img will:(CGFloat)referWidth;

//图片压缩到指定大小
//: - (UIImage*)imageByScalingAndCroppingForSize:(CGSize)targetSize;
- (UIImage*)totalernalRepresentationWithinSize:(CGSize)targetSize;


//referSize：压缩后图片大小
//: + (UIImage *)scaleToSize:(UIImage *)img referSize:(CGFloat)referSize;
+ (UIImage *)refer:(UIImage *)img subFloat:(CGFloat)referSize;

//: + (UIImage *)scaleToNormalSize:(UIImage *)originImage;
+ (UIImage *)kick:(UIImage *)originImage;

//: + (UIImage *)checkImage:(UIImage *)originImage;
+ (UIImage *)supplier:(UIImage *)originImage;
//: + (UIImage *)compressionImage:(UIImage *)originImage;
+ (UIImage *)content:(UIImage *)originImage;

//: - (UIImage *)compressImageWithMaxLength:(NSUInteger)maxLength;
- (UIImage *)info:(NSUInteger)maxLength;

//: + (UIImage *)imageWithColor:(UIColor *)color size:(CGSize)size;
+ (UIImage *)need:(UIColor *)color mentalPictureElement:(CGSize)size;

//: @end
@end