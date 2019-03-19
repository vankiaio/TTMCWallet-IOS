//
//  AddAssestsTableViewCell.h
//  pocketTTMC
//
//  Created by ttmcchain on 2018/7/17.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import "BaseTableViewCell.h"
#import "RecommandToken.h"

@interface AddAssestsTableViewCell : BaseTableViewCell

@property(nonatomic , strong) RecommandToken *model;
@property(nonatomic , copy) void(^assestsSwitchStatusDidChangeBlock)(RecommandToken *, UISwitch *);
@end
