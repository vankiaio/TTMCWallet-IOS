//
//  Get_pocketttmc_info_Result.m
//  pocketTTMC
//
//  Created by ttmcchain on 2018/11/1.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import "Get_pocketttmc_info_Result.h"

@implementation Get_pocketttmc_info_Result

+(NSDictionary *)mj_replacedKeyFromPropertyName{
    return @{
             @"weChatOfficialAccount":@"data.weChatOfficialAccount",
             @"weChat":@"data.weChat",
             @"officialWebsite":@"data.officialWebsite",
             @"companyProfile":@"data.companyProfile"
             };
}

@end
