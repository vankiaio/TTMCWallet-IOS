//
//  Get_recommend_dapp_request.m
//  pocketTTMC
//
//  Created by ttmcchain on 2018/11/1.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import "Get_recommend_dapp_request.h"

@implementation Get_recommend_dapp_request

-(NSString *)requestUrlPath{
    return [NSString stringWithFormat:@"%@/recommend_dapp", REQUEST_PERSONAL_BASEURL];
}


@end
