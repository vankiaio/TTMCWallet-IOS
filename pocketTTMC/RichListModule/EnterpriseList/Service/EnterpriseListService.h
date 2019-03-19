//
//  EnterpriseListService.h
//  pocketTTMC
//
//  Created by ttmcchain on 2018/1/25.
//  Copyright © 2018年 ttmcchain. All rights reserved.
//

#import "BaseService.h"
#import "EnterpriseListRequest.h"


@interface EnterpriseListService : BaseService
@property(nonatomic, strong) EnterpriseListRequest *enterpriseListRequest;
- (void)buildNextPageDataSource:(CompleteBlock)complete;
@end
