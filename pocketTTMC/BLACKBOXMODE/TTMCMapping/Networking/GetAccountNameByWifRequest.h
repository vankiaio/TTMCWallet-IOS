//
//  GetAccountNameByWifRequest.h
//  pocketTTMC
//
//  Created by ttmcchain on 2018/6/13.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import "BaseNetworkRequest.h"

@interface GetAccountNameByWifRequest : BaseNetworkRequest
@property(nonatomic , copy) NSString *public_key;
@end
