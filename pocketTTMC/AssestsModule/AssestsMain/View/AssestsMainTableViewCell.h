//
//  AssestsMainTableViewCell.h
//  pocketTTMC
//
//  Created by ttmcchain on 2018/1/31.
//  Copyright © 2018年 ttmcchain. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TokenInfo.h"

@interface AssestsMainTableViewCell : UITableViewCell
@property(nonatomic, strong) UILabel *assestsPriceChangeLabel;
@property(nonatomic, strong) TokenInfo *model;
@end
