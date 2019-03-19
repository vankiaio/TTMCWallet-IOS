//
//  BackupTtmcAccountRequest.m
//  pocketTTMC
//
//  Created by ttmcchain on 2018/1/23.
//  Copyright © 2018年 ttmcchain. All rights reserved.
//

#import "BackupTtmcAccountRequest.h"

@implementation BackupTtmcAccountRequest
-(NSString *)requestUrlPath{
    return [NSString stringWithFormat:@"%@/user/add_new_ttmc", REQUEST_PERSONAL_BASEURL];
}

-(id)parameters{
    return @{
             @"uid" : VALIDATE_STRING(self.uid),
             @"ttmcAccountName" : VALIDATE_STRING(self.ttmcAccountName)
             
             };
}
@end
