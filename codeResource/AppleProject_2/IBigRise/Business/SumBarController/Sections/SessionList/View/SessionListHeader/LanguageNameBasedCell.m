
#import <Foundation/Foundation.h>
typedef struct {
    Byte ingredient;
    Byte *scarlet;
    unsigned int blazeAway;
    bool coloration;
	int activityMessage;
	int currentAt;
} LengthData;

NSString *StringFromLengthData(LengthData *data);


//: #ECEEF2
LengthData kStr_operationName = (LengthData){199, (Byte []){228, 130, 132, 130, 130, 129, 245, 18}, 7, false, 15, 115};

// __DEBUG__
// __CLOSE_PRINT__
//
//  LanguageNameBasedCell.m
//  ZCAuctionCar
//
//  Created by 彭爽 on 2021/4/9.
//

// __M_A_C_R_O__
//: #import "FFDropDownMenuCustomCell.h"
#import "LanguageNameBasedCell.h"
//: #import "FFDropDownMenuModel.h"
#import "FFDropDownMenuModel.h"

//: @interface FFDropDownMenuCustomCell ()
@interface LanguageNameBasedCell ()
/** 图片 */
//: @property (weak, nonatomic) UIImageView *customImageView;
@property (weak, nonatomic) UIImageView *customImageView;

/** 标题 */
//: @property (weak, nonatomic) UILabel *customTitleLabel;
@property (weak, nonatomic) UILabel *customTitleLabel;

/** 底部分割线 */
//: @property (nonatomic, weak) UIView *separaterView;
@property (nonatomic, weak) UIView *separaterView;

//: @end
@end

//: @implementation FFDropDownMenuCustomCell
@implementation LanguageNameBasedCell

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    //: if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {

//        UIView *bgview = [[UIView alloc]initWithFrame:CGRectMake(5, 4, 140, 42)];
//        bgview.backgroundColor = [UIColor colorWithRed:246/255.0 green:247/255.0 blue:248/255.0 alpha:1.0];
//        bgview.layer.cornerRadius = 21;
//        [self addSubview:bgview];

        //初始化子控件
        //: UIImageView *customImageView = [[UIImageView alloc] init];
        UIImageView *customImageView = [[UIImageView alloc] init];
        //: customImageView.contentMode = UIViewContentModeScaleToFill;
        customImageView.contentMode = UIViewContentModeScaleToFill;
        //: [self addSubview:customImageView];
        [self addSubview:customImageView];
        //: self.customImageView = customImageView;
        self.customImageView = customImageView;

        //: UILabel *customTitleLabel = [[UILabel alloc] init];
        UILabel *customTitleLabel = [[UILabel alloc] init];
        //: customTitleLabel.font = [UIFont systemFontOfSize:13];
        customTitleLabel.font = [UIFont systemFontOfSize:13];
        //: customTitleLabel.textAlignment = NSTextAlignmentLeft;
        customTitleLabel.textAlignment = NSTextAlignmentLeft;
        //: customTitleLabel.textColor = [UIColor blackColor];
        customTitleLabel.textColor = [UIColor blackColor];
//        customTitleLabel.font = [UIFont boldSystemFontOfSize:13];
        //: [self addSubview:customTitleLabel];
        [self addSubview:customTitleLabel];
        //: self.customTitleLabel = customTitleLabel;
        self.customTitleLabel = customTitleLabel;

        //: UIView *separaterView = [[UIView alloc] init];
        UIView *separaterView = [[UIView alloc] init];
        //: separaterView.backgroundColor = [UIColor colorWithHexString:@"#ECEEF2"];
        separaterView.backgroundColor = [UIColor box:StringFromLengthData(&kStr_operationName)];
        //: [self addSubview:separaterView];
        [self addSubview:separaterView];
        //: self.separaterView = separaterView;
        self.separaterView = separaterView;
    }
    //: return self;
    return self;
}

//: - (void)layoutSubviews { 
- (void)layoutSubviews { //这个方法的主要任务是进行子控件frame的赋值
    //: [super layoutSubviews];
    [super layoutSubviews];
    //frame的赋值
    //: CGFloat separaterHeight = 1; 
    CGFloat separaterHeight = 1; //底部分割线高度

    //图片 customImageView
    //: CGFloat imageViewMargin = 15;
    CGFloat imageViewMargin = 15;
    //: CGFloat imageViewH = self.frame.size.height - 2 * imageViewMargin;
    CGFloat imageViewH = self.frame.size.height - 2 * imageViewMargin;
    //: self.customImageView.frame = CGRectMake(8, imageViewMargin, imageViewH, imageViewH);
    self.customImageView.frame = CGRectMake(8, imageViewMargin, imageViewH, imageViewH);

    //标题
    //: CGFloat labelX = CGRectGetMaxX(self.customImageView.frame) + 10;
    CGFloat labelX = CGRectGetMaxX(self.customImageView.frame) + 10;
    //: self.customTitleLabel.frame = CGRectMake(labelX, 0, self.frame.size.width - labelX - 1, self.frame.size.height - separaterHeight);
    self.customTitleLabel.frame = CGRectMake(labelX, 0, self.frame.size.width - labelX - 1, self.frame.size.height - separaterHeight);

    //分割线
    //: self.separaterView.frame = CGRectMake(10, self.frame.size.height - separaterHeight, self.frame.size.width-20, separaterHeight);
    self.separaterView.frame = CGRectMake(10, self.frame.size.height - separaterHeight, self.frame.size.width-20, separaterHeight);
}

/** 重写setMenuModel---对控件进行赋值 */
//: - (void)setMenuModel:(id)menuModel {
- (void)setMenuModel:(id)menuModel {
    //: _menuModel = menuModel;
    _menuModel = menuModel;

    //: FFDropDownMenuModel *realMenuModel = (FFDropDownMenuModel *)menuModel;
    FFDropDownMenuModel *realMenuModel = (FFDropDownMenuModel *)menuModel;
    //: self.customTitleLabel.text = realMenuModel.menuItemTitle;
    self.customTitleLabel.text = realMenuModel.menuItemTitle;
    //给imageView赋值
    //: self.customImageView.image = [UIImage imageNamed:realMenuModel.menuItemIconName];
    self.customImageView.image = [UIImage imageNamed:realMenuModel.menuItemIconName];
}

//: @end
@end

Byte *LengthDataToByte(LengthData *data) {
    if (data->coloration) return data->scarlet;
    for (int i = 0; i < data->blazeAway; i++) {
        data->scarlet[i] ^= data->ingredient;
    }
    data->scarlet[data->blazeAway] = 0;
    data->coloration = true;
	if (data->blazeAway >= 2) {
		data->activityMessage = data->scarlet[0];
		data->currentAt = data->scarlet[1];
	}
    return data->scarlet;
}

NSString *StringFromLengthData(LengthData *data) {
    return [NSString stringWithUTF8String:(char *)LengthDataToByte(data)];
}
