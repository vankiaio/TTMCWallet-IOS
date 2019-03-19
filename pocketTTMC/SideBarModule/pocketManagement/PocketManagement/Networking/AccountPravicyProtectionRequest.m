//
//  AccountPravicyProtectionRequest.m
//  pocketTTMC
//
//  Created by ttmcchain on 2018/3/25.
//  Copyright © 2018年 ttmcchain. All rights reserved.
//

#import "AccountPravicyProtectionRequest.h"

@implementation AccountPravicyProtectionRequest

-(NSString *)requestUrlPath{
    return [NSString stringWithFormat:@"%@/user/update_secret", REQUEST_PERSONAL_BASEURL];
}

-(NSDictionary *)parameters{
    NSDictionary *params = @{
                             @"ttmcAccountName" : VALIDATE_STRING(self.ttmcAccountName),
                             @"status" : VALIDATE_STRING(self.status)
                             
                             };
    return params;
}


@end
