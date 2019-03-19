//
//  TransactionResult.m
//  pocketTTMC
//
//  Created by ttmcchain on 2018/3/22.
//  Copyright © 2018年 ttmcchain. All rights reserved.
//

#import "TransactionResult.h"

@implementation TransactionResult
+(NSDictionary *)mj_replacedKeyFromPropertyName{
    return @{
             @"transaction_id" : @"data.transaction_id",
             @"error" : @"data"
             };
}
@end
