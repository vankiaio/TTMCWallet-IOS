//
//  RegularExpression.m
//  pocketTTMC
//
//  Created by ttmcchain on 2018/1/19.
//  Copyright © 2018年 ttmcchain. All rights reserved.
//

#import "RegularExpression.h"

@implementation RegularExpression
//手机号码验证
+ (BOOL) validateMobile:(NSString *)mobile
{
    //手机号以13，15，17，18开头，八个 \d 数字字符
    NSString *phoneRegex = @"^((14[0-9])|(17[0-9])|(13[0-9])|(15[^4,\\D])|(18[0,0-9]))\\d{8}$";
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",phoneRegex];
    return [predicate evaluateWithObject:mobile];
}

//验证码验证
+ (BOOL) validateVerifyCode:(NSString *)verifyCode{
    // 6位数字
    NSString *verifyCodeRegex = @"^\\d{5}$";
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",verifyCodeRegex];
    return [predicate evaluateWithObject:verifyCode];
}

//ttmc 账号名验证
+ (BOOL) validateTtmcAccountName:(NSString *)accountName{
    // 6位数字
    NSString *verifyAccountNameRegex = @"^[1-5a-z]{5,12}$";
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",verifyAccountNameRegex];
    return [predicate evaluateWithObject:accountName];
}
@end
