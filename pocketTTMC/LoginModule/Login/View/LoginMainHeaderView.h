//
//  LoginMainHeaderView.h
//  pocketTTMC
//
//  Created by ttmcchain on 2018/7/26.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol LoginMainHeaderViewDelegate<NSObject>
- (void)changeToBlackBoxMode;
- (void)loginBtnDidClick:(UIButton *)sender;
- (void)wechatLoginBtnDidClick:(UIButton *)sender;
- (void)privacyPolicyLabelDidTap;
@end

@interface LoginMainHeaderView : UIView

@property(nonatomic, weak) id<LoginMainHeaderViewDelegate> delegate;

@property (weak, nonatomic) IBOutlet UIImageView *weChatLoginImage;
@property (weak, nonatomic) IBOutlet UILabel *wechatLoginLabel;

@property (weak, nonatomic) IBOutlet UIView *wechatBaseView;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *wechatLoggingIndicatorView;

@end
