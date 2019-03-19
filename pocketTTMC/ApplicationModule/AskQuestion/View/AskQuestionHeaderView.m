//
//  AskQuestionHeaderView.m
//  pocketTTMC
//
//  Created by ttmcchain on 2018/1/10.
//  Copyright © 2018年 ttmcchain. All rights reserved.
//

#import "AskQuestionHeaderView.h"
#import "UITextView+Placeholder.h"

@interface AskQuestionHeaderView()

@end


@implementation AskQuestionHeaderView


-(void)awakeFromNib{
    [super awakeFromNib];
    NSMutableAttributedString *attrStr = [[NSMutableAttributedString alloc]initWithString:NSLocalizedString(@"填写金额", nil)];
    
    //添加文字颜色
    [attrStr addAttribute:NSForegroundColorAttributeName value:HEXCOLOR(0xDDDDDD) range:NSMakeRange(0, 3)];
    self.amountTF.attributedPlaceholder  = attrStr;
    
}

- (IBAction)chooseTimeBtn:(UIButton *)sender {
    
    if (self.delegate && [self.delegate respondsToSelector:@selector(chooseTimeBtnDidClick:)]) {
        [self.delegate chooseTimeBtnDidClick:sender];
    }
    
}


@end
