//
//  MessageCenterService.h
//  pocketTTMC
//
//  Created by ttmcchain on 2018/1/18.
//  Copyright © 2018年 ttmcchain. All rights reserved.
//

#import "BaseService.h"
#import "GetMessageListRequest.h"

@interface MessageCenterService : BaseService
@property(nonatomic, strong) GetMessageListRequest *getMessageListRequest;

- (void)buildNextPageDataSource:(CompleteBlock)complete;

@end
