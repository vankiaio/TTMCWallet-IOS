//
//  TransferRecordsHeaderView.m
//  pocketTTMC
//
//  Created by ttmcchain on 2018/8/21.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import "TransferRecordsHeaderView.h"

@implementation TransferRecordsHeaderView

- (IBAction)selectAssests:(UIButton *)sender {
    if (self.delegate && [self.delegate respondsToSelector:@selector(selectAssestsBtnDidClick:)]) {
        [self.delegate selectAssestsBtnDidClick: sender];
    }
}


@end
