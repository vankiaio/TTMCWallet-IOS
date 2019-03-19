//
//  VipRegistAccountService.m
//  pocketTTMC
//
//  Created by ttmcchain on 2018/7/31.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import "VipRegistAccountService.h"

@implementation VipRegistAccountService

- (InviteCodeRegisterRequest *)inviteCodeRegisterRequest{
    if (!_inviteCodeRegisterRequest) {
        _inviteCodeRegisterRequest = [[InviteCodeRegisterRequest alloc] init];
    }
    return _inviteCodeRegisterRequest;
}

- (void)createTTMCAccount:(CompleteBlock)complete{
    [self.inviteCodeRegisterRequest postOuterDataSuccess:^(id DAO, id data) {
        if ([data isKindOfClass:[NSDictionary class]]) {
            complete(data , YES);
        }
    } failure:^(id DAO, NSError *error) {
        complete(nil, NO);
    }];
}

@end
