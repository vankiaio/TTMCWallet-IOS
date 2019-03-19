//
//  RecieveHeaderView.m
//  pocketTTMC
//
//  Created by ttmcchain on 2017/12/5.
//  Copyright © 2017年 ttmcchain. All rights reserved.
//

#import "RecieveHeaderView.h"

@implementation RecieveHeaderView

-(void)awakeFromNib{
    [super awakeFromNib];
     self.tipLabel.font = [UIFont boldSystemFontOfSize:24];
    self.generateQRCodeBtn.lee_theme
    .LeeAddBackgroundColor(SOCIAL_MODE, HEXCOLOR(0xCCCCCC))
    .LeeAddBackgroundColor(BLACKBOX_MODE, HEXCOLOR(0xA3A3A3));
}

- (IBAction)selectAssests:(UIButton *)sender {
    if (self.delegate && [self.delegate respondsToSelector:@selector(selectAssestsBtnDidClick:)]) {
        [self.delegate selectAssestsBtnDidClick: sender];
    }
}

- (IBAction)createQRCode:(UIButton *)sender {
    if (self.delegate && [self.delegate respondsToSelector:@selector(createQRCodeBtnDidClick:)]) {
        [self.delegate createQRCodeBtnDidClick: sender];
    }
}

@end
