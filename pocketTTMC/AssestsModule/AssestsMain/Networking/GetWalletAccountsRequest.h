//
//  GetWalletAccountsRequest.h
//  pocketTTMC
//
//  Created by ttmcchain on 2018/1/31.
//  Copyright © 2018年 ttmcchain. All rights reserved.
//

#import "BaseNetworkRequest.h"


@interface GetWalletAccountsRequest : BaseNetworkRequest
@property(nonatomic, strong) NSString *uid;
@property(nonatomic, strong) NSString *fuid;
@end
