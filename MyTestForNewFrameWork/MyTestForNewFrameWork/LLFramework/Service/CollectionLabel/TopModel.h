//
//  TopModel.h
//  MeMoo
//
//  Created by 幻维科技Mac001 on 16/11/3.
//  Copyright © 2016年 HWSJ. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TopModel : NSObject
@property(retain,nonatomic)NSString * videoId;
@property(retain,nonatomic)NSString * tag;
@property(assign,nonatomic)NSInteger rank;
-(id)initWithDictionary:(NSDictionary *)dictionary;
@end
