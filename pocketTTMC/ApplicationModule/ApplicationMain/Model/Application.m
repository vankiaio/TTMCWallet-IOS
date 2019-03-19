//
//  Application.m
//  pocketTTMC
//
//  Created by ttmcchain on 2017/12/15.
//  Copyright © 2017年 ttmcchain. All rights reserved.
//

#import "Application.h"

@implementation Application
+ (NSDictionary *)mj_replacedKeyFromPropertyName{
    return @{ @"application_id" : @"id"};
}
@end
