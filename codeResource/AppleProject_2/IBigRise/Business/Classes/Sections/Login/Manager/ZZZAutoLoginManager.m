//
//  ZZZAutoLoginManager.m
//  NIM
//
//  Created by 田玉龙 on 2023/6/24.
//  Copyright © 2023 Netease. All rights reserved.
//

#import "ZZZAutoLoginManager.h"

@implementation ZZZAutoLoginManager

+ (instancetype)sharedManager
{
    static ZZZAutoLoginManager *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[ZZZAutoLoginManager alloc] init];
    });
    return instance;
}


@end
