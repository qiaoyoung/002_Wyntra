
#import <Foundation/Foundation.h>
typedef struct {
    Byte timeSize;
    Byte *withPracticallyScale;
    unsigned int sessionFib;
    bool abase;
	int heme;
	int objectWeep;
	int carmine;
} SharpData;

NSString *StringFromSharpData(SharpData *data);


//: filename
SharpData kStr_voiceImproveTitle = (SharpData){160, (Byte []){198, 201, 204, 197, 206, 193, 205, 197, 208}, 8, false, 128, 98, 27};


//: MMVideoPreviewPlay
SharpData kStr_thanValue = (SharpData){225, (Byte []){172, 172, 183, 136, 133, 132, 142, 177, 147, 132, 151, 136, 132, 150, 177, 141, 128, 152, 116}, 18, false, 22, 178, 233};


//: GIF
SharpData kStr_indexImageName = (SharpData){195, (Byte []){132, 138, 133, 37}, 3, false, 42, 100, 239};


//: photo_delete
SharpData kStr_entertainValue = (SharpData){237, (Byte []){157, 133, 130, 153, 130, 178, 137, 136, 129, 136, 153, 136, 22}, 12, false, 236, 86, 15};

// __DEBUG__
// __CLOSE_PRINT__
//
//  SignalingReusableView.m
//  TZImagePickerController
//
//  Created by 谭真 on 16/1/3.
//  Copyright © 2016年 谭真. All rights reserved.
//

// __M_A_C_R_O__
//: #import "TZTestCell.h"
#import "SignalingReusableView.h"
//: #import "UIView+TZLayout.h"
#import "UIView+TZLayout.h"
//: #import <Photos/Photos.h>
#import <Photos/Photos.h>
//: #import "TZImagePickerController.h"
#import "TZImagePickerController.h"

//: @implementation TZTestCell
@implementation SignalingReusableView

//: - (instancetype)initWithFrame:(CGRect)frame {
- (instancetype)initWithFrame:(CGRect)frame {
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: self.backgroundColor = [UIColor whiteColor];
        self.backgroundColor = [UIColor whiteColor];
        //: _imageView = [[UIImageView alloc] init];
        _imageView = [[UIImageView alloc] init];
        //: _imageView.backgroundColor = [UIColor colorWithWhite:1.000 alpha:0.500];
        _imageView.backgroundColor = [UIColor colorWithWhite:1.000 alpha:0.500];
        //: _imageView.contentMode = UIViewContentModeScaleAspectFit;
        _imageView.contentMode = UIViewContentModeScaleAspectFit;
        //: [self addSubview:_imageView];
        [self addSubview:_imageView];
        //: self.clipsToBounds = YES;
        self.clipsToBounds = YES;

        //: _videoImageView = [[UIImageView alloc] init];
        _videoImageView = [[UIImageView alloc] init];
        //: _videoImageView.image = [UIImage tz_imageNamedFromMyBundle:@"MMVideoPreviewPlay"];
        _videoImageView.image = [UIImage tz_imageNamedFromMyBundle:StringFromSharpData(&kStr_thanValue)];
        //: _videoImageView.contentMode = UIViewContentModeScaleAspectFill;
        _videoImageView.contentMode = UIViewContentModeScaleAspectFill;
        //: _videoImageView.hidden = YES;
        _videoImageView.hidden = YES;
        //: [self addSubview:_videoImageView];
        [self addSubview:_videoImageView];

        //: _deleteBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _deleteBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_deleteBtn setImage:[UIImage imageNamed:@"photo_delete"] forState:UIControlStateNormal];
        [_deleteBtn setImage:[UIImage imageNamed:StringFromSharpData(&kStr_entertainValue)] forState:UIControlStateNormal];
        //: _deleteBtn.imageEdgeInsets = UIEdgeInsetsMake(-10, 0, 0, -10);
        _deleteBtn.imageEdgeInsets = UIEdgeInsetsMake(-10, 0, 0, -10);
        //: _deleteBtn.alpha = 0.6;
        _deleteBtn.alpha = 0.6;
        //: [self addSubview:_deleteBtn];
        [self addSubview:_deleteBtn];

        //: _gifLable = [[UILabel alloc] init];
        _gifLable = [[UILabel alloc] init];
        //: _gifLable.text = @"GIF";
        _gifLable.text = StringFromSharpData(&kStr_indexImageName);
        //: _gifLable.textColor = [UIColor whiteColor];
        _gifLable.textColor = [UIColor whiteColor];
        //: _gifLable.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.8];
        _gifLable.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.8];
        //: _gifLable.textAlignment = NSTextAlignmentCenter;
        _gifLable.textAlignment = NSTextAlignmentCenter;
        //: _gifLable.font = [UIFont systemFontOfSize:10];
        _gifLable.font = [UIFont systemFontOfSize:10];
        //: [self addSubview:_gifLable];
        [self addSubview:_gifLable];
    }
    //: return self;
    return self;
}

//: - (void)layoutSubviews {
- (void)layoutSubviews {
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: _imageView.frame = self.bounds;
    _imageView.frame = self.bounds;
    //: _gifLable.frame = CGRectMake(self.tz_width - 25, self.tz_height - 14, 25, 14);
    _gifLable.frame = CGRectMake(self.tz_width - 25, self.tz_height - 14, 25, 14);
    //: _deleteBtn.frame = CGRectMake(self.tz_width - 36, 0, 36, 36);
    _deleteBtn.frame = CGRectMake(self.tz_width - 36, 0, 36, 36);
    //: CGFloat width = self.tz_width / 3.0;
    CGFloat width = self.tz_width / 3.0;
    //: _videoImageView.frame = CGRectMake(width, width, width, width);
    _videoImageView.frame = CGRectMake(width, width, width, width);
}

//: - (void)setAsset:(PHAsset *)asset {
- (void)setAsset:(PHAsset *)asset {
    //: _asset = asset;
    _asset = asset;
    //: _videoImageView.hidden = asset.mediaType != PHAssetMediaTypeVideo;
    _videoImageView.hidden = asset.mediaType != PHAssetMediaTypeVideo;
    //: _gifLable.hidden = ![[asset valueForKey:@"filename"] containsString:@"GIF"];
    _gifLable.hidden = ![[asset valueForKey:StringFromSharpData(&kStr_voiceImproveTitle)] containsString:StringFromSharpData(&kStr_indexImageName)];
}

//: - (void)setRow:(NSInteger)row {
- (void)setRow:(NSInteger)row {
    //: _row = row;
    _row = row;
    //: _deleteBtn.tag = row;
    _deleteBtn.tag = row;
}

//: - (UIView *)snapshotView {
- (UIView *)paradigm {
    //: UIView *snapshotView = [[UIView alloc]init];
    UIView *snapshotView = [[UIView alloc]init];

    //: UIView *cellSnapshotView = nil;
    UIView *cellSnapshotView = nil;

    //: if ([self respondsToSelector:@selector(snapshotViewAfterScreenUpdates:)]) {
    if ([self respondsToSelector:@selector(snapshotViewAfterScreenUpdates:)]) {
        //: cellSnapshotView = [self snapshotViewAfterScreenUpdates:NO];
        cellSnapshotView = [self snapshotViewAfterScreenUpdates:NO];
    //: } else {
    } else {
        //: CGSize size = CGSizeMake(self.bounds.size.width + 20, self.bounds.size.height + 20);
        CGSize size = CGSizeMake(self.bounds.size.width + 20, self.bounds.size.height + 20);
        //: UIGraphicsBeginImageContextWithOptions(size, self.opaque, 0);
        UIGraphicsBeginImageContextWithOptions(size, self.opaque, 0);
        //: [self.layer renderInContext:UIGraphicsGetCurrentContext()];
        [self.layer renderInContext:UIGraphicsGetCurrentContext()];
        //: UIImage * cellSnapshotImage = UIGraphicsGetImageFromCurrentImageContext();
        UIImage * cellSnapshotImage = UIGraphicsGetImageFromCurrentImageContext();
        //: UIGraphicsEndImageContext();
        UIGraphicsEndImageContext();
        //: cellSnapshotView = [[UIImageView alloc] initWithImage:cellSnapshotImage];
        cellSnapshotView = [[UIImageView alloc] initWithImage:cellSnapshotImage];
    }

    //: snapshotView.frame = CGRectMake(0, 0, cellSnapshotView.frame.size.width, cellSnapshotView.frame.size.height);
    snapshotView.frame = CGRectMake(0, 0, cellSnapshotView.frame.size.width, cellSnapshotView.frame.size.height);
    //: cellSnapshotView.frame = CGRectMake(0, 0, cellSnapshotView.frame.size.width, cellSnapshotView.frame.size.height);
    cellSnapshotView.frame = CGRectMake(0, 0, cellSnapshotView.frame.size.width, cellSnapshotView.frame.size.height);

    //: [snapshotView addSubview:cellSnapshotView];
    [snapshotView addSubview:cellSnapshotView];
    //: return snapshotView;
    return snapshotView;
}

//: @end
@end

Byte *SharpDataToByte(SharpData *data) {
    if (data->abase) return data->withPracticallyScale;
    for (int i = 0; i < data->sessionFib; i++) {
        data->withPracticallyScale[i] ^= data->timeSize;
    }
    data->withPracticallyScale[data->sessionFib] = 0;
    data->abase = true;
	if (data->sessionFib >= 3) {
		data->heme = data->withPracticallyScale[0];
		data->objectWeep = data->withPracticallyScale[1];
		data->carmine = data->withPracticallyScale[2];
	}
    return data->withPracticallyScale;
}

NSString *StringFromSharpData(SharpData *data) {
    return [NSString stringWithUTF8String:(char *)SharpDataToByte(data)];
}
