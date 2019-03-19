//
//  UnstakeTtmcAbiJsonTobinRequest.h
//  pocketTTMC
//
//  Created by ttmcchain on 2018/6/15.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import "BaseHttpsNetworkRequest.h"

@interface UnstakeTtmcAbiJsonTobinRequest : BaseHttpsNetworkRequest
@property(nonatomic, copy) NSString *code;
@property(nonatomic, copy) NSString *action;
@property(nonatomic, copy) NSString *from;
@property(nonatomic, copy) NSString *receiver;
@property(nonatomic, copy) NSString *unstake_net_quantity;
@property(nonatomic, copy) NSString *unstake_cpu_quantity;



@end
