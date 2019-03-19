//
//  PocketManagementHeaderView.h
//  pocketTTMC
//
//  Created by ttmcchain on 2018/7/16.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import "BaseView.h"

@protocol PocketManagementHeaderViewDelegate<NSObject>
- (void)createAccountBtnDidClick;
- (void)assestsCollectionBtnDidClick;
- (void)changePasswordBtnDidClick;
- (void)backupWalletBtnDidClick;
@end


@interface PocketManagementHeaderView : BaseHeaderView

@property(nonatomic, weak) id<PocketManagementHeaderViewDelegate> delegate;

@end
