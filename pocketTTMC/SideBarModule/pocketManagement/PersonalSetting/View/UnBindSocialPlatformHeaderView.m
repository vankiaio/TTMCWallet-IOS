//
//  UnBindSocialPlatformHeaderView.m
//  pocketTTMC
//
//  Created by ttmcchain on 08/04/2018.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import "UnBindSocialPlatformHeaderView.h"

@implementation UnBindSocialPlatformHeaderView
- (IBAction)unbind:(UIButton *)sender {
    if (self.delegate && [self.delegate respondsToSelector:@selector(unBindBtnDidClick:)]) {
        [self.delegate unBindBtnDidClick:sender];
    }
}

@end
