//
//  GetAccountResult.h
//  pocketTTMC
//
//  Created by ttmcchain on 2018/2/6.
//  Copyright © 2018年 ttmcchain. All rights reserved.
//

#import <Foundation/Foundation.h>
@class GetAccount;
@interface GetAccountResult : NSObject
@property(nonatomic, strong) NSNumber *code;
@property(nonatomic, strong) NSString *message;
@property(nonatomic, strong) GetAccount *data;
@end
