//
//  AssestsCollectionFooterView.m
//  pocketTTMC
//
//  Created by ttmcchain on 2018/10/20.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import "AssestsCollectionFooterView.h"

@implementation AssestsCollectionFooterView


- (IBAction)assestsCollectionFooterViewConfirmBtnClick:(BaseConfirmButton *)sender {
    if (self.delegate && [self.delegate respondsToSelector:@selector(assestsCollectionFooterViewConfirmBtnDidClick)]) {
        [self.delegate assestsCollectionFooterViewConfirmBtnDidClick];
    }
}

@end
