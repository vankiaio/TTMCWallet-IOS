//
//  TransferModel.h
//  pocketTTMC
//
//  Created by ttmcchain on 29/03/2018.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TransferModel : NSObject
@property(nonatomic, copy) NSString *account_name;
@property(nonatomic, copy) NSString *money;
@property(nonatomic, copy) NSString *coin;
@property(nonatomic , copy) NSString *memo;
@end
