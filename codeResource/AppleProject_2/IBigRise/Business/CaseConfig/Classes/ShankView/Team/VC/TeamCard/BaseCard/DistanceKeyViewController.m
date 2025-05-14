
#import <Foundation/Foundation.h>

NSString *StringFromClassifyData(Byte *data);


//: 邀请你加入讨论组
Byte kStr_allyHopefulText[] = {58, 24, 8, 24, 194, 34, 10, 251, 132, 187, 231, 186, 174, 232, 168, 174, 232, 165, 133, 229, 160, 138, 229, 160, 189, 228, 183, 175, 232, 128, 130, 233, 179};


//: jpg
Byte kStr_globContent[] = {35, 3, 13, 150, 173, 10, 153, 9, 94, 242, 202, 16, 168, 103, 112, 106, 112};


//: attach
Byte kStr_regainData[] = {45, 6, 3, 104, 99, 97, 116, 116, 97, 92};


//: 扩展消息
Byte kStr_housingValue[] = {44, 12, 9, 147, 79, 148, 12, 107, 78, 175, 129, 230, 136, 182, 230, 149, 177, 229, 169, 137, 230, 125};


//: 邀请你加入高级群
Byte kStr_vitalName[] = {96, 24, 7, 47, 223, 11, 147, 164, 190, 231, 167, 186, 231, 152, 171, 233, 165, 133, 229, 160, 138, 229, 160, 189, 228, 183, 175, 232, 128, 130, 233, 17};


//: group_info_activity_update_failed
Byte kStr_corridorMessageData[] = {8, 33, 8, 178, 142, 47, 104, 251, 100, 101, 108, 105, 97, 102, 95, 101, 116, 97, 100, 112, 117, 95, 121, 116, 105, 118, 105, 116, 99, 97, 95, 111, 102, 110, 105, 95, 112, 117, 111, 114, 103, 245};


//: 邀请你加入超大群
Byte kStr_charmRueTitle[] = {36, 24, 13, 25, 158, 243, 120, 32, 88, 140, 208, 78, 136, 164, 190, 231, 167, 164, 229, 133, 182, 232, 165, 133, 229, 160, 138, 229, 160, 189, 228, 183, 175, 232, 128, 130, 233, 255};


//: postscript
Byte kStr_studentContent[] = {3, 10, 5, 121, 137, 116, 112, 105, 114, 99, 115, 116, 115, 111, 112, 202};

// __DEBUG__
// __CLOSE_PRINT__
//
//  DistanceKeyViewController.m
// On
//
//  Created by Genning-Work on 2019/12/12.
//  Copyright © 2019 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZZZTeamCardOperationViewController.h"
#import "DistanceKeyViewController.h"
//: #import "ZZZKitProgressHUD.h"
#import "DevelopmentColorView.h"
//: #import "DataKitDependency.h"
#import "DataKitDependency.h"
//: #import "UIImage+AppleProjectKit.h"
#import "UIImage+On.h"
//: #import "NSString+AppleProjectKit.h"
#import "NSString+On.h"

//: @implementation ZZZTeamCardOperationViewController
@implementation DistanceKeyViewController

//: - (void)dealloc {
- (void)dealloc {
    //: [[NSNotificationCenter defaultCenter] removeObserver:self];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

//: - (instancetype)initWithTeam:(NIMTeam *)team
- (instancetype)initWithLockUpOption:(NIMTeam *)team
                     //: session:(NIMSession *)session
                     model:(NIMSession *)session
                      //: option:(ZZZTeamCardViewControllerOption *)option {
                      change:(ByOption *)option {
    //: if (self = [super init]) {
    if (self = [super init]) {
        //: _option = option;
        _option = option;
        //: _teamListManager = [[ZZZTeamListDataManager alloc] initWithTeam:team session:session];
        _teamListManager = [[InformationShould alloc] initWithBraincaseSpecialSession:team toTing:session];
        //: [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(teamInfoUpdate:) name:kNIMTeamListDataTeamInfoUpdate object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(arrayed:) name:kConst_sourceData object:nil];
        //: [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(teamMemberUpdate:) name:kConst_pointTapButtonData object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(obscured:) name:kConst_pointTapButtonData object:nil];
    }
    //: return self;
    return self;
}

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: ZZZMembersFetchOption *option = [[ZZZMembersFetchOption alloc] init];
    TingEnterEnable *option = [[TingEnterEnable alloc] init];
    //: option.isRefresh = YES;
    option.isRefresh = YES;
    //: option.offset = 0;
    option.offset = 0;
    //: option.count = (10);
    option.count = (10);
    //: [self didFetchTeamMember:option];
    [self pinTeam:option];
}

//: - (void)reloadData {
- (void)message {
    //: [self reloadTableHeaderData];
    [self quantityerval];
    //: [self reloadTableViewData];
    [self linemen];
    //: [self reloadOtherData];
    [self step];
}

//: - (void)didFetchTeamMember:(ZZZMembersFetchOption *)option {
- (void)pinTeam:(TingEnterEnable *)option {
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [ZZZKitProgressHUD show];
    [DevelopmentColorView showBackground];
    //: [self.teamListManager fetchTeamMembersWithOption:option
    [self.teamListManager addCompletion:option
                                          //: completion:^(NSError * _Nullable error, NSString * _Nullable msg) {
                                          user:^(NSError * _Nullable error, NSString * _Nullable msg) {
        //: [ZZZKitProgressHUD dismiss];
        [DevelopmentColorView voice];
        //: if (!error) {
        if (!error) {
            //: [wself reloadData];
            [wself message];
        }
        //: [wself showToastMsg:msg];
        [wself background:msg];
    //: }];
    }];
}

//: - (void)didInviteUsers:(NSArray<NSString *> *)userIds
- (void)videoImage:(NSArray<NSString *> *)userIds
            //: completion:(dispatch_block_t)completion {
            along:(dispatch_block_t)completion {

    //: if (userIds.count == 0) {
    if (userIds.count == 0) {
        //: return;
        return;
    }

    //: NSMutableDictionary *info = [NSMutableDictionary dictionary];
    NSMutableDictionary *info = [NSMutableDictionary dictionary];
    //: info[@"attach"] = @"扩展消息";
    info[StringFromClassifyData(kStr_regainData)] = StringFromClassifyData(kStr_housingValue);
    //: switch (_teamListManager.team.type) {
    switch (_teamListManager.team.type) {
        //: case NIMTeamTypeNormal:
        case NIMTeamTypeNormal:
            //: info[@"postscript"] = @"邀请你加入讨论组".nim_localized;
            info[StringFromClassifyData(kStr_studentContent)] = StringFromClassifyData(kStr_allyHopefulText).start;
            //: break;
            break;
        //: case NIMTeamTypeAdvanced:
        case NIMTeamTypeAdvanced:
            //: info[@"postscript"] = @"邀请你加入高级群".nim_localized;
            info[StringFromClassifyData(kStr_studentContent)] = StringFromClassifyData(kStr_vitalName).start;
            //: break;
            break;
        //: case NIMTeamTypeSuper:
        case NIMTeamTypeSuper:
            //: info[@"postscript"] = @"邀请你加入超大群".nim_localized;
            info[StringFromClassifyData(kStr_studentContent)] = StringFromClassifyData(kStr_charmRueTitle).start;
            //: break;
            break;
        //: default:
        default:
            //: break;
            break;
    }
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [ZZZKitProgressHUD show];
    [DevelopmentColorView showBackground];
    //: [self.teamListManager addUsers:userIds info:info completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
    [self.teamListManager location:userIds data:info info:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [ZZZKitProgressHUD dismiss];
        [DevelopmentColorView voice];
        //: if (!error) {
        if (!error) {
            //: [wself reloadTableHeaderData];
            [wself quantityerval];
        }
        //: [wself showToastMsg:msg];
        [wself background:msg];
        //: if (completion) {
        if (completion) {
            //: completion();
            completion();
        }
    //: }];
    }];
}

//: - (void)didKickUser:(NSString *)userId {
- (void)containerForward:(NSString *)userId {
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [ZZZKitProgressHUD show];
    [DevelopmentColorView showBackground];
    //: [self.teamListManager kickUsers:@[userId] completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
    [self.teamListManager language:@[userId] down:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [ZZZKitProgressHUD dismiss];
        [DevelopmentColorView voice];
        //: if (!error) {
        if (!error) {
            //: [wself reloadTableHeaderData];
            [wself quantityerval];
        }
        //: [wself showToastMsg:msg];
        [wself background:msg];
    //: }];
    }];
}

//: - (void)didUpdateTeamName:(NSString *)name {
- (void)chiaroscuro:(NSString *)name {
    //: if (!name) {
    if (!name) {
        //: return;
        return;
    }
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [ZZZKitProgressHUD show];
    [DevelopmentColorView showBackground];
    //: [self.teamListManager updateTeamName:name
    [self.teamListManager kindAdd:name
                              //: completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
                              completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [ZZZKitProgressHUD dismiss];
        [DevelopmentColorView voice];
        //: if (!error) {
        if (!error) {
            //: [wself reloadData];
            [wself message];
        }
        //: [wself showToastMsg:msg];
        [wself background:msg];
    //: }];
    }];
}

//: - (void)didUpdateTeamNick:(NSString *)nick{
- (void)inputOf:(NSString *)nick{
    //: if (!nick) {
    if (!nick) {
        //: return;
        return;
    }
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [ZZZKitProgressHUD show];
    [DevelopmentColorView showBackground];
    //: [self.teamListManager updateTeamNick:nick
    [self.teamListManager lipReadContent:nick
                              //: completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
                              center:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [ZZZKitProgressHUD dismiss];
        [DevelopmentColorView voice];
        //: if (!error) {
        if (!error) {
            //: [weakSelf reloadData];
            [weakSelf message];
        }
        //: [weakSelf showToastMsg:msg];
        [weakSelf background:msg];
    //: }];
    }];
}

//: - (void)didUpdateTeamIntro:(NSString *)intro{
- (void)titleFile:(NSString *)intro{
    //: if (!intro) {
    if (!intro) {
        //: return;
        return;
    }
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [ZZZKitProgressHUD show];
    [DevelopmentColorView showBackground];
    //: [self.teamListManager updateTeamIntro:intro completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
    [self.teamListManager recordMessage:intro date:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [ZZZKitProgressHUD dismiss];
        [DevelopmentColorView voice];
        //: if (!error) {
        if (!error) {
            //: [weakSelf reloadData];
            [weakSelf message];
        }
        //: [weakSelf showToastMsg:msg];
        [weakSelf background:msg];
    //: }];
    }];
}

//: - (void)didUpdateTeamMute:(BOOL)mute {
- (void)success:(BOOL)mute {
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [ZZZKitProgressHUD show];
    [DevelopmentColorView showBackground];
    //: [self.teamListManager updateTeamMute:mute
    [self.teamListManager addHide:mute
                              //: completion:^(NSError * _Nullable error, NSString * _Nullable msg) {
                              path:^(NSError * _Nullable error, NSString * _Nullable msg) {
        //: [ZZZKitProgressHUD dismiss];
        [DevelopmentColorView voice];
        //: if (!error) {
        if (!error) {
            //: [weakSelf reloadData];
            [weakSelf message];
        }
        //: [weakSelf showToastMsg:msg];
        [weakSelf background:msg];
    //: }];
    }];
}

//: - (void)didUpdateTeamAvatarWithType:(UIImagePickerControllerSourceType)type {
- (void)item:(UIImagePickerControllerSourceType)type {
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [self showImagePicker:type completion:^(UIImage * _Nonnull image) {
    [self visualisation:type infoCompletion:^(UIImage * _Nonnull image) {
        //: [weakSelf uploadImage:image];
        [weakSelf colorSize:image];
    //: }];
    }];
}

//: - (void)didupdateTeamJoinMode:(NIMTeamJoinMode)mode {
- (void)showEmpty:(NIMTeamJoinMode)mode {
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [ZZZKitProgressHUD show];
    [DevelopmentColorView showBackground];
    //: [self.teamListManager updateTeamJoinMode:mode completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
    [self.teamListManager itemCompletion:mode scaleCompletion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [ZZZKitProgressHUD dismiss];
        [DevelopmentColorView voice];
        //: if (!error) {
        if (!error) {
            //: [weakSelf reloadData];
            [weakSelf message];
        }
        //: [weakSelf showToastMsg:msg];
        [weakSelf background:msg];
    //: }];
    }];
}

//: - (void)didUpdateTeamInviteMode:(NIMTeamInviteMode)mode {
- (void)ofMode:(NIMTeamInviteMode)mode {
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [ZZZKitProgressHUD show];
    [DevelopmentColorView showBackground];
    //: [self.teamListManager updateTeamInviteMode:mode completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
    [self.teamListManager locationOrigin:mode misnomer:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [ZZZKitProgressHUD dismiss];
        [DevelopmentColorView voice];
        //: if (!error) {
        if (!error) {
            //: [weakSelf reloadData];
            [weakSelf message];
        }
        //: [weakSelf showToastMsg:msg];
        [weakSelf background:msg];
    //: }];
    }];
}

//: - (void)didUpdateTeamBeInviteMode:(NIMTeamBeInviteMode)mode {
- (void)comeToGripsLabel:(NIMTeamBeInviteMode)mode {
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [ZZZKitProgressHUD show];
    [DevelopmentColorView showBackground];
    //: [self.teamListManager updateTeamBeInviteMode:mode
    [self.teamListManager index:mode
                                      //: completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
                                      isHigh:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [ZZZKitProgressHUD dismiss];
        [DevelopmentColorView voice];
        //: if (!error) {
        if (!error) {
            //: [weakSelf reloadData];
            [weakSelf message];
        }
        //: [weakSelf showToastMsg:msg];
        [weakSelf background:msg];
    //: }];
    }];
}

//: - (void)didUpdateTeamInfoMode:(NIMTeamUpdateInfoMode)mode {
- (void)teamExamineed:(NIMTeamUpdateInfoMode)mode {
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [ZZZKitProgressHUD show];
    [DevelopmentColorView showBackground];
    //: [self.teamListManager updateTeamInfoMode:mode completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
    [self.teamListManager inputOff:mode child:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [ZZZKitProgressHUD dismiss];
        [DevelopmentColorView voice];
        //: if (!error) {
        if (!error) {
            //: [weakSelf reloadData];
            [weakSelf message];
        }
        //: [weakSelf showToastMsg:msg];
        [weakSelf background:msg];
    //: }];
    }];
}

//: - (void)didUpdateNotifiyState:(NIMTeamNotifyState)state {
- (void)withView:(NIMTeamNotifyState)state {
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [ZZZKitProgressHUD show];
    [DevelopmentColorView showBackground];
    //: [self.teamListManager updateTeamNotifyState:state completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
    [self.teamListManager system:state aggregation:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [ZZZKitProgressHUD dismiss];
        [DevelopmentColorView voice];
        //: if (!error) {
        if (!error) {
            //: [weakSelf reloadTableViewData];
            [weakSelf linemen];
        }
        //: [weakSelf showToastMsg:msg];
        [weakSelf background:msg];
    //: }];
    }];
}

//: - (void)didOntransferToUser:(NSString *)userId leave:(BOOL)leave {
- (void)duringRecord:(NSString *)userId drape:(BOOL)leave {
    //: [ZZZKitProgressHUD show];
    [DevelopmentColorView showBackground];
    //: [self.teamListManager transferOwnerWithUserId:userId
    [self.teamListManager title:userId
                                         //: leave:leave
                                         stateTip:leave
                                    //: completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
                                    camera:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [ZZZKitProgressHUD dismiss];
        [DevelopmentColorView voice];
        //: if (leave) {
        if (leave) {
            //: [self.navigationController popToRootViewControllerAnimated:YES];
            [self.navigationController popToRootViewControllerAnimated:YES];
        //: }else{
        }else{
            //: [self reloadData];
            [self message];
        }
        //: [self showToastMsg:msg];
        [self background:msg];
    //: }];
    }];
}

//: - (void)didDismissTeam{
- (void)nameerText{
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [ZZZKitProgressHUD show];
    [DevelopmentColorView showBackground];
    //: [self.teamListManager dismissTeamCompletion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
    [self.teamListManager infoPop:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [ZZZKitProgressHUD dismiss];
        [DevelopmentColorView voice];
        //: if (!error) {
        if (!error) {
            //: [weakSelf.navigationController popToRootViewControllerAnimated:YES];
            [weakSelf.navigationController popToRootViewControllerAnimated:YES];
        }
        //: [weakSelf showToastMsg:msg];
        [weakSelf background:msg];
    //: }];
    }];
}

//: - (void)didQuitTeam{
- (void)inputDown{
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [ZZZKitProgressHUD show];
    [DevelopmentColorView showBackground];
    //: [self.teamListManager quitTeamCompletion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
    [self.teamListManager accumulation:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [ZZZKitProgressHUD dismiss];
        [DevelopmentColorView voice];
        //: if (!error) {
        if (!error) {
            //: [wself.navigationController popToRootViewControllerAnimated:YES];
            [wself.navigationController popToRootViewControllerAnimated:YES];
        }
        //: [wself showToastMsg:msg];
        [wself background:msg];
    //: }];
    }];
}

//: #pragma mark - Notication
#pragma mark - Notication
//: - (void)teamInfoUpdate:(NSNotification *)note {
- (void)arrayed:(NSNotification *)note {
    //: [self reloadData];
    [self message];
}

//: - (void)teamMemberUpdate:(NSNotification *)note {
- (void)obscured:(NSNotification *)note {
    //: [self reloadData];
    [self message];
}

//: #pragma mark - Private
#pragma mark - Private
//: - (void)uploadImage:(UIImage *)image {
- (void)colorSize:(UIImage *)image {
    //: UIImage *imageForAvatarUpload = [image nim_imageForAvatarUpload];
    UIImage *imageForAvatarUpload = [image independent];
    //: NSString *fileName = [[[[NSUUID UUID] UUIDString] lowercaseString] stringByAppendingPathExtension:@"jpg"];
    NSString *fileName = [[[[NSUUID UUID] UUIDString] lowercaseString] stringByAppendingPathExtension:StringFromClassifyData(kStr_globContent)];
    //: NSString *filePath = [NSTemporaryDirectory() stringByAppendingPathComponent:fileName];
    NSString *filePath = [NSTemporaryDirectory() stringByAppendingPathComponent:fileName];
    //: NSData *data = UIImageJPEGRepresentation(imageForAvatarUpload, 1.0);
    NSData *data = UIImageJPEGRepresentation(imageForAvatarUpload, 1.0);
    //: BOOL success = data && [data writeToFile:filePath atomically:YES];
    BOOL success = data && [data writeToFile:filePath atomically:YES];
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: if (success) {
    if (success) {
        //: [ZZZKitProgressHUD show];
        [DevelopmentColorView showBackground];
        //: __weak typeof(self) weakSelf = self;
        __weak typeof(self) weakSelf = self;
        //: [self.teamListManager updateTeamAvatar:filePath completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        [self.teamListManager sessionTeamRestoreTime:filePath natalDay:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
            //: [ZZZKitProgressHUD dismiss];
            [DevelopmentColorView voice];
            //: if (!error) {
            if (!error) {
                //: NSString *urlString = weakSelf.teamListManager.team.avatarUrl;
                NSString *urlString = weakSelf.teamListManager.team.avatarUrl;
                //: SDWebImageManager *sdManager = [SDWebImageManager sharedManager];
                SDWebImageManager *sdManager = [SDWebImageManager sharedManager];
                //: [sdManager.imageCache storeImage:imageForAvatarUpload
                [sdManager.imageCache storeImage:imageForAvatarUpload
                                       //: imageData:data
                                       imageData:data
                                          //: forKey:urlString
                                          forKey:urlString
                                       //: cacheType:SDImageCacheTypeAll
                                       cacheType:SDImageCacheTypeAll
                                      //: completion:nil];
                                      completion:nil];
                //: [wself reloadTableHeaderData];
                [wself quantityerval];
            }
            //: [wself showToastMsg:msg];
            [wself background:msg];
        //: }];
        }];
    //: } else {
    } else {
        //: [wself showToastMsg:[NTESLanguageManager getTextWithKey:@"group_info_activity_update_failed"]];
        [wself background:[LabelCell tinkleKey:StringFromClassifyData(kStr_corridorMessageData)]];
    }
}

//: @end
@end

//: @implementation ZZZTeamCardViewControllerOption
@implementation ByOption

//: @end
@end

Byte * ClassifyDataToCache(Byte *data) {
    int imageNumber = data[0];
    int midst = data[1];
    int pseudonym = data[2];
    if (!imageNumber) return data + pseudonym;
    for (int i = 0; i < midst / 2; i++) {
        int begin = pseudonym + i;
        int end = pseudonym + midst - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[pseudonym + midst] = 0;
    return data + pseudonym;
}

NSString *StringFromClassifyData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)ClassifyDataToCache(data)];
}  
