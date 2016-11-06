//
//  DLHttpHelper.h
//  TickTock
//
//  Created by 卢迎志 on 16-10-15.
//  Copyright (c) 2016年 liliang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LLObejctDefine.h"

@interface DLHttpHelper : NSObject

AS_SINGLETON(DLHttpHelper);

AS_INT_ASSIGN(timeOut);

+(BOOL)isNetworkReachable;

+(void)GetData:(NSString*)url
withParameters:(NSDictionary*)params
       success:(void (^)(id responseObject))success
       failure:(void (^)(NSString *error))failure;

+(void)PostData:(NSString*)url
 withParameters:(NSDictionary*)params
        success:(void (^)(id responseObject))success
        failure:(void (^)(NSString *error))failure;
+(void)PutData:(NSString *)url
withParameters:(NSDictionary *)params
       success:(void(^)(id responseObject))success
       failure:(void(^)(NSString *error))failure;
+(void)DeleData:(NSString *)url
 withParameters:(NSDictionary *)params
        success:(void(^)(id responseObject))success
        failure:(void(^)(NSString *error))failure;
//+(void)PostFormData:(NSString*)url
//     withParameters:(NSDictionary*)params
//       withFormData:(NSMutableArray*)formdata
//            success:(void (^)(id responseObject))success
//            failure:(void (^)(NSString *error))failure;
//
//+(void)PostJsonData:(NSString*)url
//     withParameters:(NSDictionary*)params
//            success:(void (^)(id responseObject))success
//            failure:(void (^)(NSString *error))failure;

@end
