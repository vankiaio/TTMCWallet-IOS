//
//  TransferRecordsHeaderView.h
//  pocketTTMC
//
//  Created by ttmcchain on 2018/8/21.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import "BaseView.h"

@protocol TransferRecordsHeaderViewDelegate<NSObject>

- (void)selectAssestsBtnDidClick:(UIButton *)sender;

@end


@interface TransferRecordsHeaderView : BaseView
@property (weak, nonatomic) IBOutlet UILabel *assestChooserLabel;
@property(nonatomic, weak) id<TransferRecordsHeaderViewDelegate> delegate;

@end
