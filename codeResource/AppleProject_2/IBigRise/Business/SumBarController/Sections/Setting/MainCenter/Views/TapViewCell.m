
#import <Foundation/Foundation.h>
typedef struct {
    Byte combine;
    Byte *investigation;
    unsigned int unite;
    bool adventureSession;
	int lingCurrent;
} TherapistData;

NSString *StringFromTherapistData(TherapistData *data);


//: unknow
TherapistData kStr_sharpData = (TherapistData){37, (Byte []){80, 75, 78, 75, 74, 82, 115}, 6, false, 141};


//: createtime
TherapistData kStr_orationData = (TherapistData){223, (Byte []){188, 173, 186, 190, 171, 186, 171, 182, 178, 186, 228}, 10, false, 199};


//: bill_adapter_type_1
TherapistData kStr_awayName = (TherapistData){128, (Byte []){226, 233, 236, 236, 223, 225, 228, 225, 240, 244, 229, 242, 223, 244, 249, 240, 229, 223, 177, 80}, 19, false, 23};


//: bill_adapter_type_3
TherapistData kStr_outsideAcidValue = (TherapistData){78, (Byte []){44, 39, 34, 34, 17, 47, 42, 47, 62, 58, 43, 60, 17, 58, 55, 62, 43, 17, 125, 58}, 19, false, 160};


//: bill_adapter_type_2
TherapistData kStr_driverActivityText = (TherapistData){22, (Byte []){116, 127, 122, 122, 73, 119, 114, 119, 102, 98, 115, 100, 73, 98, 111, 102, 115, 73, 36, 97}, 19, false, 65};


//: #EAC37D
TherapistData kStr_accurateText = (TherapistData){157, (Byte []){190, 216, 220, 222, 174, 170, 217, 209}, 7, false, 104};


//: type
TherapistData kStr_hopefulMediaContent = (TherapistData){42, (Byte []){94, 83, 90, 79, 76}, 4, false, 150};


//: amount
TherapistData kStr_merelyData = (TherapistData){71, (Byte []){38, 42, 40, 50, 41, 51, 55}, 6, false, 129};


//: bill_adapter_type_0
TherapistData kStr_lingValue = (TherapistData){131, (Byte []){225, 234, 239, 239, 220, 226, 231, 226, 243, 247, 230, 241, 220, 247, 250, 243, 230, 220, 179, 102}, 19, false, 147};


//: bill_adapter_type_4
TherapistData kStr_neverthelessTimeTitle = (TherapistData){218, (Byte []){184, 179, 182, 182, 133, 187, 190, 187, 170, 174, 191, 168, 133, 174, 163, 170, 191, 133, 238, 226}, 19, false, 218};


//: bill_adapter_type_6
TherapistData kStr_addTrulyData = (TherapistData){17, (Byte []){115, 120, 125, 125, 78, 112, 117, 112, 97, 101, 116, 99, 78, 101, 104, 97, 116, 78, 39, 167}, 19, false, 200};


//: icon_redpacket_user_list
TherapistData kStr_viaShootItemValue = (TherapistData){72, (Byte []){33, 43, 39, 38, 23, 58, 45, 44, 56, 41, 43, 35, 45, 60, 23, 61, 59, 45, 58, 23, 36, 33, 59, 60, 20}, 24, false, 143};


//: bill_adapter_type_5
TherapistData kStr_circumstanceName = (TherapistData){193, (Byte []){163, 168, 173, 173, 158, 160, 165, 160, 177, 181, 164, 179, 158, 181, 184, 177, 164, 158, 244, 112}, 19, false, 57};

// __DEBUG__
// __CLOSE_PRINT__
//
//  TapViewCell.m
//  NIM
//
//  Created by 彭爽 on 2021/9/14.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESUserWalletListCell.h"
#import "TapViewCell.h"

//: @implementation NTESUserWalletListCell
@implementation TapViewCell

//: - (void)initSubviews{
- (void)initContainer{

    //: UIImageView *imageView = [[UIImageView alloc] init];
    UIImageView *imageView = [[UIImageView alloc] init];
    //: imageView.image = [UIImage imageNamed:@"icon_redpacket_user_list"];
    imageView.image = [UIImage imageNamed:StringFromTherapistData(&kStr_viaShootItemValue)];
    //: [self addSubview:imageView];
    [self addSubview:imageView];
    //: [imageView mas_makeConstraints:^(MASConstraintMaker *make) {
    [imageView mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.left.mas_offset(15);
        make.left.mas_offset(15);
        //: make.top.mas_offset(10);
        make.top.mas_offset(10);
        //: make.bottom.mas_offset(-10);
        make.bottom.mas_offset(-10);
        //: make.width.height.mas_equalTo(50);
        make.width.height.mas_equalTo(50);
    //: }];
    }];

    //: _titleLabel = [[UILabel alloc] init];
    _titleLabel = [[UILabel alloc] init];
    //: _titleLabel.font = [UIFont systemFontOfSize:16];
    _titleLabel.font = [UIFont systemFontOfSize:16];
    //: _titleLabel.textColor = [UIColor blackColor];
    _titleLabel.textColor = [UIColor blackColor];
    //: [self addSubview:_titleLabel];
    [self addSubview:_titleLabel];
    //: [_titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
    [_titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.centerY.mas_offset(-12);
        make.centerY.mas_offset(-12);
        //: make.width.mas_equalTo(200);
        make.width.mas_equalTo(200);
        //: make.height.mas_equalTo(20);
        make.height.mas_equalTo(20);
        //: make.left.mas_equalTo(imageView.mas_right).mas_offset(5);
        make.left.mas_equalTo(imageView.mas_right).mas_offset(5);
    //: }];
    }];

    //: _timeLabel = [[UILabel alloc] init];
    _timeLabel = [[UILabel alloc] init];
    //: _timeLabel.font = [UIFont systemFontOfSize:14];
    _timeLabel.font = [UIFont systemFontOfSize:14];
    //: _timeLabel.textColor = [UIColor lightGrayColor];
    _timeLabel.textColor = [UIColor lightGrayColor];
    //: [self addSubview:_timeLabel];
    [self addSubview:_timeLabel];
    //: [_timeLabel mas_makeConstraints:^(MASConstraintMaker *make) {
    [_timeLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.centerY.mas_offset(12);
        make.centerY.mas_offset(12);
        //: make.width.mas_equalTo(200);
        make.width.mas_equalTo(200);
        //: make.height.mas_equalTo(20);
        make.height.mas_equalTo(20);
        //: make.left.mas_equalTo(imageView.mas_right).mas_offset(5);
        make.left.mas_equalTo(imageView.mas_right).mas_offset(5);
    //: }];
    }];

    //: _amountLabel = [[UILabel alloc] init];
    _amountLabel = [[UILabel alloc] init];
    //: _amountLabel.font = [UIFont boldSystemFontOfSize:20];
    _amountLabel.font = [UIFont boldSystemFontOfSize:20];
    //: _amountLabel.textColor = [UIColor blackColor];
    _amountLabel.textColor = [UIColor blackColor];
    //: _amountLabel.textAlignment = NSTextAlignmentRight;
    _amountLabel.textAlignment = NSTextAlignmentRight;
    //: [self addSubview:_amountLabel];
    [self addSubview:_amountLabel];
    //: [_amountLabel mas_makeConstraints:^(MASConstraintMaker *make) {
    [_amountLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.centerY.mas_offset(0);
        make.centerY.mas_offset(0);
        //: make.width.mas_equalTo(200);
        make.width.mas_equalTo(200);
        //: make.height.mas_equalTo(30);
        make.height.mas_equalTo(30);
        //: make.right.mas_offset(-15);
        make.right.mas_offset(-15);
    //: }];
    }];

}

//: -(void)reloadWithInformation:(NSDictionary *)information{
-(void)smartMax:(NSDictionary *)information{
    //: NSString *amount = [information newStringValueForKey:@"amount"];
    NSString *amount = [information length:StringFromTherapistData(&kStr_merelyData)];
    //: NSString *type = [information newStringValueForKey:@"type"];
    NSString *type = [information length:StringFromTherapistData(&kStr_hopefulMediaContent)];
    //: if (type.integerValue == 1 || type.integerValue == 2 || type.integerValue == 3) {
    if (type.integerValue == 1 || type.integerValue == 2 || type.integerValue == 3) {
        //: amount = [NSString stringWithFormat:@"-%@",amount];
        amount = [NSString stringWithFormat:@"-%@",amount];
        //: _amountLabel.textColor = [UIColor blackColor];
        _amountLabel.textColor = [UIColor blackColor];
    //: }else{
    }else{
        //: amount = [NSString stringWithFormat:@"+%@",amount];
        amount = [NSString stringWithFormat:@"+%@",amount];
        //: _amountLabel.textColor = [UIColor colorWithHexString:@"#EAC37D"];
        _amountLabel.textColor = [UIColor box:StringFromTherapistData(&kStr_accurateText)];
    }

    //: _titleLabel.text = [self getName:information];
    _titleLabel.text = [self small:information];
    //: _timeLabel.text = [information newStringValueForKey:@"createtime"];
    _timeLabel.text = [information length:StringFromTherapistData(&kStr_orationData)];

    //: _amountLabel.text = amount;
    _amountLabel.text = amount;
}

//: -(NSString *)getName:(NSDictionary *)information{
-(NSString *)small:(NSDictionary *)information{
    //: NSString *type = [information newStringValueForKey:@"type"];
    NSString *type = [information length:StringFromTherapistData(&kStr_hopefulMediaContent)];

    //: switch (type.integerValue) {
    switch (type.integerValue) {
        //: case 0:
        case 0:
            //: return [NTESLanguageManager getTextWithKey:@"bill_adapter_type_0"];
            return [LabelCell tinkleKey:StringFromTherapistData(&kStr_lingValue)];
            //: break;
            break;
        //: case 1:
        case 1:
            //: return [NTESLanguageManager getTextWithKey:@"bill_adapter_type_1"];
            return [LabelCell tinkleKey:StringFromTherapistData(&kStr_awayName)];
            //: break;
            break;
        //: case 2:
        case 2:
            //: return [NTESLanguageManager getTextWithKey:@"bill_adapter_type_2"];
            return [LabelCell tinkleKey:StringFromTherapistData(&kStr_driverActivityText)];
            //: break;
            break;
        //: case 3:
        case 3:
            //: return [NTESLanguageManager getTextWithKey:@"bill_adapter_type_3"];
            return [LabelCell tinkleKey:StringFromTherapistData(&kStr_outsideAcidValue)];
            //: break;
            break;
        //: case 4:
        case 4:
            //: return [NTESLanguageManager getTextWithKey:@"bill_adapter_type_4"];
            return [LabelCell tinkleKey:StringFromTherapistData(&kStr_neverthelessTimeTitle)];
            //: break;
            break;
        //: case 5:
        case 5:
            //: return [NTESLanguageManager getTextWithKey:@"bill_adapter_type_5"];
            return [LabelCell tinkleKey:StringFromTherapistData(&kStr_circumstanceName)];
            //: break;
            break;
        //: case 6:
        case 6:
            //: return [NTESLanguageManager getTextWithKey:@"bill_adapter_type_6"];
            return [LabelCell tinkleKey:StringFromTherapistData(&kStr_addTrulyData)];
            //: break;
            break;
        //: default:
        default:
            //: return @"unknow";
            return StringFromTherapistData(&kStr_sharpData);
            //: break;
            break;
    }
}

//类型:0=充值,1=提现,2=转账,3=发红包,4=收红包,5=红包退款,6=签到奖励

//: @end
@end

Byte *TherapistDataToByte(TherapistData *data) {
    if (data->adventureSession) return data->investigation;
    for (int i = 0; i < data->unite; i++) {
        data->investigation[i] ^= data->combine;
    }
    data->investigation[data->unite] = 0;
    data->adventureSession = true;
	if (data->unite >= 1) {
		data->lingCurrent = data->investigation[0];
	}
    return data->investigation;
}

NSString *StringFromTherapistData(TherapistData *data) {
    return [NSString stringWithUTF8String:(char *)TherapistDataToByte(data)];
}
