//
//  CreateAccountViewController.h
//  pocketTTMC
//
//  Created by ttmcchain on 2017/12/12.
//  Copyright © 2017年 ttmcchain. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 从哪个页面跳转过来
 */
typedef NS_ENUM(NSInteger, CreateAccountViewControllerFromVC) {
    CreateAccountViewControllerFromPocketManagementVC,
    CreateAccountViewControllerFromCreatePocketVC 
};


@interface CreateAccountViewController : BaseViewController

@property(nonatomic, assign) CreateAccountViewControllerFromVC createAccountViewControllerFromVC;
@end
