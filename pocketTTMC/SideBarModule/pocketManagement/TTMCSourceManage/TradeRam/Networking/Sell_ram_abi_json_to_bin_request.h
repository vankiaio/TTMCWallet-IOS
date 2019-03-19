//
//  Sell_ram_abi_json_to_bin_request.h
//  pocketTTMC
//
//  Created by ttmcchain on 2018/6/22.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import "BaseHttpsNetworkRequest.h"

@interface Sell_ram_abi_json_to_bin_request : BaseHttpsNetworkRequest
@property(nonatomic, copy) NSString *code;
@property(nonatomic, copy) NSString *action;
@property(nonatomic, copy) NSString *account;
@property(nonatomic, strong) NSNumber *bytes;
@end
