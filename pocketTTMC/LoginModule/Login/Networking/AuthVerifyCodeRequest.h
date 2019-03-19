//
//  AuthVerifyCodeRequest.h
//  pocketTTMC
//
//  Created by ttmcchain on 2018/1/19.
//  Copyright © 2018年 ttmcchain. All rights reserved.
//

#import "BaseNetworkRequest.h"

@interface AuthVerifyCodeRequest : BaseNetworkRequest

/**
 手机号
 */
@property(nonatomic, copy) NSString *phoneNum;
/**
 验证码
 */
@property(nonatomic, copy) NSString *code;
@end
