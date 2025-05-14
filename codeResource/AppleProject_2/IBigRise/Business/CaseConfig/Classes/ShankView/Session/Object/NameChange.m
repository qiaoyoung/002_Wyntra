// __DEBUG__
// __CLOSE_PRINT__
//
//  NameChange.m
// On
//
//  Created by chris on 2016/11/7.
//  Copyright © 2016年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZZZSessionConfigurator.h"
#import "NameChange.h"
//: #import "ZZZSessionMsgDatasource.h"
#import "ModelDatasource.h"
//: #import "ZZZSessionInteractorImpl.h"
#import "SurgeonGeneralConferenceBe.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "ZZZMessageModel.h"
#import "CollectionModel.h"
 
//: #import "ZZZSessionInteractorImpl.h"
#import "SurgeonGeneralConferenceBe.h"
//: #import "ZZZSessionDataSourceImpl.h"
#import "ShareDistance.h"
//: #import "ZZZSessionLayoutImpl.h"
#import "ViewContainer.h"
//: #import "ZZZSessionTableAdapter.h"
#import "TitleMax.h"

/*
                                            GroupDiscussionViewController 类关系图
 
 
             .........................................................................
             .                                                                       .
             .                                                                       .
             .                                                                       .                  | ---> [NIMSessionDatasource]
             .                                                                       .
             .                                                       | ---> [SuggestEmptyQuantityeractor] -->  |
             .
             .                                                                                          | ---> [EnabledSessionSumerval]
             .
             ↓
  [GroupDiscussionViewController]-------> [NameChange] -----> |
             |
             |
             |
             |
             ↓                                                       | ---> [TitleMax]
       [UITableView]                                                              .
            ↑                                                                     .
            .                                                                     .
            .                                                                     .
            .......................................................................
 */

//: @interface ZZZSessionConfigurator()
@interface NameChange()

//: @property (nonatomic,strong) ZZZSessionInteractorImpl *interactor;
@property (nonatomic,strong) SurgeonGeneralConferenceBe *interactor;

//: @property (nonatomic,strong) ZZZSessionTableAdapter *tableAdapter;
@property (nonatomic,strong) TitleMax *tableAdapter;

//: @end
@end

//: @implementation ZZZSessionConfigurator
@implementation NameChange

//: - (void)setup:(ZZZSessionViewController *)vc
- (void)greenish:(GroupDiscussionViewController *)vc
{
    //: NIMSession *session = vc.session;
    NIMSession *session = vc.session;
    //: id<ZZZSessionConfig> sessionConfig = vc.sessionConfig;
    id<PastConfig> sessionConfig = vc.sessionConfig;
    //: UITableView *tableView = vc.tableView;
    UITableView *tableView = vc.tableView;
    //: ZZZInputView *inputView = vc.sessionInputView;
    EnterSignView *inputView = vc.sessionInputView;

    //: ZZZSessionDataSourceImpl *datasource = [[ZZZSessionDataSourceImpl alloc] initWithSession:session config:sessionConfig];
    ShareDistance *datasource = [[ShareDistance alloc] initWithCord:session configIndex:sessionConfig];
    //: ZZZSessionLayoutImpl *layout = [[ZZZSessionLayoutImpl alloc] initWithSession:session config:sessionConfig];
    ViewContainer *layout = [[ViewContainer alloc] initWithProviderRange:session modify:sessionConfig];
    //: layout.tableView = tableView;
    layout.tableView = tableView;
    //: layout.inputView = inputView;
    layout.inputView = inputView;


    //: _interactor = [[ZZZSessionInteractorImpl alloc] initWithSession:session config:sessionConfig];
    _interactor = [[SurgeonGeneralConferenceBe alloc] initWithParticularGroupDiscussion:session textInConfig:sessionConfig];
    //: _interactor.delegate = vc;
    _interactor.delegate = vc;
    //: _interactor.dataSource = datasource;
    _interactor.dataSource = datasource;
    //: _interactor.layout = layout;
    _interactor.layout = layout;

    //: [layout setDelegate:_interactor];
    [layout setDelegate:_interactor];

    //: _tableAdapter = [[ZZZSessionTableAdapter alloc] init];
    _tableAdapter = [[TitleMax alloc] init];
    //: _tableAdapter.interactor = _interactor;
    _tableAdapter.interactor = _interactor;
    //: _tableAdapter.delegate = vc;
    _tableAdapter.delegate = vc;
    //: vc.tableView.delegate = _tableAdapter;
    vc.tableView.delegate = _tableAdapter;
    //: vc.tableView.dataSource = _tableAdapter;
    vc.tableView.dataSource = _tableAdapter;


    //: [vc setInteractor:_interactor];
    [vc setInteractor:_interactor];
}


//: @end
@end
