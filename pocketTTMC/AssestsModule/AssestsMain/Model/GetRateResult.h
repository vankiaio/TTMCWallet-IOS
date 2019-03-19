//
//  GetRateResult.h
//  pocketTTMC
//
//  Created by ttmcchain on 2018/3/22.
//  Copyright © 2018年 ttmcchain. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Rate;
@interface GetRateResult : NSObject
@property(nonatomic, strong) NSNumber *code;
@property(nonatomic, strong) NSString *message;
@property(nonatomic, strong) Rate *data;
@end
