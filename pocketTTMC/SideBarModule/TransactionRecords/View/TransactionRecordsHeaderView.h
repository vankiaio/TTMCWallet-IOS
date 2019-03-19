//
//  TransactionRecordsHeaderView.h
//  pocketTTMC
//
//  Created by ttmcchain on 2017/12/11.
//  Copyright © 2017年 ttmcchain. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol TransactionRecordsHeaderViewDelegate<NSObject>
@optional
- (void)selectAccountBtnDidClick:(UIButton *)sender;

@end

@interface TransactionRecordsHeaderView : BaseView
@property (weak, nonatomic) IBOutlet UILabel *accountLabel;
@property(nonatomic, weak) id<TransactionRecordsHeaderViewDelegate> delegate;

@end
