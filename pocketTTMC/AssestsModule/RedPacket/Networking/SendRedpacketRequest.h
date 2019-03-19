//
//  SendRedpacketRequest.h
//  pocketTTMC
//
//  Created by ttmcchain on 16/04/2018.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import "BaseNetworkRequest.h"

@interface SendRedpacketRequest : BaseNetworkRequest


/**
 用户id
 */
@property(nonatomic, copy) NSString *uid;

/**
 账号
 */
@property(nonatomic, copy) NSString *account;

/**
 发红包金额
 */
@property(nonatomic, strong) NSNumber *amount;

/**
 红包个数
 */
@property(nonatomic, strong) NSNumber *packetCount;

/**
 可以不传 默认为TTMC OCT
 */
@property(nonatomic, copy) NSString *type;


/**
 memo
 */
@property(nonatomic, copy) NSString *remark;

@end
