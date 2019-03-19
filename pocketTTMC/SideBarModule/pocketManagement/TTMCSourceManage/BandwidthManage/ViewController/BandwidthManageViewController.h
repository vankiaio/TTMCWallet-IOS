//
//  BandwidthManageViewController.h
//  pocketTTMC
//
//  Created by 师巍巍 on 21/06/2018.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import "BaseViewController.h"
#import "TTMCResourceResult.h"
#import "TTMCResource.h"
#import "TTMCResourceCellModel.h"
#import "AccountResult.h"
#import "Account.h"



@interface BandwidthManageViewController : BaseViewController

@property (nonatomic , retain) UINavigationController *navigationController;
@property(nonatomic , strong) AccountResult *accountResult;

@end
