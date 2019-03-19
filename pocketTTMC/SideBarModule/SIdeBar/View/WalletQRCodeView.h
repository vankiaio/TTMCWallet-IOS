//
//  WalletQRCodeView.h
//  pocketTTMC
//
//  Created by ttmcchain on 2018/2/25.
//  Copyright © 2018年 ttmcchain. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol WalletQRCodeViewDelegate<NSObject>


@end

@interface WalletQRCodeView : UIView

@property (weak, nonatomic) IBOutlet UIImageView *walletQRCodeImg;
@property(nonatomic, weak) id<WalletQRCodeViewDelegate> delegate;
@end
