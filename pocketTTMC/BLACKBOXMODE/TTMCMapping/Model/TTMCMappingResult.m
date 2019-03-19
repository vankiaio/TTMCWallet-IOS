//
//  TTMCMappingResult.m
//  pocketTTMC
//
//  Created by ttmcchain on 2018/6/13.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import "TTMCMappingResult.h"

@implementation TTMCMappingResult
+(NSDictionary *)mj_replacedKeyFromPropertyName{
    return @{@"account_names" : @"data.account_names"};
}
@end
