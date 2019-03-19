//
//  VipRegistAccountService.h
//  pocketTTMC
//
//  Created by ttmcchain on 2018/7/31.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import "BaseService.h"
#import "InviteCodeRegisterRequest.h"

@interface VipRegistAccountService : BaseService

@property(nonatomic , strong) InviteCodeRegisterRequest *inviteCodeRegisterRequest;

- (void)createTTMCAccount:(CompleteBlock)complete;


@end
