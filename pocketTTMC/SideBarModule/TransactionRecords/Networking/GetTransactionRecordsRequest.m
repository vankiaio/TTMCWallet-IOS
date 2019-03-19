//
//  GetTransactionRecordsRequest.m
//  pocketTTMC
//
//  Created by ttmcchain on 2018/2/7.
//  Copyright © 2018年 ttmcchain. All rights reserved.
//

#import "GetTransactionRecordsRequest.h"

@implementation GetTransactionRecordsRequest
-(NSString *)requestUrlPath{
    return [NSString stringWithFormat:@"%@/VX/GetActions", REQUEST_TRANSACTION_RECORDS];
}

-(id)parameters{
    return @{
             @"symbols"  : VALIDATE_ARRAY(self.symbols),
             @"from"  : VALIDATE_STRING(self.from),
             @"to"  : VALIDATE_NUMBER(self.to),
             @"page"  : VALIDATE_NUMBER(self.page),
             @"pageSize"  : VALIDATE_NUMBER(self.pageSize),
             @"lastPageLastBlockNum"  : VALIDATE_NUMBER(self.lastPageLastBlockNum)
             };
}
@end
