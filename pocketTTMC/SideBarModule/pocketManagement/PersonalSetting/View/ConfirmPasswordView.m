//
//  ConfirmPasswordView.m
//  pocketTTMC
//
//  Created by ttmcchain on 2017/12/13.
//  Copyright © 2017年 ttmcchain. All rights reserved.
//

#import "ConfirmPasswordView.h"

@interface ConfirmPasswordView()<UIGestureRecognizerDelegate>
@property (weak, nonatomic) IBOutlet UIView *upBackgroundView;


@end

@implementation ConfirmPasswordView

- (void)awakeFromNib{
    [super awakeFromNib];
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(dismiss)];
    tap.delegate = self;
    [self addGestureRecognizer:tap];
    
}

- (void)dismiss{
    [self removeFromSuperview];
}
-(BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldReceiveTouch:(UITouch *)touch{
    if ([touch.view isEqual:self.upBackgroundView]) {
        return NO;
        
    }else{
        return YES;
    }
}

- (IBAction)cancle:(UIButton *)sender {
    if (self.delegate && [self.delegate respondsToSelector:@selector(cancleBtnDidClick:)]) {
        [self.delegate cancleBtnDidClick:sender];
    }
}

- (IBAction)confirm:(UIButton *)sender {
    if (self.delegate && [self.delegate respondsToSelector:@selector(confirmPasswordBtnDidClick:)]) {
        [self.delegate confirmPasswordBtnDidClick:sender];
    }
}

@end
