//
//  LLBaseModel.h
//  MyTestForNewFrameWork
//
//  Created by Liliang on 16/10/26.
//  Copyright © 2016年 leiyukeyi. All rights reserved.
//

#import <Realm/Realm.h>

@interface LLBaseModel : RLMObject
@property(nonatomic,copy)NSString *pathName;

@property(nonatomic,copy)NSString *tableName;
//建议使用这个方法进行初始化数据，设置存储路径
-(instancetype)initWithSavePath:(NSString *)pathName andWithTableName:(NSString *)tableName;
//存储数据
-(void)saveDatas;

//移除所有数据
-(void)moveAllDatas;

//设置存储在document 下的path文件夹下   表名为table
-(void)setSavePath:(NSString *)pathName andWithTableName:(NSString *)tableName;
@end
