//
//  Abi_json_to_bin_Result.h
//  pocketTTMC
//
//  Created by ttmcchain on 2018/8/13.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import "BaseResult.h"
#import "Abi_json_to_bin.h"

@interface Abi_json_to_bin_Result : BaseResult
@property(nonatomic , strong) Abi_json_to_bin *data;
@end
