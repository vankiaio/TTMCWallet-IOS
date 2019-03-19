//
//  PaymentTipView.h
//  pocketTTMC
//
//  Created by ttmcchain on 2018/7/31.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import "BaseView.h"

@protocol PaymentTipViewDelegate<NSObject>


- (void)backgroundViewDidClick;
- (void)choosePaymentBtnDidClick:(UIButton *)sender;
- (void)confirmPayBtnDidClick:(UIButton *)sender;
@end


@interface PaymentTipView : UIView
@property (weak, nonatomic) IBOutlet UILabel *payAmountLabel;
@property (weak, nonatomic) IBOutlet UILabel *accountChooseLabel;
@property (weak, nonatomic) IBOutlet UIImageView *alipayRightIconImageView;
@property (weak, nonatomic) IBOutlet UIImageView *wechatPayRightIconImageView;

@property(nonatomic, weak) id<PaymentTipViewDelegate> delegate;
@end
