//
//  TTMCResourceResult.m
//  pocketTTMC
//
//  Created by ttmcchain on 2018/6/21.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import "TTMCResourceResult.h"

@implementation TTMCResourceResult

- (TTMCResource *)data{
    if (!_data) {
        _data = [[TTMCResource alloc] init];
    }
    return _data;
}

@end
