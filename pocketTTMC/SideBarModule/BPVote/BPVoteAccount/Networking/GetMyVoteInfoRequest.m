//
//  GetMyVoteInfoRequest.m
//  pocketTTMC
//
//  Created by ttmcchain on 2018/6/12.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import "GetMyVoteInfoRequest.h"

@implementation GetMyVoteInfoRequest
- (NSString *)requestUrlPath{
    return [NSString stringWithFormat:@"%@/votettmcchain/GetMyVoteInfo", REQUEST_BP_BASEURL];
}

-(id)parameters{
    return @{@"accountNameStr": VALIDATE_STRING(self.accountNameStr)};
}
@end
