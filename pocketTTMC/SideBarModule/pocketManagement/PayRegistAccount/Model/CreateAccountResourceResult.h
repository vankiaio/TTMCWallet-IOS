//
//  CreateAccountResourceResult.h
//  pocketTTMC
//
//  Created by ttmcchain on 2018/8/7.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import "BaseResult.h"
#import "CreateAccountResourceRespModel.h"

@interface CreateAccountResourceResult : BaseResult
@property(nonatomic , strong) CreateAccountResourceRespModel *data;
@end
