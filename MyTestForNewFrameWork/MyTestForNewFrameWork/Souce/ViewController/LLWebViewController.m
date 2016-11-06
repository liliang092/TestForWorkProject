//
//  LLWebViewController.m
//  MyTestForNewFrameWork
//
//  Created by Liliang on 2016/11/5.
//  Copyright © 2016年 leiyukeyi. All rights reserved.
//

#import "LLWebViewController.h"
#import <WebKit/WebKit.h>

@interface LLWebViewController ()

@property(nonatomic,strong)WKWebView *webView;

@end

@implementation LLWebViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}
-(void)initView
{
    self.webView = [[WKWebView alloc]initWithFrame:self.view.bounds];
    [self.view addSubview:self.webView];
    
//    sale.jd.com/act/GTugDfc2msaVIQ.html?cpdad=1DLSUE
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
