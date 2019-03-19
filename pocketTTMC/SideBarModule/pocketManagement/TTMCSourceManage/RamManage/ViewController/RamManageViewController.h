//
//  RamManageViewController.h
//  pocketTTMC
//
//  Created by ttmcchain on 2018/10/24.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import "BaseViewController.h"
#import "AccountResult.h"
#import "TTMCResourceResult.h"

NS_ASSUME_NONNULL_BEGIN

@interface RamManageViewController : BaseViewController
@property (nonatomic , retain) UINavigationController *navigationController;

@property(nonatomic , strong) AccountResult *accountResult;

@property(nonatomic , strong) TTMCResourceResult *ttmcResourceResult;
@end

NS_ASSUME_NONNULL_END
