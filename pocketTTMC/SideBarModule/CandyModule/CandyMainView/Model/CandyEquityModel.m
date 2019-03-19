//
//  CandyEquityModel.m
//  pocketTTMC
//
//  Created by ttmcchain on 2018/5/21.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import "CandyEquityModel.h"

@implementation CandyEquityModel
+(NSDictionary *)mj_replacedKeyFromPropertyName{
    return @{@"equity_id" : @"id" ,
             @"equity_description" : @"description"
             };
}
@end
