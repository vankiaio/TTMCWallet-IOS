//
//  StorageManageHeaderView.h
//  pocketTTMC
//
//  Created by ttmcchain on 2018/6/22.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import "BaseHeaderView.h"

@protocol StorageManageHeaderViewDelegate<NSObject>
- (void)buyRamBtnDidClick:(UIButton *)sender;
- (void)sellRamBtnDidClick:(UIButton *)sender;

@end



@interface StorageManageHeaderView : BaseHeaderView
@property (weak, nonatomic) IBOutlet UIProgressView *progressView;
@property (weak, nonatomic) IBOutlet BaseLabel1 *tipLabel;

@property(nonatomic, weak) id<StorageManageHeaderViewDelegate> delegate;

@end
