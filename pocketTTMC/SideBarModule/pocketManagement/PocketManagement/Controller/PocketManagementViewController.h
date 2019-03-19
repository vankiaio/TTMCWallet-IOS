//
//  PocketManagementViewController.h
//  pocketTTMC
//
//  Created by ttmcchain on 2017/12/11.
//  Copyright © 2017年 ttmcchain. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PocketManagementService.h"

@protocol PocketManagementViewControllerDelegate<NSObject>
- (void)changeAccountCellDidClick:(NSString *)name;
@end

@interface PocketManagementViewController : BaseViewController
@property(nonatomic, weak) id<PocketManagementViewControllerDelegate> delegate;
@property(nonatomic, strong) PocketManagementService *mainService;
@end
