//
//  TopModel.m
//  MeMoo
//
//  Created by 幻维科技Mac001 on 16/11/3.
//  Copyright © 2016年 HWSJ. All rights reserved.
//

#import "TopModel.h"

@implementation TopModel
-(id)initWithDictionary:(NSDictionary *)dictionary

{
    self = [super init];
    if (self) {
        self.videoId = [NSString stringWithFormat:@"%@",[dictionary objectForKey:@"id"]];
        self.rank = [[dictionary objectForKey:@"rank"] integerValue];
        self.tag = [NSString stringWithFormat:@"%@",[dictionary objectForKey:@"tag"]];
    }
    return self;
}
@end
