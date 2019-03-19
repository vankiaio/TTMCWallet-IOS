//
//  RedPacketDetail.m
//  pocketTTMC
//
//  Created by ttmcchain on 20/04/2018.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import "RedPacketDetail.h"

@implementation RedPacketDetail

+(NSDictionary *)mj_replacedKeyFromPropertyName{
    return @{
             @"residueCount" : @"statistics.residueCount",
             @"residueAmount" : @"statistics.residueAmount",
             @"packetCount" : @"statistics.packetCount",
             @"amount" : @"statistics.amount",
             @"isSend" : @"statistics.isSend",
             @"status" : @"statistics.status",
             @"type" : @"redPacketOrderRedisDtos[0].type"
             };
}

+ (NSDictionary *)mj_objectClassInArray{
    return @{
             @"redPacketOrderRedisDtos" : @"RedPacketDetailSingleAccount"
             };
}

@end
