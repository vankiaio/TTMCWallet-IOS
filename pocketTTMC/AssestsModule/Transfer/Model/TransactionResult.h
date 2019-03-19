//
//  TransactionResult.h
//  pocketTTMC
//
//  Created by ttmcchain on 2018/3/22.
//  Copyright © 2018年 ttmcchain. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 交易 Model
 */
@interface TransactionResult : NSObject
@property(nonatomic, strong) NSNumber *code;
@property(nonatomic, strong) NSString *message;
@property(nonatomic, strong) NSDictionary *data;
@property(nonatomic , strong) NSString *error;
@property(nonatomic , copy) NSString *transaction_id;
@property(nonatomic , copy) NSString *tag;
@end
