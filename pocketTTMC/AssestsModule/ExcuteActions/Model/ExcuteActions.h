//
//  ExcuteActions.h
//  pocketTTMC
//
//  Created by ttmcchain on 2018/8/10.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ExcuteActions : NSObject
@property(nonatomic , copy) NSString *actor;
@property(nonatomic , copy) NSString *to;

@property(nonatomic , copy) NSString *account;

@property(nonatomic , copy) NSString *name;

@property(nonatomic , strong) NSMutableArray *authorization;

@property(nonatomic , strong) NSMutableDictionary *data;

@property(nonatomic , copy) NSString *binargs;


@property(nonatomic , copy) NSString *tag;

@end
