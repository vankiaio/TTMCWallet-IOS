//
//  BBLoginChooseWalletFooterView.h
//  pocketTTMC
//
//  Created by ttmcchain on 15/05/2018.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import <UIKit/UIKit.h>


@protocol BBLoginChooseWalletFooterViewDelegate<NSObject>
- (void)confirmBtnDidClick;
- (void)createBtnDidClick;
- (void)explainBtnDidClick;
- (void)privacyPolicyBtnDidClick:(UIButton *)sender;
- (void)agreeTermBtnDidClick:(UIButton *)sender;
@end

@interface BBLoginChooseWalletFooterView : UIView
@property(nonatomic, weak) id<BBLoginChooseWalletFooterViewDelegate> delegate;
@property (weak, nonatomic) IBOutlet UIButton *agreeTermBtn;

@end
