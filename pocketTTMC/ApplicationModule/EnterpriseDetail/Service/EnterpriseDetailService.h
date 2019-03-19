//
//  EnterpriseDetailService.h
//  pocketTTMC
//
//  Created by ttmcchain on 2018/1/30.
//  Copyright © 2018年 ttmcchain. All rights reserved.
//

#import "BaseService.h"
#import "GetEnterpriseDetailRequest.h"

@interface EnterpriseDetailService : BaseService

@property(nonatomic, strong) NSMutableArray *recommandApplicationDataArray;
@property(nonatomic, strong) GetEnterpriseDetailRequest *getEnterpriseDetailRequest;
@end
