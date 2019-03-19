//
//  GetAccountOrderStatusRequest.h
//  pocketTTMC
//
//  Created by ttmcchain on 2018/8/8.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import "BaseNetworkRequest.h"

@interface GetAccountOrderStatusRequest : BaseNetworkRequest
@property(nonatomic , copy) NSString *accountName;
@property(nonatomic , copy) NSString *uid;
@end
