//
//  GetRateRequest.h
//  pocketTTMC
//
//  Created by ttmcchain on 2018/3/22.
//  Copyright © 2018年 ttmcchain. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GetRateRequest : BaseHttpsNetworkRequest
/**
 coinmarket_id
 */
@property(nonatomic, strong) NSString *coinmarket_id;
@end
