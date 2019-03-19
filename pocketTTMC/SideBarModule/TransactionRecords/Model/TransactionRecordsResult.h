//
//  TransactionRecordsResult.h
//  pocketTTMC
//
//  Created by ttmcchain on 2018/2/7.
//  Copyright © 2018年 ttmcchain. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TransactionRecordsResult : NSObject
@property(nonatomic, strong) NSString *msg;


@property(nonatomic, strong) NSNumber *code;
@property(nonatomic, strong) NSMutableDictionary *data;

@end
