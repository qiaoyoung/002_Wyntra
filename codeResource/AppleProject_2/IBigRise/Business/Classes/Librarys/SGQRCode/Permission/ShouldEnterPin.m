// __DEBUG__
// __CLOSE_PRINT__
//
//  KEKEProject
//  KEKEChat
//
//  Created by tyl.
//  Copyright © 2024 Ali. All rights reserved.
//

// __M_A_C_R_O__
//: #import "SGPermission.h"
#import "ShouldEnterPin.h"
//: #import "SGPermissionCamera.h"
#import "BackgroundCamera.h"
//: #import "SGPermissionPhoto.h"
#import "PermissionBuildBoard.h"

//: @interface SGPermission ()
@interface ShouldEnterPin ()
//: @property (nonatomic, assign) SGPermissionType type;
@property (nonatomic, assign) SGPermissionType type;
//: @end
@end

//: @implementation SGPermission
@implementation ShouldEnterPin

//: - (void)initWithType:(SGPermissionType)type completion:(SGPermissionBlock)block {
- (void)initWithShouldCompletion:(SGPermissionType)type disable:(SGPermissionBlock)block {
    //: [SGPermission permissionWithType:type completion:block];
    [ShouldEnterPin compartmentReply:type aggregation:block];
}

//: + (void)permissionWithType:(SGPermissionType)type completion:(SGPermissionBlock)block {
+ (void)compartmentReply:(SGPermissionType)type aggregation:(SGPermissionBlock)block {
    //: SGPermission *permission = [[SGPermission alloc] init];
    ShouldEnterPin *permission = [[ShouldEnterPin alloc] init];
    //: permission.type = type;
    permission.type = type;

    //: if (type == SGPermissionTypeCamera) {
    if (type == SGPermissionTypeCamera) {
        //: [SGPermissionCamera camera:^(SGPermissionCamera * _Nonnull camera, SGPermissionStatus status) {
        [BackgroundCamera with:^(BackgroundCamera * _Nonnull camera, SGPermissionStatus status) {
            //: if (block) {
            if (block) {
                //: block(permission, status);
                block(permission, status);
            }
        //: }];
        }];
    //: } else if (type == SGPermissionTypePhoto) {
    } else if (type == SGPermissionTypePhoto) {
        //: [SGPermissionPhoto photo:^(SGPermissionPhoto * _Nonnull photos, SGPermissionStatus status) {
        [PermissionBuildBoard ting:^(PermissionBuildBoard * _Nonnull photos, SGPermissionStatus status) {
            //: if (block) {
            if (block) {
                //: block(permission, status);
                block(permission, status);
            }
        //: }];
        }];
    }
}

//: - (void)request:(void (^)(BOOL))handler {
- (void)modelMaxValue:(void (^)(BOOL))handler {
    //: if (self.type == SGPermissionTypeCamera) {
    if (self.type == SGPermissionTypeCamera) {
        //: [SGPermissionCamera request:handler];
        [BackgroundCamera ofRequest:handler];
    //: } else if (self.type == SGPermissionTypePhoto) {
    } else if (self.type == SGPermissionTypePhoto) {
        //: [SGPermissionPhoto request:handler];
        [PermissionBuildBoard lipogram:handler];
    }
}

//: @end
@end