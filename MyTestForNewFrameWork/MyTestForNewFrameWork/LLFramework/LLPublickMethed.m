//
//  LLPublickMethed.m
//  MyTestForNewFrameWork
//
//  Created by Liliang on 16/10/28.
//  Copyright © 2016年 leiyukeyi. All rights reserved.
//

#import "LLPublickMethed.h"

@implementation LLPublickMethed

+(NSString *)retrunLanguagePath
{
    
    NSString *currentLanguage = [LLPublickMethed getCurrentLanguage];
    NSString *path = nil;

    if ([currentLanguage isEqualToString:@"ja-CN"]) {
        path = [[NSBundle mainBundle] pathForResource:@"category-jp" ofType:@"csv"];
    }else if([currentLanguage isEqualToString:@"zh-Hans-CN"]) {
        path = [[NSBundle mainBundle] pathForResource:@"category" ofType:@"csv"];
    }else if([currentLanguage isEqualToString:@"en-CN"]) {
        path = [[NSBundle mainBundle] pathForResource:@"category_EN" ofType:@"csv"];
        return path;
    }
    return nil;
}
+(NSString *)getCurrentLanguage
{
    NSUserDefaults * defaults = [NSUserDefaults standardUserDefaults];
    
    NSArray * allLanguages = [defaults objectForKey:@"AppleLanguages"];
    
    NSString * preferredLang = [allLanguages objectAtIndex:0];
    
    return preferredLang;
    
    
    
}
@end
