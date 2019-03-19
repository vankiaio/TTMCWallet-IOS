//
//  ModifyApproveViewController.h
//  pocketTTMC
//
//  Created by ttmcchain on 2018/6/22.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import "BaseViewController.h"
#import "TTMCResourceResult.h"
#import "TTMCResource.h"
#import "AccountResult.h"

@interface ModifyApproveViewController : BaseViewController
@property(nonatomic , copy) NSString *pageType;
@property(nonatomic , strong) TTMCResourceResult *ttmcResourceResult;
@property(nonatomic , strong) AccountResult *accountResult;
@end
