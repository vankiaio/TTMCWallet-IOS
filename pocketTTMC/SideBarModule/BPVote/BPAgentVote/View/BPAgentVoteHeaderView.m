
//
//  BPAgentVoteHeaderView.m
//  pocketTTMC
//
//  Created by ttmcchain on 2018/6/8.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import "BPAgentVoteHeaderView.h"

@implementation BPAgentVoteHeaderView

- (IBAction)chooseAgentBtnClick:(UIButton *)sender {
    if (self.delegate && [self.delegate respondsToSelector:@selector(chooseAgentBtnDidClick:)]) {
        [self.delegate chooseAgentBtnDidClick:sender];
    }
}

- (IBAction)confirmBtnClick:(UIButton *)sender {
    if (self.delegate && [self.delegate respondsToSelector:@selector(confirmAgentBtnDidClick:)]) {
        [self.delegate confirmAgentBtnDidClick:sender];
    }
}

@end
