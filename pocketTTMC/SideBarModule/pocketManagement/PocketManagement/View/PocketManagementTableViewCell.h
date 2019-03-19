//
//  PocketManagementTableViewCell.h
//  pocketTTMC
//
//  Created by ttmcchain on 2018/1/5.
//  Copyright © 2018年 ttmcchain. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AccountInfo;
@interface PocketManagementTableViewCell : BaseTableViewCell
@property(nonatomic, strong) BaseLabel *titleLabel;
@property(nonatomic, strong) AccountInfo *model;

@property(nonatomic, copy) void(^tipLabelTapBtnClickBlock)(AccountInfo *);

@end
