//
//  Permissions.m
//  pocketTTMC
//
//  Created by ttmcchain on 2018/2/6.
//  Copyright © 2018年 ttmcchain. All rights reserved.
//

#import "Permission.h"

@implementation Permission

+(NSDictionary *)mj_replacedKeyFromPropertyName{
    return @{
             @"required_auth_key" : @"required_auth.keys[0].key",
             @"required_auth_keyArray": @"required_auth.keys"
             };
}

+(NSDictionary *)mj_objectClassInArray{
    return @{
             @"required_auth_keyArray" : @"Key"
             };
}

@end
