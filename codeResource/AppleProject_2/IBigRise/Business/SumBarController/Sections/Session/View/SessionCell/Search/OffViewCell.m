
#import <Foundation/Foundation.h>

NSString *StringFromSeriesData(Byte *data);


//: MM-dd hh:mm:ss
Byte kStr_strategyValue[] = {7, 14, 10, 41, 109, 42, 94, 25, 144, 206, 115, 115, 58, 109, 109, 58, 104, 104, 32, 100, 100, 45, 77, 77, 65};

// __DEBUG__
// __CLOSE_PRINT__
//
//  OffViewCell.m
//  NIM
//
//  Created by He on 2019/12/18.
//  Copyright © 2019 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESKeyWordMessageCell.h"
#import "OffViewCell.h"
//: #import "ZZZAvatarImageView.h"
#import "ShankView.h"
//: #import "DataCommonTableData.h"
#import "DataCommonTableData.h"
//: #import "UIView+NTES.h"
#import "UIView+Item.h"

//: @interface NTESKeyWordMessageCell ()
@interface OffViewCell ()

//: @property (nonatomic,strong) ZZZAvatarImageView * avatar;
@property (nonatomic,strong) ShankView * avatar;

//: @property (nonatomic,strong) UILabel * nickL;
@property (nonatomic,strong) UILabel * nickL;

//: @property (nonatomic,strong) UILabel * timeL;
@property (nonatomic,strong) UILabel * timeL;

//: @end
@end

//: @implementation NTESKeyWordMessageCell
@implementation OffViewCell

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    //: self = [super initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:reuseIdentifier];
    //: if (self)
    if (self)
    {
        //: [self.contentView addSubview:self.avatar];
        [self.contentView addSubview:self.avatar];
        //: [self.contentView addSubview:self.nickL];
        [self.contentView addSubview:self.nickL];
        //: [self.contentView addSubview:self.timeL];
        [self.contentView addSubview:self.timeL];
    }
    //: return self;
    return self;
}

//: - (void)layoutSubviews
- (void)layoutSubviews
{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: self.avatar.size = CGSizeMake(40, 40);
    self.avatar.size = CGSizeMake(40, 40);
    //: self.avatar.centerY = self.contentView.height * .5f;
    self.avatar.centerY = self.contentView.height * .5f;
    //: self.avatar.left = 15.f;
    self.avatar.left = 15.f;

    //: [self.textLabel sizeToFit];
    [self.textLabel sizeToFit];
    //: self.textLabel.left = self.avatar.right + 15;
    self.textLabel.left = self.avatar.right + 15;
    //: self.detailTextLabel.left = self.textLabel.left;
    self.detailTextLabel.left = self.textLabel.left;

    //: [self.nickL sizeToFit];
    [self.nickL sizeToFit];
    //: self.nickL.left = self.textLabel.right + 2;
    self.nickL.left = self.textLabel.right + 2;
    //: self.nickL.centerY = self.textLabel.centerY;
    self.nickL.centerY = self.textLabel.centerY;

    //: [self.timeL sizeToFit];
    [self.timeL sizeToFit];
    //: self.timeL.width = ((self.timeL.width) < (self.width - self.textLabel.right - 4 - 15) ? (self.timeL.width) : (self.width - self.textLabel.right - 4 - 15));
    self.timeL.width = ((self.timeL.width) < (self.width - self.textLabel.right - 4 - 15) ? (self.timeL.width) : (self.width - self.textLabel.right - 4 - 15));
    //: self.timeL.top = self.textLabel.top;
    self.timeL.top = self.textLabel.top;
    //: self.timeL.right = self.contentView.width - 15;
    self.timeL.right = self.contentView.width - 15;

    //: self.nickL.width = ((0) > (self.timeL.left - self.nickL.left - 5) ? (0) : (self.timeL.left - self.nickL.left - 5));
    self.nickL.width = ((0) > (self.timeL.left - self.nickL.left - 5) ? (0) : (self.timeL.left - self.nickL.left - 5));
}

//: - (void)refreshData:(NIMCommonTableRow *)rowData tableView:(UITableView *)tableView
- (void)input:(TextTap *)rowData metadata:(UITableView *)tableView
{
    //: NSString * keyWord = rowData.title;
    NSString * keyWord = rowData.title;
    //: NIMMessage * message = rowData.extraInfo;
    NIMMessage * message = rowData.extraInfo;
    //: if ([message isKindOfClass:[NIMMessage class]])
    if ([message isKindOfClass:[NIMMessage class]])
    {
        //: ZZZKitInfo * info = nil;
        MagnitudeCommentInfo * info = nil;
        //: NIMSession * session = message.session;
        NIMSession * session = message.session;
        //: if (session.sessionType == NIMSessionTypeP2P)
        if (session.sessionType == NIMSessionTypeP2P)
        {
           //: info = [[AppleProjectKit sharedKit] infoByUser:session.sessionId option:nil];
           info = [[On along] toKey:session.sessionId image:nil];
        }
        //: else
        else
        {
            //: info = [[AppleProjectKit sharedKit] infoByTeam:session.sessionId option:nil];
            info = [[On along] center:session.sessionId touch:nil];
        }

        //: if (info.avatarUrlString.length)
        if (info.avatarUrlString.length)
        {
            //: [self.avatar nim_setImageWithURL:[NSURL URLWithString:info.avatarUrlString]
            [self.avatar colorImageShow:[NSURL URLWithString:info.avatarUrlString]
                            //: placeholderImage:info.avatarImage];
                            blockFrame:info.avatarImage];
        }
        //: else
        else
        {
            //: [self.avatar setImage:info.avatarImage];
            [self.avatar setImage:info.avatarImage];
        }

        //: self.textLabel.attributedText = [self coloredTextWithSource:info.showName keyword:keyWord];
        self.textLabel.attributedText = [self build:info.showName key:keyWord];
        //: [self.textLabel sizeToFit];
        [self.textLabel sizeToFit];

        //: self.nickL.attributedText = [self coloredTextWithSource:[NSString stringWithFormat:@"(%@)", session.sessionId] keyword:keyWord];
        self.nickL.attributedText = [self build:[NSString stringWithFormat:@"(%@)", session.sessionId] key:keyWord];
//        [self.nickL sizeToFit];

        //: self.detailTextLabel.attributedText = [self coloredTextWithSource:message.text keyword:keyWord];
        self.detailTextLabel.attributedText = [self build:message.text key:keyWord];
        //: [self.detailTextLabel sizeToFit];
        [self.detailTextLabel sizeToFit];

        //: self.timeL.text = [self timeWithTimestamp:message.timestamp];
        self.timeL.text = [self event:message.timestamp];
        //: [self.timeL sizeToFit];
        [self.timeL sizeToFit];
    }
}

//: - (NSAttributedString *)coloredTextWithSource:(NSString *)source
- (NSAttributedString *)build:(NSString *)source
                                      //: keyword:(NSString *)keyword
                                      key:(NSString *)keyword
{
    //: if (!source)
    if (!source)
    {
        //: return nil;
        return nil;
    }

    //: NSMutableAttributedString * accidString = [[NSMutableAttributedString alloc] initWithString:source];
    NSMutableAttributedString * accidString = [[NSMutableAttributedString alloc] initWithString:source];
    //: NSString * lowercaseSource = [source lowercaseString];
    NSString * lowercaseSource = [source lowercaseString];
    //: NSString * lowercaseKeyword = [keyword lowercaseString];
    NSString * lowercaseKeyword = [keyword lowercaseString];
    //: if ([lowercaseSource containsString:lowercaseKeyword])
    if ([lowercaseSource containsString:lowercaseKeyword])
    {
        //: NSRange range = [source rangeOfString:keyword];
        NSRange range = [source rangeOfString:keyword];
        //: [accidString addAttributes:@{
        [accidString addAttributes:@{
            //: NSForegroundColorAttributeName : [UIColor redColor],
            NSForegroundColorAttributeName : [UIColor redColor],
        }
                             //: range:range];
                             range:range];
    }
    //: return accidString;
    return accidString;
}



//: - (ZZZAvatarImageView *)avatar
- (ShankView *)avatar
{
    //: if (!_avatar)
    if (!_avatar)
    {
        //: _avatar = [[ZZZAvatarImageView alloc] init];
        _avatar = [[ShankView alloc] init];
    }
    //: return _avatar;
    return _avatar;
}

//: - (UILabel *)nickL
- (UILabel *)nickL
{
    //: if (!_nickL)
    if (!_nickL)
    {
        //: _nickL = [[UILabel alloc] init];
        _nickL = [[UILabel alloc] init];
        //: _nickL.lineBreakMode = NSLineBreakByTruncatingTail;
        _nickL.lineBreakMode = NSLineBreakByTruncatingTail;
    }
    //: return _nickL;
    return _nickL;
}

//: - (UILabel *)timeL
- (UILabel *)timeL
{
    //: if (!_timeL)
    if (!_timeL)
    {
        //: _timeL = [[UILabel alloc] init];
        _timeL = [[UILabel alloc] init];
    }
    //: return _timeL;
    return _timeL;
}

//: - (NSString *)timeWithTimestamp:(NSTimeInterval)ts
- (NSString *)event:(NSTimeInterval)ts
{
    //: NSDate * date = [NSDate dateWithTimeIntervalSince1970:ts];
    NSDate * date = [NSDate dateWithTimeIntervalSince1970:ts];
    //: NSDateFormatter * formatter = [[NSDateFormatter alloc] init];
    NSDateFormatter * formatter = [[NSDateFormatter alloc] init];
    //: NSTimeZone* timeZone = [NSTimeZone timeZoneForSecondsFromGMT:8 * 60 * 60];
    NSTimeZone* timeZone = [NSTimeZone timeZoneForSecondsFromGMT:8 * 60 * 60];
    //: [formatter setTimeZone:timeZone];
    [formatter setTimeZone:timeZone];
    //: formatter.dateFormat = @"MM-dd hh:mm:ss";
    formatter.dateFormat = StringFromSeriesData(kStr_strategyValue);
    //: NSString * time = [formatter stringFromDate:date];
    NSString * time = [formatter stringFromDate:date];
    //: return time;
    return time;
}

//: @end
@end

Byte * SeriesDataToCache(Byte *data) {
    int hopefulTop = data[0];
    int botSightVise = data[1];
    int boxComment = data[2];
    if (!hopefulTop) return data + boxComment;
    for (int i = 0; i < botSightVise / 2; i++) {
        int begin = boxComment + i;
        int end = boxComment + botSightVise - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[boxComment + botSightVise] = 0;
    return data + boxComment;
}

NSString *StringFromSeriesData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)SeriesDataToCache(data)];
}  
