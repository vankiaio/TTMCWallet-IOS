//
//  Get_account_assetsRequest.h
//  pocketTTMC
//
//  Created by ttmcchain on 2018/10/20.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import "BaseHttpsNetworkRequest.h"

NS_ASSUME_NONNULL_BEGIN


/**
 （新版本，支持新上币）
 */
@interface Get_account_assetsRequest : BaseHttpsNetworkRequest
/**
 
 */
@property(nonatomic , strong) NSArray *accountInfoArr;


@end

NS_ASSUME_NONNULL_END
