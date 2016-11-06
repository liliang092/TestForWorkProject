//
//  JCTagListView.m
//  JCTagListView
//
//  Created by 李京城 on 15/7/3.
//  Copyright (c) 2015年 李京城. All rights reserved.
//

#import "JCTagListView.h"
#import "JCTagCell.h"
#import "JCCollectionViewTagFlowLayout.h"
#import "TopModel.h"


@interface JCTagListView ()<UICollectionViewDelegate, UICollectionViewDataSource>

@property (nonatomic, copy) JCTagListViewBlock selectedBlock;

@end

@implementation JCTagListView

static NSString * const reuseIdentifier = @"tagListViewItemId";

- (id)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self setup];
    }
    
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder
{
    if (self = [super initWithCoder:aDecoder]) {
        [self setup];
    }
    
    return self;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    self.collectionView.frame = self.bounds;
}

- (void)setup
{
    _selectedTags = [NSMutableArray array];
    _tags = [NSMutableArray array];
    
    _tagStrokeColor = [UIColor lightGrayColor];
    _tagBackgroundColor = [UIColor clearColor];
    _tagTextColor = [UIColor darkGrayColor];
    _tagSelectedBackgroundColor = [UIColor clearColor];
    
    _tagCornerRadius = 5.0f;
    
    
    JCCollectionViewTagFlowLayout *layout = [[JCCollectionViewTagFlowLayout alloc] init];
    
    _collectionView = [[UICollectionView alloc] initWithFrame:self.bounds collectionViewLayout:layout];
    _collectionView.delegate = self;
    _collectionView.dataSource = self;
    _collectionView.showsHorizontalScrollIndicator = NO;
    _collectionView.showsVerticalScrollIndicator = NO;
    _collectionView.backgroundColor = [UIColor clearColor];
    [_collectionView registerClass:[JCTagCell class] forCellWithReuseIdentifier:reuseIdentifier];
    [self addSubview:_collectionView];
}

- (void)setCompletionBlockWithSelected:(JCTagListViewBlock)completionBlock
{
    self.selectedBlock = completionBlock;
}

#pragma mark - UICollectionViewDelegate | UICollectionViewDataSource

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return self.tags.count;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    JCCollectionViewTagFlowLayout *layout = (JCCollectionViewTagFlowLayout *)collectionView.collectionViewLayout;
    CGSize maxSize = CGSizeMake(collectionView.frame.size.width - layout.sectionInset.left - layout.sectionInset.right, layout.itemSize.height);
    TopModel * model = self.tags[indexPath.item];

    CGRect frame = [model.tag boundingRectWithSize:maxSize options:NSStringDrawingUsesFontLeading|NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName: [UIFont systemFontOfSize:14.0f]} context:nil];
    
    //返回不规则标签宽度
//    return CGSizeMake(frame.size.width + 20.0f, layout.itemSize.height);
    
//返回平时的宽度
    return CGSizeMake((ScreenWidth /2)-15 , layout.itemSize.height);

}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    JCTagCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    cell.backgroundColor = self.tagBackgroundColor;
    cell.layer.cornerRadius = self.tagCornerRadius;
    TopModel * model = self.tags[indexPath.item];

    cell.titleLabel.textColor = self.tagTextColor;

    
    //测试用
//    NSInteger row ;
//    if (indexPath.row%2==0) {
//        row = indexPath.row/2+1;
//    }
//    else
//    {
//        row = indexPath.row/2+5 +1;
//    }
//    [cell.iconImage setImage:[UIImage imageNamed:[NSString stringWithFormat:@"R%ld",row]] forState:UIControlStateNormal];
//    cell.titleLabel.text = self.tags[indexPath.item];

    
    cell.titleLabel.text = model.tag;    
    [cell.iconImage setImage:[UIImage imageNamed:[NSString stringWithFormat:@"R%ld",model.rank]] forState:UIControlStateNormal];
    
    if ([self.selectedTags containsObject:model.tag]) {
        cell.backgroundColor = self.tagSelectedBackgroundColor;
    }
    
    return cell;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    JCTagCell *newcell = (JCTagCell *)[collectionView cellForItemAtIndexPath:indexPath];

    NSLog(@"%f",newcell.frame.size.height);

    if (self.canSelectTags) {
        JCTagCell *cell = (JCTagCell *)[collectionView cellForItemAtIndexPath:indexPath];
        TopModel * model = self.tags[indexPath.item];

        if ([self.selectedTags containsObject:model.tag]) {
            cell.backgroundColor = self.tagBackgroundColor;

            [self.selectedTags removeObject:model.tag];
        }
        else {
            cell.backgroundColor = self.tagSelectedBackgroundColor;
            [self.selectedTags addObject:model.tag];
        }
    }
    
    if (self.selectedBlock) {
        self.selectedBlock(indexPath.item);
    }
}

@end
