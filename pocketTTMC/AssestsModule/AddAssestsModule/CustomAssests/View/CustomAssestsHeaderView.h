//
//  CustomAssestsHeaderView.h
//  pocketTTMC
//
//  Created by ttmcchain on 2018/7/17.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import "BaseView.h"


@protocol CustomAssestsHeaderViewDelegate<NSObject>
- (void)confirmBtnDidClick;
@end


@interface CustomAssestsHeaderView : BaseView
@property(nonatomic, weak) id<CustomAssestsHeaderViewDelegate> delegate;
@property (weak, nonatomic) IBOutlet BaseTextField *tokenNameTF;

@property (weak, nonatomic) IBOutlet BaseTextField *contractAddressTF;


@end
