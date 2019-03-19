//
//  GetRedPacketRecordRequest.m
//  pocketTTMC
//
//  Created by ttmcchain on 20/04/2018.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import "GetRedPacketRecordRequest.h"

@implementation GetRedPacketRecordRequest

- (NSString *)requestUrlPath{
    return [NSString stringWithFormat:@"%@/select_user_red_packet", REQUEST_REDPACKET_BASEURL];
//    return @"http://47.105.99.78/api_oc_redpacket/select_user_red_packet";
}

-(id)parameters{
    NSMutableDictionary *params = [NSMutableDictionary dictionary];
    [params setObject:VALIDATE_STRING(self.account) forKey:@"account"];
    [params setObject:VALIDATE_STRING(self.type) forKey:@"type"];
    return [params clearEmptyObject];
}

@end
