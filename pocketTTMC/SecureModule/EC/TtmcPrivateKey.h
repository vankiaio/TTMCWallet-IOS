//
//  TtmcPrivateKey.h
//  wif_test
//
//  Created by ttmcchain on 2018/3/14.
//  Copyright © 2018年 宋赓. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TtmcPrivateKey : NSObject
- (instancetype)initTtmcPrivateKey;
@property(nonatomic, strong) NSString *ttmcPrivateKey;

@property(nonatomic, strong) NSString *ttmcPublicKey;


@end
