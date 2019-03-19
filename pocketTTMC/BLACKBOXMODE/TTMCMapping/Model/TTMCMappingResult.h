//
//  TTMCMappingResult.h
//  pocketTTMC
//
//  Created by ttmcchain on 2018/6/13.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TTMCMappingResult : NSObject
@property(nonatomic, strong) NSNumber *code;
@property(nonatomic, strong) NSString *message;
@property(nonatomic, strong) NSArray *account_names;

@end
