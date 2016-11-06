//
//  LLAdvertisementCell.m
//  MyTestForNewFrameWork
//
//  Created by Liliang on 16/10/26.
//  Copyright © 2016年 leiyukeyi. All rights reserved.
//

#import "LLAdvertisementCell.h"
#import "SDCycleScrollView.h"

@interface LLAdvertisementCell()<SDCycleScrollViewDelegate>
AS_MODEL_STRONG(SDCycleScrollView, myAdScrollView);
@end
@implementation LLAdvertisementCell
-(instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self initWithMyScrollView];
    }
    return self;
}
-(void)initWithMyScrollView
{
    
    self.myAdScrollView = [SDCycleScrollView cycleScrollViewWithFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height) delegate:self placeholderImage:[UIImage imageNamed:@"mock_newdiscover"]];
    self.myAdScrollView.pageControlAliment = SDCycleScrollViewPageContolAlimentRight;
    self.myAdScrollView.currentPageDotImage = [UIImage imageNamed:@"iv_faxian_lunbo1-1"];
    self.myAdScrollView.pageDotImage = [UIImage imageNamed:@"iv_faxian_lunboqian-1"];
    self.myAdScrollView.autoScrollTimeInterval = 3;
    [self addSubview:self.myAdScrollView];
}
-(void)layoutSubviews
{
    [super layoutSubviews];
    
    CGRect frame = self.myAdScrollView.frame;
    frame.size.width = self.frame.size.width;
    frame.size.height = self.frame.size.height;
    self.myAdScrollView.frame = frame;
    
}
-(void)upDataModel:(id)model
{
    
}
#pragma mark SDCycleScrollViewDelegate
-(void)cycleScrollView:(SDCycleScrollView *)cycleScrollView didSelectItemAtIndex:(NSInteger)index
{
    if (self.myAdClick != nil) {
        self.myAdClick(nil);
    }
}
-(void)cycleScrollView:(SDCycleScrollView *)cycleScrollView didScrollToIndex:(NSInteger)index
{
    
}

@end
