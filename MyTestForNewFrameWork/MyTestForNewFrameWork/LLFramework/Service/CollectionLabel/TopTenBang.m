//
//  TopTenBang.m
//  MeMoo
//
//  Created by 幻维科技Mac001 on 16/11/3.
//  Copyright © 2016年 HWSJ. All rights reserved.
//

#import "TopTenBang.h"
#import "JCTagListView.h"
@implementation TopTenBang
-(id)initWithFrame:(CGRect)frame delegate:(id<TopTenBangDelegate>)delegate
{
    self = [super initWithFrame:frame];
    if (self) {
        
        UIImageView * image = [[UIImageView alloc]initWithFrame:CGRectMake(0.1*self.bounds.size.width, 20, self.bounds.size.width* 0.8, self.bounds.size.width* 0.8 /375 * 23)];
        [image setImage:[UIImage imageNamed:@"TopTitleImage"]];
        [image setBackgroundColor:[UIColor clearColor]];
        [self addSubview:image];
        
        
        
        _topView = [[JCTagListView alloc]initWithFrame:CGRectMake(0, image.frame.size.height+20, ScreenWidth, 240)];
        
        __weak id<TopTenBangDelegate> selfdelegate = delegate;
        self.delegate = selfdelegate;
        [_topView setCompletionBlockWithSelected:^(NSInteger index) {
            
            if ([_delegate respondsToSelector:@selector(selectTopten:)]) {
                [_delegate selectTopten:index];
            }
            
        }];
        [self addSubview:_topView];
//        [self setBackgroundColor:[Tools setColorWithRed:250.0 Green:250.0 Blue:250.0 Alpha:1]];
    }
    return self;
}

-(void)setWithArray:(NSArray*)array
{
    [_topView.tags addObjectsFromArray:array];
    [_topView.collectionView reloadData];
    self.frame = CGRectMake(0, 0, ScreenWidth, self.bounds.size.width* 0.8 /375 * 23 + ([array count]/2+ [array count]%2) * 46+ 10);
    
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
