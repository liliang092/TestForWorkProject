//
//  ViewController.m
//  MyTestForNewFrameWork
//
//  Created by Liliang on 16/9/19.
//  Copyright © 2016年 leiyukeyi. All rights reserved.
//

#import "ViewController.h"
#import "Souce/ViewController/ViewController1.h"
#import "Souce/ViewController/ViewController2.h"
#import "Souce/ViewController/ViewController3.h"
#import "DLBaseNavigationController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor grayColor];
    [self initView];
    NSLog(@"测试提交信息是否更改");
    NSLog(@"测试提交信息是否更改2");
    NSLog(@"测试提交信息是否更改1");
    
    NSLog(@"测试提交信息是否更改3");
}
-(void)initView
{
    self.myTabViewController = [[UITabBarController alloc]init];
    LLBaseViewController *viewcontroller1 = [[ViewController1 alloc]init];
    DLBaseNavigationController *nav1 = [[DLBaseNavigationController alloc]initWithRootViewController:viewcontroller1];
    nav1.navigationBar.hidden = YES;
    
    LLBaseViewController *viewcontroller2 = [[ViewController2 alloc]init];
    DLBaseNavigationController *nav2 = [[DLBaseNavigationController alloc]initWithRootViewController:viewcontroller2];

    nav2.navigationBar.hidden = YES;
    
    LLBaseViewController *viewcontroller3 = [[ViewController3 alloc]init];
    DLBaseNavigationController *nav3 = [[DLBaseNavigationController alloc]initWithRootViewController:viewcontroller3];
    nav3.navigationBar.hidden = YES;

   
    [self.myTabViewController addItemTitle:@"发现" andWithSelectImage:@"tab_faxian_selected" andWithNomalImage:@"tab_faxian_normal" andWithColor:[UIColor blackColor] andWithSelectColor:[UIColor redColor] andWith:nav1];
    
    [self.myTabViewController addItemTitle:@"频道" andWithSelectImage:@"tab_pindao_selected" andWithNomalImage:@"tab_pindao_normal" andWithColor:[UIColor blackColor] andWithSelectColor:[UIColor redColor] andWith:nav2];
    [self.myTabViewController addItemTitle:@"我的" andWithSelectImage:@"tab_me_normal" andWithNomalImage:@"tab_me_press" andWithColor:[UIColor blackColor] andWithSelectColor:[UIColor redColor] andWith:nav3];
    self.myTabViewController.viewControllers = [NSArray arrayWithObjects:nav1,nav2,nav3,nil];
    [self.view addSubview:self.myTabViewController.view];
    self.myTabViewController.selectedIndex = 0;
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
