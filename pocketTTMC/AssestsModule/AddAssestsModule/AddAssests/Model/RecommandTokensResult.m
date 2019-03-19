//
//  RecommandTokensResult.m
//  pocketTTMC
//
//  Created by ttmcchain on 2018/7/19.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import "RecommandTokensResult.h"

@implementation RecommandTokensResult
+(NSDictionary *)mj_objectClassInArray{
    return @{
             @"assetCategoryList" : @"RecommandToken",
             @"followAssetIds" : @"NSString"
              };
}
@end
