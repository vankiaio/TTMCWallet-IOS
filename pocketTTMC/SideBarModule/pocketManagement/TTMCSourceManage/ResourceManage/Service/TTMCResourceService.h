//
//  TTMCResourceService.h
//  pocketTTMC
//
//  Created by ttmcchain on 2018/6/21.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import "BaseService.h"
#import "GetAccountRequest.h"
#import "TTMCResourceResult.h"
#import "TTMCResource.h"
#import "TTMCResourceCellModel.h"


@interface TTMCResourceService : BaseService
@property(nonatomic, strong) GetAccountRequest *getAccountRequest;

@property(nonatomic , strong) TTMCResourceResult *ttmcResourceResult;
/**
 账号资产详情
 */
- (void)get_account:(CompleteBlock)complete;



@end
