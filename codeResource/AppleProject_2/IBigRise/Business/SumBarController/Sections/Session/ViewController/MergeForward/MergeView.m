
#import <Foundation/Foundation.h>

NSString *StringFromSessionAcidData(Byte *data);


//: 00:00
Byte kStr_keyContent[] = {65, 5, 92, 13, 232, 92, 35, 183, 160, 180, 20, 159, 98, 140, 140, 150, 140, 140, 51};


//: HH:mm
Byte kStr_shortageName[] = {42, 5, 9, 4, 81, 81, 67, 118, 118, 164};

// __DEBUG__
// __CLOSE_PRINT__
//
//  MergeView.m
//  NIM
//
//  Created by zhanggenning on 2019/10/18.
//  Copyright © 2019 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESMergeMessageCell.h"
#import "MergeView.h"
//: #import "ZZZBadgeView.h"
#import "ChromaticView.h"
//: #import "ZZZSessionTextContentView.h"
#import "ColorVersionTextView.h"
//: #import "ZZZAvatarImageView.h"
#import "ShankView.h"
//: #import "M80AttributedLabel.h"
#import "GreenNameView.h"
//: #import "UIView+NTES.h"
#import "UIView+Item.h"
//: #import "NTESMessageModel.h"
#import "HeritageMessageModel.h"

//: @interface NTESMergeMessageCell ()
@interface MergeView ()

//: @property (nonatomic, strong) UIView *line;
@property (nonatomic, strong) UIView *line;

//: @property (nonatomic, strong) UILabel *timeLab;
@property (nonatomic, strong) UILabel *timeLab;

//: @end
@end

//: @implementation NTESMergeMessageCell
@implementation MergeView

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    //: if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        //: [self.traningActivityIndicator removeFromSuperview];
        [self.traningActivityIndicator removeFromSuperview];
        //: [self.retryButton removeFromSuperview];
        [self.retryButton removeFromSuperview];
        //: [self.audioPlayedIcon removeFromSuperview];
        [self.audioPlayedIcon removeFromSuperview];
        //: [self.readButton removeFromSuperview];
        [self.readButton removeFromSuperview];
        //: [self.selectButton removeFromSuperview];
        [self.selectButton removeFromSuperview];
        //: [self.selectButtonMask removeFromSuperview];
        [self.selectButtonMask removeFromSuperview];
        //: [self.contentView addSubview:self.timeLab];
        [self.contentView addSubview:self.timeLab];
        //: [self.contentView addSubview:self.line];
        [self.contentView addSubview:self.line];
    }
    //: return self;
    return self;
}

//: - (void)layoutSubviews {
- (void)layoutSubviews {
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: UIEdgeInsets contentInset = self.model.contentViewInsets;
    UIEdgeInsets contentInset = self.model.contentViewInsets;
    //: self.headImageView.origin = CGPointMake(16.0, 16.0);
    self.headImageView.origin = CGPointMake(16.0, 16.0);
    //: self.nameLabel.origin = CGPointMake(self.headImageView.right + contentInset.left, self.headImageView.top);
    self.nameLabel.origin = CGPointMake(self.headImageView.right + contentInset.left, self.headImageView.top);
    //: self.bubbleView.origin = CGPointMake(self.headImageView.right, self.nameLabel.bottom - contentInset.top + 4.0);
    self.bubbleView.origin = CGPointMake(self.headImageView.right, self.nameLabel.bottom - contentInset.top + 4.0);
    //: _line.frame = CGRectMake(self.headImageView.left, self.height - 1, self.width-2*self.headImageView.left, 1.0);
    _line.frame = CGRectMake(self.headImageView.left, self.height - 1, self.width-2*self.headImageView.left, 1.0);
    //: _timeLab.origin = CGPointMake(self.width - _timeLab.width - 16.0, self.nameLabel.top);
    _timeLab.origin = CGPointMake(self.width - _timeLab.width - 16.0, self.nameLabel.top);
}

//: - (UIView *)line {
- (UIView *)line {
    //: if (!_line) {
    if (!_line) {
        //: _line = [[UIView alloc] init];
        _line = [[UIView alloc] init];
        //: _line.backgroundColor = [UIColor systemGroupedBackgroundColor];
        _line.backgroundColor = [UIColor systemGroupedBackgroundColor];
    }
    //: return _line;
    return _line;
}
//: - (UILabel *)timeLab {
- (UILabel *)timeLab {
    //: if (!_timeLab) {
    if (!_timeLab) {
        //: _timeLab = [[UILabel alloc] init];
        _timeLab = [[UILabel alloc] init];
        //: _timeLab.backgroundColor = [UIColor clearColor];
        _timeLab.backgroundColor = [UIColor clearColor];
        //: _timeLab.opaque = YES;
        _timeLab.opaque = YES;
        //: _timeLab.font = [AppleProjectKit sharedKit].config.nickFont;
        _timeLab.font = [On along].config.nickFont;
        //: _timeLab.textColor = [AppleProjectKit sharedKit].config.nickColor;
        _timeLab.textColor = [On along].config.nickColor;
        //: _timeLab.text = @"00:00";
        _timeLab.text = StringFromSessionAcidData(kStr_keyContent);
        //: [_timeLab sizeToFit];
        [_timeLab sizeToFit];
        //: _timeLab.width += 8.0;
        _timeLab.width += 8.0;
    }
    //: return _timeLab;
    return _timeLab;
}

//: - (void)refreshData:(ZZZMessageModel *)data {
- (void)upgradeRecord:(CollectionModel *)data {
    //: [super refreshData:data];
    [super upgradeRecord:data];

    //: NTESMessageModel *model = nil;
    HeritageMessageModel *model = nil;
    //: if ([data isKindOfClass:[NTESMessageModel class]]) {
    if ([data isKindOfClass:[HeritageMessageModel class]]) {
        //: model = (NTESMessageModel *)data;
        model = (HeritageMessageModel *)data;
        //: _line.hidden = model.hiddenSeparatorLine;
        _line.hidden = model.hiddenSeparatorLine;

        //: NSString *timeInfo = [self timeFormatString:model.message.timestamp];
        NSString *timeInfo = [self birdSEyeView:model.message.timestamp];
        //: _timeLab.text = timeInfo ?: @"00:00";
        _timeLab.text = timeInfo ?: StringFromSessionAcidData(kStr_keyContent);

        //: self.bubbleView.layoutStyle = ZZZSessionMessageContentViewLayoutLeft;
        self.bubbleView.layoutStyle = ZZZSessionMessageContentViewLayoutLeft;
    }

    //: self.bubbleView.bubbleImageView.hidden = YES;
    self.bubbleView.bubbleImageView.hidden = YES;
    //: self.bubblesBackgroundView.hidden = YES;
    self.bubblesBackgroundView.hidden = YES;
    //: self.backgroundColor = [UIColor colorWithRed:((float)((0xfefefe & 0xFF0000) >> 16))/255.0 green:((float)((0xfefefe & 0x00FF00) >> 8))/255.0 blue:((float)(0xfefefe & 0x0000FF))/255.0 alpha:1.0];
    self.backgroundColor = [UIColor colorWithRed:((float)((0xfefefe & 0xFF0000) >> 16))/255.0 green:((float)((0xfefefe & 0x00FF00) >> 8))/255.0 blue:((float)(0xfefefe & 0x0000FF))/255.0 alpha:1.0];

    //: id bubbleView = self.bubbleView;
    id bubbleView = self.bubbleView;
    //: if ([bubbleView isKindOfClass:[ZZZSessionTextContentView class]]) {
    if ([bubbleView isKindOfClass:[ColorVersionTextView class]]) {
        //: ((ZZZSessionTextContentView *)bubbleView).textView.textColor = [UIColor blackColor];
        ((ColorVersionTextView *)bubbleView).textView.textColor = [UIColor blackColor];
    }
}

//: - (NSString *)timeFormatString:(NSTimeInterval)time {
- (NSString *)birdSEyeView:(NSTimeInterval)time {
    //: NSDate *date = [NSDate dateWithTimeIntervalSince1970:time];
    NSDate *date = [NSDate dateWithTimeIntervalSince1970:time];
    //: NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    //: [formatter setDateFormat:@"HH:mm"];
    [formatter setDateFormat:StringFromSessionAcidData(kStr_shortageName)];
    //: return [formatter stringFromDate: date];
    return [formatter stringFromDate: date];
}

//: @end
@end

Byte * SessionAcidDataToCache(Byte *data) {
    int sector = data[0];
    int lawgiver = data[1];
    Byte oofLabel = data[2];
    int stairs = data[3];
    if (!sector) return data + stairs;
    for (int i = stairs; i < stairs + lawgiver; i++) {
        int value = data[i] - oofLabel;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[stairs + lawgiver] = 0;
    return data + stairs;
}

NSString *StringFromSessionAcidData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)SessionAcidDataToCache(data)];
}
