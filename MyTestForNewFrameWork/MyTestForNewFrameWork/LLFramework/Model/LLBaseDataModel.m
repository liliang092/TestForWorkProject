//
//  LLBaseDataModel.m
//  MyTestForNewFrameWork
//
//  Created by Liliang on 16/10/24.
//  Copyright © 2016年 leiyukeyi. All rights reserved.
//

#import "LLBaseDataModel.h"
#import "SBJson.h"
@implementation LLBaseDataModel
-(id)init
{
    self = [super init];
    if (self) {
        self.statusCodel = 0;
        self.errMsg = nil;
        self.ctmMsg = nil;
    }
    return self;
}

-(void)parseData:(id )str
{
    if ([str isKindOfClass:NSClassFromString(@"NSDictionary")]) {
        self.data = str;
        self.httpBackData = str;
        
        self.statusCodel = [[str hasItemAndBack:@"code"] integerValue];
        self.ctmMsg = [str hasItemAndBack:@"message"];
        
        if (self.statusCodel == 0) {
            [self parseDataDic:str];
        }

    }
    else if([str isKindOfClass:NSClassFromString(@"NSString")])
    {
        NSDictionary* tempData = [str JSONValue];
        if (tempData !=nil) {
            
            self.data = tempData;
            self.httpBackData = str;
            
            self.statusCodel = [[tempData hasItemAndBack:@"code"] integerValue];
            self.ctmMsg = [tempData hasItemAndBack:@"message"];
            
            if (self.statusCodel == 200) {
                [self parseDataDic:tempData];
            }
        }
    }
}

-(void)parseDataDic:(NSDictionary*)str
{
    
}

@end
