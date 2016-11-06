//
//  LLPublickMethed.h
//  MyTestForNewFrameWork
//
//  Created by Liliang on 16/10/28.
//  Copyright © 2016年 leiyukeyi. All rights reserved.
//

#import <Foundation/Foundation.h>

#define  LL_LocalizedString(key,comment) \[[NSBundle mainBundle] localizedStringForKey:(key) value:@"" table:nil]
#define LL_LocallizaedStringFromTable(key,tbl,comment) \  [[NSBundle mainBundle] localizedStringForKey:(key) value:@"" table:tbl]


@interface LLPublickMethed : NSObject
+(NSString *)retrunLanguagePath;

+(NSString *)getCurrentLanguage;

@end
