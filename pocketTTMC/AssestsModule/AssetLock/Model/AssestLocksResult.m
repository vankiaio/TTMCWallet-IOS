//
//  AssestLocksResult.m
//  pocketTTMC
//
//  Created by ttmcchain on 2018/2/7.
//  Copyright © 2018年 ttmcchain. All rights reserved.
//

#import "AssestLocksResult.h"

@implementation AssestLocksResult
+(NSDictionary *)mj_objectClassInArray{
    return @{ @"lockedassets" : @"AssestLockRecord"};
}
@end

