// __DEBUG__
// __CLOSE_PRINT__
//
//  SectionViewController.h
// On
//
//  Created by Netease on 2019/6/11.
//  Copyright © 2019 NetEase. All rights reserved.
//  基础UI

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "ZZZTeamCardRowItem.h"
#import "ElevenPath.h"
//: #import "ZZZTeamMemberListCell.h"
#import "PinSureView.h"
//: #import "ZZZTeamSwitchTableViewCell.h"
#import "WithItemViewCell.h"
//: #import "ZZZTeamListDataManager.h"
#import "InformationShould.h"
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: typedef NS_ENUM (NSInteger, NIMTeamCardSwithCellType){
typedef NS_ENUM (NSInteger, NIMTeamCardSwithCellType){
    //: NIMTeamCardSwithCellTypeTop = 1,
    NIMTeamCardSwithCellTypeTop = 1,
    //: NIMTeamCardSwithCellTypeNotify,
    NIMTeamCardSwithCellTypeNotify,
    //: NIMTeamCardSwithCellTypeMute,
    NIMTeamCardSwithCellTypeMute,
//: };
};

//: typedef void(^NIMTeamCardPickerHandle)(UIImage *image);
typedef void(^NIMTeamCardPickerHandle)(UIImage *image);

//: @protocol ZZZTeamCardViewControllerDelegate <NSObject>
@protocol DefenceHide <NSObject>

//: - (void)NIMTeamCardVCDidSetTop:(BOOL)on;
- (void)musted:(BOOL)on;

//: - (void)NIMTeamCardVCDidSetMute:(BOOL)on;
- (void)question:(BOOL)on;

//: @end
@end

//: #pragma mark - UI基类
#pragma mark - UI基类
//: @interface ZZZTeamCardViewController : UIViewController
@interface SectionViewController : UIViewController

//: @property (nonatomic,weak) id <ZZZTeamCardViewControllerDelegate> delegate;
@property (nonatomic,weak) id <DefenceHide> delegate;

//: @property (nonatomic,strong) UITableView *tableView;
@property (nonatomic,strong) UITableView *tableView;

//数据源
//: @property (nonatomic,strong) NSArray <NSArray <ZZZTeamCardRowItem *> *> *datas;
@property (nonatomic,strong) NSArray <NSArray <ElevenPath *> *> *datas;

//显示相册
//: - (void)showImagePicker:(UIImagePickerControllerSourceType)type
- (void)visualisation:(UIImagePickerControllerSourceType)type
             //: completion:(NIMTeamCardPickerHandle)completion;
             infoCompletion:(NIMTeamCardPickerHandle)completion;

//弹框 - 标题
//: - (UIAlertController *)makeAlertSheetWithTitle:(NSString *)title
- (UIAlertController *)handle:(NSString *)title
                                       //: actions:(NSArray <UIAlertAction *>*)actions;
                                       schemeActions:(NSArray <UIAlertAction *>*)actions;

//弹框 - 取消action
//: - (UIAlertAction *)makeCancelAction;
- (UIAlertAction *)iconName;

//显示弹框
//: - (void)showAlert:(UIAlertController *)alert;
- (void)timeMaxChild:(UIAlertController *)alert;

//显示Toast
//: - (void)showToastMsg:(NSString *)msg;
- (void)background:(NSString *)msg;


/* --- need reload by child class ---- */
// 子类自定义头文件
//: - (UIView *)didGetHeaderView;
- (UIView *)disableView;

// 子类自定义cell
//: - (void)didBuildTeamMemberCell:(ZZZTeamMemberListCell *)cell;
- (void)color:(PinSureView *)cell;

// 子类刷新tableview
//: - (void)reloadTableViewData;
- (void)linemen;

// 子类刷新header
//: - (void)reloadTableHeaderData;
- (void)quantityerval;

// 子类刷新其他数据
//: - (void)reloadOtherData;
- (void)step;

//: @end
@end




//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END