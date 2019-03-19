
//
//  BackupTTMCAccountService.m
//  pocketTTMC
//
//  Created by ttmcchain on 2018/6/21.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import "BackupTTMCAccountService.h"
#import "BackupTtmcAccountRequest.h"

@implementation BackupTTMCAccountService

- (BackupTtmcAccountRequest *)backupTtmcAccountRequest{
    if (!_backupTtmcAccountRequest) {
        _backupTtmcAccountRequest = [[BackupTtmcAccountRequest alloc] init];
    }
    return _backupTtmcAccountRequest;
}
- (void)backupAccount:(CompleteBlock)complete{
    
    [self.backupTtmcAccountRequest postDataSuccess:^(id DAO, id data) {
        if ([data isKindOfClass:[NSDictionary class]]) {
            complete(data , YES);
        }
    } failure:^(id DAO, NSError *error) {
        complete(nil, NO);
    }];
    
}

@end
