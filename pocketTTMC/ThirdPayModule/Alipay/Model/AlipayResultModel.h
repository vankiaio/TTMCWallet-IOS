//
//  AlipayResultModel.h
//  pocketTTMC
//
//  Created by ttmcchain on 2018/8/8.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AlipayResultModel : NSObject

@property(nonatomic , copy) NSString *result;

@property(nonatomic , copy) NSString *resultStatus;

@property(nonatomic , copy) NSString *memo;
@end
