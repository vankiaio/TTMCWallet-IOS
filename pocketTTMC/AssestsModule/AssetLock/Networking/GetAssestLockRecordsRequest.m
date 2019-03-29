//
//  GetAssestLockRecordsRequest.m
//  pocketTTMC
//
//  Created by ttmcchain on 2018/2/7.
//  Copyright © 2018年 ttmcchain. All rights reserved.
//

#import "GetAssestLockRecordsRequest.h"

@implementation GetAssestLockRecordsRequest
-(NSString *)requestUrlPath{
    return [NSString stringWithFormat:@"%@/VX/GetAssetsLockRecords", REQUEST_ASSESTLOCK_RECORDS];
}

-(id)parameters{
    return @{
             @"account_id"  : VALIDATE_ARRAY(self.account_name)
             };
}
@end
