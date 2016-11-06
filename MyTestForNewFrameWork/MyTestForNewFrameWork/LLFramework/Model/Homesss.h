//
//  Homesss.h
//  MyTestForNewFrameWork
//
//  Created by Liliang on 16/10/27.
//  Copyright © 2016年 leiyukeyi. All rights reserved.
//

#import <Realm/Realm.h>

@interface Homesss : RLMObject
AS_MODEL_COPY(NSString, homeAdd);
AS_MODEL_COPY(NSString, homeFriend);
AS_MODEL_COPY(NSString, homeTest);

@end
