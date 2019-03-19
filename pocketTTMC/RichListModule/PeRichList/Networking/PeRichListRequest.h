//
//  PeRichListRequest.h
//  pocketTTMC
//
//  Created by ttmcchain on 2018/1/25.
//  Copyright © 2018年 ttmcchain. All rights reserved.
//

#import "BaseNetworkRequest.h"

@interface PeRichListRequest : BaseNetworkRequest
/**
 一页显示的记录数
 */
@property(nonatomic, strong) NSNumber *size;

/**
 新闻起始位置
 */
@property(nonatomic, strong) NSNumber *offset;

@end
