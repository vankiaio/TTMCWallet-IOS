//
//  ScanQRCodeSuccessViewController.h
//  pocketTTMC
//
//  Created by ttmcchain on 2018/1/5.
//  Copyright © 2018年 ttmcchain. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ScanQRCodeSuccessViewController : UIViewController
/** 接收扫描的二维码信息 */
@property (nonatomic, copy) NSString *jump_URL;
/** 接收扫描的条形码信息 */
@property (nonatomic, copy) NSString *jump_bar_code;

@end
