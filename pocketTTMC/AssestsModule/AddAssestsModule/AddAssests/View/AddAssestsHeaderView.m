//
//  AddAssestsHeaderView.m
//  pocketTTMC
//
//  Created by ttmcchain on 2018/7/17.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import "AddAssestsHeaderView.h"

@implementation AddAssestsHeaderView
- (IBAction)customAssestsBtnClick:(UIButton *)sender {
    if (self.delegate && [self.delegate respondsToSelector:@selector(customAssestsBtnDidClick)]) {
        [self.delegate customAssestsBtnDidClick];
    }
}




@end
