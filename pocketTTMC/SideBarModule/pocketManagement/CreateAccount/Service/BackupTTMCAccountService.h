//
//  BackupTTMCAccountService.h
//  pocketTTMC
//
//  Created by ttmcchain on 2018/6/21.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import "BaseService.h"
#import "BackupTtmcAccountRequest.h"

@interface BackupTTMCAccountService : BaseService
@property(nonatomic, strong) BackupTtmcAccountRequest *backupTtmcAccountRequest;

/**
 备份账号到服务器
 */
- (void)backupAccount:(CompleteBlock)complete;

@end
