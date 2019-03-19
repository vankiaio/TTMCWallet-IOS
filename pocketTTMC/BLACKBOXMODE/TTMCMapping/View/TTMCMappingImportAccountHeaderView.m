//
//  TTMCMappingImportAccountHeaderView.m
//  pocketTTMC
//
//  Created by ttmcchain on 2018/5/21.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import "TTMCMappingImportAccountHeaderView.h"

@interface TTMCMappingImportAccountHeaderView()
@property (weak, nonatomic) IBOutlet UIButton *confirmBtn;
@property (weak, nonatomic) IBOutlet BaseTextView *tipTextView;
@end


@implementation TTMCMappingImportAccountHeaderView

-(void)awakeFromNib{
    [super awakeFromNib];
    self.tipTextView.placeholder = NSLocalizedString(@"该功能仅适用于TTMC映射获得的私钥，且每个映射获得的私钥只能创建一个的TTMC账号。", nil);
}

- (IBAction)importAccount:(UIButton *)sender {
    if (self.delegate && [self.delegate respondsToSelector:@selector(importTTMCMappingAccountBtnDidClick)]) {
        [self.delegate importTTMCMappingAccountBtnDidClick];
    }
}

@end
