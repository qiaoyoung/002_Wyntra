
#import <Foundation/Foundation.h>
typedef struct {
    Byte enableObject;
    Byte *victoryAccount;
    unsigned int pointAdd;
    bool cloak;
	int shootBy;
} AccountData;

NSString *StringFromAccountData(AccountData *data);


//: 正在使用密聊未知版本 (%@)
AccountData kStr_commentCurrentBoxData = (AccountData){56, (Byte []){222, 149, 155, 221, 164, 144, 220, 133, 135, 223, 172, 144, 221, 151, 190, 208, 185, 178, 222, 164, 146, 223, 167, 157, 223, 177, 176, 222, 164, 148, 24, 16, 29, 120, 17, 242}, 35, false, 117};


//: 当前网络不可用，请检查网络设置
AccountData kStr_commentContent = (AccountData){243, (Byte []){22, 78, 96, 22, 122, 126, 20, 78, 98, 20, 72, 111, 23, 75, 126, 22, 124, 92, 20, 103, 91, 28, 79, 127, 27, 92, 68, 21, 80, 115, 21, 108, 86, 20, 78, 98, 20, 72, 111, 27, 93, 77, 20, 78, 93, 80}, 45, false, 180};


//: 当前网络不可用
AccountData kStr_itemAtValue = (AccountData){234, (Byte []){15, 87, 121, 15, 99, 103, 13, 87, 123, 13, 81, 118, 14, 82, 103, 15, 101, 69, 13, 126, 66, 30}, 21, false, 210};


//: 正在使用密聊
AccountData kStr_sessionScanText = (AccountData){140, (Byte []){106, 33, 47, 105, 16, 36, 104, 49, 51, 107, 24, 36, 105, 35, 10, 100, 13, 6, 69}, 18, false, 212};


//: 网络正在切换,识别中....
AccountData kStr_progressContent = (AccountData){222, (Byte []){57, 99, 79, 57, 101, 66, 56, 115, 125, 59, 66, 118, 59, 86, 89, 56, 83, 124, 242, 54, 113, 88, 59, 86, 117, 58, 102, 115, 240, 240, 240, 240, 115}, 32, false, 8};


//: 正在使用密聊未知版本
AccountData kStr_commentShootName = (AccountData){215, (Byte []){49, 122, 116, 50, 75, 127, 51, 106, 104, 48, 67, 127, 50, 120, 81, 63, 86, 93, 49, 75, 125, 48, 72, 114, 48, 94, 95, 49, 75, 123, 254}, 30, false, 169};


//: 登录失败
AccountData kStr_withNameText = (AccountData){179, (Byte []){84, 42, 8, 86, 14, 38, 86, 23, 2, 91, 7, 22, 93}, 12, false, 241};

// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESSessionListHeader.m
//  NIM
//
//  Created by chris on 15/3/23.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESListHeader.h"
#import "TextView.h"
//: #import "UIView+NTES.h"
#import "UIView+Item.h"
//: #import "Reachability.h"
#import "Reachability.h"
//: #import "NTESClientUtil.h"
#import "ClientUtil.h"

//: @interface NTESListHeader()
@interface TextView()

//: @end
@end


//: @implementation NTESListHeader
@implementation TextView

//: - (void)refreshWithType:(NTESListHeaderType)type value:(id)value{
- (void)gradePointAverage:(NTESListHeaderType)type red:(id)value{
    //: switch (type) {
    switch (type) {
        //: case ListHeaderTypeCommonText:
        case ListHeaderTypeCommonText:
            //: [self refreshWithCommonText:value];
            [self imageText:value];
            //: break;
            break;
        //: case ListHeaderTypeNetStauts:
        case ListHeaderTypeNetStauts:
            //: [self refreshWithNetStatus:[value integerValue]];
            [self immobilise:[value integerValue]];
            //: break;
            break;
        //: case ListHeaderTypeLoginClients:
        case ListHeaderTypeLoginClients:
            //: [self refreshWithClients:value];
            [self center:value];
            //: break;
            break;
        //: default:
        default:
            //: break;
            break;
    }
    //: [self sizeToFit];
    [self sizeToFit];
}


//: - (CGSize)sizeThatFits:(CGSize)size{
- (CGSize)sizeThatFits:(CGSize)size{
    //: CGFloat height = 0;
    CGFloat height = 0;
    //: for (UIView *subView in self.subviews) {
    for (UIView *subView in self.subviews) {
        //: [subView sizeToFit];
        [subView sizeToFit];
        //: height += subView.height;
        height += subView.height;
    }
    //: return CGSizeMake(self.width,height);
    return CGSizeMake(self.width,height);
}


//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: CGFloat top = 0;
    CGFloat top = 0;
    //: for (UIView *subView in self.subviews) {
    for (UIView *subView in self.subviews) {
        //: subView.top = top;
        subView.top = top;
        //: top = top + subView.height;
        top = top + subView.height;
        //: subView.centerX = self.width * .5f;
        subView.centerX = self.width * .5f;
    }
}


//: #pragma mark - Private
#pragma mark - Private
//: - (void)refreshWithClients:(NSArray *)clients{
- (void)center:(NSArray *)clients{
    //: NSString *text = nil;
    NSString *text = nil;
    //: if (clients.count) {
    if (clients.count) {
        //目前的踢人逻辑是web和pc不能共存，移动端不能共存，所以这里取第一个显示就可以了
        //: NIMLoginClient *client = clients.firstObject;
        NIMLoginClient *client = clients.firstObject;
        //: NSString *name = [NTESClientUtil clientName:client.type];
        NSString *name = [ClientUtil barContent:client.type];

        //: if (client.customClientType != 0) {
        if (client.customClientType != 0) {
            //: text = name.length? [NSString stringWithFormat:@"%@ %@（%@）",
            text = name.length? [NSString stringWithFormat:@"%@ %@（%@）",
                                 //: @"正在使用密聊".ntes_localized,
                                 StringFromAccountData(&kStr_sessionScanText).colorLocalized,
                                 //: name, @(client.customClientType)] : [NSString stringWithFormat:@"正在使用密聊未知版本 (%@)".ntes_localized, @(client.customClientType)];
                                 name, @(client.customClientType)] : [NSString stringWithFormat:StringFromAccountData(&kStr_commentCurrentBoxData).colorLocalized, @(client.customClientType)];
        //: } else {
        } else {
            //: text = name.length? [NSString stringWithFormat:@"%@ %@",
            text = name.length? [NSString stringWithFormat:@"%@ %@",
                                 //: @"正在使用密聊".ntes_localized,
                                 StringFromAccountData(&kStr_sessionScanText).colorLocalized,
                                 //: name] : @"正在使用密聊未知版本".ntes_localized;
                                 name] : StringFromAccountData(&kStr_commentShootName).colorLocalized;
        }

    }
    //: [self addRow:ListHeaderTypeLoginClients content:text viewClassName:@"NTESMutiClientsHeaderView"];
    [self beName:ListHeaderTypeLoginClients atName:text year:@"MessageShareButton"];
}


//: - (void)refreshWithNetStatus:(NIMLoginStep)step{
- (void)immobilise:(NIMLoginStep)step{
    //: NSString *text = nil;
    NSString *text = nil;
    //: switch (step) {
    switch (step) {
        //: case NIMLoginStepLinkFailed:
        case NIMLoginStepLinkFailed:
        //: case NIMLoginStepLoseConnection:
        case NIMLoginStepLoseConnection:
            //: text = @"当前网络不可用，请检查网络设置".ntes_localized;
            text = StringFromAccountData(&kStr_commentContent).colorLocalized;
            //: break;
            break;
        //: case NIMLoginStepLoginFailed:
        case NIMLoginStepLoginFailed:
            //: text = @"登录失败".ntes_localized;
            text = StringFromAccountData(&kStr_withNameText).colorLocalized;
            //: break;
            break;
        //: case NIMLoginStepNetChanged:
        case NIMLoginStepNetChanged:
        {
            //: if ([[Reachability reachabilityForInternetConnection] isReachable])
            if ([[Reachability reachabilityForInternetConnection] isReachable])
            {
                //: text = @"网络正在切换,识别中....".ntes_localized;
                text = StringFromAccountData(&kStr_progressContent).colorLocalized;
            }
            //: else
            else
            {
                //: text = @"当前网络不可用".ntes_localized;
                text = StringFromAccountData(&kStr_itemAtValue).colorLocalized;
            }
        }
            //: break;
            break;
        //: default:
        default:
            //: break;
            break;
    }
    //: [self addRow:ListHeaderTypeNetStauts content:text viewClassName:@"NTESTextHeaderView"];
    [self beName:ListHeaderTypeNetStauts atName:text year:@"ProlusionView"];
}

//: - (void)refreshWithCommonText:(NSString *)text{
- (void)imageText:(NSString *)text{
    //: [self addRow:ListHeaderTypeCommonText content:text viewClassName:@"NTESTextHeaderView"];
    [self beName:ListHeaderTypeCommonText atName:text year:@"ProlusionView"];
}


//参数viewClassName的Class 必须是UIControl的子类并实现<NTESSessionListHeaderView>协议
//: - (void)addRow:(NTESListHeaderType)type content:(NSString *)content viewClassName:(NSString *)viewClassName{
- (void)beName:(NTESListHeaderType)type atName:(NSString *)content year:(NSString *)viewClassName{
    //: UIControl<NTESListHeaderView> *rowView = (UIControl<NTESListHeaderView> *)[self viewWithTag:type];
    UIControl<PerforateView> *rowView = (UIControl<PerforateView> *)[self viewWithTag:type];
    //: if ([content length])
    if ([content length])
    {
        //: if (!rowView) {
        if (!rowView) {
            //: Class clazz = NSClassFromString(viewClassName);
            Class clazz = NSClassFromString(viewClassName);
            //: rowView = [[clazz alloc] initWithFrame:CGRectMake(0, 0, self.width, 0)];
            rowView = [[clazz alloc] initWithFrame:CGRectMake(0, 0, self.width, 0)];
            //: rowView.backgroundColor = [self fillBackgroundColor:type];
            rowView.backgroundColor = [self complete:type];
            //: __block NSInteger insert = self.subviews.count;
            __block NSInteger insert = self.subviews.count;
            //: [self.subviews enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
            [self.subviews enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
                //: UIView *view = obj;
                UIView *view = obj;
                //: if (view.tag > type) {
                if (view.tag > type) {
                    //: insert = idx;
                    insert = idx;
                    //: *stop = YES;
                    *stop = YES;
                }
            //: }];
            }];
            //: rowView.tag = type;
            rowView.tag = type;
            //: [self insertSubview:rowView atIndex:insert];
            [self insertSubview:rowView atIndex:insert];
            //: [rowView addTarget:self action:@selector(didSelectRow:) forControlEvents:UIControlEventTouchUpInside];
            [rowView addTarget:self action:@selector(lengthing:) forControlEvents:UIControlEventTouchUpInside];
        }
        //: [rowView setContentText:content];
        [rowView setSizeTitle:content];
    }
    //: else
    else
    {
        //: [rowView removeFromSuperview];
        [rowView removeFromSuperview];
    }
}


//: - (void)didSelectRow:(id)sender{
- (void)lengthing:(id)sender{
    //: UIControl *view = sender;
    UIControl *view = sender;
    //: if ([self.delegate respondsToSelector:@selector(didSelectRowType:)]) {
    if ([self.delegate respondsToSelector:@selector(buttonned:)]) {
        //: [self.delegate didSelectRowType:view.tag];
        [self.delegate buttonned:view.tag];
    }
}


//: - (UIColor *)fillBackgroundColor:(NTESListHeaderType)type{
- (UIColor *)complete:(NTESListHeaderType)type{
    //: NSDictionary *dict = @{
    NSDictionary *dict = @{
                           //: @(ListHeaderTypeNetStauts) : [UIColor colorWithRed:((float)((0xFFE3E3 & 0xFF0000) >> 16))/255.0 green:((float)((0xFFE3E3 & 0x00FF00) >> 8))/255.0 blue:((float)(0xFFE3E3 & 0x0000FF))/255.0 alpha:1.0],
                           @(ListHeaderTypeNetStauts) : [UIColor colorWithRed:((float)((0xFFE3E3 & 0xFF0000) >> 16))/255.0 green:((float)((0xFFE3E3 & 0x00FF00) >> 8))/255.0 blue:((float)(0xFFE3E3 & 0x0000FF))/255.0 alpha:1.0],
                           //: @(ListHeaderTypeCommonText) : [UIColor colorWithRed:((float)((0xff6347 & 0xFF0000) >> 16))/255.0 green:((float)((0xff6347 & 0x00FF00) >> 8))/255.0 blue:((float)(0xff6347 & 0x0000FF))/255.0 alpha:1.0],
                           @(ListHeaderTypeCommonText) : [UIColor colorWithRed:((float)((0xff6347 & 0xFF0000) >> 16))/255.0 green:((float)((0xff6347 & 0x00FF00) >> 8))/255.0 blue:((float)(0xff6347 & 0x0000FF))/255.0 alpha:1.0],
                           //: @(ListHeaderTypeLoginClients) : [UIColor colorWithRed:((float)((0xff6347 & 0xFF0000) >> 16))/255.0 green:((float)((0xff6347 & 0x00FF00) >> 8))/255.0 blue:((float)(0xff6347 & 0x0000FF))/255.0 alpha:1.0]
                           @(ListHeaderTypeLoginClients) : [UIColor colorWithRed:((float)((0xff6347 & 0xFF0000) >> 16))/255.0 green:((float)((0xff6347 & 0x00FF00) >> 8))/255.0 blue:((float)(0xff6347 & 0x0000FF))/255.0 alpha:1.0]
                           //: };
                           };
    //: return dict[@(type)];
    return dict[@(type)];
}

//: @end
@end

Byte *AccountDataToByte(AccountData *data) {
    if (data->cloak) return data->victoryAccount;
    for (int i = 0; i < data->pointAdd; i++) {
        data->victoryAccount[i] ^= data->enableObject;
    }
    data->victoryAccount[data->pointAdd] = 0;
    data->cloak = true;
	if (data->pointAdd >= 1) {
		data->shootBy = data->victoryAccount[0];
	}
    return data->victoryAccount;
}

NSString *StringFromAccountData(AccountData *data) {
    return [NSString stringWithUTF8String:(char *)AccountDataToByte(data)];
}
