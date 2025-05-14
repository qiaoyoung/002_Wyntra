//
//  ZZZSessionConfigurator.m
// AppleProjectKit
//
//  Created by chris on 2016/11/7.
//  Copyright © 2016年 NetEase. All rights reserved.
//

#import "ZZZSessionConfigurator.h"
#import "ZZZSessionMsgDatasource.h"
#import "ZZZSessionInteractorImpl.h"
#import "UIViewNimKit.h"
#import "ZZZMessageModel.h"
#import "ZZZGlobalMacro.h"
#import "ZZZSessionInteractorImpl.h"
#import "ZZZSessionDataSourceImpl.h"
#import "ZZZSessionLayoutImpl.h"
#import "ZZZSessionTableAdapter.h"
/*
                                            ZZZSessionViewController 类关系图
 
 
             .........................................................................
             .                                                                       .
             .                                                                       .
             .                                                                       .                  | ---> [NIMSessionDatasource]
             .                                                                       .
             .                                                       | ---> [NIMSessionInteractor] -->  |
             .
             .                                                                                          | ---> [NIMSessionLayout]
             .
             ↓
  [ZZZSessionViewController]-------> [ZZZSessionConfigurator] -----> |
             |
             |
             |
             |
             ↓                                                       | ---> [ZZZSessionTableAdapter]
       [UITableView]                                                              .
            ↑                                                                     .
            .                                                                     .
            .                                                                     .
            .......................................................................
 */

@interface ZZZSessionConfigurator()

@property (nonatomic,strong) ZZZSessionInteractorImpl   *interactor;

@property (nonatomic,strong) ZZZSessionTableAdapter     *tableAdapter;

@end

@implementation ZZZSessionConfigurator

- (void)setup:(ZZZSessionViewController *)vc
{
    NIMSession *session    = vc.session;
    id<ZZZSessionConfig> sessionConfig = vc.sessionConfig;
    UITableView *tableView  = vc.tableView;
    ZZZInputView *inputView = vc.sessionInputView;
    
    ZZZSessionDataSourceImpl *datasource = [[ZZZSessionDataSourceImpl alloc] initWithSession:session config:sessionConfig];
    ZZZSessionLayoutImpl *layout         = [[ZZZSessionLayoutImpl alloc] initWithSession:session config:sessionConfig];
    layout.tableView = tableView;
    layout.inputView = inputView;
    
    
    _interactor                          = [[ZZZSessionInteractorImpl alloc] initWithSession:session config:sessionConfig];
    _interactor.delegate                 = vc;
    _interactor.dataSource               = datasource;
    _interactor.layout                   = layout;
    
    [layout setDelegate:_interactor];
    
    _tableAdapter = [[ZZZSessionTableAdapter alloc] init];
    _tableAdapter.interactor = _interactor;
    _tableAdapter.delegate   = vc;
    vc.tableView.delegate = _tableAdapter;
    vc.tableView.dataSource = _tableAdapter;
    
    
    [vc setInteractor:_interactor];
}


@end
