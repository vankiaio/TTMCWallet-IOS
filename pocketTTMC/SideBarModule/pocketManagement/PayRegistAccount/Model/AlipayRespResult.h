//
//  AlipayRespResult.h
//  pocketTTMC
//
//  Created by ttmcchain on 2018/8/7.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import "BaseResult.h"

@interface AlipayRespResult : BaseResult
@property(nonatomic , copy) NSString *data;
@end