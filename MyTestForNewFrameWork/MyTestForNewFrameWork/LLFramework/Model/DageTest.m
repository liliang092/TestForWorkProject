//
//  DageTest.m
//  MyTestForNewFrameWork
//
//  Created by Liliang on 16/10/26.
//  Copyright © 2016年 leiyukeyi. All rights reserved.
//

#import "DageTest.h"

@implementation DageTest
+(NSArray *)getAllData
{
    RLMResults<DageTest *> *results = [DageTest allObjects];
    NSMutableArray *datas = [[NSMutableArray alloc]init];
    for (DageTest *item in results) {
        [datas addObject:item];
    }
    return datas;
}
@end
