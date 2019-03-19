//
//  CreateTTMCAccountRequest.m
//  pocketTTMC
//
//  Created by ttmcchain on 2018/6/21.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import "CreateTTMCAccountRequest.h"

@implementation CreateTTMCAccountRequest
-(NSString *)requestUrlPath{
    return [NSString stringWithFormat:@"%@/user/add_new_ttmc", REQUEST_PERSONAL_BASEURL];
}

-(id)parameters{
    
    return @{
             @"uid" : VALIDATE_STRING(self.uid),
             @"ttmcAccountName" : VALIDATE_STRING(self.ttmcAccountName),
             @"activeKey" : VALIDATE_STRING(self.activeKey),
             @"ownerKey" : VALIDATE_STRING(self.ownerKey)
             
             };
}
@end
