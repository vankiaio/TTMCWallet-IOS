//
//  Auth_redpacket_request.m
//  pocketTTMC
//
//  Created by ttmcchain on 2018/7/2.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import "Auth_redpacket_request.h"

@implementation Auth_redpacket_request
- (NSString *)requestUrlPath{
    return [NSString stringWithFormat:@"%@/getOrderInfo", REQUEST_REDPACKET_BASEURL];
//    return @"http://47.105.99.78/api_oc_redpacket/getOrderInfo";
}

-(id)parameters{
    NSMutableDictionary *params = [NSMutableDictionary dictionary];
    [params setObject:VALIDATE_STRING(self.redPacket_id) forKey:@"id"];
    return [params clearEmptyObject];
}




@end
