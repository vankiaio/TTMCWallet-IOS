//
//  BPVoteHeaderView.m
//  pocketTTMC
//
//  Created by ttmcchain on 2018/6/7.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import "BPVoteHeaderView.h"
#import "Account.h"

@interface BPVoteHeaderView()


@end


@implementation BPVoteHeaderView

-(void)awakeFromNib{
    [super awakeFromNib];

}

- (IBAction)changeAccountBtn:(UIButton *)sender {
    
    if (self.delegate && [self.delegate respondsToSelector:@selector(changeAccountBtnDidClick:)]) {
        [self.delegate changeAccountBtnDidClick:sender];
    }
}



-(void)setModel:(AccountResult *)model{
    self.accountNameLabel.text = model.data.account_name;
    self.balanceLabel.text = [NSString stringWithFormat:@"%@ : %@TTMC", NSLocalizedString(@"余额", nil), [NumberFormatter displayStringFromNumber:[NSNumber numberWithDouble:model.data.ttmc_balance.doubleValue ]]];
    self.balanceOfVotedLabel.text = [NSString stringWithFormat:@"%@ TTMC", [NumberFormatter displayStringFromNumber:[NSNumber numberWithDouble:model.data.ttmc_cpu_weight.doubleValue + model.data.ttmc_net_weight.doubleValue]]];
}



@end
