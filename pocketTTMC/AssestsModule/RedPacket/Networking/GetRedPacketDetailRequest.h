//
//  GetRedPacketDetailRequest.h
//  pocketTTMC
//
//  Created by ttmcchain on 20/04/2018.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import "BaseNetworkRequest.h"


/**
 get redpacket detail
 */
@interface GetRedPacketDetailRequest : BaseNetworkRequest
/**
 
 */
@property(nonatomic, copy) NSString *redPacket_id;

@end
