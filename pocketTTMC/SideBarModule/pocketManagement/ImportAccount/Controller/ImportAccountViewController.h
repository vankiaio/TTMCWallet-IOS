//
//  ImportAccountViewController.h
//  pocketTTMC
//
//  Created by ttmcchain on 2017/12/12.
//  Copyright © 2017年 ttmcchain. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AccountPrivateKeyQRCodeModel.h"

@interface ImportAccountViewController : BaseViewController
@property(nonatomic, strong) AccountPrivateKeyQRCodeModel *model;
@end
