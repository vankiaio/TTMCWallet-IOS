//
//  Get_pocketttmc_info_request.m
//  pocketTTMC
//
//  Created by ttmcchain on 2018/10/31.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import "Get_pocketttmc_info_request.h"

@implementation Get_pocketttmc_info_request

-(NSString *)requestUrlPath{
    return [NSString stringWithFormat:@"%@/get_pocketttmc_info", REQUEST_PERSONAL_BASEURL];
}

@end
