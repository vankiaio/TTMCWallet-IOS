//
//  RedPacketRecord.h
//  pocketTTMC
//
//  Created by ttmcchain on 20/04/2018.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import <Foundation/Foundation.h>


/**
 红包记录详情
 */
@interface RedPacketRecord : NSObject

/**
 当isSend为true时，表示剩余红包数，当isSend为false时，，没有该字段
 */
@property(nonatomic, strong) NSNumber *residueCount;

/**
 当isSend为true时，表示 发送的红包个数，当isSend为false时，，没有该字段
 */
@property(nonatomic,  strong) NSNumber *packetCount;

/**
 当isSend为true时，表示 发送的总金额，当isSend为false时，表示领取的红包金额
 */
@property(nonatomic, copy) NSString *amount;

/**
 TTMC 或 OCT
 */
@property(nonatomic, copy) NSString *type;


/**
 时间 已经排序
 */
@property(nonatomic, copy) NSString *createTime;

/**
 为true是发送信息，false表示领取信息
 */
@property(nonatomic, assign) BOOL isSend;

/**
 当issend为true是，表示红包剩余金额，为false时没有该字段
 */
@property(nonatomic, copy) NSString *residueAmount;

/**
 红包的id
 */
@property(nonatomic, copy) NSString *redPacket_id;

/**
 红包id校验字段 isSend为false没有该字段
 */
@property(nonatomic, copy) NSString *verifyString;

/**
 状态 当issend为true时,0: 正常可以领取，1:等待主网确认,3:已经领取完毕,4:已经退回,5:失败红包，当issend为false时,0:等待发放，1发放成功
 */
@property(nonatomic , strong) NSNumber *status;

@property(nonatomic , copy) NSString *memo;

@property(nonatomic , copy) NSString *fromAccount;
@end
