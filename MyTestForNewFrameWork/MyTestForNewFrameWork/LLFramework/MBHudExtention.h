//
//  MBHudExtention.h
//  MeMoo
//
//  Created by Liliang on 2016/11/3.
//  Copyright © 2016年 HWSJ. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MBProgressHUD.h"
#import "LLBaseViewController.h"
@interface MBHudExtention : NSObject


@property(nonatomic,strong)LLBaseViewController *viewController;

@property(nonatomic,strong)MBProgressHUD *hub;

+(void)show;
//停止
+(void)stop;
//展示加title
+(void)showWithStatic:(NSString *)status;
//成功展示
+(void)showSuccess:(NSString *)success;
//出错展示
+(void)showError:(NSString *)errorInfo;
@end
