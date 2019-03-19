//
//  GetWalletAccountsRequest.m
//  pocketTTMC
//
//  Created by ttmcchain on 2018/1/31.
//  Copyright © 2018年 ttmcchain. All rights reserved.
//

#import "GetWalletAccountsRequest.h"

@implementation GetWalletAccountsRequest

-(NSString *)requestUrlPath{
    return [NSString stringWithFormat:@"%@/user/getTtmcAccount", REQUEST_PERSONAL_BASEURL ];
}

-(id)parameters{
    return @{@"uid" : VALIDATE_STRING(self.uid),
             @"fuid" : VALIDATE_STRING(self.fuid)
             };
}
@end
