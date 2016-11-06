//
//  LLSpecialCell.m
//  MyTestForNewFrameWork
//
//  Created by Liliang on 16/10/27.
//  Copyright © 2016年 leiyukeyi. All rights reserved.
//

#import "LLSpecialCell.h"

@interface LLSpecialCell()<UICollectionViewDelegate,UICollectionViewDataSource>

@property(nonatomic,strong)UICollectionView *myContantCollection;

@end
@implementation LLSpecialCell

-(instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        
    }
    return self;
}
-(void)initCollectionView
{
    float cellWidth = ConversionWidthFrom(180);
    float cellLeftSpace = ConversionWidthFrom(18);
    float cellSpace = ConversionWidthFrom(24);
    
    UICollectionViewFlowLayout *flowlaout = [[UICollectionViewFlowLayout alloc]init];
    
    flowlaout.itemSize = CGSizeMake(cellWidth, cellWidth);
    flowlaout.minimumInteritemSpacing = cellSpace-7;
    flowlaout.sectionInset = UIEdgeInsetsMake((0-cellLeftSpace-15),cellSpace , 0, cellSpace);
    [flowlaout setScrollDirection:UICollectionViewScrollDirectionHorizontal];
    
    
    self.myContantCollection = [[UICollectionView alloc]initWithFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height) collectionViewLayout:flowlaout];
    [self addSubview:self.myContantCollection];
    self.myContantCollection.delegate = self;
    self.myContantCollection.dataSource = self;
    
    self.myContantCollection.showsVerticalScrollIndicator = NO;
    self.myContantCollection.showsHorizontalScrollIndicator = NO;
    
    self.myContantCollection.backgroundColor = [UIColor whiteColor];
    
    [self.myContantCollection registerClass:[LLSpecialViewItemCell class] forCellWithReuseIdentifier:@"LLSpecialViewItemCell"];
    
    
}
-(void)layoutSubviews
{
    [super layoutSubviews];
    CGRect frame = self.myContantCollection.frame;
    frame.size.width = self.frame.size.width;
    self.myContantCollection.frame = frame;
   
}

#pragma UICollectionViewDelegate UICollectionViewDataSource

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 10;
}
-(LLSpecialViewItemCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(nonnull NSIndexPath *)indexPath
{
    return nil;
}

@end
@interface LLSpecialViewItemCell()
AS_MODEL_STRONG(UIImageView, myImageView);
AS_MODEL_STRONG(UILabel, myTitleLabel);
@end
@implementation LLSpecialViewItemCell

-(instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self initMyImageView];
    }
    return self;
}
-(void)initMyImageView
{
    self.myImageView = [[UIImageView alloc]initWithFrame:CGRectZero];
    [self addSubview:self.myImageView];
    self.myImageView.clipsToBounds = YES;
    self.myImageView.layer.cornerRadius =5;
    
}
-(void)initLable
{
    self.myTitleLabel = [[UILabel alloc]initWithFrame:CGRectZero];
    self.myTitleLabel.font = [UIFont systemFontOfSize:12];
    self.myTitleLabel.textColor = [UIColor blackColor];
    self.myTitleLabel.textAlignment = NSTextAlignmentCenter;
    [self addSubview:self.myTitleLabel];
    
}
-(void)layoutSubviews
{
    [super layoutSubviews];
}


@end


