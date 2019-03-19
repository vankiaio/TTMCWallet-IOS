//
//  SimpleWalletTransferHeaderView.h
//  pocketTTMC
//
//  Created by ttmcchain on 2018/9/29.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SimpleWalletTransferModel.h"


@protocol SimpleWalletTransferHeaderViewDelegate<NSObject>
- (void)simpleWalletTransferHeaderViewconfirmBtnDidClick;
@end


@interface SimpleWalletTransferHeaderView : UIView

@property(nonatomic, weak) id<SimpleWalletTransferHeaderViewDelegate> delegate;


@property(nonatomic , strong) SimpleWalletTransferModel *model;


@property(nonatomic , strong) UIButton *confirmBtn;




@end
