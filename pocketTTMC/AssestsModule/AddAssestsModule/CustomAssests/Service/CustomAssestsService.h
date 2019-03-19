//
//  CustomAssestsService.h
//  pocketTTMC
//
//  Created by ttmcchain on 2018/7/17.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import "BaseService.h"
#import "Get_user_custom_token_request.h"

@interface CustomAssestsService : BaseService
@property(nonatomic , strong) Get_user_custom_token_request *get_user_custom_token_request;
@end
