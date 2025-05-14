// __DEBUG__
// __CLOSE_PRINT__
//
//  CountDisableControl.h
// On
//
//  Created by chris on 15/3/9.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZZZSessionUnknowContentView.h"
#import "CountDisableControl.h"
//: #import "M80AttributedLabel+AppleProjectKit.h"
#import "GreenNameView+On.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "ZZZMessageModel.h"
#import "CollectionModel.h"
//: #import "AppleProjectKit.h"
#import "On.h"
//: #import "NSString+AppleProjectKit.h"
#import "NSString+On.h"
 

//: @interface ZZZSessionUnknowContentView()
@interface CountDisableControl()

//: @property (nonatomic,strong) UILabel *label;
@property (nonatomic,strong) UILabel *label;

//: @end
@end

//: @implementation ZZZSessionUnknowContentView
@implementation CountDisableControl

//: -(instancetype)initSessionMessageContentView
-(instancetype)initDistance
{
    //: if (self = [super initSessionMessageContentView]) {
    if (self = [super initDistance]) {
        //: _label = [[UILabel alloc] initWithFrame:CGRectZero];
        _label = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _label.backgroundColor = [UIColor clearColor];
        _label.backgroundColor = [UIColor clearColor];
        //: _label.userInteractionEnabled = NO;
        _label.userInteractionEnabled = NO;
        //: [self addSubview:_label];
        [self addSubview:_label];
    }
    //: return self;
    return self;
}

//: - (void)refresh:(ZZZMessageModel *)data{
- (void)text:(CollectionModel *)data{
    //: [super refresh:data];
    [super text:data];
    //: NSString *text = @"";
    NSString *text = @"";
//    NSString *text = @"未知类型消息".nim_localized;
    //: ZZZKitSetting *setting = [[AppleProjectKit sharedKit].config setting:data.message];
    CaseSetting *setting = [[On along].config style:data.message];

    //: self.label.textColor = setting.textColor;
    self.label.textColor = setting.textColor;
    //: self.label.font = setting.font;
    self.label.font = setting.font;
    //: [self.label setText:text];
    [self.label setText:text];
    //: [self.label sizeToFit];
    [self.label sizeToFit];
}


//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: _label.nim_centerX = self.nim_width * .5f;
    _label.nim_centerX = self.nim_width * .5f;
    //: _label.nim_centerY = self.nim_height * .5f;
    _label.nim_centerY = self.nim_height * .5f;
}

//: @end
@end
