
//
//  LL_TimerCell.m
//  MyTestForNewFrameWork
//
//  Created by Liliang on 2016/11/20.
//  Copyright © 2016年 leiyukeyi. All rights reserved.
//

#import "LL_TimerCell.h"
@interface LL_TimerCell()
@property(nonatomic,strong)UILabel *myTextLable;
@property(nonatomic,assign)CGFloat timerEdge;
@property(nonatomic,assign)BOOL timeIsRun;
@end
@implementation LL_TimerCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}
-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self initMyLable];
        [self initTimer];
        
    }
    return self;
}
-(void)initMyLable
{
    self.myTextLable = [[UILabel alloc]initWithFrame:CGRectZero];
    self.myTextLable.textColor = [UIColor blackColor];
    self.myTextLable.font = [UIFont systemFontOfSize:12];
    self.myTextLable.textAlignment = NSTextAlignmentCenter;
    self.myTextLable.center = CGPointMake(self.frame.size.width/2, self.frame.size.height/2);
    self.myTextLable.bounds = CGRectMake(0, 0, self.frame.size.width, self.frame.size.height);
    self.myTextLable.text = @"测试时间倒计时";
    [self.contentView addSubview:self.myTextLable];
}
-(void)initTimer
{
    self.myTimer = [NSTimer timerWithTimeInterval:1 target:self selector:@selector(myTimeRunAction) userInfo:nil repeats:YES];
    [[NSRunLoop currentRunLoop] addTimer:self.myTimer forMode:NSRunLoopCommonModes];
    [self myStopMyTimer];
}
-(void)prepareForReuse
{
    [super prepareForReuse];
    [self myTimerStart];
}

/**
 启动定时器
 */
-(void)myTimerStart
{
    if (self.timeIsRun ==NO) {
        [self.myTimer setFireDate:[NSDate distantPast]];
        self.timeIsRun = YES;
    }
}
-(void)myStopMyTimer
{
    if (self.timeIsRun == YES) {
        [self.myTimer setFireDate:[NSDate distantFuture]];
        self.timeIsRun = NO;
    }
}
-(void)myTimeRunAction
{
    NSLog(@"当前时间的时间戳%lf",[[NSDate date] timeIntervalSince1970]);
    
    self.myTextLable.text =[NSString stringWithFormat:@"当前时间戳%4.0f",([[NSDate date] timeIntervalSince1970]+self.timerEdge)];
}
-(void)updateTimeEdge:(CGFloat)timeEdge
{
    self.timerEdge = timeEdge;
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}

@end
