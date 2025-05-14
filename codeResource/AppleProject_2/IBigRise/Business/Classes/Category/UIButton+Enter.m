
#import <Foundation/Foundation.h>

NSString *StringFromRetchData(Byte *data);


//: bounceAnimation
Byte kStr_stockName[] = {49, 15, 73, 9, 210, 206, 86, 216, 234, 171, 184, 190, 183, 172, 174, 138, 183, 178, 182, 170, 189, 178, 184, 183, 41};


//: transform.scale
Byte kStr_byWeepValue[] = {99, 15, 85, 7, 54, 250, 66, 201, 199, 182, 195, 200, 187, 196, 199, 194, 131, 200, 184, 182, 193, 186, 219};

// __DEBUG__
// __CLOSE_PRINT__

// __M_A_C_R_O__
//: #import <objc/runtime.h>
#import <objc/runtime.h>
//: #import "UIButton+Badge.h"
#import "UIButton+Enter.h"

//: NSString const *UIButton_badgeKey = @"UIButton_badgeKey";
NSString const *kConst_pointTitle = @"UIButton_badgeKey";
//: NSString const *UIButton_badgeBGColorKey = @"UIButton_badgeBGColorKey";
NSString const *kConst_viewValue = @"UIButton_badgeBGColorKey";
//: NSString const *UIButton_badgeTextColorKey = @"UIButton_badgeTextColorKey";
NSString const *kConst_attachData = @"UIButton_badgeTextColorKey";
//: NSString const *UIButton_badgeFontKey = @"UIButton_badgeFontKey";
NSString const *kConst_excessData = @"UIButton_badgeFontKey";
//: NSString const *UIButton_badgePaddingKey = @"UIButton_badgePaddingKey";
NSString const *kConst_messageValue = @"UIButton_badgePaddingKey";
//: NSString const *UIButton_badgeMinSizeKey = @"UIButton_badgeMinSizeKey";
NSString const *kConst_contentText = @"UIButton_badgeMinSizeKey";
//: NSString const *UIButton_badgeOriginXKey = @"UIButton_badgeOriginXKey";
NSString const *kConst_indexName = @"UIButton_badgeOriginXKey";
//: NSString const *UIButton_badgeOriginYKey = @"UIButton_badgeOriginYKey";
NSString const *kConst_positionName = @"UIButton_badgeOriginYKey";
//: NSString const *UIButton_shouldHideBadgeAtZeroKey = @"UIButton_shouldHideBadgeAtZeroKey";
NSString const *kConst_eventUserTitle = @"UIButton_shouldHideBadgeAtZeroKey";
//: NSString const *UIButton_shouldAnimateBadgeKey = @"UIButton_shouldAnimateBadgeKey";
NSString const *kConst_controlTitle = @"UIButton_shouldAnimateBadgeKey";
//: NSString const *UIButton_badgeValueKey = @"UIButton_badgeValueKey";
NSString const *kConst_managerData = @"UIButton_badgeValueKey";

//: @implementation UIButton (Badge)
@implementation UIButton (Enter)

//: @dynamic badgeValue, badgeBGColor, badgeTextColor, badgeFont;
@dynamic badgeValue, badgeBGColor, badgeTextColor, badgeFont;
//: @dynamic badgePadding, badgeMinSize, badgeOriginX, badgeOriginY;
@dynamic badgePadding, badgeMinSize, badgeOriginX, badgeOriginY;
//: @dynamic shouldHideBadgeAtZero, shouldAnimateBadge;
@dynamic shouldHideBadgeAtZero, shouldAnimateBadge;
//: - (void)badgeInit
- (void)key
{
    // Default design initialization
    //: self.badgeBGColor = [UIColor redColor];
    self.badgeBGColor = [UIColor redColor];
    //: self.badgeTextColor = [UIColor whiteColor];
    self.badgeTextColor = [UIColor whiteColor];
    //: self.badgeFont = [UIFont systemFontOfSize:12.0];
    self.badgeFont = [UIFont systemFontOfSize:12.0];
    //: self.badgePadding = 3;
    self.badgePadding = 3;
    //: self.badgeMinSize = 10;
    self.badgeMinSize = 10;
    //: self.badgeOriginX = self.frame.size.width - self.badge.frame.size.width/2;
    self.badgeOriginX = self.frame.size.width - self.badge.frame.size.width/2;
    //: self.badgeOriginY = -5;
    self.badgeOriginY = -5;
    //: self.shouldHideBadgeAtZero = YES;
    self.shouldHideBadgeAtZero = YES;
    //: self.shouldAnimateBadge = YES;
    self.shouldAnimateBadge = YES;
    // Avoids badge to be clipped when animating its scale
    //: self.clipsToBounds = NO;
    self.clipsToBounds = NO;
}

//: #pragma mark - Utility methods
#pragma mark - Utility methods

// Handle badge display when its properties have been changed (color, font, ...)
//: - (void)refreshBadge
- (void)dataConverter
{
    // Change new attributes
    //: self.badge.textColor = self.badgeTextColor;
    self.badge.textColor = self.badgeTextColor;
    //: self.badge.backgroundColor = self.badgeBGColor;
    self.badge.backgroundColor = self.badgeBGColor;
    //: self.badge.font = self.badgeFont;
    self.badge.font = self.badgeFont;
}

//: - (CGSize) badgeExpectedSize
- (CGSize) account
{
    // When the value changes the badge could need to get bigger
    // Calculate expected size to fit new value
    // Use an intermediate label to get expected size thanks to sizeToFit
    // We don't call sizeToFit on the true label to avoid bad display
    //: UILabel *frameLabel = [self duplicateLabel:self.badge];
    UILabel *frameLabel = [self outputLabel:self.badge];
    //: [frameLabel sizeToFit];
    [frameLabel sizeToFit];

    //: CGSize expectedLabelSize = frameLabel.frame.size;
    CGSize expectedLabelSize = frameLabel.frame.size;
    //: return expectedLabelSize;
    return expectedLabelSize;
}

//: - (void)updateBadgeFrame
- (void)should
{

    //: CGSize expectedLabelSize = [self badgeExpectedSize];
    CGSize expectedLabelSize = [self account];

    // Make sure that for small value, the badge will be big enough
    //: CGFloat minHeight = expectedLabelSize.height;
    CGFloat minHeight = expectedLabelSize.height;

    // Using a const we make sure the badge respect the minimum size
    //: minHeight = (minHeight < self.badgeMinSize) ? self.badgeMinSize : expectedLabelSize.height;
    minHeight = (minHeight < self.badgeMinSize) ? self.badgeMinSize : expectedLabelSize.height;
    //: CGFloat minWidth = expectedLabelSize.width;
    CGFloat minWidth = expectedLabelSize.width;
    //: CGFloat padding = self.badgePadding;
    CGFloat padding = self.badgePadding;

    // Using const we make sure the badge doesn't get too smal
    //: minWidth = (minWidth < minHeight) ? minHeight : expectedLabelSize.width;
    minWidth = (minWidth < minHeight) ? minHeight : expectedLabelSize.width;
    //: self.badge.frame = CGRectMake(self.badgeOriginX, self.badgeOriginY, minWidth + padding, minHeight + padding);
    self.badge.frame = CGRectMake(self.badgeOriginX, self.badgeOriginY, minWidth + padding, minHeight + padding);
    //: self.badge.layer.cornerRadius = (minHeight + padding) / 2;
    self.badge.layer.cornerRadius = (minHeight + padding) / 2;
    //: self.badge.layer.masksToBounds = YES;
    self.badge.layer.masksToBounds = YES;
}

// Handle the badge changing value
//: - (void)updateBadgeValueAnimated:(BOOL)animated
- (void)enable:(BOOL)animated
{
    // Bounce animation on badge if value changed and if animation authorized
    //: if (animated && self.shouldAnimateBadge && ![self.badge.text isEqualToString:self.badgeValue]) {
    if (animated && self.shouldAnimateBadge && ![self.badge.text isEqualToString:self.badgeValue]) {
        //: CABasicAnimation * animation = [CABasicAnimation animationWithKeyPath:@"transform.scale"];
        CABasicAnimation * animation = [CABasicAnimation animationWithKeyPath:StringFromRetchData(kStr_byWeepValue)];
        //: [animation setFromValue:[NSNumber numberWithFloat:1.5]];
        [animation setFromValue:[NSNumber numberWithFloat:1.5]];
        //: [animation setToValue:[NSNumber numberWithFloat:1]];
        [animation setToValue:[NSNumber numberWithFloat:1]];
        //: [animation setDuration:0.2];
        [animation setDuration:0.2];
        //: [animation setTimingFunction:[CAMediaTimingFunction functionWithControlPoints:.4f :1.3f :1.f :1.f]];
        [animation setTimingFunction:[CAMediaTimingFunction functionWithControlPoints:.4f :1.3f :1.f :1.f]];
        //: [self.badge.layer addAnimation:animation forKey:@"bounceAnimation"];
        [self.badge.layer addAnimation:animation forKey:StringFromRetchData(kStr_stockName)];
    }

    // Set the new value
    //: self.badge.text = self.badgeValue;
    self.badge.text = self.badgeValue;

    // Animate the size modification if needed
    //: NSTimeInterval duration = animated ? 0.2 : 0;
    NSTimeInterval duration = animated ? 0.2 : 0;
    //: [UIView animateWithDuration:duration animations:^{
    [UIView animateWithDuration:duration animations:^{
        //: [self updateBadgeFrame];
        [self should];
    //: }];
    }];
}

//: - (UILabel *)duplicateLabel:(UILabel *)labelToCopy
- (UILabel *)outputLabel:(UILabel *)labelToCopy
{
    //: UILabel *duplicateLabel = [[UILabel alloc] initWithFrame:labelToCopy.frame];
    UILabel *duplicateLabel = [[UILabel alloc] initWithFrame:labelToCopy.frame];
    //: duplicateLabel.text = labelToCopy.text;
    duplicateLabel.text = labelToCopy.text;
    //: duplicateLabel.font = labelToCopy.font;
    duplicateLabel.font = labelToCopy.font;

    //: return duplicateLabel;
    return duplicateLabel;
}

//: - (void)removeBadge
- (void)towardBar
{
    // Animate badge removal
    //: [UIView animateWithDuration:0.2 animations:^{
    [UIView animateWithDuration:0.2 animations:^{
        //: self.badge.transform = CGAffineTransformMakeScale(0, 0);
        self.badge.transform = CGAffineTransformMakeScale(0, 0);
    //: } completion:^(BOOL finished) {
    } completion:^(BOOL finished) {
        //: [self.badge removeFromSuperview];
        [self.badge removeFromSuperview];
        //: self.badge = nil;
        self.badge = nil;
    //: }];
    }];
}

//: #pragma mark - getters/setters
#pragma mark - getters/setters
//: -(UILabel*) badge {
-(UILabel*) badge {
    //: return objc_getAssociatedObject(self, &UIButton_badgeKey);
    return objc_getAssociatedObject(self, &kConst_pointTitle);
}
//: -(void)setBadge:(UILabel *)badgeLabel
-(void)setBadge:(UILabel *)badgeLabel
{
    //: objc_setAssociatedObject(self, &UIButton_badgeKey, badgeLabel, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    objc_setAssociatedObject(self, &kConst_pointTitle, badgeLabel, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

// Enter value to be display
//: -(NSString *)badgeValue {
-(NSString *)badgeValue {
    //: return objc_getAssociatedObject(self, &UIButton_badgeValueKey);
    return objc_getAssociatedObject(self, &kConst_managerData);
}
//: -(void) setBadgeValue:(NSString *)badgeValue
-(void) setBadgeValue:(NSString *)badgeValue
{
    //: objc_setAssociatedObject(self, &UIButton_badgeValueKey, badgeValue, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    objc_setAssociatedObject(self, &kConst_managerData, badgeValue, OBJC_ASSOCIATION_RETAIN_NONATOMIC);

    // When changing the badge value check if we need to remove the badge
    //: if (!badgeValue || [badgeValue isEqualToString:@""] || ([badgeValue isEqualToString:@"0"])) {
    if (!badgeValue || [badgeValue isEqualToString:@""] || ([badgeValue isEqualToString:@"0"])) {
        //: [self removeBadge];
        [self towardBar];
    //: } else if (!self.badge) {
    } else if (!self.badge) {
        // Create a new badge because not existing
        //: self.badge = [[UILabel alloc] initWithFrame:CGRectMake(self.badgeOriginX, self.badgeOriginY, 20, 20)];
        self.badge = [[UILabel alloc] initWithFrame:CGRectMake(self.badgeOriginX, self.badgeOriginY, 20, 20)];
        //: self.badge.textColor = self.badgeTextColor;
        self.badge.textColor = self.badgeTextColor;
        //: self.badge.backgroundColor = self.badgeBGColor;
        self.badge.backgroundColor = self.badgeBGColor;
        //: self.badge.font = self.badgeFont;
        self.badge.font = self.badgeFont;
        //: self.badge.textAlignment = NSTextAlignmentCenter;
        self.badge.textAlignment = NSTextAlignmentCenter;
        //: [self badgeInit];
        [self key];
        //: [self addSubview:self.badge];
        [self addSubview:self.badge];
        //: [self updateBadgeValueAnimated:NO];
        [self enable:NO];
    //: } else {
    } else {
        //: [self updateBadgeValueAnimated:YES];
        [self enable:YES];
    }
}

// Enter background color
//: -(UIColor *)badgeBGColor {
-(UIColor *)badgeBGColor {
    //: return objc_getAssociatedObject(self, &UIButton_badgeBGColorKey);
    return objc_getAssociatedObject(self, &kConst_viewValue);
}
//: -(void)setBadgeBGColor:(UIColor *)badgeBGColor
-(void)setBadgeBGColor:(UIColor *)badgeBGColor
{
    //: objc_setAssociatedObject(self, &UIButton_badgeBGColorKey, badgeBGColor, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    objc_setAssociatedObject(self, &kConst_viewValue, badgeBGColor, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    //: if (self.badge) {
    if (self.badge) {
        //: [self refreshBadge];
        [self dataConverter];
    }
}

// Enter text color
//: -(UIColor *)badgeTextColor {
-(UIColor *)badgeTextColor {
    //: return objc_getAssociatedObject(self, &UIButton_badgeTextColorKey);
    return objc_getAssociatedObject(self, &kConst_attachData);
}
//: -(void)setBadgeTextColor:(UIColor *)badgeTextColor
-(void)setBadgeTextColor:(UIColor *)badgeTextColor
{
    //: objc_setAssociatedObject(self, &UIButton_badgeTextColorKey, badgeTextColor, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    objc_setAssociatedObject(self, &kConst_attachData, badgeTextColor, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    //: if (self.badge) {
    if (self.badge) {
        //: [self refreshBadge];
        [self dataConverter];
    }
}

// Enter font
//: -(UIFont *)badgeFont {
-(UIFont *)badgeFont {
    //: return objc_getAssociatedObject(self, &UIButton_badgeFontKey);
    return objc_getAssociatedObject(self, &kConst_excessData);
}
//: -(void)setBadgeFont:(UIFont *)badgeFont
-(void)setBadgeFont:(UIFont *)badgeFont
{
    //: objc_setAssociatedObject(self, &UIButton_badgeFontKey, badgeFont, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    objc_setAssociatedObject(self, &kConst_excessData, badgeFont, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    //: if (self.badge) {
    if (self.badge) {
        //: [self refreshBadge];
        [self dataConverter];
    }
}

// Padding value for the badge
//: -(CGFloat) badgePadding {
-(CGFloat) badgePadding {
    //: NSNumber *number = objc_getAssociatedObject(self, &UIButton_badgePaddingKey);
    NSNumber *number = objc_getAssociatedObject(self, &kConst_messageValue);
    //: return number.floatValue;
    return number.floatValue;
}
//: -(void) setBadgePadding:(CGFloat)badgePadding
-(void) setBadgePadding:(CGFloat)badgePadding
{
    //: NSNumber *number = [NSNumber numberWithDouble:badgePadding];
    NSNumber *number = [NSNumber numberWithDouble:badgePadding];
    //: objc_setAssociatedObject(self, &UIButton_badgePaddingKey, number, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    objc_setAssociatedObject(self, &kConst_messageValue, number, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    //: if (self.badge) {
    if (self.badge) {
        //: [self updateBadgeFrame];
        [self should];
    }
}

// Minimum size badge to small
//: -(CGFloat) badgeMinSize {
-(CGFloat) badgeMinSize {
    //: NSNumber *number = objc_getAssociatedObject(self, &UIButton_badgeMinSizeKey);
    NSNumber *number = objc_getAssociatedObject(self, &kConst_contentText);
    //: return number.floatValue;
    return number.floatValue;
}
//: -(void) setBadgeMinSize:(CGFloat)badgeMinSize
-(void) setBadgeMinSize:(CGFloat)badgeMinSize
{
    //: NSNumber *number = [NSNumber numberWithDouble:badgeMinSize];
    NSNumber *number = [NSNumber numberWithDouble:badgeMinSize];
    //: objc_setAssociatedObject(self, &UIButton_badgeMinSizeKey, number, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    objc_setAssociatedObject(self, &kConst_contentText, number, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    //: if (self.badge) {
    if (self.badge) {
        //: [self updateBadgeFrame];
        [self should];
    }
}

// Values for offseting the badge over the BarButtonItem you picked
//: -(CGFloat) badgeOriginX {
-(CGFloat) badgeOriginX {
    //: NSNumber *number = objc_getAssociatedObject(self, &UIButton_badgeOriginXKey);
    NSNumber *number = objc_getAssociatedObject(self, &kConst_indexName);
    //: return number.floatValue;
    return number.floatValue;
}
//: -(void) setBadgeOriginX:(CGFloat)badgeOriginX
-(void) setBadgeOriginX:(CGFloat)badgeOriginX
{
    //: NSNumber *number = [NSNumber numberWithDouble:badgeOriginX];
    NSNumber *number = [NSNumber numberWithDouble:badgeOriginX];
    //: objc_setAssociatedObject(self, &UIButton_badgeOriginXKey, number, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    objc_setAssociatedObject(self, &kConst_indexName, number, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    //: if (self.badge) {
    if (self.badge) {
        //: [self updateBadgeFrame];
        [self should];
    }
}

//: -(CGFloat) badgeOriginY {
-(CGFloat) badgeOriginY {
    //: NSNumber *number = objc_getAssociatedObject(self, &UIButton_badgeOriginYKey);
    NSNumber *number = objc_getAssociatedObject(self, &kConst_positionName);
    //: return number.floatValue;
    return number.floatValue;
}
//: -(void) setBadgeOriginY:(CGFloat)badgeOriginY
-(void) setBadgeOriginY:(CGFloat)badgeOriginY
{
    //: NSNumber *number = [NSNumber numberWithDouble:badgeOriginY];
    NSNumber *number = [NSNumber numberWithDouble:badgeOriginY];
    //: objc_setAssociatedObject(self, &UIButton_badgeOriginYKey, number, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    objc_setAssociatedObject(self, &kConst_positionName, number, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    //: if (self.badge) {
    if (self.badge) {
        //: [self updateBadgeFrame];
        [self should];
    }
}

// In case of numbers, remove the badge when reaching zero
//: -(BOOL) shouldHideBadgeAtZero {
-(BOOL) shouldHideBadgeAtZero {
    //: NSNumber *number = objc_getAssociatedObject(self, &UIButton_shouldHideBadgeAtZeroKey);
    NSNumber *number = objc_getAssociatedObject(self, &kConst_eventUserTitle);
    //: return number.boolValue;
    return number.boolValue;
}
//: - (void)setShouldHideBadgeAtZero:(BOOL)shouldHideBadgeAtZero
- (void)setShouldHideBadgeAtZero:(BOOL)shouldHideBadgeAtZero
{
    //: NSNumber *number = [NSNumber numberWithBool:shouldHideBadgeAtZero];
    NSNumber *number = [NSNumber numberWithBool:shouldHideBadgeAtZero];
    //: objc_setAssociatedObject(self, &UIButton_shouldHideBadgeAtZeroKey, number, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    objc_setAssociatedObject(self, &kConst_eventUserTitle, number, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

// Enter has a bounce animation when value changes
//: -(BOOL) shouldAnimateBadge {
-(BOOL) shouldAnimateBadge {
    //: NSNumber *number = objc_getAssociatedObject(self, &UIButton_shouldAnimateBadgeKey);
    NSNumber *number = objc_getAssociatedObject(self, &kConst_controlTitle);
    //: return number.boolValue;
    return number.boolValue;
}
//: - (void)setShouldAnimateBadge:(BOOL)shouldAnimateBadge
- (void)setShouldAnimateBadge:(BOOL)shouldAnimateBadge
{
    //: NSNumber *number = [NSNumber numberWithBool:shouldAnimateBadge];
    NSNumber *number = [NSNumber numberWithBool:shouldAnimateBadge];
    //: objc_setAssociatedObject(self, &UIButton_shouldAnimateBadgeKey, number, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    objc_setAssociatedObject(self, &kConst_controlTitle, number, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

//: @end
@end

Byte * RetchDataToCache(Byte *data) {
    int barf = data[0];
    int playbox = data[1];
    Byte rueFolk = data[2];
    int easterSixStairs = data[3];
    if (!barf) return data + easterSixStairs;
    for (int i = easterSixStairs; i < easterSixStairs + playbox; i++) {
        int value = data[i] - rueFolk;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[easterSixStairs + playbox] = 0;
    return data + easterSixStairs;
}

NSString *StringFromRetchData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)RetchDataToCache(data)];
}
