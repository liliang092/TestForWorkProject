//
//  testView.m
//  MyTestForNewFrameWork
//
//  Created by Liliang on 2016/11/1.
//  Copyright © 2016年 leiyukeyi. All rights reserved.
//

#import "testView.h"
@interface testView()
AS_MODEL_STRONG(UIView, view1);
AS_MODEL_STRONG(UIView, view2)
@end
@implementation testView
-(instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self initView1];
        [self initView2];
    }
    return self;
}
-(void)initView1{
    self.view1 = [[UIView alloc]initWithFrame:CGRectZero];
    [self addSubview:self.view1];
    self.view1.backgroundColor = [UIColor greenColor];
}
-(void)initView2{
    self.view2 = [[UIView alloc]initWithFrame:CGRectZero];
    [self addSubview:self.view2];
    self.view2.backgroundColor = [UIColor blueColor];
}
-(void)layoutSubviews
{
    [super layoutSubviews];
    CGRect frame = self.view1.frame;
    frame.size.width = self.frame.size.width;
    frame.size.height = self.frame.size.height-20;
    self.view1.frame = frame;
    
    frame = self.view2.frame;
    frame.size.width = self.frame.size.width;
    frame.size.height = 20;
    frame.origin.y = CGRectGetMaxY(self.view1.frame);
    self.view2.frame = frame;
    NSLog(@"ssssssss1111111");
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
