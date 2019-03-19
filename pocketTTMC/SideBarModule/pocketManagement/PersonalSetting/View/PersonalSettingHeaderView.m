//
//  PersonalSettingHeaderView.m
//  pocketTTMC
//
//  Created by ttmcchain on 08/04/2018.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import "PersonalSettingHeaderView.h"

@interface PersonalSettingHeaderView()


@end


@implementation PersonalSettingHeaderView

-(void)awakeFromNib{
    [super awakeFromNib];
    self.line2.lee_theme
    .LeeConfigBackgroundColor(@"baseHeaderView_background_color");
    self.line4.lee_theme
    .LeeConfigBackgroundColor(@"baseHeaderView_background_color");
    
    
}

- (IBAction)avatarBtn:(UIButton *)sender {
    if (self.delegate && [self.delegate respondsToSelector:@selector(avatarBtnDidClick:)]) {
        [self.delegate avatarBtnDidClick:sender];
    }
    
}

- (IBAction)nameBtn:(UIButton *)sender {
    if (self.delegate && [self.delegate respondsToSelector:@selector(nameBtnDidClick:)]) {
        [self.delegate nameBtnDidClick:sender];
    }
    
}

- (IBAction)wechatIDBtn:(UIButton *)sender {
    if (self.delegate && [self.delegate respondsToSelector:@selector(wechatIDBtnDidClick:)]) {
        [self.delegate wechatIDBtnDidClick:sender];
    }
}

- (IBAction)qqIDBtn:(UIButton *)sender {
    if (self.delegate && [self.delegate respondsToSelector:@selector(qqIDBtnBtnDidClick:)]) {
        [self.delegate qqIDBtnBtnDidClick:sender];
    }
    
}

@end
