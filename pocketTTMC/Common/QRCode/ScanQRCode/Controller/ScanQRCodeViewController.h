//
//  ScanQRCodeViewController.h
//  pocketTTMC
//
//  Created by ttmcchain on 2018/1/5.
//  Copyright © 2018年 ttmcchain. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AccountPrivateKeyQRCodeModel.h"

@interface ScanQRCodeViewController : BaseViewController
@property(nonatomic , strong) NSMutableArray *get_token_info_service_data_array;
@end
