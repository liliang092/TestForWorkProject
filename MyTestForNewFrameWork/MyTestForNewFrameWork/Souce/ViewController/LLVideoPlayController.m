//
//  LLVideoPlayController.m
//  MyTestForNewFrameWork
//
//  Created by Liliang on 2016/11/5.
//  Copyright © 2016年 leiyukeyi. All rights reserved.
//

#import "LLVideoPlayController.h"
#import <MediaPlayer/MediaPlayer.h>
@interface LLVideoPlayController ()

//@property(nonatomic,strong)MPMoviePlayerController *player;
@property(nonatomic,copy)NSString *url;

@end

@implementation LLVideoPlayController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(void)initPlayer
{
    if (_player == nil) {
        NSURL *url = [NSURL URLWithString:self.url];
        _player = [[MPMoviePlayerController alloc] init];
    }
}
-(void)createAvPlayer
{
    AVAudioSession *audioSession = [AVAudioSession sharedInstance];
    [audioSession setCategory:AVAudioSessionCategoryPlayback error:nil];
    CGRect playFrame = CGRectMake(0, 0, self.view.layer.bounds.size.height, self.view.layer.bounds.size.width);
    
    AVURLAsset *asset = [AVURLAsset assetWithURL:_url];
    
    Float64 duration = CMTimeGetSeconds(asset.duration);
    _totalMovieDuration =duration;
    AVPlayerItem *palyItem = [AVPlayerItem playerItemWithAsset:asset];
    _player = [[AVPlayer alloc]initWithPlayerItem:palyItem];
    AVPlayerLayer *playerLayer = [AVPlayerLayer playerLayerWithPlayer:_player];
    playerLayer.frame = playFrame;
    playerLayer.videoGravity = AVLayerVideoGravityResizeAspect;
    [self.view.layer addSublayer:playerLayer];
    
}
-(void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    CGPoint poin = [[touches anyObject] locationInView:self.view];
    if (_isShowView) {
        if ((poin.y > CGRectGetMinY(self.topView.frame) && poin.y <CGRectGetMaxY(self.topView.frame))||(poin.y <CGRectGetMaxY(self.bottomView.frame) &&poin.y >CGRectGetMinY(self.bottomView.frame))) {
            return ;
        }
        _isShowView =NO;
        [UIView animateWithDuration:0.5 animations:^{
            _topView.alpha =0;
            _bottomView.alpha = 0;
        }];
    }else{
        _isShowView = YES;
        [UIView animateWithDuration:0.5 animations:^{
            _topView.alpha = 1;
            _bottomView.alpha =1;
        }];
    
    }
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
