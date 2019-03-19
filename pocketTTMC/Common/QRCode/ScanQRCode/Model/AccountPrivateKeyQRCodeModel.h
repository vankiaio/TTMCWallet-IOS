//
//  AccountPrivateKeyQRCodeModel.h
//  pocketTTMC
//
//  Created by ttmcchain on 2018/2/6.
//  Copyright © 2018年 ttmcchain. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AccountPrivateKeyQRCodeModel : NSObject
@property(nonatomic, copy) NSString *account_name;
@property(nonatomic, copy) NSString *active_private_key;
@property(nonatomic, copy) NSString *owner_private_key;
@end
