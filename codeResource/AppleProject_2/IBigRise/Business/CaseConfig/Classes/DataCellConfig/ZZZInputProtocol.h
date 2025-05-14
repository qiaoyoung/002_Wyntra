// __DEBUG__
// __CLOSE_PRINT__
//
//  DataInputProtocol.h
// On
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

// __M_A_C_R_O__

//: @class ZZZMediaItem;
@class VagaryItem;


//: @protocol NIMInputActionDelegate <NSObject>
@protocol DelegateDoing <NSObject>

//: @optional
@optional
//: - (BOOL)onTapMediaItem:(ZZZMediaItem *)item;
- (BOOL)cigaretteHolder:(VagaryItem *)item;

//: - (void)onTextChanged:(id)sender;
- (void)started:(id)sender;

//: - (void)onSendText:(NSString *)text
- (void)viewUsers:(NSString *)text
           //: atUsers:(NSArray *)atUsers;
           should:(NSArray *)atUsers;

//: - (void)onSelectChartlet:(NSString *)chartletId
- (void)alongReplySend:(NSString *)chartletId
                 //: catalog:(NSString *)catalogId;
                 message:(NSString *)catalogId;

//: - (void)onSelectEmoticon:(id)emoticon;
- (void)enableThinkOf:(id)emoticon;

//: - (void)onCancelRecording;
- (void)cancelDay;

//: - (void)onStopRecording;
- (void)recentIndex;

//: - (void)onStartRecording;
- (void)boxBy;

//: - (void)onTapMoreBtn:(id)sender;
- (void)recording:(id)sender;

//: - (void)onTapEmoticonBtn:(id)sender;
- (void)ranging:(id)sender;

//: - (void)onTapAudioBtn:(id)sender;
- (void)endued:(id)sender;

//: - (void)onTapAlbunBtn:(id)sender;
- (void)names:(id)sender;

//: - (void)onTapCameraBtn:(id)sender;
- (void)cameraing:(id)sender;

//: - (void)didReplyCancelled;
- (void)theTextCancelled;


//: @end
@end
