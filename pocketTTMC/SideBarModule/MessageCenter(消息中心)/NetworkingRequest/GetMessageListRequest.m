//
//  GetMessageListRequest.m
//  pocketTTMC
//
//  Created by ttmcchain on 2018/1/29.
//  Copyright © 2018年 ttmcchain. All rights reserved.
//

#import "GetMessageListRequest.h"

@implementation GetMessageListRequest
-(NSString *)requestUrlPath{
    return [NSString stringWithFormat:@"%@/msg/getMagList", REQUEST_PERSONAL_BASEURL];
}
-(id)parameters{
    NSMutableDictionary *params = [NSMutableDictionary dictionary];
    [params setObject:VALIDATE_NUMBER(self.offset) forKey:@"offset"];
    [params setObject:VALIDATE_NUMBER(self.size) forKey:@"size"];
    return [params clearEmptyObject];
}
@end
