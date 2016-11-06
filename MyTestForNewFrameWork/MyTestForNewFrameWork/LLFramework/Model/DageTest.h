//
//  DageTest.h
//  MyTestForNewFrameWork
//
//  Created by Liliang on 16/10/26.
//  Copyright © 2016年 leiyukeyi. All rights reserved.
//

#import "LLBaseModel.h"
#import "DogAnimal.h"
@interface DageTest : LLBaseModel
@property NSString *dageName;
@property NSInteger age;
//@property RLMArray<DogAnimal >  *animals;
+(NSArray *)getAllData;
@end
RLM_ARRAY_TYPE(DageTest)//定义RLMArray<Person>
