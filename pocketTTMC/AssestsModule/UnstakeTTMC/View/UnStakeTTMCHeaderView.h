//
//  UnStakeTTMCHeaderView.h
//  pocketTTMC
//
//  Created by ttmcchain on 2018/6/15.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AccountResult.h"
#import "Account.h"

@protocol UnStakeTTMCHeaderViewDelegate<NSObject>
- (void)confirmUnStakeBtnDidClick;
@end


@interface UnStakeTTMCHeaderView : BaseView

@property(nonatomic , strong) AccountResult *model;

@property (weak, nonatomic) IBOutlet UIButton *confirmBtn;

@property(nonatomic, weak) id<UnStakeTTMCHeaderViewDelegate> delegate;
@end
