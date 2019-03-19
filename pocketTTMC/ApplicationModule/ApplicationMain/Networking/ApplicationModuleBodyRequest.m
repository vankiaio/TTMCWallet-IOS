//
//  ApplicationModuleBodyRequest.m
//  pocketTTMC
//
//  Created by ttmcchain on 2018/1/27.
//  Copyright © 2018年 ttmcchain. All rights reserved.
//

#import "ApplicationModuleBodyRequest.h"

@implementation ApplicationModuleBodyRequest
-(NSString *)requestUrlPath{
    return [NSString stringWithFormat:@"%@/enterprise/intro_all_app", REQUEST_PERSONAL_BASEURL];
}
@end
