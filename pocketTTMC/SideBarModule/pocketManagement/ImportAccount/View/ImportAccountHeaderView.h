//
//  ImportAccountHeaderView.h
//  pocketTTMC
//
//  Created by ttmcchain on 2017/12/12.
//  Copyright © 2017年 ttmcchain. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ImportAccountHeaderViewDelegate<NSObject>

- (void)importBtnDidClick:(UIButton *)sender;
- (void)agreeTermBtnDidClick:(UIButton *)sender;
@end

@interface ImportAccountHeaderView : BaseView
@property (weak, nonatomic) IBOutlet UITextField *accountNameTF;

@property (weak, nonatomic) IBOutlet BaseTextView *private_activeKey_tf;

@property (weak, nonatomic) IBOutlet BaseTextView *private_ownerKey_TF;



@property (weak, nonatomic) IBOutlet UIButton *agreeTermBtn;

@property(nonatomic, weak) id<ImportAccountHeaderViewDelegate> delegate;

@end
