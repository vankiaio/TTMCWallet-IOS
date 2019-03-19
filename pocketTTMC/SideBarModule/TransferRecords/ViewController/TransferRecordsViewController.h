//
//  TransferRecordsViewController.h
//  pocketTTMC
//
//  Created by ttmcchain on 2018/8/21.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import "BaseViewController.h"
#import "TokenInfo.h"

@interface TransferRecordsViewController : BaseViewController

@property(nonatomic , copy) NSString *from;

@property(nonatomic , copy) NSString *to;

@property(nonatomic , strong) TokenInfo *currentToken;

@property(nonatomic , strong) NSMutableArray *get_token_info_service_data_array;

@end
