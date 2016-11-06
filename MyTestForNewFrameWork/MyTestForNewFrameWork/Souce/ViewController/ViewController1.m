//
//  ViewController1.m
//  MyTestForNewFrameWork
//
//  Created by Liliang on 16/9/20.
//  Copyright © 2016年 leiyukeyi. All rights reserved.
//

#import "ViewController1.h"
//#import "UIViewController+LLCustom.h"
#import "viewController4.h"
#import "LLShareView.h"
#import "Defaultype.h"
#import "DLHttpHelper.h"

#import "LLBaseDataModel.h"
#import "Person.h"
#import "DageTest.h"
#import "Homesss.h"
#import "LLShowNeesLogInView.h"
#import "testView2.h"
#import "MBHudExtention.h"
#import "TopTenBang.h"
@interface ViewController1 ()<UICollectionViewDelegate>
@property(nonatomic,strong)UIButton *itemButton;
@property(nonatomic,strong)TopTenBang *topTenView;
@property(nonatomic,strong)UICollectionView *detailCollectionView;
//推荐图片
@property(nonatomic,copy)NSArray *projectArray;
//直播轮播图数据
@property(nonatomic,strong)NSMutableArray *bannerLiveArray;
@property(nonatomic,strong)UIButton *moreButton;
//描述字典
@property(nonatomic,copy)NSDictionary *resultDiction;

@property(nonatomic,strong)testView2 *myView;
@end


@implementation ViewController1
-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    [self initView];
    self.view.backgroundColor = [UIColor redColor];
    
//    NSMutableArray *array1 = [[NSMutableArray alloc]init];
//    NSMutableArray *array12 = [[NSMutableArray alloc]init];
//    [array1 addObject:array12];
//    [array12 addObject:array1];
//    
//
//    RLMResults<DogAnimal *> *sameDogs =[DogAnimal objectsWhere:@"animalname contains '狗'"];
////    [dogtest.animals addObjects:sameDogs];
//    
    

   
//    NSArray *allresultes = [DageTest getAllData];
//    NSLog(@"%@",allresultes);
    
}
-(void)initView2
{

}
-(void)initView
{
//    [self addCustomNavBar:@"第一页" withLeftBtn:nil withRightBtn:nil withLeftLabel:nil withRightLabel:nil];
    self.itemButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.itemButton setTitle:@"跟多" forState:UIControlStateNormal];
    [self.itemButton setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
    [self.itemButton setImage:[UIImage imageNamed:@"iv_pindao_more_normal"] forState:UIControlStateNormal];
    [self.itemButton setImage:[UIImage imageNamed:@"iv_pindao_more_pressed"] forState:UIControlStateHighlighted];
    self.itemButton.center = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2);
    [self.itemButton setBackgroundColor:[UIColor whiteColor]];
    CGSize size =self.itemButton.imageView.image.size;
    self.itemButton.bounds = CGRectMake(0, 0, 300, 25);
    [self.view addSubview:self.itemButton];
    self.itemButton.imageEdgeInsets = UIEdgeInsetsMake(0,self.itemButton.frame.size.width-size.width-5 , 0, 4);
    self.itemButton.titleEdgeInsets = UIEdgeInsetsMake(0, 10, 0, size.width-5);
    self.itemButton.titleLabel.textAlignment = NSTextAlignmentRight;
    [self.itemButton addTarget:self action:@selector(myClickAction) forControlEvents:UIControlEventTouchDown];
    NSLog(@"%f",self.view.frame.size.width);
}
-(void)hiddenAction
{
//    [MBHudExtention showError:@"出错了"];
    [MBHudExtention show];
}
-(void)myClickAction
{
    [MBHudExtention show];
//    [MBHudExtention showError:@"出错了"];
    [self performSelector:@selector(hiddenAction) withObject:nil afterDelay:2.0];
//    [MBHudExtention showError:@"出粗了" andWithController:self];
//    _moreButton = [UIButton buttonWithType:UIButtonTypeCustom];
//    [_moreButton setHidden:NO];
//    [_moreButton setTitleColor:[UIColor colorWithRed:159 green:159 blue:159 alpha:1] forState:UIControlStateNormal];
//    _moreButton.titleLabel.font = [UIFont systemFontOfSize:14];
//    _moreButton.titleLabel.textColor =[UIColor colorWithRed:159 green:159 blue:159 alpha:1];
//    //    [_moreButton setBackgroundColor:[UIColor blueColor]];
//    _moreButton.frame = CGRectMake(ScreenWidth - ScreenWidth/5.8 -10 , 0, ScreenWidth /5.5, 20);
//    [_moreButton setTitle:NSLocalizedString(@"更多", nil) forState:UIControlStateNormal];
//    _moreButton.titleLabel.adjustsFontSizeToFitWidth = YES;
//    
//    [_moreButton setImage:[UIImage imageNamed:@"iv_pindao_more_normal"] forState:UIControlStateNormal];
//    [_moreButton setImage:[UIImage imageNamed:@"iv_pindao_more_pressed"] forState:UIControlStateHighlighted];
//    CGSize imageSize = _moreButton.imageView.image.size;
//    CGRect frame =_moreButton.frame;
//    frame.size = imageSize;
//    _moreButton.frame = frame;
//    
//    [self.view addSubview:self.moreButton];
////    LLShowNeesLogInView *logView = [[LLShowNeesLogInView alloc]initWithFrame:CGRectMake(0, 0, ScreenWidth, ScreenHeight)];
//    logView.myBlock = ^(NSInteger tag){
//        switch (tag) {
//            case 0:
//            {
//                NSLog(@"QQ");
//            }
//                break;
//            case 1:
//            {
//                NSLog(@"微信");
//            }
//                break;
//            case 2:
//            {
//                NSLog(@"微博");
//            }
//                break;
//            case 3:
//            {
//                NSLog(@"手机号");
//            }
//                break;
//                
//            default:
//                break;
//        }
//    };
//    [logView showInView];

//    [DLHttpHelper GetData:DiscoverURL withParameters:nil success:^(id responseObject) {
//        LLBaseDataModel *model = [[LLBaseDataModel alloc]init];
//        if ([responseObject isKindOfClass:NSClassFromString(@"NSDictionary")]) {
//            [model parseDataDic:responseObject];
//        }
//        
//        [model parseData:responseObject];
//        NSLog(@"ssss = %@",responseObject);
//    } failure:^(NSString *error) {
//        NSLog(@"错误信息");
//    }];
    LLShareView *share = [[LLShareView alloc]initWithFrame:CGRectMake(0, 0, ScreenWidth, ScreenHeight)];
    [share addIconItem:@"微信朋友圈" withIcon:@"iv_wx_friend_normal"];
    [share addIconItem:@"微信好友" withIcon:@"iv_wx_normal"];
    [share addIconItem:@"微博分享" withIcon:@"iv_weibo_normal"];
    [share addIconItem:@"QQ好友" withIcon:@"iv_qq_normal"];
    [share addIconItem:@"QQ空间" withIcon:@"iv_qqzone_normal-"];
    [share updateData];
    share.block = ^(NSInteger tag)
    {
        ;
        [self clicAstest];
        switch (tag) {
            case 0:
            {
                NSLog(@"取消分享");
            }
                break;
            case 1:
            {
                NSLog(@"微信分享");
            }
            case 2:
            {
                NSLog(@"微博分享");
            }
            default:
                break;
        }
    };
  
//    [share showInView];
//    viewController4 *view = [[viewController4 alloc]init];
////    [self.tabBarController setHidesBottomBarWhenPushed:YES];
//    [APPDELEGATE.viewContoller.myTabViewController showOrHideCustomTabaBar:NO];
//
//    [self.navigationController pushViewController:view animated:YES];
}
-(void)clicAstest{
    NSLog(@"ssss ");
}
#pragma mark LLCustomNavBarDelegate
-(void)leftBtnPressed:(id)sender
{

}
-(void)rightBtnPressed:(id)sender
{
    
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
