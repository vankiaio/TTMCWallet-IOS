//
//  Candy_equity_list_request.m
//  pocketTTMC
//
//  Created by ttmcchain on 2018/5/24.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import "Candy_equity_list_request.h"

@implementation Candy_equity_list_request
-(NSString *)requestUrlPath{
    return [NSString stringWithFormat:@"%@/get_all_exchange", REQUEST_CANDYSYSTEM_BASEURL];
}

@end
