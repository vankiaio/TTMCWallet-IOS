//
//  AssestLockRecordsService.h
//  pocketTTMC
//
//  Created by ttmcchain on 2018/2/7.
//  Copyright © 2018年 ttmcchain. All rights reserved.
//

#import "BaseService.h"
#import "GetAssestLockRecordsRequest.h"
#import "AssestLocksResult.h"

@interface AssestLockRecordsService : BaseService
@property(nonatomic, strong) AssestLocksResult *assestLocksResult;
@property(nonatomic, strong) GetAssestLockRecordsRequest *getAssestLockRecordsRequest;
- (void)buildNextPageDataSource:(CompleteBlock)complete;
@end
