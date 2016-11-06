//
//  LLUserLoginReturnModel.h
//  MyTestForNewFrameWork
//
//  Created by Liliang on 16/10/25.
//  Copyright © 2016年 leiyukeyi. All rights reserved.
//

#import "LLBaseDataModel.h"

@interface LLUserLoginReturnModel : LLBaseDataModel
@property(nonatomic,copy)NSString *roleName;
@property(nonatomic,assign)NSInteger lever;
@property(nonatomic,assign)NSInteger exp;
@property(nonatomic,assign)NSInteger sex;
@property(nonatomic,copy)NSString *birthday;
//@property(nonatomic,copy)
@end
