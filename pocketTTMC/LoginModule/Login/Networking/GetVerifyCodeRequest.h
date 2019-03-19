//
//  GetVerifyCodeRequest.h
//  pocketTTMC
//
//  Created by ttmcchain on 2018/1/19.
//  Copyright © 2018年 ttmcchain. All rights reserved.
//

#import "BaseNetworkRequest.h"

@interface GetVerifyCodeRequest : BaseNetworkRequest

/**
 手机号
 */
@property(nonatomic, copy) NSString *phoneNum;


/**
 地区识别号 不用传“+”不传默认是86
 */
@property(nonatomic, copy) NSString *type;
@end
