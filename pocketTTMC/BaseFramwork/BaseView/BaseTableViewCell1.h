//
//  BaseTableViewCell1.h
//  pocketTTMC
//
//  Created by ttmcchain on 2018/5/31.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MGSwipeTableCell.h"
#import "BaseSlimLineView.h"

@interface BaseTableViewCell1 : MGSwipeTableCell
@property(nonatomic , strong) UIImageView *rightIconImageView;
@property(nonatomic , copy) NSString *rightIconImgName;
@property(nonatomic , strong) BaseSlimLineView *bottomLineView;
@end
