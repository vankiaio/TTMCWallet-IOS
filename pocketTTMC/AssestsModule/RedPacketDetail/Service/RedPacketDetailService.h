//
//  RedPacketDetailService.h
//  pocketTTMC
//
//  Created by ttmcchain on 2018/7/2.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import "BaseService.h"
#import "GetRedPacketDetailRequest.h"

@interface RedPacketDetailService : BaseService
@property(nonatomic , strong) GetRedPacketDetailRequest *getRedPacketDetailRequest;

@end
