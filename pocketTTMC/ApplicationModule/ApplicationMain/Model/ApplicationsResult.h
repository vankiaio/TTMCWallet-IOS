//
//  ApplicationsResult.h
//  pocketTTMC
//
//  Created by ttmcchain on 2017/12/27.
//  Copyright © 2017年 ttmcchain. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ApplicationsResult : NSObject
@property(nonatomic, strong) NSNumber *code;
@property(nonatomic, strong) NSString *message;
@property(nonatomic, strong) NSMutableArray *data;

@end
