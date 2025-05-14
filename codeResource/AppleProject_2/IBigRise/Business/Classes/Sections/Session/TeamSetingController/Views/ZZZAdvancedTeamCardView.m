//
//  ZZZAdvancedTeamCardView.m
//  NIM
//
//  Created by 彭爽 on 2021/10/22.
//  Copyright © 2021 Netease. All rights reserved.
//

#import "ZZZAdvancedTeamCardView.h"
#import "ZZZAdvancedTeamCardCell.h"

@interface ZZZAdvancedTeamCardView ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic,strong) UITableView *newsTable;

@end


@implementation ZZZAdvancedTeamCardView

-(instancetype)init{
    self = [super init];
    if (self) {
        [self initTableView];
    }
    return self;
}

- (void)reloaddata {
    [self.newsTable reloadData];
}

-(void)initTableView{
    
    self.newsTable = [[UITableView alloc] initWithFrame:self.bounds style:UITableViewStyleGrouped];
    [self addSubview:self.newsTable];
    self.newsTable.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.newsTable.backgroundColor = RGB_COLOR_String(@"#F4E9FF");
    self.newsTable.estimatedSectionHeaderHeight=.1;
    self.newsTable.estimatedSectionFooterHeight=.1;
    self.newsTable.estimatedRowHeight = UITableViewAutomaticDimension;
    self.newsTable.delegate   = self;
    self.self.newsTable.dataSource = self;
    
    [self.newsTable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_offset(0);
        make.right.mas_offset(0);
        make.top.mas_offset(0);
        make.bottom.mas_equalTo(0);
    }];
    self.newsTable.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
}


#pragma mark - UITableViewDelegate

//Setup your cell margins:
-(void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {
    // Remove seperator inset
    if ([cell respondsToSelector:@selector(setSeparatorInset:)]) {
        [cell setSeparatorInset:UIEdgeInsetsZero];
    }
    // Prevent the cell from inheriting the Table View's margin settings
    if ([cell respondsToSelector:@selector(setPreservesSuperviewLayoutMargins:)]) {
        [cell setPreservesSuperviewLayoutMargins:NO];
    }
    // Explictly set your cell's layout margins
    if ([cell respondsToSelector:@selector(setLayoutMargins:)]) {
        [cell setLayoutMargins:UIEdgeInsetsZero];
    }
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    BOOL isOwner    = self.teamListManager.myTeamInfo.type == NIMTeamMemberTypeOwner;
    if (isOwner) {
        return 7;

    }else{
        return 5;

    }
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    if (section == 1) {
        BOOL isManager = self.teamListManager.myTeamInfo.type == NIMTeamMemberTypeManager;
        BOOL isOwner    = self.teamListManager.myTeamInfo.type == NIMTeamMemberTypeOwner;
        if (self.teamListManager.team.inviteMode == NIMTeamInviteModeManager && !isManager && !isOwner) {
            return 0;
        }
    }
    return 1;
}


- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    
    if (section == 1) {
        BOOL isManager = self.teamListManager.myTeamInfo.type == NIMTeamMemberTypeManager;
        BOOL isOwner    = self.teamListManager.myTeamInfo.type == NIMTeamMemberTypeOwner;
        if (self.teamListManager.team.inviteMode == NIMTeamInviteModeManager && !isManager && !isOwner) {
            return 0;
        }
    }
    return 12.f;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    UIView *backView = [UIView new];
    backView.backgroundColor = [UIColor clearColor];
    return backView;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    return 0.01f;
}

- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
    UIView *backView = [UIView new];
    backView.backgroundColor = [UIColor clearColor];
    return backView;
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 0) {
        static NSString *identifier = @"cell_0";
        ZZZAdvancedTeamCardCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
        if (!cell) {
            cell = [[ZZZAdvancedTeamCardCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
            cell.selectionStyle = UITableViewCellSelectionStyleNone;
            cell.vc = self.vc;
        }
        [cell reloadWith:self.teamListManager];
        return cell;
    }else if (indexPath.section == 1){
        static NSString *identifier = @"cell_1";
        ZZZAdvancedTeamCardCell_1 *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
        if (!cell) {
            cell = [[ZZZAdvancedTeamCardCell_1 alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
            cell.selectionStyle = UITableViewCellSelectionStyleNone;
            cell.vc = self.vc;
            cell.teamListManager = self.teamListManager;
        }
        return cell;
    }else if (indexPath.section == 2){
        static NSString *identifier = @"cell_2";
        ZZZAdvancedTeamCardCell_2 *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
        if (!cell) {
            cell = [[ZZZAdvancedTeamCardCell_2 alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
            cell.selectionStyle = UITableViewCellSelectionStyleNone;
            cell.vc = self.vc;
            cell.option = self.option;
            cell.teamListManager = self.teamListManager;
        }
        [cell reloadWith:self.teamListManager];

        return cell;
    }else if (indexPath.section == 3){
        static NSString *identifier = @"cell_3";
        ZZZAdvancedTeamCardCell_3 *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
        if (!cell) {
            cell = [[ZZZAdvancedTeamCardCell_3 alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
            cell.selectionStyle = UITableViewCellSelectionStyleNone;
            cell.vc = self.vc;
            cell.teamListManager = self.teamListManager;

        }
        return cell;
    }else if (indexPath.section == 4){
        
        BOOL isOwner    = self.teamListManager.myTeamInfo.type == NIMTeamMemberTypeOwner;
        if (isOwner) {
            static NSString *identifier = @"cell_4";
            ZZZAdvancedTeamCardCell_4 *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
            if (!cell) {
                cell = [[ZZZAdvancedTeamCardCell_4 alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
                cell.selectionStyle = UITableViewCellSelectionStyleNone;
                cell.vc = self.vc;
                cell.teamListManager = self.teamListManager;
            }
            [cell reloadWith:self.teamListManager];

            return cell;

        }else{
            static NSString *identifier = @"cell_6";
            ZZZAdvancedTeamCardCell_6 *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
            if (!cell) {
                cell = [[ZZZAdvancedTeamCardCell_6 alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
                cell.selectionStyle = UITableViewCellSelectionStyleNone;
                cell.vc = self.vc;
                cell.teamListManager = self.teamListManager;

            }
            [cell reloadWith:self.teamListManager];
            return cell;

        }

    }else if (indexPath.section == 5){
        static NSString *identifier = @"cell_5";
        ZZZAdvancedTeamCardCell_5 *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
        if (!cell) {
            cell = [[ZZZAdvancedTeamCardCell_5 alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
            cell.selectionStyle = UITableViewCellSelectionStyleNone;
            cell.vc = self.vc;
            cell.teamListManager = self.teamListManager;
        }
        [cell reloadWith:self.teamListManager];

        return cell;
    }else{
        static NSString *identifier = @"cell_6";
        ZZZAdvancedTeamCardCell_6 *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
        if (!cell) {
            cell = [[ZZZAdvancedTeamCardCell_6 alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
            cell.selectionStyle = UITableViewCellSelectionStyleNone;
            cell.vc = self.vc;
            cell.teamListManager = self.teamListManager;

        }
        [cell reloadWith:self.teamListManager];
        return cell;
    }
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{

}

@end
