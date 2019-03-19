//
//  BaseResult.h
//  pocketTTMC
//
//  Created by ttmcchain on 2018/7/4.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BaseResult : NSObject
@property(nonatomic , strong) NSNumber *code;
@property(nonatomic , copy) NSString *message;
@property(nonatomic , copy) NSString *msg;

@end
