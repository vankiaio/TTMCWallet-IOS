//
//  BPVoteAmountViewController.h
//  pocketTTMC
//
//  Created by ttmcchain on 2018/6/9.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import "BaseViewController.h"
#import "Account.h"
#import "MyVoteInfoResult.h"

@interface BPVoteAmountViewController : BaseViewController

@property(nonatomic , strong) NSMutableArray *choosedBPNameDataArray;

@property(nonatomic , strong) Account *model;

@property(nonatomic , strong) MyVoteInfoResult *myVoteInfoResult;
@end
