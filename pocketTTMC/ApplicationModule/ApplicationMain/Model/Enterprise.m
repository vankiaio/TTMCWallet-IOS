//
//  Enterprise.m
//  pocketTTMC
//
//  Created by ttmcchain on 2018/1/30.
//  Copyright © 2018年 ttmcchain. All rights reserved.
//

#import "Enterprise.h"

@implementation Enterprise
+ (NSDictionary *)mj_replacedKeyFromPropertyName{
    return @{ @"enterprise_id" : @"id"};
}
@end
