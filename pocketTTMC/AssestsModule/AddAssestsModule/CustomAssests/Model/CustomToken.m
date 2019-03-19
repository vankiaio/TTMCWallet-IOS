//
//  CustomToken.m
//  pocketTTMC
//
//  Created by ttmcchain on 2018/7/20.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import "CustomToken.h"

@implementation CustomToken

+(NSDictionary *)mj_replacedKeyFromPropertyName{
    return @{
             @"recommandToken_ID" : @"id"
             };
}
@end
