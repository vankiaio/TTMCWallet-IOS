//
//  RecommandTokenResult.h
//  pocketTTMC
//
//  Created by ttmcchain on 2018/7/18.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import "BaseResult.h"

@interface RecommandTokenResult : BaseResult
@property(nonatomic, strong) NSMutableArray *assetCategoryList;
@property(nonatomic, strong) NSMutableArray *followAssetIds;
@property(nonatomic, strong) NSMutableDictionary *data;
@end
