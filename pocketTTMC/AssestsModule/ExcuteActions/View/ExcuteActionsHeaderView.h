//
//  ExcuteActionsHeaderView.h
//  pocketTTMC
//
//  Created by ttmcchain on 2018/9/20.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import "BaseView.h"
#import "ExcuteActionsResult.h"

@interface ExcuteActionsHeaderView : BaseView


@property(nonatomic, strong) UIImageView *img;
@property(nonatomic, strong) BaseLabel *titleLabel;
@property(nonatomic, strong) BaseLabel1 *descriptionLabel;


- (void)updateViewWithModel:(ExcuteActionsResult *)model;



@end
