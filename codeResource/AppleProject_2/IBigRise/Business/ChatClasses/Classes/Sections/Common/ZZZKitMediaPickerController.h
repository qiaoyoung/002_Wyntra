//
//  ZZZKitMediaPickerController.h
// AppleProjectKit
//
//  Created by Genning on 2020/9/25.
//  Copyright © 2020 NetEase. All rights reserved.
//

#import "TZImagePickerController.h"
#import "ZZZKitMediaPickerDelegate.h"

NS_ASSUME_NONNULL_BEGIN

@interface ZZZKitMediaPickerController : TZImagePickerController

- (instancetype)initWithMaxImagesCount:(NSInteger)maxImagesCount;

@property (nonatomic, weak) id<ZZZKitMediaPickerDelegate> nim_delegate;

@property(nonatomic, strong) NSArray<NSString *> *mediaTypes;

@end

NS_ASSUME_NONNULL_END
