//
//  GetNowVoteWeightRequest.m
//  pocketTTMC
//
//  Created by ttmcchain on 2018/6/12.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import "GetNowVoteWeightRequest.h"

@implementation GetNowVoteWeightRequest
- (NSString *)requestUrlPath{
    return [NSString stringWithFormat:@"%@/votettmcchain/GetNowVoteWeight", REQUEST_BP_BASEURL];
}


@end
