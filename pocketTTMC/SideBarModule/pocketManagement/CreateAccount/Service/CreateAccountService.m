//
//  CreateAccountService.m
//  pocketTTMC
//
//  Created by ttmcchain on 2018/1/19.
//  Copyright © 2018年 ttmcchain. All rights reserved.
//

#import "CreateAccountService.h"


@implementation CreateAccountService

- (CreateAccountRequest *)createAccountRequest{
    if (!_createAccountRequest) {
        _createAccountRequest = [[CreateAccountRequest alloc] init];
    }
    return _createAccountRequest;
}

- (BackupTtmcAccountRequest *)backupTtmcAccountRequest{
    if (!_backupTtmcAccountRequest) {
        _backupTtmcAccountRequest = [[BackupTtmcAccountRequest alloc] init];
    }
    return _backupTtmcAccountRequest;
}

- (CreateTTMCAccountRequest *)createTTMCAccountRequest{
    if (!_createTTMCAccountRequest) {
        _createTTMCAccountRequest = [[CreateTTMCAccountRequest alloc] init];
    }
    return _createTTMCAccountRequest;
}
- (void)createAccount:(CompleteBlock)complete{
    [self.createAccountRequest setShowActivityIndicator:YES];
    [self.createAccountRequest postDataSuccess:^(id DAO, id data) {
        complete(data , YES);
    } failure:^(id DAO, NSError *error) {
        NSLog(@"responseERROR:%@", [NSJSONSerialization JSONObjectWithData:error.userInfo[AFNetworkingOperationFailingURLResponseDataErrorKey] options:NSJSONReadingMutableContainers error:nil]);
    }];
}


/**
 备份账号到服务器
 */
- (void)backupAccount:(CompleteBlock)complete{
    
    [self.backupTtmcAccountRequest postDataSuccess:^(id DAO, id data) {
        if ([data isKindOfClass:[NSDictionary class]]) {
            complete(data , YES);
        }
    } failure:^(id DAO, NSError *error) {
        complete(nil, NO);
    }];
    
}

- (void)createTTMCAccount:(CompleteBlock)complete{
    [self.createTTMCAccountRequest postDataSuccess:^(id DAO, id data) {
        if ([data isKindOfClass:[NSDictionary class]]) {
            complete(data , YES);
        }
    } failure:^(id DAO, NSError *error) {
        complete(nil, NO);
    }];
}

@end
