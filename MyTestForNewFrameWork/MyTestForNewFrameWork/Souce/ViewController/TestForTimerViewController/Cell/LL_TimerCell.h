//
//  LL_TimerCell.h
//  MyTestForNewFrameWork
//
//  Created by Liliang on 2016/11/20.
//  Copyright © 2016年 leiyukeyi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LL_TimerCell : UITableViewCell
@property(nonatomic,strong)NSTimer *myTimer;

-(void)myTimerStart;
-(void)myStopMyTimer;
-(void)updateTimeEdge:(CGFloat)timeEdge;
@end
