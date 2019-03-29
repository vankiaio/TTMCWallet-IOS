//
//  GetAssestLockRecordsRequest.h
//  pocketTTMC
//
//  Created by ttmcchain on 2018/2/7.
//  Copyright © 2018年 ttmcchain. All rights reserved.
//

#import "BaseNetworkRequest.h"

@interface GetAssestLockRecordsRequest : BaseNetworkRequest

@property(nonatomic, copy) NSString *account_name;

@end
