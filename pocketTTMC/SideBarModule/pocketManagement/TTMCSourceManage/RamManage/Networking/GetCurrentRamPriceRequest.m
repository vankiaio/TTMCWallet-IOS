//
//  GetCurrentRamPriceRequest.m
//  pocketTTMC
//
//  Created by ttmcchain on 2018/10/29.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import "GetCurrentRamPriceRequest.h"

@implementation GetCurrentRamPriceRequest


-(NSString *)requestUrlPath{
    return [NSString stringWithFormat:@"%@/ttmcDataConditionSearchRam/GetRamTrades", REQUEST_HISTORY_HTTP];
}


@end
