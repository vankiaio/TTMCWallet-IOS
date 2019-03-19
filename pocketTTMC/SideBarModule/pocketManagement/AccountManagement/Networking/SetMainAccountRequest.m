//
//  SetMainAccountRequest.m
//  pocketTTMC
//
//  Created by ttmcchain on 2018/1/31.
//  Copyright © 2018年 ttmcchain. All rights reserved.
//

#import "SetMainAccountRequest.h"

@implementation SetMainAccountRequest
-(NSString *)requestUrlPath{
    return [NSString stringWithFormat:@"%@/user/toggleTtmcMain", REQUEST_PERSONAL_BASEURL];;
}
-(id)parameters{
    return @{@"uid" : VALIDATE_STRING(self.uid),
             @"ttmcAccountName" : VALIDATE_STRING(self.ttmcAccountName)};
}
@end
