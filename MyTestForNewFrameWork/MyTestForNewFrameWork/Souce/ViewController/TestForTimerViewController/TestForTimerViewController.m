
//
//  TestForTimerViewController.m
//  MyTestForNewFrameWork
//
//  Created by Liliang on 2016/11/20.
//  Copyright © 2016年 leiyukeyi. All rights reserved.
//

#import "TestForTimerViewController.h"
#import "LL_TimerCell.h"
#import "LLCustomNavBarView.h"
@interface TestForTimerViewController ()<LLCustomNavBarDelegate>
@property(nonatomic,strong)LLCustomNavBarView *custonNav;
@end

@implementation TestForTimerViewController
-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:NO];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    [self initView];
}
-(void)initView
{
    
    self.tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, NavigationBarHeight+20, self.view.frame.size.width, self.view.frame.size.height-NavigationBarHeight) style:UITableViewStylePlain];
    [self.tableView registerClass:[LL_TimerCell class] forCellReuseIdentifier:@"LL_TimerCell"];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.custonNav = [[LLCustomNavBarView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 64) withBgImage:nil withTitle:@"测试NsTimer" withLeftBtn:nil withRightBtn:nil withLeftLabel:@"返回按钮" withRightLabel:nil];
    self.custonNav.delegate = self;
    [self.view addSubview:self.custonNav];

}
-(void)leftBtnPressed:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Incomplete implementation, return the number of sections
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    LL_TimerCell *cell = [[LL_TimerCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"LL_TimerCell"];
    [cell updateTimeEdge:indexPath.row*10];
    [cell myTimerStart];
    return cell;
}
-(void)tableView:(UITableView *)tableView didEndDisplayingCell:(nonnull UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
    LL_TimerCell *tempCell = (LL_TimerCell *)cell;
    [tempCell myStopMyTimer];
}
-(CGFloat )tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 90;
}
-(void)dealloc
{
    NSLog(@"dealoc");
    for (int i=0; i<10; i++) {
        NSIndexPath *indexpath = [NSIndexPath indexPathForRow:i inSection:0];
        LL_TimerCell *cell = [self.tableView cellForRowAtIndexPath:indexpath];
        [cell myStopMyTimer];
        [cell.myTimer invalidate];
        cell.myTimer = nil;
    }
}
/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
