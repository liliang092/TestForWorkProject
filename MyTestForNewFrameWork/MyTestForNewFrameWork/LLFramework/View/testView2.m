
//
//  testView2.m
//  MyTestForNewFrameWork
//
//  Created by Liliang on 2016/11/1.
//  Copyright © 2016年 leiyukeyi. All rights reserved.
//

#import "testView2.h"
#import "testView.h"
@interface testView2()
AS_MODEL_STRONG(testView, myView);
@end
@implementation testView2
-(instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self initMyView];
    }
    return  self;
}
-(void)initMyView
{
    self.myView = [[testView alloc]initWithFrame:CGRectZero];
    [self addSubview:self.myView];
}
-(void)layoutSubviews
{
    [super layoutSubviews];
    CGRect frame = self.myView.frame;
    frame.size.width = self.frame.size.width -20;
    frame.size.height = self.frame.size.height;
    self.myView.frame = frame;
    
    NSLog(@"sssss222222");
}

@end
