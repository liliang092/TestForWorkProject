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

@property(nonatomic,strong)MPMoviePlayerController *player;
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
