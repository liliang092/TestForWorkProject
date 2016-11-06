//
//  MBHudExtention.m
//  MeMoo
//
//  Created by Liliang on 2016/11/3.
//  Copyright © 2016年 HWSJ. All rights reserved.
//

#import "MBHudExtention.h"
#import "SVProgressHUD.h"

CGFloat const MBProgressMaxOffset = 1000000.f;

@interface MBProgressHUD()
;
@end
@implementation MBHudExtention
//展示
+(instancetype)shareView
{
    static MBHudExtention *MBH;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        MBH = [[MBHudExtention alloc]init];
    });
    return MBH;
}
+(void)stop
{
    MBHudExtention *share = [MBHudExtention shareView];
    if (share.hub != nil) {
        dispatch_async(dispatch_get_global_queue(QOS_CLASS_USER_INITIATED, 0), ^{
            
            dispatch_async(dispatch_get_main_queue(), ^{
               
                [share.hub hide:YES afterDelay:2.0];
            });
            
        });
        
    }else
    {
    }
}
+ (UIViewController *)getCurrentVC
{
    UIViewController *result = nil;
    
    UIWindow * window = [[UIApplication sharedApplication] keyWindow];
    if (window.windowLevel != UIWindowLevelNormal)
    {
        NSArray *windows = [[UIApplication sharedApplication] windows];
        for(UIWindow * tmpWin in windows)
        {
            if (tmpWin.windowLevel == UIWindowLevelNormal)
            {
                window = tmpWin;
                break;
            }
        }
    }
    
    UIView *frontView = [[window subviews] objectAtIndex:0];
    id nextResponder = [frontView nextResponder];
    
    if ([nextResponder isKindOfClass:[UIViewController class]])
        result = nextResponder;
    else
        result = window.rootViewController;
    
    return result;
}



+(void)show
{
    UIView *windowVIew = [UIApplication sharedApplication].windows.lastObject;
    MBHudExtention *MBH = [MBHudExtention shareView];
    if (MBH.hub == nil) {
        MBH.hub = [MBProgressHUD showHUDAddedTo:windowVIew animated:YES];
    }
}


//成功展示
+(void)showSuccess:(NSString *)success 
{
    MBHudExtention *extion = [MBHudExtention shareView];
    if (extion.hub != nil) {
        dispatch_async(dispatch_get_global_queue(QOS_CLASS_USER_INITIATED, 0), ^{
            
            dispatch_async(dispatch_get_main_queue(), ^{
                extion.hub.mode = MBProgressHUDModeDeterminate;
                UIImage *image = [[UIImage imageNamed:@"Checkmark"] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
                extion.hub.customView = [[UIImageView alloc] initWithImage:image];
                extion.hub.square = YES;
                extion.hub.labelText = success;
                extion.hub = nil;
                [extion.hub hide:YES afterDelay:2.0];
            });
            
        });
        
    }else
    {
        UIView *windowVIew = [UIApplication sharedApplication].windows.lastObject;
        MBHudExtention *MBH = [MBHudExtention shareView];
        MBH.hub = [MBProgressHUD showHUDAddedTo:windowVIew animated:YES];
        
        
        MBH.hub.mode = MBProgressHUDModeDeterminate;
        MBH.hub.labelText = NSLocalizedString(success, @"HUD message title");
        extion.hub.square = YES;
        
        [MBH.hub hide:YES afterDelay:2.0];
    }
}

//出错展示
+(void)showError:(NSString *)errorInfo
{
    MBHudExtention *extion = [MBHudExtention shareView];
    if (extion.hub != nil) {
        dispatch_async(dispatch_get_global_queue(QOS_CLASS_USER_INITIATED, 0), ^{
            
            dispatch_async(dispatch_get_main_queue(), ^{
                extion.hub.mode = MBProgressHUDModeDeterminate;
                UIImage *image = [[UIImage imageNamed:@"Checkmark"] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
                extion.hub.customView = [[UIImageView alloc] initWithImage:image];
                extion.hub.square = YES;
                extion.hub.labelText = errorInfo;
                [extion.hub hide:YES afterDelay:2.0];
            });
            
        });

    }else
    {
        UIView *windowVIew = [UIApplication sharedApplication].windows.lastObject;
        MBHudExtention *MBH = [MBHudExtention shareView];
       MBH.hub = [MBProgressHUD showHUDAddedTo:windowVIew animated:YES];
        
        
       MBH.hub.mode = MBProgressHUDModeDeterminate;
         MBH.hub.labelText = NSLocalizedString(errorInfo, @"HUD message title");
          extion.hub.square = YES;
       
         [MBH.hub hide:YES afterDelay:2.0];
    }
    
}

//展示加title
+(void)showWithStatic:(NSString *)status
{
    MBHudExtention *extion = [MBHudExtention shareView];
    if (extion.hub != nil) {
        dispatch_async(dispatch_get_global_queue(QOS_CLASS_USER_INITIATED, 0), ^{
            
            dispatch_async(dispatch_get_main_queue(), ^{
                extion.hub.mode = MBProgressHUDModeDeterminate;
                UIImage *image = [[UIImage imageNamed:@"Checkmark"] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
                extion.hub.customView = [[UIImageView alloc] initWithImage:image];
                extion.hub.square = YES;
                extion.hub.labelText = status;
                extion.hub = nil;
                [extion.hub hide:YES afterDelay:2.0];
            });
            
        });
        
    }else
    {
        UIView *windowVIew = [UIApplication sharedApplication].windows.lastObject;
        MBHudExtention *MBH = [MBHudExtention shareView];
        MBH.hub = [MBProgressHUD showHUDAddedTo:windowVIew animated:YES];
        
        
        MBH.hub.mode = MBProgressHUDModeDeterminate;
        MBH.hub.labelText = NSLocalizedString(status, @"HUD message title");
        extion.hub.square = YES;
        
        [MBH.hub hide:YES afterDelay:2.0];
    }

}
@end
