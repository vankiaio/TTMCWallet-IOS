//
//  ExportPrivateKeyView.h
//  pocketTTMC
//
//  Created by ttmcchain on 2017/12/13.
//  Copyright © 2017年 ttmcchain. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ExportPrivateKeyViewDelegate<NSObject>
- (void)genetateQRBtnDidClick:(UIButton *)sender;
- (void)copyBtnDidClick:(UIButton *)sender;

- (void)exportPrivateKeyViewShouldDismiss;

- (void)copyOwnerPrivateKeyBtnDidClick;
- (void)copyActivePrivateKeyBtnDidClick;
@end

@interface ExportPrivateKeyView : UIView
@property (weak, nonatomic) IBOutlet UILabel *privateKeyLabel;
@property(nonatomic, weak) id<ExportPrivateKeyViewDelegate> delegate;
@property(nonatomic, strong) UIImageView *QRCodeimg;
@property (weak, nonatomic) IBOutlet UITextView *contentTextView;
@end
