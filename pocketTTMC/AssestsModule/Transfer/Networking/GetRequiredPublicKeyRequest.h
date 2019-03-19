//
//  GetRequiredPublicKeyRequest.h
//  pocketTTMC
//
//  Created by ttmcchain on 2018/3/21.
//  Copyright © 2018年 ttmcchain. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GetRequiredPublicKeyRequest : BaseHttpsNetworkRequest
@property(nonatomic, copy) NSString *ref_block_prefix;
@property(nonatomic, copy) NSString *ref_block_num;
@property(nonatomic, copy) NSString *expiration;

@property(nonatomic, copy) NSString *sender;

@property(nonatomic, copy) NSString *data;
// contract
@property(nonatomic, copy) NSString *account;
// name : transfer / ask 
@property(nonatomic , copy) NSString *name;
@property(nonatomic, strong) NSArray *available_keys;

@property(nonatomic , copy) NSString *permission;

@end
