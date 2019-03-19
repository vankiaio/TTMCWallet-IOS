//
//  GetTokenInfoResult.h
//  pocketTTMC
//
//  Created by ttmcchain on 2018/7/19.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import "BaseResult.h"
#import "TokenInfo.h"

@interface GetTokenInfoResult : BaseResult

@property(nonatomic, strong) NSMutableArray *data;

@end
