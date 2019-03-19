//
//  RichlistDetailHeaderView.m
//  pocketTTMC
//
//  Created by ttmcchain on 2018/1/30.
//  Copyright © 2018年 ttmcchain. All rights reserved.
//

#import "RichlistDetailHeaderView.h"
#import "Account.h"
#import "Wallet.h"

@implementation RichlistDetailHeaderView

- (IBAction)changeAccount:(UIButton *)sender {
    if (!self.changeAccountBtnDidClickBlock) {
        return;
    }
    self.changeAccountBtnDidClickBlock();
}

- (IBAction)transferBtnDidClick:(UIButton *)sender {
    if (!self.transferBtnDidClickBlock) {
        return;
    }
    self.transferBtnDidClickBlock();
}

-(void)setModel:(Account *)model{
    
    self.userAccountLabel.text = [NSString stringWithFormat:@"%@", model.account_name] ;
    self.totalAssetsLabel.text = [NSString stringWithFormat:@"≈%@", [NumberFormatter displayStringFromNumber:[NSNumber numberWithDouble:model.ttmc_balance.doubleValue * model.ttmc_price_cny.doubleValue + model.oct_balance.doubleValue * model.oct_price_cny.doubleValue]]];
}

- (void)updateViewWithDataArray:(NSMutableArray<TokenInfo *> *)dataArray{
    double totalBalanceCnyValue =0;
    for (TokenInfo *model in dataArray) {
        totalBalanceCnyValue += model.balance_cny.doubleValue;
        self.userAccountLabel.text = [NSString stringWithFormat:@"%@", model.account_name] ;
    }
    self.totalAssetsLabel.text = [NSString stringWithFormat:@"≈%.4f", totalBalanceCnyValue];
    
    
}
@end
