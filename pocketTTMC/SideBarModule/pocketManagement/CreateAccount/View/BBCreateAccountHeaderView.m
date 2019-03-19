//
//  BBCreateAccountHeaderView.m
//  pocketTTMC
//
//  Created by ttmcchain on 2018/5/21.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import "BBCreateAccountHeaderView.h"

@implementation BBCreateAccountHeaderView

- (IBAction)createAccount:(UIButton *)sender {
    if (self.delegate && [self.delegate respondsToSelector:@selector(createAccountUseTTMCPrivateKey)]) {
        [self.delegate createAccountUseTTMCPrivateKey];
    }
}

@end
