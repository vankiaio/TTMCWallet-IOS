//
//  UpdateUserNameRequest.m
//  pocketTTMC
//
//  Created by ttmcchain on 2018/1/26.
//  Copyright © 2018年 ttmcchain. All rights reserved.
//

#import "UpdateUserNameRequest.h"

@implementation UpdateUserNameRequest
-(NSString *)requestUrlPath{
    return [NSString stringWithFormat:@"%@/user/updateName", REQUEST_PERSONAL_BASEURL];
}

-(id)parameters{
    return @{@"uid" : VALIDATE_STRING(CURRENT_WALLET_UID),
             @"userName" : VALIDATE_STRING(self.userName)
             };
}
@end
