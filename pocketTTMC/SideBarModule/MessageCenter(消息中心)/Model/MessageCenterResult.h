//
//  MessageCenterResult.h
//  pocketTTMC
//
//  Created by ttmcchain on 2018/1/29.
//  Copyright © 2018年 ttmcchain. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MessageCenterResult : NSObject

@property(nonatomic, strong) NSString *message;


@property(nonatomic, strong) NSNumber *code;
@property(nonatomic, strong) NSMutableArray *data;

@end
