//
//  BandwidthManageTableViewCell.m
//  pocketTTMC
//
//  Created by 师巍巍 on 21/06/2018.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import "BandwidthManageTableViewCell.h"

@interface BandwidthManageTableViewCell()
@property (weak, nonatomic) IBOutlet BaseLabel1 *TotalQuotaLabel;
@property (weak, nonatomic) IBOutlet BaseLabel1 *QuotaApproveLabel;
@property (weak, nonatomic) IBOutlet BaseLabel1 *useLabel;
@property (weak, nonatomic) IBOutlet BaseLabel1 *avalibleLabel;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

@end
@implementation BandwidthManageTableViewCell



-(void)setModel:(BandwidthManageCellModel *)model{
    self.titleLabel.text = model.title;
    self.QuotaApproveLabel.text = [NSString stringWithFormat:@"%@：%.4f TTMC",NSLocalizedString(@"配额抵押", nil), model.weight.doubleValue];
    
    if ([model.title isEqualToString:NSLocalizedString(@"cpu", nil)]) {
        self.TotalQuotaLabel.text = [NSString stringWithFormat:@"%@：%.4f ms", NSLocalizedString(@"总配额", nil), model.max.doubleValue/1000];
        self.useLabel.text = [NSString stringWithFormat:@"%@：%.4f ms",NSLocalizedString(@"当前占用", nil), model.used.doubleValue/1000];
        self.avalibleLabel.text = [NSString stringWithFormat:@"%@：%.4f ms",NSLocalizedString(@"当前可用", nil), model.available.doubleValue/1000];
        
    }else if ([model.title isEqualToString:NSLocalizedString(@"net", nil)]){
        self.TotalQuotaLabel.text = [NSString stringWithFormat:@"%@：%.4f bytes", NSLocalizedString(@"总配额", nil), model.max.doubleValue];
        self.useLabel.text = [NSString stringWithFormat:@"%@：%@ bytes",NSLocalizedString(@"当前占用", nil), model.used];
        self.avalibleLabel.text = [NSString stringWithFormat:@"%@：%@ bytes",NSLocalizedString(@"当前可用", nil), model.available];
    }
}

@end
