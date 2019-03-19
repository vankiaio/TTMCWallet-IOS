//
//  ScatterAction.h
//  pocketTTMC
//
//  Created by ttmcchain on 2018/9/17.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScatterAction : NSObject

@property(nonatomic , copy) NSString *account;

@property(nonatomic , copy) NSString *name;

@property(nonatomic , strong) NSMutableArray *authorization;

@property(nonatomic , copy) NSString *data;


@end
