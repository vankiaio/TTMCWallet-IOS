//
//  TTMCResourceResult.h
//  pocketTTMC
//
//  Created by ttmcchain on 2018/6/21.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TTMCResource.h"

@interface TTMCResourceResult : NSObject
@property(nonatomic, strong) NSNumber *code;
@property(nonatomic, strong) NSString *message;
@property(nonatomic, strong) TTMCResource *data;
@end
