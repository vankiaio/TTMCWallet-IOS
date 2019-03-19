//
//  MessageFeedbackService.h
//  pocketTTMC
//
//  Created by ttmcchain on 2018/1/29.
//  Copyright © 2018年 ttmcchain. All rights reserved.
//

#import "BaseService.h"
#import "GetFeedbackListRequest.h"
#import "PostFeedbackRequest.h"

@interface MessageFeedbackService : BaseService
@property(nonatomic, strong) GetFeedbackListRequest *getFeedbackListRequest;
@property(nonatomic, strong) PostFeedbackRequest *postFeedbackRequest;

- (void)buildNextPageDataSource:(CompleteBlock)complete;
@end
