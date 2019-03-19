//
//  RecieveTokenModel.h
//  pocketTTMC
//
//  Created by ttmcchain on 2018/7/20.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RecieveTokenModel : NSObject
@property(nonatomic , copy) NSString *account_name;
@property(nonatomic , copy) NSString *token;
@property(nonatomic , copy) NSString *quantity;
@property(nonatomic , copy) NSString *contract;
@property(nonatomic , copy) NSString *type;
@property(nonatomic , copy) NSString *memo;
@end
