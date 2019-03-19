//
//  CreateAccountRequest.h
//  pocketTTMC
//
//  Created by ttmcchain on 2018/1/19.
//  Copyright © 2018年 ttmcchain. All rights reserved.
//

#import "BaseNetworkRequest.h"

//@interface CreateAccountRequest : BaseNetworkRequest
@interface CreateAccountRequest : BaseHttpsNetworkRequest

@property(nonatomic, strong) NSString *account_name;
@property(nonatomic, strong) NSString *owner_key;
@property(nonatomic, strong) NSString *active_key;

@end
