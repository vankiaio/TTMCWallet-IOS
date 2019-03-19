//
//  GetAssetCategoryAllRequest.m
//  pocketTTMC
//
//  Created by ttmcchain on 2018/1/25.
//  Copyright © 2018年 ttmcchain. All rights reserved.
//

#import "GetAssetCategoryAllRequest.h"

@implementation GetAssetCategoryAllRequest

-(NSString *)requestUrlPath{
    return [NSString stringWithFormat:@"%@/getAssetCategoryAll", REQUEST_PERSONAL_BASEURL];
}

@end
