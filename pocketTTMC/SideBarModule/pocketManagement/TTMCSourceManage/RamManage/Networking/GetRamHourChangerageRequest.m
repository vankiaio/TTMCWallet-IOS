//
//  GetRamHourChangerageRequest.m
//  pocketTTMC
//
//  Created by ttmcchain on 2018/10/29.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import "GetRamHourChangerageRequest.h"

@implementation GetRamHourChangerageRequest
-(NSString *)requestUrlPath{
    return [NSString stringWithFormat:@"%@/ttmcDataConditionSearchRam/GetHourChangerage", REQUEST_HISTORY_HTTP];
}

@end
