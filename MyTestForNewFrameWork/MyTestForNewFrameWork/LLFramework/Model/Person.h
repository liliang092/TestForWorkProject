//
//  Person.h
//  MyTestForNewFrameWork
//
//  Created by Liliang on 16/10/26.
//  Copyright © 2016年 leiyukeyi. All rights reserved.
//

#import <Realm/Realm.h>

@interface Person : RLMObject
AS_MODEL_COPY(NSString, name);
AS_INT(age);

@end
