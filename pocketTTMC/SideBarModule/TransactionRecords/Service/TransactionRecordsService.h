//
//  TransactionRecordsService.h
//  pocketTTMC
//
//  Created by ttmcchain on 2018/2/7.
//  Copyright © 2018年 ttmcchain. All rights reserved.
//

#import "BaseService.h"
#import "GetTransactionRecordsRequest.h"

@interface TransactionRecordsService : BaseService

@property(nonatomic, strong) GetTransactionRecordsRequest *getTransactionRecordsRequest;
- (void)buildNextPageDataSource:(CompleteBlock)complete;
@end
