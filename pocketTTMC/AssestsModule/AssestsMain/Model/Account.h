//
//  Account.h
//  pocketTTMC
//
//  Created by ttmcchain on 2018/1/23.
//  Copyright © 2018年 ttmcchain. All rights reserved.
//

#import <Foundation/Foundation.h>


/**
 ttmc账号, 
 */
@interface Account : NSObject

/**
 ttmc账号名
 */
@property(nonatomic, copy) NSString *account_name;

/**
 ttmc账号头像
 */
@property(nonatomic, copy) NSString *account_icon;
/**
 ttmc数量
 */
@property(nonatomic, copy) NSString *ttmc_balance;

/**
 ttmc数量对应美元价值
 */
@property(nonatomic, copy) NSString *ttmc_balance_usd;

/**
 ttmc数量对应人民币价值
 */
@property(nonatomic, copy) NSString *ttmc_balance_cny;

/**
 ttmc价格波动
 */
@property(nonatomic, copy) NSString *ttmc_price_change_in_24h;

/**
 ttmc市场总值对应美元
 */
@property(nonatomic, copy) NSString *ttmc_market_cap_usd;


/**
 市场总值对应人民币
 */
@property(nonatomic, copy) NSString *ttmc_market_cap_cny;

/**
 美元汇率
 */
@property(nonatomic, copy) NSString *ttmc_price_usd;

/**
 人民币汇率
 */
@property(nonatomic, copy) NSString *ttmc_price_cny;


/**
 staked token
 */

@property(nonatomic , copy) NSString *ttmc_net_weight;

@property(nonatomic , copy) NSString *ttmc_cpu_weight;


//===================================//
/**
 oct数量
 */
@property(nonatomic, copy) NSString *oct_balance;

/**
 oct数量对应美元价值
 */
@property(nonatomic, copy) NSString *oct_balance_usd;

/**
 
 oct数量对应人民币价值
 */
@property(nonatomic, copy) NSString *oct_balance_cny;

/**
oct价格波动
 */
@property(nonatomic, copy) NSString *oct_price_change_in_24h;

/**
 市场总值对应美元
 */
@property(nonatomic, copy) NSString *oct_market_cap_usd;


/**
 市场总值对应人民币
 */
@property(nonatomic, copy) NSString *oct_market_cap_cny;

/**
 美元汇率
 */
@property(nonatomic, copy) NSString *oct_price_usd;

/**
 人民币汇率
 */
@property(nonatomic, copy) NSString *oct_price_cny;


@end
