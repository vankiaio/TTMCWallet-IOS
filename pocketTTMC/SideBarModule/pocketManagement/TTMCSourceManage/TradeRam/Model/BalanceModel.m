//
//  BalanceModel.m
//  pocketTTMC
//
//  Created by ttmcchain on 2018/9/26.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import "BalanceModel.h"

@implementation BalanceModel
+(NSDictionary *)mj_replacedKeyFromPropertyName{
    return @{
             @"balance" : @"data.rows[0].balance",
             };
}
@end
