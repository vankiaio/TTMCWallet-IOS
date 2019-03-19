//
//  AccountOrderStatusResult.h
//  pocketTTMC
//
//  Created by ttmcchain on 2018/8/8.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import "BaseResult.h"
#import "AccountOrderStatus.h"

@interface AccountOrderStatusResult : BaseResult
@property(nonatomic , strong) AccountOrderStatus *data;
@end
