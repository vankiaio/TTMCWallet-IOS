//
//  GetFeedbackListRequest.h
//  pocketTTMC
//
//  Created by ttmcchain on 2018/1/29.
//  Copyright © 2018年 ttmcchain. All rights reserved.
//

#import "BaseNetworkRequest.h"

@interface GetFeedbackListRequest : BaseNetworkRequest
/**
 一页显示的记录数
 */
@property(nonatomic, strong) NSNumber *size;

/**
 起始位置
 */
@property(nonatomic, strong) NSNumber *offset;

@property(nonatomic , strong) NSNumber *uid;

@end
