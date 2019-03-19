//
//  ApplicationMainHeaderBottomView.h
//  pocketTTMC
//
//  Created by ttmcchain on 2018/6/4.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Application.h"

@protocol ApplicationMainHeaderBottomViewDelegate<NSObject>
- (void)starApplicationBtnDidClick:(UIButton *)sender;

@end


@interface ApplicationMainHeaderBottomView : BaseView

@property(nonatomic, weak) id<ApplicationMainHeaderBottomViewDelegate> delegate;
- (void)updateStarViewWithModel:(Application *)model;
@end
