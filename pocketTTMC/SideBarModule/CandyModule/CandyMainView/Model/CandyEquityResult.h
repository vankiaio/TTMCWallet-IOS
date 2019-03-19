//
//  CandyEquityResult.h
//  pocketTTMC
//
//  Created by ttmcchain on 2018/5/24.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CandyEquityResult : NSObject
@property(nonatomic, strong) NSNumber *code;
@property(nonatomic, strong) NSString *message;
@property(nonatomic, strong) NSMutableArray *data;

@end
