//
//  RegularExpression.h
//  pocketTTMC
//
//  Created by ttmcchain on 2018/1/19.
//  Copyright © 2018年 ttmcchain. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RegularExpression : NSObject

//手机号码验证
+ (BOOL) validateMobile:(NSString *)mobile;

//验证码验证
+ (BOOL) validateVerifyCode:(NSString *)verifyCode;

//ttmc 账号名验证
+ (BOOL) validateTtmcAccountName:(NSString *)accountName;
@end
