//
//  Get_account_assetsService.h
//  pocketTTMC
//
//  Created by ttmcchain on 2018/10/20.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import "BaseService.h"
#import "Get_account_assetsRequest.h"

NS_ASSUME_NONNULL_BEGIN

@interface Get_account_assetsService : BaseService
@property(nonatomic , strong) Get_account_assetsRequest *get_account_assetsRequest;


- (void)get_account_assets:(CompleteBlock)complete;

@end

NS_ASSUME_NONNULL_END
