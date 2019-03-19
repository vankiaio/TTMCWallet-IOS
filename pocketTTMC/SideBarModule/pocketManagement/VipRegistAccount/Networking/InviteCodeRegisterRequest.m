//
//  InviteCodeRegisterRequest.m
//  pocketTTMC
//
//  Created by ttmcchain on 2018/8/8.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import "InviteCodeRegisterRequest.h"

@implementation InviteCodeRegisterRequest

-(NSString *)requestUrlPath{
    return [NSString stringWithFormat:@"%@/inviteCodeRegister", REQUEST_PERSONAL_BASEURL];
}

-(id)parameters{
    
    return @{
             @"inviteCode" : VALIDATE_STRING(self.inviteCode),
             @"uid" : VALIDATE_STRING(self.uid),
             @"ttmcAccountName" : VALIDATE_STRING(self.ttmcAccountName),
             @"activeKey" : VALIDATE_STRING(self.activeKey),
             @"ownerKey" : VALIDATE_STRING(self.ownerKey)
             
             };
}


@end
