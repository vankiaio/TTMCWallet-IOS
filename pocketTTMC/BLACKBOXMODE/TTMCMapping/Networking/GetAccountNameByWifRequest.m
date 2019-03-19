//
//  GetAccountNameByWifRequest.m
//  pocketTTMC
//
//  Created by ttmcchain on 2018/6/13.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import "GetAccountNameByWifRequest.h"

@implementation GetAccountNameByWifRequest

-(NSString *)requestUrlPath{
    return [NSString stringWithFormat:@"%@/votettmcchain/GetAccounts", REQUEST_BP_BASEURL];
}

-(id)parameters{
    return @{@"public_key": VALIDATE_STRING(self.public_key)};
}

@end
