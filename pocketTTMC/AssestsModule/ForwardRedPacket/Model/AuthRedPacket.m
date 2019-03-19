//
//  AuthRedPacket.m
//  pocketTTMC
//
//  Created by ttmcchain on 2018/7/2.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import "AuthRedPacket.h"

@implementation AuthRedPacket

+(NSDictionary *)mj_replacedKeyFromPropertyName{
    return @{
             @"redpacket_id" : @"id"
             
             };
}

@end
