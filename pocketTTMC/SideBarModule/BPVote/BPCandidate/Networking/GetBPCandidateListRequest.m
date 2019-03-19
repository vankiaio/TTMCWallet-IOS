//
//  GetBPCandidateListRequest.m
//  pocketTTMC
//
//  Created by ttmcchain on 2018/6/9.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import "GetBPCandidateListRequest.h"

@implementation GetBPCandidateListRequest

- (NSString *)requestUrlPath{
    
    return [NSString stringWithFormat:@"%@/votettmcchain/GetBpJson", REQUEST_BP_BASEURL];
}

- (id)parameters{
    return @{
             @"pageNum" : VALIDATE_STRING(self.pageNum),
             @"pageSize" : VALIDATE_STRING(self.pageSize),
             @"accountName" : VALIDATE_STRING(self.accountName)
             };
}

@end

