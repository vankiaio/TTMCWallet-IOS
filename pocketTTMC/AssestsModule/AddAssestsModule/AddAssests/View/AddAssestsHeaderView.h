//
//  AddAssestsHeaderView.h
//  pocketTTMC
//
//  Created by ttmcchain on 2018/7/17.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import "BaseView.h"

@protocol AddAssestsHeaderViewDelegate<NSObject>

- (void)customAssestsBtnDidClick;

@end


@interface AddAssestsHeaderView : BaseView
@property(nonatomic, weak) id<AddAssestsHeaderViewDelegate> delegate;

@end
