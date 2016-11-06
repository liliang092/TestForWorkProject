//
//  LLDiscoveryViewController.m
//  MyTestForNewFrameWork
//
//  Created by Liliang on 16/10/26.
//  Copyright © 2016年 leiyukeyi. All rights reserved.
//

#import "LLDiscoveryViewController.h"
#import "YLStickyHeaderFlowLayout.h"
@interface LLDiscoveryViewController ()<UICollectionViewDelegate,UICollectionViewDataSource>
@property(nonatomic,strong)UICollectionView *myCollectionView;
@property(nonatomic,strong)NSMutableArray *myOtherDataArr;
//@property(nonatomic,strong)NSMutableArray *my
@end

@implementation LLDiscoveryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initCollectionView];
    // Do any additional setup after loading the view.
}
-(void)initCollectionView
{
    YLStickyHeaderFlowLayout *tempFlow = [[YLStickyHeaderFlowLayout alloc]init];
    self.myCollectionView = [[UICollectionView alloc]initWithFrame:CGRectMake(0, 0, ScreenWidth, ScreenHeight) collectionViewLayout:tempFlow];
    self.myCollectionView.delegate = self;
    self.myCollectionView.dataSource = self;
    self.myCollectionView.showsVerticalScrollIndicator = NO;
    self.myCollectionView.showsHorizontalScrollIndicator = NO;
}

#pragma mark UICollectionViewDataSource
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    NSInteger numItem;
    switch (section) {
        case 0:
        {
            numItem = 1;
        }
            break;
        case 1:
        {
            numItem = 1;
        }
            break;
        default:
        {
            numItem =5;
        }
            break;
    }
    return numItem;
}
-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 7;
}

//-(UICollectionViewCell *)
#pragma mark UICollectionViewDelegate


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
