//
//  RedPacketRecord.m
//  pocketTTMC
//
//  Created by ttmcchain on 20/04/2018.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import "RedPacketRecord.h"

@implementation RedPacketRecord
+(NSDictionary *)mj_replacedKeyFromPropertyName{
     return @{@"redPacket_id" : @"id" };
}
@end
