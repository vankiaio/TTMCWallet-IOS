//
//  TransactionsResult.m
//  pocketTTMC
//
//  Created by ttmcchain on 2018/2/7.
//  Copyright © 2018年 ttmcchain. All rights reserved.
//

#import "TransactionsResult.h"

@implementation TransactionsResult
+(NSDictionary *)mj_objectClassInArray{
    return @{ @"actions" : @"TransactionRecord"};
}
@end
