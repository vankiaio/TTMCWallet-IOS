//
//  GetAccountAssetRequest.h
//  pocketTTMC
//
//  Created by ttmcchain on 2018/1/23.
//  Copyright © 2018年 ttmcchain. All rights reserved.
//

#import "BaseNetworkRequest.h"
//（老版本）/
@interface GetAccountAssetRequest : BaseHttpsNetworkRequest

/**
 账号名
 */
@property(nonatomic, strong) NSString *name;
@end
