
#import <Foundation/Foundation.h>
typedef struct {
    Byte informElaborate;
    Byte *scaleConvict;
    unsigned int rabbi;
    bool wallConference;
} MinderData;

NSString *StringFromMinderData(MinderData *data);


//: head_default
MinderData kStr_raceTitle = (MinderData){254, (Byte []){150, 155, 159, 154, 161, 154, 155, 152, 159, 139, 146, 138, 101}, 12, false};

// __DEBUG__
// __CLOSE_PRINT__
//
//  ShankView.m
// On
//
//  Created by chris on 15/2/10.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZZZAvatarImageView.h"
#import "ShankView.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "objc/runtime.h"
#import "objc/runtime.h"
//: #import "DataKitDependency.h"
#import "DataKitDependency.h"
//: #import "AppleProjectKit.h"
#import "On.h"
//: #import "ZZZKitInfoFetchOption.h"
#import "CertainOption.h"
//: #import "ZZZKitUrlManager.h"
#import "BecloudManager.h"

//: @interface ZZZAvatarImageView()
@interface ShankView()

//: @property (nonatomic,strong) UIImageView *imageView;
@property (nonatomic,strong) UIImageView *imageView;

//: @end
@end

//: @implementation ZZZAvatarImageView
@implementation ShankView

//: - (id)initWithFrame:(CGRect)frame
- (id)initWithFrame:(CGRect)frame
{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self)
    if (self)
    {
        //: [self setup];
        [self pressedAll];
    }
    //: return self;
    return self;
}


//: - (id)initWithCoder:(NSCoder *)aDecoder
- (id)initWithCoder:(NSCoder *)aDecoder
{
    //: if (self = [super initWithCoder:aDecoder])
    if (self = [super initWithCoder:aDecoder])
    {
        //: [self setup];
        [self pressedAll];
    }
    //: return self;
    return self;
}

//: - (void)layoutSubviews
- (void)layoutSubviews
{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: [self setupRadius];
    [self reload];

    //: if (!__CGSizeEqualToSize(self.imageView.nim_size, self.nim_size))
    if (!__CGSizeEqualToSize(self.imageView.nim_size, self.nim_size))
    {
        //: self.imageView.nim_size = self.nim_size;
        self.imageView.nim_size = self.nim_size;
//        self.imageView.image = [self imageAddCorner:_image
//                                             radius:_cornerRadius
//                                            andSize:self.bounds.size];
        //: self.imageView.image = _image;
        self.imageView.image = _image;
    }

}

//: - (void)setup{
- (void)pressedAll{
    //: [self setupRadius];
    [self reload];
    //: _imageView = [[UIImageView alloc] initWithFrame:self.bounds];
    _imageView = [[UIImageView alloc] initWithFrame:self.bounds];
    //: _imageView.contentMode = UIViewContentModeScaleAspectFill;
    _imageView.contentMode = UIViewContentModeScaleAspectFill;
    //: _imageView.clipsToBounds = YES;
    _imageView.clipsToBounds = YES;
    //: [self addSubview:_imageView];
    [self addSubview:_imageView];
    //: _imageView.layer.masksToBounds = YES;
    _imageView.layer.masksToBounds = YES;
    //: _imageView.layer.cornerRadius = _cornerRadius;
    _imageView.layer.cornerRadius = _cornerRadius;
    //: self.backgroundColor = [UIColor clearColor];
    self.backgroundColor = [UIColor clearColor];

}


//: - (void)setupRadius{
- (void)reload{
    //: switch ([AppleProjectKit sharedKit].config.avatarType)
    switch ([On along].config.avatarType)
    {
        //: case NIMKitAvatarTypeNone:
        case NIMKitAvatarTypeNone:
            //: _cornerRadius = 0;
            _cornerRadius = 0;
            //: break;
            break;
        //: case NIMKitAvatarTypeRounded:
        case NIMKitAvatarTypeRounded:
            //: _cornerRadius = self.nim_width *.5f;
            _cornerRadius = self.nim_width *.5f;//self.nim_width *.5f;
            //: break;
            break;
        //: case NIMKitAvatarTypeRadiusCorner:
        case NIMKitAvatarTypeRadiusCorner:
            //: _cornerRadius = self.nim_width *.5f;
            _cornerRadius = self.nim_width *.5f;
            //: break;
            break;
        //: default:
        default:
            //: break;
            break;
    }
}


//: - (void)setImage:(UIImage *)image
- (void)setImage:(UIImage *)image
{
    //: if (_image != image)
    if (_image != image)
    {
        //: _image = image;
        _image = image;
//        UIImage *fixedImage  = [self imageAddCorner:_image
//                                             radius:_cornerRadius
//                                            andSize:self.bounds.size];
        //: self.imageView.image = image;
        self.imageView.image = image;
    }
}

//: - (UIImage*)imageAddCorner:(UIImage *)image radius:(CGFloat)radius andSize:(CGSize)size
- (UIImage*)bottom:(UIImage *)image image:(CGFloat)radius file:(CGSize)size
{
    //: CGRect rect = CGRectMake(0, 0, size.width, size.height);
    CGRect rect = CGRectMake(0, 0, size.width, size.height);

    //: UIGraphicsBeginImageContextWithOptions(size, NO, [UIScreen mainScreen].scale);
    UIGraphicsBeginImageContextWithOptions(size, NO, [UIScreen mainScreen].scale);
    //: CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    //: CGPathRef path = self.path;
    CGPathRef path = self.question;
    //: CGContextAddPath(ctx,path);
    CGContextAddPath(ctx,path);
    //: CGContextClip(ctx);
    CGContextClip(ctx);
    //: [image drawInRect:rect];
    [image drawInRect:rect];
    //: CGContextDrawPath(ctx, kCGPathFillStroke);
    CGContextDrawPath(ctx, kCGPathFillStroke);
    //: UIImage * newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIImage * newImage = UIGraphicsGetImageFromCurrentImageContext();
    //: UIGraphicsEndImageContext();
    UIGraphicsEndImageContext();
    //: return newImage;
    return newImage;
}

//: - (CGPathRef)path
- (CGPathRef)question
{
    //: return [[UIBezierPath bezierPathWithRoundedRect:self.bounds
    return [[UIBezierPath bezierPathWithRoundedRect:self.bounds
                                       //: cornerRadius:self.cornerRadius] CGPath];
                                       cornerRadius:self.cornerRadius] CGPath];
}

//: - (void)setAvatarBySession:(NIMSession *)session
- (void)setUser:(NIMSession *)session
{
    //: ZZZKitInfo *info = nil;
    MagnitudeCommentInfo *info = nil;
    //: if (session.sessionType == NIMSessionTypeTeam) {
    if (session.sessionType == NIMSessionTypeTeam) {
        //: info = [[AppleProjectKit sharedKit] infoByTeam:session.sessionId option:nil];
        info = [[On along] center:session.sessionId touch:nil];
//        info.avatarImage = [UIImage grayImageWithName:@"contact_group_header" color:RGB_COLOR_String(kCommonBGColor_All)];
        //: info.avatarImage = [UIImage imageNamed:@"head_default"];
        info.avatarImage = [UIImage imageNamed:StringFromMinderData(&kStr_raceTitle)];
    //: } else if (session.sessionType == NIMSessionTypeSuperTeam) {
    } else if (session.sessionType == NIMSessionTypeSuperTeam) {
        //: info = [[AppleProjectKit sharedKit] infoBySuperTeam:session.sessionId option:nil];
        info = [[On along] image:session.sessionId status:nil];
//        info.avatarImage = [UIImage grayImageWithName:@"contact_group_header" color:RGB_COLOR_String(kCommonBGColor_All)];
        //: info.avatarImage = [UIImage imageNamed:@"head_default"];
        info.avatarImage = [UIImage imageNamed:StringFromMinderData(&kStr_raceTitle)];
    //: } else {
    } else {
        //: ZZZKitInfoFetchOption *option = [[ZZZKitInfoFetchOption alloc] init];
        CertainOption *option = [[CertainOption alloc] init];
        //: option.session = session;
        option.session = session;
        //: info = [[AppleProjectKit sharedKit] infoByUser:session.sessionId option:option];
        info = [[On along] toKey:session.sessionId image:option];
    }
    //: [self setImageWithUrlString:info.avatarUrlString placeholderImage:info.avatarImage options:0];
    [self packet:info.avatarUrlString doingAdd:info.avatarImage progress:0];
}

//: - (void)setAvatarByMessage:(NIMMessage *)message
- (void)setEvent:(NIMMessage *)message
{
    //: ZZZKitInfoFetchOption *option = [[ZZZKitInfoFetchOption alloc] init];
    CertainOption *option = [[CertainOption alloc] init];
    //: option.message = message;
    option.message = message;
    //: NSString *from = message.from;
    NSString *from = message.from;
    //: ZZZKitInfo *info = [[AppleProjectKit sharedKit] infoByUser:from option:option];
    MagnitudeCommentInfo *info = [[On along] toKey:from image:option];
    //: [self setImageWithUrlString:info.avatarUrlString placeholderImage:info.avatarImage options:0];
    [self packet:info.avatarUrlString doingAdd:info.avatarImage progress:0];
}

//: - (void)nim_setImageWithURL:(NSURL *)url placeholderImage:(UIImage *)placeholder {
- (void)colorImageShow:(NSURL *)url blockFrame:(UIImage *)placeholder {
    //: [self setImageWithUrlString:url.absoluteString placeholderImage:placeholder options:0];
    [self packet:url.absoluteString doingAdd:placeholder progress:0];
}

//: - (void)nim_setImageWithURL:(NSURL *)url placeholderImage:(UIImage *)placeholder options:(SDWebImageOptions)options {
- (void)towardNeed:(NSURL *)url user:(UIImage *)placeholder can:(SDWebImageOptions)options {
    //: [self setImageWithUrlString:url.absoluteString placeholderImage:placeholder options:options];
    [self packet:url.absoluteString doingAdd:placeholder progress:options];
}

//: - (void)setImageWithUrlString:(NSString *)urlString placeholderImage:(UIImage *)placeholderImage options:(SDWebImageOptions)options {
- (void)packet:(NSString *)urlString doingAdd:(UIImage *)placeholderImage progress:(SDWebImageOptions)options {
    //: if (placeholderImage && self.image != placeholderImage) {
    if (placeholderImage && self.image != placeholderImage) {
        //: self.image = placeholderImage;
        self.image = placeholderImage;
    }
    //: if (urlString.length == 0) {
    if (urlString.length == 0) {
        //: return;
        return;
    }

    //查询
    //: __block NSURL *targetUrl = nil;
    __block NSURL *targetUrl = nil;
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [[ZZZKitUrlManager shareManager] queryQriginalUrlWithShortUrl:urlString completion:^(NSString *originalUrl, NSError *error) {
    [[BecloudManager input] powerSafely:urlString pinSize:^(NSString *originalUrl, NSError *error) {
        //: if (urlString && !error) {
        if (urlString && !error) {
            //: targetUrl = [NSURL URLWithString:originalUrl];
            targetUrl = [NSURL URLWithString:originalUrl];
        //: } else {
        } else {
            //: targetUrl = [NSURL URLWithString:urlString];
            targetUrl = [NSURL URLWithString:urlString];
        }
        //: [weakSelf didSetImageUrl:targetUrl placeholderImage:placeholderImage options:options];
        [weakSelf disableAcross:targetUrl doing:placeholderImage min:options];
    //: }];
    }];
}

//: - (void)didSetImageUrl:(NSURL *)url placeholderImage:(UIImage *)placeholderImage options:(SDWebImageOptions)options {
- (void)disableAcross:(NSURL *)url doing:(UIImage *)placeholderImage min:(SDWebImageOptions)options {
    //: if (!url) {
    if (!url) {
        //: return;
        return;
    }
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
//    UIImage *fixedPlaceholderImage  = [self imageAddCorner:placeholderImage
//                                                    radius:_cornerRadius
//                                                   andSize:self.bounds.size];

    //: UIImage *fixedPlaceholderImage = placeholderImage;
    UIImage *fixedPlaceholderImage = placeholderImage;

    //: [_imageView sd_setImageWithURL:url
    [_imageView sd_setImageWithURL:url
                  //: placeholderImage:fixedPlaceholderImage
                  placeholderImage:fixedPlaceholderImage
                           //: options:SDWebImageAvoidAutoSetImage|SDWebImageDelayPlaceholder
                           options:SDWebImageAvoidAutoSetImage|SDWebImageDelayPlaceholder
                         //: completed:^(UIImage * _Nullable image, NSError * _Nullable error, SDImageCacheType cacheType, NSURL * _Nullable imageURL) {
                         completed:^(UIImage * _Nullable image, NSError * _Nullable error, SDImageCacheType cacheType, NSURL * _Nullable imageURL) {
        //: if (image) {
        if (image) {
            //weakSelf.image = image;
            //: _imageView.image = image;
            _imageView.image = image;
            //: _image = image;
            _image = image;
        }

    //: }];
    }];


}
//: @end
@end

Byte *MinderDataToByte(MinderData *data) {
    if (data->wallConference) return data->scaleConvict;
    for (int i = 0; i < data->rabbi; i++) {
        data->scaleConvict[i] ^= data->informElaborate;
    }
    data->scaleConvict[data->rabbi] = 0;
    data->wallConference = true;
    return data->scaleConvict;
}

NSString *StringFromMinderData(MinderData *data) {
    return [NSString stringWithUTF8String:(char *)MinderDataToByte(data)];
}
