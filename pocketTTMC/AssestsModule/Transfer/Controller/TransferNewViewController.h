//
//  TransferViewController.h
//  pocketTTMC
//
//  Created by ttmcchain on 2017/12/5.
//  Copyright © 2017年 ttmcchain. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AccountInfo.h"
#import "TransferModel.h"
#import "TokenInfo.h"
#import "RecieveTokenModel.h"

@interface TransferNewViewController : BaseViewController

@property(nonatomic, strong) TransferModel *transferModel;

@property(nonatomic , strong) RecieveTokenModel *recieveTokenModel;

@property(nonatomic, copy) NSString *currentAssestsType;

@property(nonatomic , strong) NSMutableArray *get_token_info_service_data_array;

@property(nonatomic , copy) NSString *fromPage;

@property(nonatomic , strong) TokenInfo *currentToken;
@end

