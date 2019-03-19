//
//  LoginService.h
//  pocketTTMC
//
//  Created by ttmcchain on 2018/1/19.
//  Copyright © 2018年 ttmcchain. All rights reserved.
//

#import "BaseService.h"
#import "GetVerifyCodeRequest.h"
#import "AuthVerifyCodeRequest.h"
#import "GetUserInfoRequest.h"

@interface LoginService : BaseService

@property(nonatomic, strong) GetVerifyCodeRequest *getVerifyCodeRequest;

@property(nonatomic, strong) AuthVerifyCodeRequest *authVerifyCodeRequest;

@property(nonatomic , strong) GetUserInfoRequest *getUserInfoRequest;
/**
 获取验证码
 */
- (void)getVerifyCode:(CompleteBlock)complete;


/**
 认证短信码
 */
- (void)authVerifyCode:(CompleteBlock)complete;

/**
 获取用户信息
 */
- (void)getUserInfo:(CompleteBlock)complete;


@end
