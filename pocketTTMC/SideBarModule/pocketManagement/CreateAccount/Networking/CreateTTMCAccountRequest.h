//
//  CreateTTMCAccountRequest.h
//  pocketTTMC
//
//  Created by ttmcchain on 2018/6/21.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import "BaseNetworkRequest.h"

@interface CreateTTMCAccountRequest : BaseNetworkRequest
/**
 用户uid
 */
@property(nonatomic, copy) NSString *uid;

/**
 ttmc账号名
 */
@property(nonatomic, copy) NSString *ttmcAccountName;

/**
 activeKey
 */
@property(nonatomic, copy) NSString *activeKey;

/**
 onwerKey
 */
@property(nonatomic, copy) NSString *ownerKey;


@end
