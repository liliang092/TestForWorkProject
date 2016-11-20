//
//  LLVideoPlayController.h
//  MyTestForNewFrameWork
//
//  Created by Liliang on 2016/11/5.
//  Copyright © 2016年 leiyukeyi. All rights reserved.
//

#import "LLBaseViewController.h"
#import <AVFoundation/AVFoundation.h>

#define  TopViewHeight 55
#define BottomViewHeight 72

@interface LLVideoPlayController : LLBaseViewController

@property(nonatomic,strong)UIView *topView;
@property(nonatomic,strong)UIButton *backBtn;
@property(nonatomic,strong)UILabel  *titleLable;
@property(nonatomic,strong)UIButton *settingBtn;

@property(nonatomic,strong)UIView *bottomView;
@property(nonatomic,strong)UIButton *playBtn;
@property(nonatomic,strong)UILabel *textLable;
@property(nonatomic,assign)BOOL isPlay;
@property(nonatomic,strong)UISlider *movieProgressSlider;
@property(nonatomic,assign)CGFloat progressBeiginToMove;
@property(nonatomic,assign)CGFloat totalMovieDuration;

//核心躯干
@property(nonatomic,strong)AVPlayer *player;

@property(nonatomic,strong)UIView *settingsView;
@property(nonatomic,strong)UIView *rightView;
@property(nonatomic,strong)UIButton *setTestBtn;

@property(nonatomic,assign)BOOL isShowView;
@property(nonatomic,assign)BOOL isSettingsViewShow;
@property(nonatomic,assign)BOOL isSlideOrClick;

@property(nonatomic,assign)UISlider *volumeViewSlider;
@property(nonatomic,assign)float systemVolume;
@property(nonatomic,assign)float systemBrightness;
@property(nonatomic,assign)CGPoint startProgress;

@property(nonatomic,assign)BOOL isTouchBeganLeft;
@property(nonatomic,assign)NSString *isSlideDirtion;

@end
