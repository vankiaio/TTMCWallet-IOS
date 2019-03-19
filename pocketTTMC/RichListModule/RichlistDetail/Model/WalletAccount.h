//
//  WalletAccount.h
//  pocketTTMC
//
//  Created by ttmcchain on 2018/1/31.
//  Copyright © 2018年 ttmcchain. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WalletAccount : NSObject
@property(nonatomic, strong) NSString *ttmcAccountName;

@property(nonatomic, strong) NSNumber *isMainAccount;


@property(nonatomic , assign) BOOL selected;
@end
