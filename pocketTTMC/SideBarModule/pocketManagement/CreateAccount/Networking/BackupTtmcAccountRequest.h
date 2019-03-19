//
//  BackupTtmcAccountRequest.h
//  pocketTTMC
//
//  Created by ttmcchain on 2018/1/23.
//  Copyright © 2018年 ttmcchain. All rights reserved.
//

#import "BaseNetworkRequest.h"


/**
 给用户添加新的ttmc账号
 */
@interface BackupTtmcAccountRequest : BaseNetworkRequest

/**
 用户uid
 */
@property(nonatomic, copy) NSString *uid;

/**
 ttmc账号名
 */
@property(nonatomic, copy) NSString *ttmcAccountName;


@end
