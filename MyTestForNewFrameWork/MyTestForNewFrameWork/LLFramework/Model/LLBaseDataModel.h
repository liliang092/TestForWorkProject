//
//  LLBaseDataModel.h
//  MyTestForNewFrameWork
//
//  Created by Liliang on 16/10/24.
//  Copyright © 2016年 leiyukeyi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LLBaseDataModel : NSObject
@property(nonatomic,assign)NSInteger statusCodel;
@property(nonatomic,copy)NSString *errMsg;
@property(nonatomic,copy)NSString  *ctmMsg;
AS_MODEL_STRONG(NSDictionary,data);
AS_MODEL_STRONG(NSString,httpBackData);
-(void)parseData:(id )str;
-(void)parseDataDic:(NSDictionary*)str;
@end
