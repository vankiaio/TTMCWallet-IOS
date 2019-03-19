//
//  GetRedPacketRecordRequest.h
//  pocketTTMC
//
//  Created by ttmcchain on 20/04/2018.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import "BaseNetworkRequest.h"


@interface GetRedPacketRecordRequest : BaseNetworkRequest
// 获取红包记录

/**
 账号
 */
@property(nonatomic, copy) NSString *account;

/**
 类型 TTMC OCT
 */
@property(nonatomic, copy) NSString *type;

@end
