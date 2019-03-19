//
//  ImportAccountPermisionViewController.h
//  pocketTTMC
//
//  Created by ttmcchain on 2018/11/21.
//  Copyright © 2018 ttmcchain. All rights reserved.
//


typedef NS_ENUM(NSInteger, ImportAccountPermisionViewControllerCurrentAction) {
    ImportAccountPermisionViewControllerCurrentActionImportOwnerPrivateKey,
    ImportAccountPermisionViewControllerCurrentActionImportActivePrivateKey
};


#import "BaseViewController.h"
#import "AccountInfo.h"

NS_ASSUME_NONNULL_BEGIN

@interface ImportAccountPermisionViewController : BaseViewController
@property(nonatomic , strong) AccountInfo *model;
@property(nonatomic , assign) ImportAccountPermisionViewControllerCurrentAction importAccountPermisionViewControllerCurrentAction;
@end

NS_ASSUME_NONNULL_END
