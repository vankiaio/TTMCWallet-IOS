//
//  AssestLockRecord.h
//  pocketTTMC
//
//  Created by ttmcchain on 2018/2/7.
//  Copyright © 2018年 ttmcchain. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AssestLockRecord : NSObject

/**
 锁仓资产数量
 */
@property(nonatomic, copy) NSString *assets;

/**
 解锁时间
 */
@property(nonatomic , copy) NSString *unlocktime;


@end
