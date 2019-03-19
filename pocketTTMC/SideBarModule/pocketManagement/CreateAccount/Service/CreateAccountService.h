//
//  CreateAccountService.h
//  pocketTTMC
//
//  Created by ttmcchain on 2018/1/19.
//  Copyright © 2018年 ttmcchain. All rights reserved.
//

#import "BaseService.h"
#import "CreateAccountRequest.h"
#import "BackupTtmcAccountRequest.h"
#import "CreateTTMCAccountRequest.h"

@interface CreateAccountService : BaseService
@property(nonatomic, strong) CreateAccountRequest *createAccountRequest;
@property(nonatomic, strong) BackupTtmcAccountRequest *backupTtmcAccountRequest;
@property(nonatomic , strong) CreateTTMCAccountRequest *createTTMCAccountRequest;

- (void)createAccount:(CompleteBlock)complete;


/**
 备份账号到服务器
 */
- (void)backupAccount:(CompleteBlock)complete;

- (void)createTTMCAccount:(CompleteBlock)complete;


@end
