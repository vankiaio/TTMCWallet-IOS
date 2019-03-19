//
//  TransactionRecordTableViewCell.h
//  pocketTTMC
//
//  Created by ttmcchain on 2018/2/7.
//  Copyright © 2018年 ttmcchain. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TransactionRecord.h"

@interface TransactionRecordTableViewCell : BaseTableViewCell
@property(nonatomic , copy) NSString *currentAccountName;
@property(nonatomic, strong) TransactionRecord *model;
@end
