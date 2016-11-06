//
//  LLBaseModel.m
//  MyTestForNewFrameWork
//
//  Created by Liliang on 16/10/26.
//  Copyright © 2016年 leiyukeyi. All rights reserved.
//

#import "LLBaseModel.h"

@interface LLBaseModel()

@end
@implementation LLBaseModel
-(instancetype)initWithSavePath:(NSString *)pathName andWithTableName:(NSString *)tableName
{
    if (self = [super init]) {
        self.pathName = pathName;
        self.tableName = tableName;
        [self setSavePath:pathName andWithTableName:tableName];
    }
    return self;
}
-(void)saveDatas
{
    RLMRealm * realem = [RLMRealm defaultRealm];
    [realem beginWriteTransaction];
    [realem addObject:self];
    [realem commitWriteTransaction];
}
-(void)moveAllDatas
{
    RLMRealm *realm = [RLMRealm defaultRealm];
    [realm beginWriteTransaction];
    [realm deleteObject:self];
    [realm commitWriteTransaction];
}
-(void)setSavePath:(NSString *)pathName andWithTableName:(NSString *)tableName
{
    RLMRealmConfiguration *config = [RLMRealmConfiguration defaultConfiguration];
    NSString *path = [NSString stringWithFormat:@"%@/%@",[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0],pathName];
    NSString *documen= [NSString stringWithFormat:@"%@/%@/%@.realm",[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0],pathName,tableName];
    
    if (![[NSFileManager defaultManager] fileExistsAtPath:path]) {
        [[NSFileManager defaultManager] createDirectoryAtPath:path withIntermediateDirectories:YES attributes:nil error:nil];
    }
    config.fileURL = [NSURL URLWithString:documen];
    
    [RLMRealmConfiguration setDefaultConfiguration:config];
}
@end
