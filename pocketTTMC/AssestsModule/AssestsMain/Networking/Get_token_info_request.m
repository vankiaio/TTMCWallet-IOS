//
//  Get_token_info_request.m
//  pocketTTMC
//
//  Created by ttmcchain on 2018/7/19.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import "Get_token_info_request.h"

@implementation Get_token_info_request

-(NSString *)requestUrlPath{
    return [NSString stringWithFormat:@"%@/get_token_info", REQUEST_PERSONAL_BASEURL];
}

-(id)parameters{
    return @{
             @"accountName" : VALIDATE_STRING(self.accountName),
              @"ids" : VALIDATE_ARRAY(self.ids)
             
             };
}
@end
