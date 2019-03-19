//
//  RedPacketDetailHeaderView.m
//  pocketTTMC
//
//  Created by ttmcchain on 2018/7/2.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import "RedPacketDetailHeaderView.h"

@implementation RedPacketDetailHeaderView

- (IBAction)sendRedPacketBtn:(UIButton *)sender {
    if (self.delegate && [self.delegate respondsToSelector:@selector(sendRedPacketBtnDidClick)]) {
        [self.delegate sendRedPacketBtnDidClick];
    }
}

@end
